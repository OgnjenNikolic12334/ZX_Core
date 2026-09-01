local Blips = {}
local nextBlipId = 0

local function AddBlip(data)
    nextBlipId = nextBlipId + 1 

    local handle = AddBlipForCoord(data.coords)
    SetBlipSprite(handle, data.sprite)
    SetBlipDisplay(handle, 4)
    SetBlipScale(handle, data.scale)
    SetBlipColour(handle, data.colour)

    if data.alpha then
        SetBlipAlpha(handle, data.alpha)

    elseif data.shortRange then
        SetBlipAsShortRange(handle, true) 

    elseif data.display then
        SetBlipDisplay(handle, data.display)

    elseif data.text then
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(data.text)
        EndTextCommandSetBlipName(handle)

    elseif data.hideOnLegend then
        SetBlipHiddenOnLegend(handle, true)
        
    end

    Blips[nextBlipId] = {
        handle = handle
    }

    return nextBlipId, handle 
end

local function DeleteBlip(id)
    if Blips[id] then
       RemoveBlip(Blips[id].handle) 
       Blips[id] = nil

       return true
    end

    return false
end

exports("AddBlip", AddBlip)
exports("RemoveBlip", DeleteBlip)

--[[ Kako se primenjuje 

exports["ZX_Core"]:AddBlip({
    coords = vector3(),
    sprite = ..,
    scale = ..,
    colour = ..,
    text = ""
})

exports["ZX_Core"]:RemoveBlip(id blipa koji treba da se obrise)
]]