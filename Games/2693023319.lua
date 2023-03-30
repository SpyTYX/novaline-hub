local functionNum = 0.00000000000000005
local plr = game:GetService('Players').LocalPlayer
local char = plr.Character
local NovalineConnection = loadstring(game:HttpGet("https://raw.githubusercontent.com/SpyTYX/mercury-plus/main/mercury-plus.lua"))()
local Novaline = NovalineConnection:create{
	Name = 'NovalineHub',
    Theme = NovalineConnection.Themes.Dark
}
local MainTab = Novaline:tab{
    Icon = "rbxassetid://4483362458",
    Name = "Main"
}
local MiscTab = Novaline:tab{
    Icon = "rbxassetid://4483362458",
    Name = "Misc"
}

MainTab:Button{
    Name = 'Win',
    Description = 'Teleports you to the south pole',
    Callback = function()
        if plr and char then
            local humanoidRootPart = char:FindFirstChild("HumanoidRootPart")
            if humanoidRootPart then
                humanoidRootPart.CFrame = CFrame.new(11127,395,114)
                task.wait(1);
                humanoidRootPart.CFrame = CFrame.new(11122,393,-0.03)
                task.wait(1);
            end
        end
    end
}

MainTab:Button{
    Name = 'AutoGetCoin',
    Description = 'Teleports you to places that give you coins.',
    Callback = function()
        if plr and char then
            local humanoidRootPart = char:FindFirstChild("HumanoidRootPart")
            if humanoidRootPart then
                humanoidRootPart.CFrame = CFrame.new(1806,103,-137)
                task.wait(1);
                humanoidRootPart.CFrame = CFrame.new(6024,159,-19)
                task.wait(1);
                humanoidRootPart.CFrame = CFrame.new(9124,434,103)
                task.wait(1);
                humanoidRootPart.CFrame = CFrame.new(11127,395,114)
                task.wait(1);
                humanoidRootPart.CFrame = CFrame.new(11122,393,-0.03)
                task.wait(1);
            end
        end
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
