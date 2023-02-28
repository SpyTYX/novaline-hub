local functionNum = 0.00000000000000005
local char = game.Players.LocalPlayer.Character
local plr = game.Players.LocalPlayer
local NovalineConnection = loadstring(game:HttpGet("https://raw.githubusercontent.com/SpyTYX/mercury-plus/main/mercury-plus.lua"))()
local Novaline = NovalineConnection:create{
	Name = 'NovalineHub',
    Theme = NovalineConnection.Themes.Dark
}
local MainTab = Novaline:tab{
    Icon = "rbxassetid://4483362458",
    Name = "Main"
}
local WorldTab = Novaline:tab{
    Icon = "rbxassetid://4483362458",
    Name = "Teleports"
}
local MiscTab = Novaline:tab{
    Icon = "rbxassetid://4483362458",
    Name = "Misc"
}

function complete()
    wait(1)
    char.HumanoidRootPart.CFrame = CFrame.new(-248, 2.22947788, -259.93219, -1, 0, 0, 0, 1, 0, 0, 0, -1);
    wait()
    char.HumanoidRootPart.CFrame = CFrame.new(-248, 2.5, -153, -1, 0, 0, 0, 1, 0, 0, 0, -1);
    wait()
    char.HumanoidRootPart.CFrame = CFrame.new(-248.000488, 1.5, -73.0004425, -1, 0, 0, 0, 1, 0, 0, 0, -1);
    wait()
    char.HumanoidRootPart.CFrame = CFrame.new(-248, 2.22947788, -259.93219, -1, 0, 0, 0, 1, 0, 0, 0, -1);
    wait()
    char.HumanoidRootPart.CFrame = CFrame.new(-248, 2.22947788, -259.93219, -1, 0, 0, 0, 1, 0, 0, 0, -1);
    wait()
    char.HumanoidRootPart.CFrame = CFrame.new(-248, 2.22947788, -259.93219, -1, 0, 0, 0, 1, 0, 0, 0, -1);
    wait()
    char.HumanoidRootPart.CFrame = CFrame.new(-248, 2.22947788, -259.93219, -1, 0, 0, 0, 1, 0, 0, 0, -1);
    wait()
    char.HumanoidRootPart.CFrame = CFrame.new(-248, 2.22947788, -259.93219, -1, 0, 0, 0, 1, 0, 0, 0, -1);
    wait()
    char.HumanoidRootPart.CFrame = CFrame.new(-248, 2.22947788, -259.93219, -1, 0, 0, 0, 1, 0, 0, 0, -1);
    wait()
    char.HumanoidRootPart.CFrame = CFrame.new(-248, 2.22947788, -259.93219, -1, 0, 0, 0, 1, 0, 0, 0, -1);
    wait()
    char.HumanoidRootPart.CFrame = CFrame.new(-248, 2.22947788, -259.93219, -1, 0, 0, 0, 1, 0, 0, 0, -1);
    wait()
end

MainTab:Button{
    Name = 'AutoComplete',
    Description = 'Completes the obby for you',
    Callback = function(state)
        complete()
    end
}
MiscTab:Button{
    Name = "Reset Character",
    Description = "Respawns your character",
    Callback = function() 
        wait(0.05)
        char.Humanoid.Health = 0
    end
}
MiscTab:Button{
    Name = "Kill Roblox",
    Description = "Destroys roblox instance.",
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
