CreateThread(function()
    if Config.OtherFunctions.PauseMenu.functional then
        local color = Config.OtherFunctions.PauseMenu.colours 
        ReplaceHudColourWithRgba(
            116,
            color.line.r, 
            color.line.g, 
            color.line.b, 
            color.line.a 
        )

        ReplaceHudColourWithRgba(
            117,
            color.style.r, 
            color.style.g, 
            color.style.b, 
            color.style.a 
        )

        ReplaceHudColourWithRgba(
            142,
            color.waypoint.r, 
            color.waypoint.g, 
            color.waypoint.b, 
            color.waypoint.a 
        )

        if Config.OtherFunctions.PauseMenu.header.title then
            AddTextEntry(
                "FE_THDR_GTAO", 
                Config.OtherFunctions.PauseMenu.header.title 
            )
        end
    end
 end)