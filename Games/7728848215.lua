--Vars
local inf = math.huge; local defaultNum = 50; local plr = game.Players.LocalPlayer; local char = plr.Character

--Slashing Simulator
local functionNum = 0.00000000000000005
print('Loading NovalineHub')
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
    Name = "AutoSlice",
    StartingState = false,
    Description = "Slices your sword for you",
    Callback = function(state) 
        _G.autoSlice = state
        autoSlice()
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