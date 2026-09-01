local Markers = {}
local nextId = 0 

local function AddMarker(data)
    nextId = nextId + 1

    Markers[nextId] = {
        type = data.type,
        coords = data.coords,
        size = data.size,
        color = data.color,
        distance = data.distance        
    }
    return nextId
end

local function RemoveMarker(id)
    if Markers[id] then
        Markers[id] = nil
        return true
    end

    return false
end

local function IsInMarkerDistance(marker)
    local playerPedCoords = GetEntityCoords(PlayerPedId())
    local distance = #(marker.coords - playerPedCoords)

    if distance < marker.distance then
        return true
    end

    return false
end  

local function UpdateMarker(markerId, data)
    if not Markers[markerId] then
        print("WARNING: Marker ID not valid!")
        return
    end

    if not data then
        print("WARNING: Data Table is Nil!")
        return
    end
    
    if data.type ~= nil then 
        Markers[markerId].type = data.type 

    elseif data.coords ~= nil then 
        Markers[markerId].coords = data.coords

    elseif data.size ~= nil then 
        Markers[markerId].size = data.size 

    elseif data.color ~= nil then 
        Markers[markerId].color = data.color 

    elseif data.distance ~= nil then 
        Markers[markerId].distance = data.distance 
    end

end

CreateThread(function()
    while true do 
        local sleep = 1000
        for markerId, marker in pairs(Markers) do 
            if IsInMarkerDistance(marker) then
                sleep = 0
                DrawMarker(
                    marker.type,
                    marker.coords.x, marker.coords.y, marker.coords.z,
                    0.0, 0.0, 0.0,
                    0.0, 0.0, 0.0,
                    marker.size.x, marker.size.y, marker.size.z,
                    marker.color.r, marker.color.g, marker.color.b, marker.color.a,
                    false, true, 2, false, nil, nil, false
                )                  
            end         
        end
        Wait(sleep) 
    end
end)

exports("AddMarker", AddMarker)
exports("RemoveMarker", RemoveMarker)
exports("UpdateMarker", UpdateMarker)
