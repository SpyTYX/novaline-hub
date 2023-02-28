local functionNum = 0.00000000000000005
local char = game.Players.LocalPlayer.Character
local plr = game.Players.LocalPlayer
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
    _G.autoRebirthSelection = '1'
    _G.autoHatchEgg = true
    _G.autoEggSelection = 'Basic Egg'
    _G.autoUnlockParty = true
    _G.autoUpgradeParty = true
    _G.autoParty = 'Desert'
    _G.speed = true
    _G.selectedSpeed = 20

    function autoClick()
        while _G.autoClicker do
            local args = {
                [1] = 'e'
            }

            game:GetService("ReplicatedStorage").Click:FireServer(unpack(args))
            wait(functionNum)
        end
    end
    function autoRebirth()
        while _G.autoRebirth do
            local args = {
                [1] = _G.autoRebirthSelection,
                [2] = 'a'
            }

            game:GetService("ReplicatedStorage").Rebirth:FireServer(unpack(args))
            wait(functionNum)
        end
    end
    function autoHatch()
        while _G.autoHatchEgg do
            local args = {
                [1] = _G.autoEggSelection,
                [2] = 'Normal',
                [3] = 'asdgouhsaiugdhasoiudghodsagfasdgdsaoughsadoug'
            }

            game:GetService("ReplicatedStorage").HatchEvents.Hatch:FireServer(unpack(args))
            wait(0.5)
        end
    end
    function autoUnlockParty()
        while _G.autoUnlockParty do
            local args = {
                [1] = _G.autoParty
            }

            game:GetService("ReplicatedStorage").UnlockParty:FireServer(unpack(args))
            wait(functionNum)
        end
    end
    function autoUpgradeParty()
        while _G.autoUpgradeParty do
            local args = {
                [1] = _G.autoParty
            }

            game:GetService("ReplicatedStorage").UpgradeParty:FireServer(unpack(args))
            wait(functionNum)
        end
    end
    function speed()
        while _G.speed do
            char.Humanoid.WalkSpeed = _G.selectedSpeed
            wait(functionNum)
        end
    end

    AutoFarmTab:Toggle{
        Name = "AutoClicker",
        StartingState = false,
        Description = "Clicks for you",
        Callback = function(state) 
            _G.autoClicker = state
            autoClick()
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
    local autoRebirthSelect = AutoFarmTab:Dropdown{
        Name = 'Select Rebirths',
        StartingText = '1 Rebirth',
        Description = 'Select the Amount of Rebirths',
        Items = {
            {"1 Rebirth", "1"},
            {"5 Rebirth", "2"},
            {"10 Rebirth", "3"},
            {"50 Rebirth", "4"},
            {"100 Rebirth", "5"},
            {"200 Rebirth", "6"},
            {"500 Rebirth", "7"},
            {"750 Rebirth", "8"},
            {"1000 Rebirth", "9"},
            {"1500 Rebirth", "10"},
        },
        Callback = function(Items) 
            _G.autoRebirthSelection = Items
        end
    }
    EggsTab:Toggle{
        Name = "AutoHatch",
        StartingState = false,
        Description = "Hatches eggs for you",
        Callback = function(state) 
            _G.autoHatchEgg = state
            autoHatch()
        end
    }
    local autoHatchSelect = EggsTab:Dropdown{
        Name = 'Select Egg',
        StartingText = 'Basic Egg',
        Description = 'Select the Egg you wanna use',
        Items = {
            {"Basic Egg", "Basic Egg"},
            {"Epic Egg", "Epic Egg"},
            {"Desert Egg", "Desert Egg"},
            {"Desert Myths Egg", "Desert Myths Egg"},
            {"Desert Structures Egg", "Desert Structures Egg"},
            {"Egyptian Gods Egg", "Egyptian Gods Egg"},
            {"Oceanic Egg", "Oceanic Egg"},
            {"Ocean Monsters Egg", "Ocean Monsters Egg"},
        },
        Callback = function(Items) 
            _G.autoEggSelection = Items
        end
    }
    MiscTab:Toggle{
        Name = "AutoUnlockParty",
        StartingState = false,
        Description = "Unlocks parties for you",
        Callback = function(state)
            _G.autoUnlockParty = state
            autoUnlockParty()
        end
    }
    MiscTab:Toggle{
        Name = "AutoUpgradeParty",
        StartingState = false,
        Description = "Upgrades parties for you",
        Callback = function(state)
            _G.autoUpgradeParty = state
            autoUpgradeParty()
        end
    }
    local autoPartiesSelection = EggsTab:Dropdown{
        Name = 'Select Party',
        StartingText = 'Desert Party',
        Description = 'Select the Party you are gonna use',
        Items = {
            {"Desert Party", "Desert"},
            {"Ocean Party", "Ocean"},
            {"Volcano Party", "Volcano"},
            {"Candy Party", "Candy"},
            {"Beach Party", "Beach"},
            {"Toxic Party", "Toxic"},
            {"Anime Party", "Anime"},
            {"Russo Party", "Russo"},
        },
        Callback = function(Items) 
            _G.autoEggSelection = Items
        end
    }
    MiscTab:Toggle{
        Name = "Set Speed",
        StartingState = false,
        Description = "Sets your speed to the selected speed.",
        Callback = function(state) 
            _G.speed = state
            speed()
        end
    }
    local speedSelection = MiscTab:Dropdown{
        Name = "Select Speed",
        StartingText = "16 Speed",
        Description = "Select the Speed",
        Items = {
            {"5 Speed (VERY SLOW)", 5},
            {"12 Speed (SLOW)", 12},
            {"20 Speed (DEFAULT)", 16},
            {"30 Speed (SLIGHTLY FAST)", 30},
            {"50 Speed (FAST)", 50},
            {"100 Speed (VERY FAST)", 100},
            {"... Speed (BYE)", math.huge},
        },
        Callback = function(Items) 
            _G.selectedSpeed = Items
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
