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
    local MiscTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "Misc"
    }

    _G.autoLift = true
    _G.autoPunch = true
    _G.godMode = true

    function autoPunch()
        while _G.autoPunch do
            local A_1 = {
                [1] = 'punch',
                [2] = 'leftHand'
            }
            local A_2 = {
                [1] = 'punch',
                [2] = 'rightHand'
            }

            game:GetService('Players').LocalPlayer.muscleEvent:FireServer(unpack(A_1))
            wait(0.3)
            game:GetService('Players').LocalPlayer.muscleEvent:FireServer(unpack(A_2))
            wait(0.3)
        end
    end
    function autoLift()
        while _G.autoRep do
            local A_1 = {
                [1] = 'rep'
            }

            game:GetService('Players').LocalPlayer.muscleEvent:FireServer(unpack(A_1))
            wait(0.175)
        end
    end
    AutoFarmTab:Label{
        Name = 'Important',
        Description = 'These features require the items to be equipped'
    }
    AutoFarmTab:Toggle{
        Name = "AutoBench",
        StartingState = false,
        Description = "Automatically lifts your dumbell",
        Callback = function(state) 
            _G.autoLift = state
            autoLift()
        end
    }
    AutoFarmTab:Toggle{
        Name = "AutoPunch",
        StartingState = false,
        Description = "Automatically punches for you",
        Callback = function(state) 
            _G.autoPunch = state
            autoPunch()
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
