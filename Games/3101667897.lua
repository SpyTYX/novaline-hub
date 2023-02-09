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

    _G.autoSpeed = true
    _G.autoHatch = true
    _G.autoRebirth = true
    _G.autoCrystalSelection = 'Purple Crystal'
    _G.autoRace = true
    _G.godMode = true

    function autoSpeed()
        while _G.autoSpeed do
            local A_1 = {
                [1] = 'collectOrb',
                [2] = 'Red Orb',
                [3] = 'City'
            }
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            wait(functionNum)
        end
    end
    function autoHatch()
        while _G.autoHatch do
            local A_1 = {
                [1] = 'openCrystal',
                [2] = _G.autoCrystalSelection
            }

            game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer(unpack(A_1))
        end
    end
    function autoRebirth()
        while _G.autoRebirth do
            local A_1 = {
                [1] = 'rebirthRequest'
            }
            
            game:GetService('ReplicatedStorage').rEvents.rebirthEvent:FireServer(unpack(A_1))
            wait(functionNum)
        end
    end
    function autoRace()
        while _G.autoRace do
            local args = {
                [1] = "joinRace"
            }

            game:GetService("ReplicatedStorage").rEvents.raceEvent:FireServer(unpack(args))
            wait(functionNum)
        end
    end

    AutoFarmTab:Toggle{
        Name = "AutoSpeed",
        StartingState = false,
        Description = "yes",
        Callback = function(state) 
            _G.autoSpeed = state
            autoSpeed()
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
    local crystalSelection = EggsTab:Dropdown{
        Name = "Select Crystal",
        StartingText = "Purple Crystal",
        Description = "Select the crystal you want to hatch",
        Items = {
            {"Purple Crystal", 'Purple Crystal'},
            {"Blue Crystal", 'Blue Crystal'},
            {"Yellow Crystal", 'Yellow Crystal'},
        },
        Callback = function(Items)
            _G.autoCrystalSelection = Items
            print(_G.autoCrystalSelection)
        end
    }
    EggsTab:Toggle{
        Name = "AutoCrystal",
        StartingState = false,
        Description = "Opens Crystals for you automatically",
        Callback = function(state) 
            _G.autoHatch = state
            autoHatch()
        end
    }
    AutoFarmTab:Toggle{
        Name = "AutoRace",
        StartingState = false,
        Description = "Joins races for you automatically",
        Callback = function(state) 
            _G.autoRace = state
            autoRace()
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
    MiscTab:Toggle{
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
