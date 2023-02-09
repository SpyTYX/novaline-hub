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
        Name = "EggsTab"
    }
    local PlayerTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "Player"
    }
    local MiscTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "Misc"
    }

    _G.autoClicker = true
    _G.autoSell = true
    _G.autoUnlockAllIslands = true
    _G.buySwords = true
    _G.godMode = true
    _G.teleportSelection = CFrame.new(0,0,0)
    _G.autoHatchCrystals = true
    _G.autoFarmBoss = true

    function autoClick()
        while _G.autoClicker do
            local args = {
                [1] = 'swingKatana'
            }

            game:GetService('Players').LocalPlayer.ninjaEvent:FireServer(unpack(args))
            wait(functionNum)
        end
    end
    function autoSell()
        while _G.autoSell do
            if _G.autoClicker == false then return end
            game:GetService('Workspace').sellAreaCircles.sellAreaCircle16.circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            wait(0.1)
            game:GetService('Workspace').sellAreaCircles.sellAreaCircle16.circleInner.CFrame = CFrame.new(0,0,0)
            wait(0.1)
        end
    end
    function unlockIslands()
        local oldCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        for _,v in pairs(game:GetService('Workspace').islandUnlockParts:GetChildren()) do
            game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            wait(0.05)
            game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(307.297058, 123.87394, 1763.52197, 2.07424164e-05, 0.57355696, 0.819165647, -0.99999994, 2.07424164e-05, 1.07884407e-05, -1.07884407e-05, -0.819165647, 0.573557019)
            wait(0.3)
            wait(0.1)
        end
        wait(0.1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldCFrame
    end
    function farmBoss3()
        local oldCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        while _G.autoFarmBoss do
            for _,v in pairs(game:GetService('Workspace').bossWalkParts3:GetChildren()) do
                game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                wait(0.65)
            end
            wait(functionNum)
        end
        wait(0.1)
        _G.autoClicker = false
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldCFrame
    end
    function teleport()
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = _G.teleportSelection
        wait(0.1)
    end
    function unlockSwords()
        if not _G.buySwords then return end
        local args = {
            [1] = 'BuyAllSwords',
            [2] = 'Blazing Vortex Island'
        }
        local requirement = game:GetService('Players').LocalPlayer.ninjaEvent
        requirement:FireServer(unpack(args))
        wait(0.1)
    end
    function openEgg()
        while _G.autoHatchCrystals do
            local args = {
                [1] = 'openCrystal',
                [2] = 'Infinity Void Crystal'
            }

            game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer(unpack(args))
        end
    end

    AutoFarmTab:Toggle{
        Name = "AutoSwing",
        StartingState = false,
        Description = "Swings your katana for you",
        Callback = function(state) 
            _G.autoClicker = state
            autoClick()
        end
    }
    AutoFarmTab:Toggle{
        Name = "AutoSell",
        StartingState = false,
        Description = "Do i even need to explain?",
        Callback = function(state) 
            _G.autoSell = state
            autoSell()
        end
    }
    PlayerTab:Button{
        Name = "Teleport",
        Description = "Teleport to the selected place",
        Callback = function() 
            teleport()
        end
    }
    local teleportSelection = PlayerTab:Dropdown{
        Name = "Select Island",
        StartingText = "Spawn",
        Description = "Select the place you want to go",
        Items = {
            {"Spawn (MAIN ISLAND)", CFrame.new(0,0,0)},
            {"Cloning Altar (CLONING)", CFrame.new(4479.33154, 141.681931, 1382.17188, -0.422592998, 0, -0.906319618, 0, 1, 0, 0.906319618, 0, -0.422592998)},
            {"Elements Altar (ELEMENTS)", CFrame.new(729.453125, 141.681931, -5902.17725, 0.984812498, -0, -0.173621148, 0, 1, -0, 0.173621148, 0, 0.984812498)},
            {"DOJO (AFK FARMING)", CFrame.new(-4109.91553, 141.681931, -5908.68457, 0.939700544, 0, 0.341998369, 0, 1, 0, -0.341998369, 0, 0.939700544)},
            {"Enchanted Island", CFrame.new(26.9946918, 781.996155, -114.43486, 0, 0, -1, 0, 1, 0, 1, 0, 0)},
            {"Astral Island", CFrame.new(247.097946, 2032.19617, 347.208893, 0.819155693, 0, 0.573571265, 0, 1, 0, -0.573571265, 0, 0.819155693)},
            {"Mystical Island", CFrame.new(162.742065, 4065.7981, 13.3782578, -0.819156051, 0, 0.573571265, 0, 1, 0, -0.573571265, 0, -0.819156051)},
            {"Tundra Island", CFrame.new(199.768478, 9303.29688, 12.9378996, -0.939700961, 0, 0.341998369, 0, 1, 0, -0.341998369, 0, -0.939700961)},
            {"Sandstone Island", CFrame.new(199.768478, 17704.4473, 12.9378996, -0.939700961, 0, 0.341998369, 0, 1, 0, -0.341998369, 0, -0.939700961)},
            {"Ancient Inferno Island", CFrame.new(197.86853, 28274.4121, 7.03808689, -0.939700961, 0, 0.341998369, 0, 1, 0, -0.341998369, 0, -0.939700961)},
            {"Midnight Shadow Island", CFrame.new(197.86853, 33225.1016, 7.03808689, -0.939700961, 0, 0.341998369, 0, 1, 0, -0.341998369, 0, -0.939700961)},
            {"Mythical Souls Island", CFrame.new(197.86853, 39335.6953, 7.03808689, -0.939700961, 0, 0.341998369, 0, 1, 0, -0.341998369, 0, -0.939700961)},
            {"Winter Wonder Island", CFrame.new(197.86853, 46028.6797, 7.03808689, -0.939700961, 0, 0.341998369, 0, 1, 0, -0.341998369, 0, -0.939700961)},
            {"Golden Master Island", CFrame.new(197.86853, 52625.8867, 7.03808689, -0.939700961, 0, 0.341998369, 0, 1, 0, -0.341998369, 0, -0.939700961)},
            {"Dragon Legends Island", CFrame.new(197.86853, 59612.8047, 7.03808689, -0.939700961, 0, 0.341998369, 0, 1, 0, -0.341998369, 0, -0.939700961)},
            {"Cybernetic Legends Island", CFrame.new(197.86853, 66687.2969, 7.03808689, -0.939700961, 0, 0.341998369, 0, 1, 0, -0.341998369, 0, -0.939700961)},
            {"Skystorm Ultraus Island", CFrame.new(197.86853, 70289.2891, 7.03808689, -0.939700961, 0, 0.341998369, 0, 1, 0, -0.341998369, 0, -0.939700961)},
            {"Soul Fusion Island", CFrame.new(197.86853, 79765.1172, 7.03808689, -0.939700961, 0, 0.341998369, 0, 1, 0, -0.341998369, 0, -0.939700961)},
            {"Dark Elements Island", CFrame.new(197.86853, 83217.1172, 7.03808689, -0.939700961, 0, 0.341998369, 0, 1, 0, -0.341998369, 0, -0.939700961)},
            {"Inner Peace Island", CFrame.new(197.86853, 87069.2031, 7.03808689, -0.939700961, 0, 0.341998369, 0, 1, 0, -0.341998369, 0, -0.939700961)},
            {"Blazing Vortex Island", CFrame.new(197.86853, 91264.2031, 7.03808689, -0.939700961, 0, 0.341998369, 0, 1, 0, -0.341998369, 0, -0.939700961)},
        },
        Callback = function(Items)
            _G.teleportSelection = Items
            print(_G.teleportSelection)
        end
    
    PlayerTab:Button{
        Name = "Unlock All Islands",
        Description = "Unlocks every island in the game currently available",
        Callback = function() 
            wait(1)
            unlockIslands()
        end
    }
    PlayerTab:Button{
        Name = "Buy Swords",
        Description = "Buys swords in the shop for you",
        Callback = function() 
            wait(1)
            unlockSwords()
        end
    }
    EggsTab:Toggle{
        Name = "OpenEgg",
        StartingState = false,
        Description = "hi yt",
        Callback = function(state) 
            wait(1)
            openEgg()
        end
    }
    AutoFarmTab:Toggle{
        Name = "AutoBuySwords",
        StartingState = false,
        Description = "Automatically buys swords in the shop for you ",
        Callback = function(state) 
            wait(1)
            while true do
                unlockSwords()
            end
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
