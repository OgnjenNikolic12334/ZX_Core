Config = {}

Config.Settings = {
    Framework = {
        type = "esx" -- esx, qb-core
    },
    Inventory = {
        type = "tgiann-inventory" -- ox_inventory, qs-inventory, jpr-inventory, qb-inventory, tgiann-inventory
    },
    Notify = {
        type = "ox_lib", -- esx_notify, okokNotify, ox_lib
        notifyDuration = 5000 -- 5 sec
    }
}

Config.OtherFunctions = {
    Trains = {
        functional = true
    },
    PauseMenu = {
        functional = true,
        colours = {
            line = {
                r = 55,
                g = 182,
                b = 66,
                a = 9.9
            },
            style = {
                r = 15,
                g = 15,
                b = 15,
                a = 150
            },
            waypoint = {
                r = 55,
                g = 182,
                b = 66,
                a = 9.9
            }
        },
        header = {
            title = "Zenox RolePlay"
        }
    }
}