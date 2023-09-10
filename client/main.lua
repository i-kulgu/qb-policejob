-- Variables
QBCore = exports['qb-core']:GetCoreObject()
isHandcuffed = false
cuffType = 1
isEscorted = false
PlayerJob = {}
local DutyBlips = {}
SecKey = nil
local Blips = {}
GPSActive = false

-- Functions
local function CreateDutyBlips(playerId, playerLabel, playerJob, playerLocation, vehClass)
    if not Blips[playerId] then Blips[playerId] = {} end
    if DoesBlipExist(Blips[playerId].blip) then
        SetBlipCoords(Blips[playerId].blip, playerLocation.x, playerLocation.y, playerLocation.z)
    else
        Blips[playerId].blip = AddBlipForCoord(playerLocation.x, playerLocation.y, playerLocation.z)
    end
    for k,v in pairs(Config.BlipColors) do
        if k == playerJob then
            blipcolor = v
        end
    end
    -- Heli
    if vehClass == 15 then
        SetBlipSprite(Blips[playerId].blip, 43)
        ShowHeadingIndicatorOnBlip(Blips[playerId].blip, true)
    -- Boats
    elseif vehClass == 14 then
        SetBlipSprite(Blips[playerId].blip, 427)
        ShowHeadingIndicatorOnBlip(Blips[playerId].blip, true)
    -- Plane
    elseif vehClass == 16 then
        SetBlipSprite(Blips[playerId].blip, 307)
        ShowHeadingIndicatorOnBlip(Blips[playerId].blip, true)
    -- MotorBikes
    elseif vehClass == 8 then
        SetBlipSprite(Blips[playerId].blip, 226)
        ShowHeadingIndicatorOnBlip(Blips[playerId].blip, true)
    -- Police Vehicles
    elseif vehClass == 18 then
        SetBlipSprite(Blips[playerId].blip, 56)
        ShowHeadingIndicatorOnBlip(Blips[playerId].blip, true)
    -- Walking
    elseif vehClass == 0 then
        SetBlipSprite(Blips[playerId].blip, 126)
        ShowHeadingIndicatorOnBlip(Blips[playerId].blip, true)
    else -- All other vehicles
        SetBlipSprite(Blips[playerId].blip, 225)
        ShowHeadingIndicatorOnBlip(Blips[playerId].blip, true)
    end
    ShowHeadingIndicatorOnBlip(Blips[playerId].blip, true)
    SetBlipRotation(Blips[playerId].blip, math.ceil(playerLocation.w))
    SetBlipScale(Blips[playerId].blip, 1.0)
    SetBlipColour(Blips[playerId].blip, blipcolor)
    SetBlipAsShortRange(Blips[playerId].blip, false)
    BeginTextCommandSetBlipName('STRING')
    AddTextComponentString(playerLabel)
    EndTextCommandSetBlipName(Blips[playerId].blip)
    DutyBlips[#DutyBlips+1] = Blips[playerId].blip
end

-- Events
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    local player = QBCore.Functions.GetPlayerData()
    PlayerJob = player.job
    isHandcuffed = false
    TriggerServerEvent("police:server:SetHandcuffStatus", false)
    TriggerServerEvent("police:server:UpdateBlips")
    TriggerServerEvent("police:server:UpdateCurrentCops")

    if player.metadata.tracker then
        local trackerClothingData = {
            outfitData = {
                ["accessory"] = {
                    item = 13,
                    texture = 0
                }
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', trackerClothingData)
    else
        local trackerClothingData = {
            outfitData = {
                ["accessory"] = {
                    item = -1,
                    texture = 0
                }
            }
        }
        TriggerEvent('qb-clothing:client:loadOutfit', trackerClothingData)
    end

    if PlayerJob and (PlayerJob.name ~= "police" or PlayerJob.type ~= "leo") then
        if DutyBlips then
            for _, v in pairs(DutyBlips) do
                RemoveBlip(v)
            end
        end
        DutyBlips = {}
    end
    if Config.BlockWallThermals then
        SeethroughSetMaxThickness(0.25) -- block thermals from seeing through walls; default is 10000.0
    end
    QBCore.Functions.TriggerCallback('police:server:getSecureKey', function(result)
        SecKey = result
    end)
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
    TriggerServerEvent('police:server:UpdateBlips')
    TriggerServerEvent("police:server:SetHandcuffStatus", false)
    TriggerServerEvent("police:server:UpdateCurrentCops")
    isHandcuffed = false
    isEscorted = false
    PlayerJob = {}
    ClearPedTasks(PlayerPedId())
    DetachEntity(PlayerPedId(), true, false)
    if DutyBlips then
        for _, v in pairs(DutyBlips) do
            RemoveBlip(v)
        end
        DutyBlips = {}
    end
end)

RegisterNetEvent("QBCore:Client:SetDuty", function(newDuty)
    PlayerJob.onduty = newDuty
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    if (JobInfo.name ~= "police" or JobInfo.type ~= "leo") then
        if DutyBlips then
            for _, v in pairs(DutyBlips) do
                RemoveBlip(v)
            end
        end
        DutyBlips = {}
    end
    PlayerJob = JobInfo
    TriggerServerEvent("police:server:UpdateBlips")
end)

AddEventHandler('onResourceStart', function(resource)
   if resource == GetCurrentResourceName() then
    QBCore.Functions.TriggerCallback('police:server:getSecureKey', function(result)
        SecKey = result
    end)
   end
end)

RegisterNetEvent('police:client:sendBillingMail', function(amount)
    SetTimeout(math.random(2500, 4000), function()
        local gender = Lang:t('info.mr')
        if QBCore.Functions.GetPlayerData().charinfo.gender == 1 then
            gender = Lang:t('info.mrs')
        end
        local charinfo = QBCore.Functions.GetPlayerData().charinfo
        TriggerServerEvent('qb-phone:server:sendNewMail', {
            sender = Lang:t('email.sender'),
            subject = Lang:t('email.subject'),
            message = Lang:t('email.message', {value = gender, value2 = charinfo.lastname, value3 = amount}),
            button = {}
        })
    end)
end)

RegisterNetEvent('police:client:UpdateBlips', function(players)
    if DutyBlips then
        for _, v in pairs(DutyBlips) do
            RemoveBlip(v)
        end
    end
    DutyBlips = {}
    if players then
        for _, data in pairs(players) do
            if data.gpsactive then
                local id = GetPlayerFromServerId(data.source)
                CreateDutyBlips(id, data.label, data.job, data.location, data.vehClass)
            end
        end
    end
end)

RegisterNetEvent('police:client:policeAlert', function(coords, text)
    local street1, street2 = GetStreetNameAtCoord(coords.x, coords.y, coords.z)
    local street1name = GetStreetNameFromHashKey(street1)
    local street2name = GetStreetNameFromHashKey(street2)
    QBCore.Functions.Notify({text = text, caption = street1name.. ' ' ..street2name}, 'police')
    PlaySound(-1, "Lose_1st", "GTAO_FM_Events_Soundset", 0, 0, 1)
    local transG = 250
    local blip = AddBlipForCoord(coords.x, coords.y, coords.z)
    local blip2 = AddBlipForCoord(coords.x, coords.y, coords.z)
    local blipText = Lang:t('info.blip_text', {value = text})
    SetBlipSprite(blip, 60)
    SetBlipSprite(blip2, 161)
    SetBlipColour(blip, 1)
    SetBlipColour(blip2, 1)
    SetBlipDisplay(blip, 4)
    SetBlipDisplay(blip2, 8)
    SetBlipAlpha(blip, transG)
    SetBlipAlpha(blip2, transG)
    SetBlipScale(blip, 0.8)
    SetBlipScale(blip2, 2.0)
    SetBlipAsShortRange(blip, false)
    SetBlipAsShortRange(blip2, false)
    PulseBlip(blip2)
    BeginTextCommandSetBlipName('STRING')
    AddTextComponentString(blipText)
    EndTextCommandSetBlipName(blip)
    while transG ~= 0 do
        Wait(180 * 4)
        transG = transG - 1
        SetBlipAlpha(blip, transG)
        SetBlipAlpha(blip2, transG)
        if transG == 0 then
            RemoveBlip(blip)
            return
        end
    end
end)

RegisterNetEvent('police:client:SendToJail', function(time)
    TriggerServerEvent("police:server:SetHandcuffStatus", false)
    isHandcuffed = false
    isEscorted = false
    ClearPedTasks(PlayerPedId())
    DetachEntity(PlayerPedId(), true, false)
    TriggerEvent("prison:client:Enter", time)
end)

RegisterNetEvent('police:client:SendPoliceEmergencyAlert', function()
    local Player = QBCore.Functions.GetPlayerData()
    TriggerServerEvent('police:server:policeAlert', Lang:t('info.officer_down', {lastname = Player.charinfo.lastname, callsign = Player.metadata.callsign}))
    TriggerServerEvent('hospital:server:ambulanceAlert', Lang:t('info.officer_down', {lastname = Player.charinfo.lastname, callsign = Player.metadata.callsign}))
end)

RegisterNetEvent('police:client:UseGPS', function()
    if PlayerJob.type == 'leo' and PlayerJob.onduty then
        local newinputs = {}
        if not GPSActive then
            HeaderText = "GPS - "..PlayerJob.name.."<br>🔴 "..Lang:t('menu.gps_offline')
            Submittext = Lang:t('menu.activate_gps')
            newinputs[#newinputs+1] = { type = 'text', name = 'callsign', text = Lang:t('info.callsign_name'), isRequired = true}
        else
            HeaderText = "GPS - "..PlayerJob.name.."<br>🟢 "..Lang:t('menu.gps_online')
            Submittext = Lang:t('menu.deactivate_gps')
            newinputs[#newinputs+1] = { type = 'text', name = 'callsign', text = Lang:t('info.callsign_name'), isRequired = false}
        end
        local dialog = exports['qb-input']:ShowInput({ header = HeaderText, submitText = Submittext, inputs = newinputs })
        if dialog then
            if GPSActive then
                GPSActive = false
            else
                GPSActive = true
                TriggerServerEvent('police:server:SetCallSign', dialog.callsign)
            end
        end
    else
        QBCore.Functions.Notify(Lang:t('error.ondutyonly'), 'error', 4500)
    end
end)

-- Threads
CreateThread(function()
    for _, station in pairs(Config.Locations["stations"]) do
        local blip = AddBlipForCoord(station.coords.x, station.coords.y, station.coords.z)
        SetBlipSprite(blip, station.sprite)
        SetBlipAsShortRange(blip, true)
        SetBlipScale(blip, station.scale)
        SetBlipColour(blip, station.colour)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(station.label)
        EndTextCommandSetBlipName(blip)
    end
end)

CreateThread(function()
    while true do
        if PlayerJob.type == 'leo' and PlayerJob.onduty then
            local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
            local vehicleClass = GetVehicleClass(vehicle)
            local jobname = PlayerJob.name
            local call = QBCore.Functions.GetPlayerData().metadata["callsign"]
            if GPSActive and QBCore.Functions.HasItem('leo-gps') then GPSActive = true else GPSActive = false end
            local data = {vehClass = vehicleClass, playerJob = jobname, call = call, gpsactive = GPSActive}
            TriggerServerEvent('police:server:UpdateBlipInfo', data)
        end
        Wait(3000)
    end
end)
