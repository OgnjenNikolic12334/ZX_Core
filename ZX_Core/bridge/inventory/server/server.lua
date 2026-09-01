local function GiveItem(src, item, count)

    local inventoryType = Config.Settings.Inventory.type

    if inventoryType == "tgiann-inventory" then
        exports["tgiann-inventory"]:AddItem(src, item, count)

    elseif inventoryType == "ox_inventory" then
        exports.ox_inventory:AddItem(src, item, count)

    elseif inventoryType == "qs-inventory" then
        exports["qs-inventory"]:AddItem(src, item, count)

    elseif inventoryType == "jpr-inventory" then
        exports["jpr-inventory"]:AddItem(src, item, count)

    elseif inventoryType == "qb-inventory" then
        exports["qb-inventory"]:AddItem(src, item, count)
    end
end

exports("GiveItem", GiveItem) 