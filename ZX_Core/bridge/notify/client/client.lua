local function ShowNotify(title, description, type)
    local durationTime = Config.Settings.Notify.notifyDuration
    if Config.Settings.Notify.type == "ox_lib" then
        lib.notify({
            title = title,
            description = description,
            duration = durationTime or 5000,
            type = type or "info"
        })
    
    elseif Config.Settings.Notify.type == "esx_notify" then
        exports['esx_notify']:Notify(type or info, title, durationTime or 5000, description) 
    
    elseif Config.Settings.Notify.type == "okokNotify" then
        exports['okokNotify']:Alert(title, description, durationTime or 5000, type)

    end
end

exports("ShowNotify", ShowNotify)