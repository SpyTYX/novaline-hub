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
    Name = "AutoFarm"
}
local MiscTab = Novaline:tab{
    Icon = "rbxassetid://4483362458",
    Name = "Misc"
}

_G.autoClick = true

function autoClick()
    while _G.autoClick do
        game:GetService("ReplicatedStorage").Packages.Knit.Services.ClickService.RF.Click:InvokeServer()
        wait()
    end
end
function win()
    char.HumanoidRootPart.CFrame = CFrame.new(-4064.5, 15, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    wait(0.1)
    char.HumanoidRootPart.CFrame = CFrame.new(-10064.5, 15, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    wait(0.1)
    char.HumanoidRootPart.CFrame = CFrame.new(-22064.5, 15, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    wait(0.1)
    char.HumanoidRootPart.CFrame = CFrame.new(-40064.5, 15, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    wait(0.1)
    char.HumanoidRootPart.CFrame = CFrame.new(-65064.5, 15, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    wait(0.1)
    char.HumanoidRootPart.CFrame = CFrame.new(-95064.5, 15, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    wait(0.1)
    char.HumanoidRootPart.CFrame = CFrame.new(-131064.5, 15, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    wait(0.1)
    char.HumanoidRootPart.CFrame = CFrame.new(-173064.5, 15, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    wait(0.1)
    char.HumanoidRootPart.CFrame = CFrame.new(-221064.5, 15, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    wait(0.1)
    char.HumanoidRootPart.CFrame = CFrame.new(-275064.5, 15, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    wait(0.1)
    char.HumanoidRootPart.CFrame = CFrame.new(-347064.5, 40, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    wait(0.1)
    char.HumanoidRootPart.CFrame = CFrame.new(-443064.5, 40, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end

MainTab:Toggle{
    Name = "AutoClick",
    StartingState = false,
    Description = "Clicks for you in clicking state",
    Callback = function(state) 
        _G.autoClick = state
        autoClick()
    end
}

MainTab:Button{
    Name = "Win",
    Description = "One-time use.",
    Callback = function() 
        win()
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
