AddBoxZone = function(name,data)
    if Config.TargetSystem == "qb-target" or Config.TargetSystem == "qtarget" then
        exports[Config.TargetSystem]:AddBoxZone(name, vector3(data.Position.x, data.Position.y, data.Position.z), (data.Length or 1.0), (data.Width or 1.0), {
        name = name,
        debugPoly = Config.Debug,
        heading = (data.Position.w or 0.0),
        minZ = data.Position.z - 1.0,
        maxZ = data.Position.z + data.Height,
        }, {
        options = data.Options,
        distance = (data.Distance or 1.5),
        })
    elseif Config.TargetSystem == "ox_target" then
        for k,v in pairs(data.Options) do
            data.Options[k].onSelect = v.action
            data.Options[k].distance = (data.Distance or 1.5)
        end
        exports['ox_target']:addBoxZone({
        coords = vector3(data.Position.x, data.Position.y, data.Position.z),
        size = vector3((data.Length or 1.0), (data.Width or 1.0), (data.Height or 1.0)),
        rotation = data.Position.w,
        debug = Config.Debug,
        options = data.Options,
        })
    end
end

AddTargetBone = function(bone,data)
    if Config.TargetSystem == "qb-target" or Config.TargetSystem == "qtarget" then
        exports[Config.TargetSystem]:AddTargetBone(bone,
        {
        options = data.Options,
        distance = (data.Distance or 1.5),
        })
    elseif Config.TargetSystem == "ox_target" then
        -- Need to find the code for targetbone
    end
end

AddGlobalPlayer = function(data)
    if Config.TargetSystem == "qb-target" or Config.TargetSystem == "qtarget" then
        exports[Config.TargetSystem]:AddGlobalPlayer(
        {
        options = data.Options,
        distance = (data.Distance or 1.5),
        })
    elseif Config.TargetSystem == "ox_target" then
        for k,v in pairs(data.Options) do
            data.Options[k].onSelect = v.action
          end
          return exports.ox_target:addGlobalPlayer(data.Options)
    end
end

AddTargetModel = function(model, data)
    if Config.TargetSystem == "qb-target" or Config.TargetSystem == "qtarget" then
        exports[Config.TargetSystem]:AddTargetModel(model,
        {
        options = data.Options,
        distance = (data.Distance or 1.5),
        })
    elseif Config.TargetSystem == "ox_target" then
        for k,v in pairs(data.Options) do
            data.Options[k].onSelect = v.action
          end
          return exports.ox_target:addModel(model,data.Options)
    end
end