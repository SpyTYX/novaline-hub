local functionNum = 0.00000000000000005
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
    local WorldsTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "Player"
    }
    local MiscTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "Misc"
    }

    _G.autoClicker = true
    _G.autoSell = true
    
    function autoClick()
        while _G.autoClicker do
            game:GetService("Players").LocalPlayer.Character.Starter.RemoteClick:FireServer()
            game:GetService('ReplicatedStorage').Events.Clicked:FireServer()
            game:GetService('ReplicatedStorage').Events.UpdateData:InvokeServer()
            wait(functionNum)
        end
    end
    function autoSell()
        while _G.autoSell do
            game:GetService('ReplicatedStorage').Events.Sell:FireServer()
            game:GetService('ReplicatedStorage').Events.UpdateData:InvokeServer()
            wait(functionNum)
        end
    end

    AutoFarmTab:Toggle{
        Name = "AutoSwing",
        StartingState = false,
        Description = "Swings your sword for you automatically",
        Callback = function(state) 
            _G.autoClicker = state
            autoClick()
        end
    }
    AutoFarmTab:Toggle{
        Name = "AutoSell",
        StartingState = false,
        Description = "Sells for you automatically",
        Callback = function(state) 
            _G.autoSell = state
            autoSell()
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
