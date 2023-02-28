local functionNum = 0.00000000000000005
local NovalineConnection = loadstring(game:HttpGet("https://raw.githubusercontent.com/SpyTYX/mercury-plus/main/mercury-plus.lua"))()
local Novaline = NovalineConnection:create{
	Name = 'NovalineHub',
    Theme = NovalineConnection.Themes.Dark
}
local AutoFarmTab = Novaline:tab{
    Icon = "rbxassetid://4483362458",
    Name = "Main"
}
local MiscTab = Novaline:tab{
    Icon = "rbxassetid://4483362458",
    Name = "Misc"
}

_G.autoSlice = true
_G.autoRebirth = true
_G.rebirthSelection = 1
_G.CFrame = CFrame.new(0,0,0)

function autoSlice()
    while _G.autoSlice do
        local args = {
            [1] = false
        }

        game:GetService("ReplicatedStorage").Remotes.Game.AirSlice:FireServer(unpack(args))
        wait(functionNum)
    end
end
function teleport()
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = _G.CFrame
    wait(0.02)
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
local teleportSelection = AutoFarmTab:Dropdown{
    Name = "Select Place",
    StartingText = "Spawn",
    Description = "Select Teleport Place",
    Items = {
        {"Spawn", CFrame.new()},
    },
    Callback = function(Items)
        _G.CFrame = Items
    end
}

local placeSelection = AutoFarmTab:Dropdown{
    Name = "Select Place",
    StartingText = "Spawn",
    Description = "Select the place you want to Teleport to",
    Items = {
        {"Spawn", CFrame.new(37.0544319, 1.59100008, 284.485931, -1, 0, 0, 0, 1, 0, 0, 0, -1)},
        {"Medieval", CFrame.new(14.3805771, 30, 679.014404, 1, 0, 0, 0, 1, 0, 0, 0, 1)},
        {"Snowfields", CFrame.new(-6.62776947, 30, 922.268372, 0, 0, 1, 0, 1, -0, -1, 0, 0)},
        {"Candyland", CFrame.new(8.44362259, 30, 1181.6272, 0, 0, -1, 0, 1, 0, 1, 0, 0)},
        {"Lavaland", CFrame.new(39.3038101, 30, 1455.11475, 0, 0, -1, 0, 1, 0, 1, 0, 0)},
    },
    Callback = function(Items)
        _G.CFrame = Items
    end
}
AutoFarmTab:Toggle{
    Name = "Teleport",
    StartingState = false,
    Description = "Teleports you to Selected Place",
    Callback = function(state) 
        teleport()
    end
}
MiscTab:Button{
    Name = "Reset Character",
    Description = "Respawns your Character",
    Callback = function() 
        wait(0.05)
        local char = game.Players.LocalPlayer.Character
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
        local plr = game.Players.LocalPlayer
        plr.CameraMaxZoomDistance = state
    end
}
