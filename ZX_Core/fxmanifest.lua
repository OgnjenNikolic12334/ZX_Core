fx_version 'cerulean'
game 'gta5'
author 'Discord: oggiissa ZX Scripts Discord: https://discord.gg/akkgn8crZy'
description 'ZX Core | Required dependency for ZX Scripts.'
version '1.0.0'

shared_scripts {
    'shared/config.lua',
    '@ox_lib/init.lua'

}

client_scripts {
    -- Menagers
    'client/markerMenager/markerMenager.lua',
    'client/blipMenager/blipMenager.lua',

    -- Other Functions 
    'client/other/treins.lua',
    'client/other/pauseMenu.lua',

    -- Bridge Functions
    'bridge/notify/client/client.lua',
}

server_scripts {
    'bridge/inventory/server/server.lua'
} 

server_exports {
    'GiveItem'
}

