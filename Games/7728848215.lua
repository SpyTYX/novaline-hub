local functionNum = 0.00000000000000005
    local NovalineConnection = loadstring(game:HttpGet("https://raw.githubusercontent.com/SpyTYX/mercury-plus/main/mercury-plus.lua"))()
    local Novaline = NovalineConnection:create{
		Name = 'NovalineHub',
        Theme = NovalineConnection.Themes.Dark
    }
    local AutoFarmTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "AutoFarm"
    }
    local MiscTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "Misc"
    }

    _G.autoSlice = true
    _G.autoRebirth = true
    _G.rebirthSelection = 1

    function autoSlice()
        while _G.autoSlice do
            local args = {
                [1] = false
            }

            game:GetService("ReplicatedStorage").Remotes.Game.AirSlice:FireServer(unpack(args))
            wait(functionNum)
        end
    end

    AutoFarmTab:Toggle{
        Name = "AutoSwing",
        StartingState = false,
        Description = "Swings your sword for you",
        Callback = function(state) 
            _G.autoSlice = state
            autoSlice()
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
