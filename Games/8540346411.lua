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
        Name = "AutoFarmTab"
    }
    local EggsTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "Player"
    }
    local MiscTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "Misc"
    }

    _G.autoClicker = true
    _G.autoRebirth = true
    _G.autoRebirthSelection = 1
    _G.autoHatch = true
    _G.autoHatchEggSelection = 'Basic'
    _G.godMode = true

    function autoHatch()
        while _G.autoHatch do
            local args = {
                [1] = _G.autoHatchEggSelection,
                [2] = 'Triple'
            }

            game:GetService('ReplicatedStorage').Functions.Unbox:InvokeServer(unpack(args))
            wait(0.3)
        end
    end
    function autoClick()
        while _G.autoClicker do
            game:GetService('ReplicatedStorage').Events.Click3:FireServer()
            wait(functionNum)
        end
    end
    function autoRebirth()
        while _G.autoClicker do
            local args = {
                [1] = _G.autoRebirthSelection
            }

            game:GetService('ReplicatedStorage').Events.Rebirth:FireServer(unpack(args))
            wait(functionNum)
        end
    end

    AutoFarmTab:Toggle{
        Name = "AutoClicker",
        StartingState = false,
        Description = "Clicks for you automatically",
        Callback = function(state) 
            _G.autoClicker = state
            autoClick()
        end
    }
    AutoFarmTab:Toggle{
        Name = "AutoRebirth",
        StartingState = false,
        Description = "Rebirths for you automatically",
        Callback = function(state) 
            _G.autoRebirth = state
            autoRebirth()
        end
    }
    local rebirthSelection = AutoFarmTab:Dropdown{
        Name = "Select Rebirths",
        StartingText = "1 Rebirth",
        Description = "Select the amount of rebirths",
        Items = {
            {"1 Rebirth", 1},
            {"5 Rebirths", 2},
            {"10 Rebirths", 3},
            {"25 Rebirths", 4},
            {"100 Rebirths", 5},
            {"500 Rebirths", 6},
            {"2.5K Rebirths", 7},
            {"5K Rebirths", 8},
            {"10K Rebirths", 9},
            {"50K Rebirths", 10},
        },
        Callback = function(Items)
            _G.autoRebirthSelection = Items
            print(_G.autoRebirthSelection)
        end
    }
    EggsTab:Toggle{
        Name = "AutoUnbox",
        StartingState = false,
        Description = "Unboxes eggs for you",
        Callback = function(state) 
            _G.autoHatch = state
            autoHatch()
        end
    }
    local eggSelection = EggsTab:Dropdown{
        Name = "Select Egg",
        StartingText = "Basic Egg",
        Description = "Select the egg you want to hatch",
        Items = {
            {"Basic Egg", 'Basic'},
            {"Mythic Egg", 'Mythic'},
            {"Forest Egg", 'Forest'},
            {"Beach Egg", 'Beach'},
            {"Atlantis Egg", 'Atlantis'},
            {"Desert Egg", 'Desert'},
            {"Winter Egg", 'Winter'},
            {"Volcano Egg", 'Volcano'},
            {"Moon Egg", 'Moon'},
            {"Cyber Egg", 'Cyber'},
            {"Magic Egg", 'Magic'},
        },
        Callback = function(Items)
            _G.autoHatchEggSelection = Items
            print(_G.autoHatchEggSelection)
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
    function godMode()
        while _G.godMode do
            char.Humanoid.WalkSpeed = 155
            char.Humanoid.JumpPower = 200
            if _G.godMode == false then
                char.Humanoid.WalkSpeed = 16
                char.Humanoid.JumpPower = 50
            end
            wait(functionNum)
        end
    end
    MiscTab:Toggle{
        Name = "GodMode",
        StartingState = false,
        Description = "Enables speed and jump powers",
        Callback = function(state) 
            _G.godMode = state
            godMode()
        end
    }
