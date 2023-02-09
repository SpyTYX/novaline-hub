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
    local PlayerTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "Player"
    }
    local MiscTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "Misc"
    }

    _G.autoSprint = true
    _G.autoClean = true

    function clean()
        while _G.autoClean do
            local args = {
                [1] = 'Clean',
                [2] = workspace.Spot.Clean
            }

            game:GetService('ReplicatedStorage').Remote:FireServer(unpack(args))
            wait(2)
        end
    end
    function sprint()
        while _G.autoSprint do
            local args = {
                [1] = 'Sprinting',
                [2] = true
            }

            game:GetService('ReplicatedStorage').Remote:FireServer(unpack(args))
            wait(functionNum)
        end
        local args = {
            [1] = 'Sprinting',
            [2] = false
        }
        game:GetService('ReplicatedStorage').Remote:FireServer(unpack(args))
    end

    AutoFarmTab:Toggle{
        Name = "AutoSprint",
        StartingState = false,
        Description = "Sprints for you automatically",
        Callback = function(state) 
            _G.autoSprint = state
            sprint()
        end
    }
    AutoFarmTab:Toggle{
        Name = "AutoClean",
        StartingState = false,
        Description = "Cleans windows for you automatically",
        Callback = function(state) 
            _G.autoClean = state
            clean()
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
        char.Humanoid.WalkSpeed = 155
        char.Humanoid.JumpPower = 200
        if _G.godMode == false then
            char.Humanoid.WalkSpeed = 16
            char.Humanoid.JumpPower = 50
        end
        wait(functionNum)
    end
    PlayerTab:Toggle{
        Name = "GodMode",
        StartingState = false,
        Description = "Enables speed and jump powers",
        Callback = function(state) 
            _G.godMode = state
            while true do
                godMode()
            end
        end
    }
