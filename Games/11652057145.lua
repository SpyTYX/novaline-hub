--Vars
local inf = math.huge; local defaultNum = 50; local plr = game.Players.LocalPlayer; local char = plr.Character

-- Clicker Masters
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
_G.speed = true
_G.selectedSpeed = 20

function autoClick()
    while _G.autoClicker do
        game:GetService("ReplicatedStorage").Events.Click:FireServer()
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
    Name = "Rebirth Selection",
    StartingText = "1 Rebirth",
    Description = "Select the amount of Rebirths",
    Items = {
        {"1 Rebirth", 1},
        {"5 Rebirth", 5},
        {"10 Rebirth", 10},
        {"25 Rebirth", 25},
    },
    Callback = function(Items)
        _G.rebirthSelection = Items
        print(_G.rebirthSelection)
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
    end
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