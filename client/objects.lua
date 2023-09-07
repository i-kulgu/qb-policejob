-- Variables
local ObjectList = {}
local SpawnedSpikes = {}
local spikemodel = `P_ld_stinger_s`
local ClosestSpike = nil
local SpikeZone = {}
local inSpikeZone = false
local isInVehicle = false

-- Functions
local function GetClosestPoliceObject()
    local pos = GetEntityCoords(PlayerPedId(), true)
    local current = nil
    local dist = nil

    for id, _ in pairs(ObjectList) do
        local dist2 = #(pos - ObjectList[id].coords)
        if current then
            if dist2 < dist then
                current = id
                dist = dist2
            end
        else
            dist = dist2
            current = id
        end
    end
    return current, dist
end

function GetClosestSpike()
    local pos = GetEntityCoords(PlayerPedId(), true)
    local current = nil
    local dist = nil

    for id, _ in pairs(SpawnedSpikes) do
        if current then
            if #(pos - vector3(SpawnedSpikes[id].coords.x, SpawnedSpikes[id].coords.y, SpawnedSpikes[id].coords.z)) < dist then
                current = id
            end
        else
            dist = #(pos - vector3(SpawnedSpikes[id].coords.x, SpawnedSpikes[id].coords.y, SpawnedSpikes[id].coords.z))
            current = id
        end
    end
    ClosestSpike = current
end

local tires = {
    {bone = "wheel_lf", index = 0},
    {bone = "wheel_rf", index = 1},
    {bone = "wheel_lm", index = 2},
    {bone = "wheel_rm", index = 3},
    {bone = "wheel_lr", index = 4},
    {bone = "wheel_rr", index = 5}
}

local function wheelThread(bool)
    CreateThread(function()
        while inSpikeZone do
            if not bool then break end
            local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
            local vehiclePos = GetEntityCoords(vehicle, false)
            local spike = GetClosestObjectOfType(vehiclePos.x, vehiclePos.y, vehiclePos.z, 15.0, spikemodel, 1, 1, 1)
            local spikePos = GetEntityCoords(spike, false)
            local distance = #(vehiclePos - spikePos)
            for a = 1, #tires do
                local tirePos = GetWorldPositionOfEntityBone(vehicle, GetEntityBoneIndexByName(vehicle, tires[a].bone))
                if #(tirePos - spikePos) < 1.8 then
                    if not IsVehicleTyreBurst(vehicle, tires[a].index, true) or IsVehicleTyreBurst(vehicle, tires[a].index, false) then
                        SetVehicleTyreBurst(vehicle, tires[a].index, false, 1000.0)
                    end
                end
            end
            Wait(3)
        end
    end)
end

-- Events
RegisterNetEvent("QBCore:Client:EnteredVehicle", function()
    isInVehicle = true
end)

RegisterNetEvent("QBCore:Client:LeftVehicle", function()
    isInVehicle = false
end)

RegisterNetEvent('police:client:spawnCone', function()
    QBCore.Functions.Progressbar("spawn_object", Lang:t("progressbar.place_object"), 2500, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "anim@narcotics@trash",
        anim = "drop_front",
        flags = 16,
    }, {}, {}, function() -- Done
        StopAnimTask(PlayerPedId(), "anim@narcotics@trash", "drop_front", 1.0)
        TriggerServerEvent("police:server:spawnObject", "cone")
    end, function() -- Cancel
        StopAnimTask(PlayerPedId(), "anim@narcotics@trash", "drop_front", 1.0)
        QBCore.Functions.Notify(Lang:t("error.canceled"), "error")
    end)
end)

RegisterNetEvent('police:client:spawnBarrier', function()
    QBCore.Functions.Progressbar("spawn_object", Lang:t("progressbar.place_object"), 2500, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "anim@narcotics@trash",
        anim = "drop_front",
        flags = 16,
    }, {}, {}, function() -- Done
        StopAnimTask(PlayerPedId(), "anim@narcotics@trash", "drop_front", 1.0)
        TriggerServerEvent("police:server:spawnObject", "barrier")
    end, function() -- Cancel
        StopAnimTask(PlayerPedId(), "anim@narcotics@trash", "drop_front", 1.0)
        QBCore.Functions.Notify(Lang:t("error.canceled"), "error")
    end)
end)

RegisterNetEvent('police:client:spawnRoadSign', function()
    QBCore.Functions.Progressbar("spawn_object", Lang:t("progressbar.place_object"), 2500, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "anim@narcotics@trash",
        anim = "drop_front",
        flags = 16,
    }, {}, {}, function() -- Done
        StopAnimTask(PlayerPedId(), "anim@narcotics@trash", "drop_front", 1.0)
        TriggerServerEvent("police:server:spawnObject", "roadsign")
    end, function() -- Cancel
        StopAnimTask(PlayerPedId(), "anim@narcotics@trash", "drop_front", 1.0)
        QBCore.Functions.Notify(Lang:t("error.canceled"), "error")
    end)
end)

RegisterNetEvent('police:client:spawnTent', function()
    QBCore.Functions.Progressbar("spawn_object", Lang:t("progressbar.place_object"), 2500, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "anim@narcotics@trash",
        anim = "drop_front",
        flags = 16,
    }, {}, {}, function() -- Done
        StopAnimTask(PlayerPedId(), "anim@narcotics@trash", "drop_front", 1.0)
        TriggerServerEvent("police:server:spawnObject", "tent")
    end, function() -- Cancel
        StopAnimTask(PlayerPedId(), "anim@narcotics@trash", "drop_front", 1.0)
        QBCore.Functions.Notify(Lang:t("error.canceled"), "error")
    end)
end)

RegisterNetEvent('police:client:spawnLight', function()
    QBCore.Functions.Progressbar("spawn_object", Lang:t("progressbar.place_object"), 2500, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "anim@narcotics@trash",
        anim = "drop_front",
        flags = 16,
    }, {}, {}, function() -- Done
        StopAnimTask(PlayerPedId(), "anim@narcotics@trash", "drop_front", 1.0)
        TriggerServerEvent("police:server:spawnObject", "light")
    end, function() -- Cancel
        StopAnimTask(PlayerPedId(), "anim@narcotics@trash", "drop_front", 1.0)
        QBCore.Functions.Notify(Lang:t("error.canceled"), "error")
    end)
end)

RegisterNetEvent('police:client:deleteObject', function()
    local objectId, dist = GetClosestPoliceObject()
    if dist < 5.0 then
        QBCore.Functions.Progressbar("remove_object", Lang:t('progressbar.remove_object'), 2500, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "weapons@first_person@aim_rng@generic@projectile@thermal_charge@",
            anim = "plant_floor",
            flags = 16,
        }, {}, {}, function() -- Done
            StopAnimTask(PlayerPedId(), "weapons@first_person@aim_rng@generic@projectile@thermal_charge@", "plant_floor", 1.0)
            TriggerServerEvent("police:server:deleteObject", objectId)
        end, function() -- Cancel
            StopAnimTask(PlayerPedId(), "weapons@first_person@aim_rng@generic@projectile@thermal_charge@", "plant_floor", 1.0)
            QBCore.Functions.Notify(Lang:t("error.canceled"), "error")
        end)
    end
end)

RegisterNetEvent('police:client:removeObject', function(objectId)
    NetworkRequestControlOfEntity(ObjectList[objectId].object)
    DeleteObject(ObjectList[objectId].object)
    ObjectList[objectId] = nil
end)

RegisterNetEvent('police:client:spawnObject', function(objectId, type, player)
    local coords = GetEntityCoords(GetPlayerPed(GetPlayerFromServerId(player)))
    local heading = GetEntityHeading(GetPlayerPed(GetPlayerFromServerId(player)))
    local forward = GetEntityForwardVector(PlayerPedId())
    local x, y, z = table.unpack(coords + forward * 0.5)
    local spawnedObj = CreateObject(Config.Objects[type].model, x, y, z, true, false, false)
    PlaceObjectOnGroundProperly(spawnedObj)
    SetEntityHeading(spawnedObj, heading)
    FreezeEntityPosition(spawnedObj, Config.Objects[type].freeze)
    ObjectList[objectId] = {
        id = objectId,
        object = spawnedObj,
        coords = vector3(x, y, z - 0.3),
    }
end)

RegisterNetEvent('police:client:SpikePolyZone', function()
    for k,v in pairs(SpawnedSpikes) do
        if not v.pzcreated then
            v.pzcreated = true
            SpikeZone[v.netid] = BoxZone:Create(v.coords, 20, 20, {
                name="spikezone-"..v.netid,
                debugPoly = false,
                heading = v.heading+90,
                minZ = v.coords.z - 2,
                maxZ = v.coords.z + 2,
            })
            SpikeZone[v.netid]:onPlayerInOut(function(isPointInside)
                if isPointInside then
                    inSpikeZone = true
                    if isInVehicle then
                        wheelThread(true)
                    end
                else
                    inSpikeZone = false
                    wheelThread(false)
                end
            end)
        end
    end
end)

RegisterNetEvent('police:client:SpawnSpikeStrip', function()
    if #SpawnedSpikes + 1 < Config.MaxSpikes then
        if PlayerJob.type == "leo" and PlayerJob.onduty then
            local spawnCoords = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 2.0, 0.0)
            local spike = CreateObject(spikemodel, spawnCoords.x, spawnCoords.y, spawnCoords.z, 1, 1, 1)
            local netid = NetworkGetNetworkIdFromEntity(spike)
            local SpikeHeading = GetEntityHeading(PlayerPedId())
            SetNetworkIdExistsOnAllMachines(netid, true)
            SetNetworkIdCanMigrate(netid, false)
            SetEntityHeading(spike, GetEntityHeading(PlayerPedId()))
            PlaceObjectOnGroundProperly(spike)
            SpawnedSpikes[#SpawnedSpikes+1] = {
                coords = vector3(spawnCoords.x, spawnCoords.y, spawnCoords.z),
                netid = netid,
                object = spike,
                heading = SpikeHeading,
                pzcreated = false
            }
            TriggerServerEvent('police:server:SyncSpikes', SpawnedSpikes)
        end
    else
        QBCore.Functions.Notify(Lang:t("error.no_spikestripe"), 'error')
    end
end)

RegisterNetEvent('police:client:SyncSpikes', function(table)
    SpawnedSpikes = table
end)

RegisterNetEvent('police:client:removeSpike', function(name)
    for k,v in pairs(SpikeZone) do
        if v.name == name then
            v:destroy()
        end
    end
end)

AddTargetModel(spikemodel, {
    Options  = {
        {
            icon  = 'fas fa-hand-holding',
            label = 'Pick Up',
            canInteract = function()
                if PlayerJob.type == "leo" then return true end
            end,
            action = function(entity)
                GetClosestSpike()
                local spike = NetToEnt(SpawnedSpikes[ClosestSpike].netid)
                if entity == spike then
                    NetworkRegisterEntityAsNetworked(spike)
                    NetworkRequestControlOfEntity(spike)
                    SetEntityAsMissionEntity(spike)
                    Wait(500)
                    for k,v in pairs(SpikeZone) do
                        if v.name == "spikezone-"..SpawnedSpikes[ClosestSpike].netid then
                            TriggerServerEvent('police:server:removeSpike', v.name)
                        end
                    end
                    DeleteEntity(spike)
                    SpawnedSpikes[ClosestSpike] = nil
                    ClosestSpike = nil
                    TriggerServerEvent('police:server:SyncSpikes', SpawnedSpikes)
                end
            end,
        }
    }}
)
