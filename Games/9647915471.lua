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
    local WorldsTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "World"
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
    _G.rebirthSelection = 'Rb1'
    _G.autoHatchEggs = true
    _G.autoHatchSelection = 'Common Egg'
    _G.autoUpgrade = true
    _G.autoUpgradeSelection = 'WalkSpeed'

    function autoClick()
        while _G.autoClicker do
            local args = {
                [1] = "Normal"
            }

            game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.Click:FireServer(unpack(args))
            wait(functionNum)
        end
    end
    function autoRebirth()
        while _G.autoRebirth do
            local args = {
                [1] = "List",
                [2] = _G.rebirthSelection
            }

            game:GetService("ReplicatedStorage").GameClient.Events.RemoteFunction.Rebirth:InvokeServer(unpack(args))
            wait(functionNum)
        end
    end
    function autoHatch()
        while _G.autoHatchEggs do
            local args = {
                [1] = workspace.Eggs:FindFirstChild(_G.autoHatchSelection),
                [2] = 'Buy1'
            }

            game:GetService("ReplicatedStorage").GameClient.Events.RemoteFunction.BuyEgg:InvokeServer(unpack(args))
            wait(functionNum)
        end
    end
    function autoUpgrade()
        while _G.autoUpgrade do
            local args = {
                [1] = "List",
                [2] = _G.autoUpgradeSelection
            }

            game:GetService("ReplicatedStorage").GameClient.Events.RemoteFunction.Upgrade:InvokeServer(unpack(args))
            wait(1)
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
    local rebirthSelection = AutoFarmTab:Dropdown{
        Name = "Rebirth Selection",
        StartingText = "1 Rebirth",
        Description = "Select the amount of Rebirths",
        Items = {
            {"1 Rebirth", "Rb1"},
            {"5 Rebirths", "Rb2"},
            {"15 Rebirths", "Rb3"},
            {"50 Rebirths", "Rb4"},
            {"250 Rebirths", "Rb5"},
            {"750 Rebirths", "Rb6"},
            {"2.75k Rebirths", "Rb7"},
            {"10.5k Rebirths", "Rb8"},
            {"25.52k Rebirths", "Rb9"},
            {"52.25k Rebirths", "Rb10"},
            {"75.95k Rebirths", "Rb11"},
            {"105.2k Rebirths", "Rb12"},
            {"210k Rebirths", "Rb13"},
            {"530k Rebirths", "Rb14"},
            {"1M Rebirths", "Rb15"},
            {"3M Rebirths", "Rb16"},
            {"7M Rebirths", "Rb17"},
            {"10M Rebirths", "Rb18"},
            {"15M Rebirths", "Rb19"},
            {"25M Rebirths", "Rb20"},
            {"50M Rebirths", "Rb21"},
            {"100M Rebirths", "Rb22"},
            {"250M Rebirths", "Rb23"},
            {"500M Rebirths", "Rb24"},
            {"1B Rebirths", "Rb25"},
            {"2.5B Rebirths", "Rb26"},
            {"5B Rebirths", "Rb27"},
            {"10B Rebirths", "Rb28"},
            {"50B Rebirths", "Rb29"},
            {"100B Rebirths", "Rb30"},
            {"100B Rebirths", "Rb31"},
            {"500B Rebirths", "Rb32"},
            {"1T Rebirths", "Rb33"},
        },
        Callback = function(Items)
            _G.rebirthSelection = Items
            print(_G.rebirthSelection)
        end
    }
    AutoFarmTab:Toggle{
        Name = "AutoUpgrade",
        StartingState = false,
        Description = "Upgrades selected Upgrade for you",
        Callback = function(state) 
            _G.autoUpgrade = state
            autoUpgrade()
        end
    }
    EggsTab:Toggle{
        Name = "AutoHatch",
        StartingState = false,
        Description = "Hatches eggs for you",
        Callback = function(state) 
            _G.autoHatchEggs = state
            autoHatch()
        end
    }
    local upgradeSelection = AutoFarmTab:Dropdown{
        Name = "Upgrade Selection",
        StartingText = "WalkSpeed Upgrade",
        Description = "Select the Upgrade you wanna Upgrade",
        Items = {
            {"WalkSpeed Upgrade", "WalkSpeed"},
            {"Jump Upgrade", "Jump"},
            {"WalkSpeed Upgrade", "WalkSpeed"},
        },
        Callback = function(Items)
            _G.autoHatchSelection = Items
            print(_G.autoHatchSelection)
        end
    }
    local hatchSelection = EggsTab:Dropdown{
        Name = "Egg Selection",
        StartingText = "Common Egg",
        Description = "Select the egg you wanna Hatch",
        Items = {
            {"Common Egg", "Common Egg"},
            {"Jagged Egg", "Jagged Egg"},
            {"Candy Egg", "Candy Egg"},
            {"Space Egg", "Space Egg"},
            {"Frozen Egg", "Frozen Egg"},
            {"Water Egg", "Water Egg"},
            {"Space Egg", "Space Egg"},
            {"Mushroom Egg", "Mushroom Egg"},
            {"Molten Egg", "Molten Egg"},
            {"Lunar Egg (EVENT)", "Chinese NY Egg"},
        },
        Callback = function(Items)
            _G.autoHatchSelection = Items
            print(_G.autoHatchSelection)
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
