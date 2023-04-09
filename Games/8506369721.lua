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

function teleportToChina()
    if plr and char then
        local hrp = game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart');
        if hrp then
            hrp.CFrame = CFrame.new(57,10508,82);
            task.wait(1);
            local player = game.Players.LocalPlayer
            local properties = { CFrame = CFrame.new(87,-1431,101), }
            local easingStyle = Enum.EasingStyle.Linear
            local easingDirection = Enum.EasingDirection.Out
            local duration = 45
    
            local tween = game:GetService("TweenService"):Create(player.Character.HumanoidRootPart, TweenInfo.new(duration, easingStyle, easingDirection), properties)
            task.wait();
            tween:Play()
        end
    end
end

MainTab:Button{
    Name = "Win",
    Description = "Teleport to China™️ (BETA + BUGGY)",
    Callback = function() 
        teleportToChina()
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
