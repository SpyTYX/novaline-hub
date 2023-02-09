local functionNum = 0.00000000000000005
    print('Loading NovalineHub')
    local NovalineConnection = loadstring(game:HttpGet("https://raw.githubusercontent.com/SpyTYX/mercury-plus/main/mercury-plus.lua"))()
    local Novaline = NovalineConnection:create{
		Name = 'NovalineHub',
        Theme = NovalineConnection.Themes.Dark
    }
    local AutoFarmTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "AutoFarms"
    }
    local EggsTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "Eggs"
    }
    local MiscTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "Misc"
    }

    _G.autoClicker = true
    _G.autoRebirth = true
    _G.autoRebirthValue = 1
    _G.autoBeast = true
    _G.buyEgg = true
    _G.eggSelection = 'basic'
    _G.upgradeSelection = 'ClickMultiply'

    function autoClicker()
        while _G.autoClicker do
            local args = {
                [1] = 1
            }

            game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.ClickService.Click:FireServer(unpack(args))
            wait(functionNum)
        end
    end
    function autoRebirth()
        while _G.autoRebirth do
            local args = {
                [1] = _G.autoRebirthValue
            }

            game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.RebirthService.BuyRebirths:FireServer(unpack(args))
            wait(functionNum)
        end
    end
    function autoBeast()
        while _G.autoBeast do
            game:GetService(ReplicatedStorage).Aero.AeroRemoteServices.BeastModeService.Begin:FireServer()
            wait(1)
        end
    end
    function buyEgg()
        while _G.buyEgg do
            local args = {
                [1] = _G.eggSelection
            }

            game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.Purchase:FireServer(unpack(args))
            wait(0.5)
        end
    end
    function upgrade()
        local A_1 = {
            [1] = _G.upgradeSelection
        }

        game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.UpgradeService.BuyUpgrade:FireServer(unpack(args))
    end

    AutoFarmTab:Toggle{
        Name = "AutoClicker",
        StartingState = false,
        Description = "Clicks for you",
        Callback = function(state) 
            _G.autoClicker = state
            autoClicker()
        end
    }
    AutoFarmTab:Toggle{
        Name = "AutoRebirth",
        StartingState = false,
        Description = "Rebirths for you",
        Callback = function(state) 
            _G.autoRebirth = state
            autoRebirth()
        end
    }
    local AutoRebirthSelection = AutoFarmTab:Dropdown{
        Name = "Select Rebirth",
        StartingText = "1 Rebirth",
        Description = "Select the amount of rebirths",
        Items = {
            {"1 Rebirth", 1},
            {"10 Rebirth", 10},
            {"100 Rebirth", 100},
            {"1k Rebirth", 1000},
            {"10k Rebirth", 10000},
            {"100k Rebirth", 100000},
            {"1m Rebirth", 1000000},
            {"10m Rebirth", 10000000},
            {"100m Rebirth", 100000000},
            {"1b Rebirth", 1000000000},
            {"10b Rebirth", 10000000000},
            {"100b Rebirth", 100000000000},
        },
        Callback = function(Items) 
            _G.autoRebirthValue = Items
        end
    }
    AutoFarmTab:Toggle{
        Name = "AutoBeast",
        StartingState = false,
        Description = "Turns BeastMode on for you",
        Callback = function(state) 
            _G.autoBeast = state
            autoBeast()
        end
    }
    EggsTab:Toggle{
        Name = "AutoEgg",
        StartingState = false,
        Description = "Buys selected egg for you",
        Callback = function(state) 
            _G.buyEgg = state
            buyEgg()
        end
    }
    local EggSelection = EggsTab:Dropdown{
        Name = "Select Egg",
        StartingText = "Basic Egg",
        Description = "Select the egg for AutoEgg",
        Items = {
            {"Basic Egg", "basic"},
            {"Lava Egg", "lava"},
            {"Desert Egg", "desert"},
            {"Ocean Egg", "ocean"},
            {"Winter Egg", "winter"},
            {"Toxic Egg", "toxic"},
            {"Candy Egg", "candy"},
            {"Forest Egg", "forest"},
            {"Storm Egg", "storm"},
            {"Blocks Egg", "blocks"},
            {"Space Egg", "space"},
            {"Dominus Egg", "dominus"},
            {"Infinity Egg", "infinity"},
            {"Future Egg", "future"},
            {"City Egg", "city"},
            {"Moon Egg", "moon"},
            {"Fire Egg", "fire"},
            {"Premium Egg (ROBUX)", "premium"},
            {"Deluxe Egg (ROBUX)", "deluxe"},
            {"Omega Egg (ROBUX)", "omega"},
            {"Imposter Egg (ROBUX)", "imposter"},
            {"Halloween Egg (EVENT)", "halloween"},
        },
        Callback = function(Items) 
            _G.eggSelection = Items
        end
    }
    MiscTab:Button{
        Name = "Purchase Click Multiplier",
        Description = "Purchase 'ClickMultiplier' Upgrade",
        Callback = function() 
            upgrade()
        end
    }
    local upgradeSelection = MiscTab:Dropdown{
        Name = "Select Upgrade",
        StartingText = "Click Multiplier",
        Description = "Select the egg for AutoEgg",
        Items = {
            {"Click Multiplier", 'ClickMultiply'},
            {"Click Damage", 'CursorDamage'},
            {"Pet Storage", 'PetStorage'},
            {"Speed", 'WalkSpeed'},
            {"Jump Power", 'JumpPower'},
            {"Health", 'Health'},
        },
        Callback = function(Items) 
            _G.eggSelection = Items
        end
    }
    MiscTab:Button{
        Name = "Reset Character",
        Description = "Respawns your Character",
        Callback = function() 
            wait(0.05)
            char.Humanoid.Health = 0
        end
    }
    MiscTab:Button{
        Name = "Kill Roblox",
        Description = "Destroys roblox instance",
        Callback = function() 
            wait(1)
            game:Shutdown()
        end
    }
    MiscTab:Slider{
        Name = "Zoom",
        Default = 130,
        Min = 1,
        Max = 10000,
        Callback = function(state) 
            plr.CameraMaxZoomDistance = state
        end
    }
