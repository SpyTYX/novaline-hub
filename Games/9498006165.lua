--Vars
local inf = math.huge; local defaultNum = 50; local plr = game.Players.LocalPlayer; local char = plr.Character

--Tapping Simulator
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
_G.rebirthSelection = 1
_G.autoHatchEgg = true
_G.egg = "75M Egg"
_G.speed = true
_G.selectedSpeed = 20

function autoClick()
    while _G.autoClicker do
        local args = {
            [1] = 'Main'
        }

        game:GetService("ReplicatedStorage").Events.Tap:FireServer()
        wait(functionNum)
    end
end

function autoRebirth()
    while _G.autoRebirth do
        local args = {
            [1] = _G.rebirthSelection
        }

        game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
        wait(functionNum)
    end
end

function hatchEgg()
    while _G.autoHatchEgg do
        local args = {
            [1] = {},
            [2] = _G.egg,
            [3] = 1
        }

        game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer(unpack(args))
        wait(0.00005)
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

local rebirthSelection = AutoFarmTab:Dropdown{
    Name = "Select Rebirth",
    StartingText = "1 Rebirth",
    Description = "Select the amount of Rebirths",
    Items = {
        {"1 Rebirth", 1},
        {"5 Rebirth", 5},
        {"10 Rebirth", 10},
        {"20 Rebirth", 20},
        {"100 Rebirth", 100},
        {"500 Rebirth", 500},
        {"4000 Rebirth", 4000},
    },
    Callback = function(Items) 
        _G.rebirthSelection = Items
    end
}

EggsTab:Toggle{
    Name = "AutoHatch",
    StartingState = false,
    Description = "Hatches eggs for you",
    Callback = function(state) 
        _G.autoHatchEgg = state
        hatchEgg()
    end
}

local eggSelectionhaha = EggsTab:Dropdown{
    Name = "Select Egg",
    StartingText = "Starter Egg",
    Description = "Select the Egg",
    Items = {
        {"Starter Egg", "Starter Egg"},
        {"Wood Egg", "Wood Egg"},
        {"Jungle Egg", "Jungle Egg"},
        {"Forest Egg", "Forest Egg"},
        {"Bee Egg", "Bee Egg"},
        {"Swamp Egg", "Swamp Egg"},
        {"Snow Egg", "Snow Egg"},
        {"Desert Egg", "Desert Egg"},
        {"Beach Egg", "Beach Egg"},
        {"Mine Egg", "Mine Egg"},
        {"Cloud Egg", "Cloud Egg"},
        {"Coral Egg", "Coral Egg"},
        {"Dark Egg", "Dark Egg"},
        {"Fire Egg", "Fire Egg"},
        {"Underworld Egg", "Underworld Egg"},
        {"Molten Egg", "Molten Egg"},
        {"Magma Egg", "Magma Egg"},
        {"Blue Magma Egg", "Blue Magma Egg"},
        {"Purple Magma Egg", "Purple Magma Egg"},
        {"Yellow Magma Egg", "Yellow Magma Egg"},
        {"Red Magma Egg", "Red Magma Egg"},
        {"Holy Egg", "Holy Egg"},
        {"Holy Wood Egg", "Holy Wood Egg"},
        {"Holy Bee Egg", "Holy Bee Egg"},
        {"Flora Egg", "Flora Egg"},
        {"Castle Egg", "Castle Egg"},
        {"Candy Egg", "Candy Egg"},
        {"Festive Egg", "Festival Egg"},
        {"Japanese Egg", "Japan Egg"},
        {"75M Egg (EVENT)", "75M Egg"},
    },
    Callback = function(Items) 
        _G.egg = Items
    end
}

WorldsTab:Button{
    Name = "Teleport to Spawn",
    Description = "Teleports you to Spawn",
    Callback = function() 
        local args = {
            [1] = CFrame.new(-296.79730224609375, 23.281475067138672, -501.625732421875) * CFrame.Angles(-0, -1.5707963705062866, 0)
        }

        game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
    end
}

WorldsTab:Button{
    Name = "Teleport to Forest",
    Description = "Teleports you to Forest",
    Callback = function() 
        local args = {
            [1] = CFrame.new(-163.98446655273438, 987.5964965820312, -403.33941650390625) * CFrame.Angles(-0, 0, -0)
        }

        game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
    end
}

WorldsTab:Button{
    Name = "Teleport to Flowerlands",
    Description = "Teleports you to Flowerlands",
    Callback = function() 
        local args = {
            [1] = CFrame.new(-179.51564025878906, 1524.6309814453125, -682.4987182617188) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732)
        }

        game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
    end
}

WorldsTab:Button{
    Name = "Teleport to Swamp",
    Description = "Teleports you to Swamp",
    Callback = function() 
        local args = {
            [1] = CFrame.new(-264.35888671875, 2123.06298828125, -694.6613159179688) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732)
        }

        game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
    end
}

WorldsTab:Button{
    Name = "Teleport to Snow Island",
    Description = "Teleports you to Snow Island",
    Callback = function() 
        local args = {
            [1] = CFrame.new(-201.77197265625, 2944.481689453125, -470.40875244140625) * CFrame.Angles(0, 1.5707963705062866, 0)
        }

        game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
    end
}

WorldsTab:Button{
    Name = "Teleport to Desert",
    Description = "Teleports you to Desert",
    Callback = function() 
        local args = {
            [1] = CFrame.new(-166.28515625, 4235.38916015625, -779.1531372070312) * CFrame.Angles(0, 1.5707963705062866, 0)
        }

        game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
    end
}

WorldsTab:Button{
    Name = "Teleport to Death Island",
    Description = "Teleports you to Death Island",
    Callback = function() 
        local args = {
            [1] = CFrame.new(-276.2012634277344, 5425.62158203125, -480.28778076171875) * CFrame.Angles(0, 1.5707963705062866, 0)
        }

        game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
    end
}

WorldsTab:Button{
    Name = "Teleport to Beach Island",
    Description = "Teleports you to Beach Island",
    Callback = function() 
        local args = {
            [1] = CFrame.new(-140.3450927734375, 6881.630859375, -495.68212890625) * CFrame.Angles(0, 1.5707963705062866, 0)
        }

        game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
    end
}

WorldsTab:Button{
    Name = "Teleport to Mines",
    Description = "Teleports you to Mines",
    Callback = function() 
        local args = {
            [1] = CFrame.new(-243.2586669921875, 8376.5166015625, -483.8897705078125) * CFrame.Angles(0, 1.5707963705062866, 0)
        }

        game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
    end
}

WorldsTab:Button{
    Name = "Teleport to Clouds",
    Description = "Teleports you to Clouds",
    Callback = function() 
            local args = {
                [1] = CFrame.new(-253.30348205566406, 11262.8818359375, -237.8885955810547) * CFrame.Angles(0, 1.5707963705062866, 0)
        }

            game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
    end
}

WorldsTab:Button{
    Name = "Teleport to Coral Island",
    Description = "Teleports you to Coral Island",
    Callback = function() 
        local args = {
            [1] = CFrame.new(-511.0211181640625, 13812.0322265625, -543.2418212890625) * CFrame.Angles(-0, -1.5707963705062866, 0)
        }

        game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
    end
}

WorldsTab:Button{
    Name = "Teleport to Darkheart Island",
    Description = "Teleports you to Darkheart",
    Callback = function() 
        local args = {
                [1] = CFrame.new(-408.697509765625, 17180.138671875, -552.0464477539062) * CFrame.Angles(0, 1.5707963705062866, 0)
            }

        game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
    end
}

WorldsTab:Button{
    Name = "Teleport to World 2",
    Description = "Teleports you to World 2",
    Callback = function()
        local args = {
            [1] = CFrame.new(1410.1021728515625, 159.49407958984375, -2861.50048828125) * CFrame.Angles(0, 1.5707963705062866, 0)
        }
        
        game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
    end
}

WorldsTab:Button{
    Name = "Teleport to Magma Island",
    Description = "Teleports you to Magma",
    Callback = function()
        local args = {
            [1] = CFrame.new(1280.5958251953125, 2193.828125, -2885.144287109375) * CFrame.Angles(0, 1.5707963705062866, 0)
        }

        game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
    end
}

WorldsTab:Button{
    Name = "Teleport to Blue Magma Island",
    Description = "Teleports you to Blue Magma",
    Callback = function() 
        local args = {
            [1] = CFrame.new(1401.12939453125, 5240.41943359375, -2953.919677734375) * CFrame.Angles(0, 1.5707963705062866, 0)
        }

        game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
    end
}

WorldsTab:Button{
    Name = "Teleport to Purple Magma Island",
    Description = "Teleports you to Purple Magma",
    Callback = function() 
        local args = {
            [1] = CFrame.new(1319.7027587890625, 7662.02490234375, -2958.0576171875) * CFrame.Angles(0, 1.5707963705062866, 0)
        }

        game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
    end
}

WorldsTab:Button{
    Name = "Teleport to Yellow Magma Island",
    Description = "Teleports you to Yellow Magma",
    Callback = function() 
        local args = {
            [1] = CFrame.new(1403.5440673828125, 10404.09765625, -2903.138427734375) * CFrame.Angles(-3.1415927410125732, 0.7853636741638184, -3.1415927410125732)
        }

        game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
    end
}

WorldsTab:Button{
    Name = "Teleport to Red Magma Island",
    Description = "Teleports you to Red Magma",
    Callback = function() 
        local args = {
            [1] = CFrame.new(1426.2127685546875, 13353.703125, -2900.90087890625) * CFrame.Angles(-3.1415927410125732, 0.7853636741638184, -3.1415927410125732)
        }

        game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
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
    StartingText = "20 Speed",
    Description = "Select the Speed",
    Items = {
        {"5 Speed (VERY SLOW)", 5},
        {"12 Speed (SLOW)", 12},
        {"20 Speed (DEFAULT)", 20},
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
    Description = "Resets your character",
    Callback = function() 
        wait(0.05)
        char.Humanoid.Health = 0
    end
}

MiscTab:Button{
    Name = "Kill Roblox",
    Description = "Destroys roblox instance (just do alt+f4 smh)",
    Callback = function() 
        wait(1)
        game:Shutdown()
    end9498006165
}

MiscTab:Button{
    Name = "Destroy NovalineHub",
    Description = "whyyy :(((!!!",
    Callback = function() 
        wait(1)
        Novaline:Destroy()
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