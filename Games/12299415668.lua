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
local MiscTab = Novaline:tab{
    Icon = "rbxassetid://4483362458",
    Name = "Misc"
}

_G.autoFarm = true

function autoFarm()
    Novaline:Prompt{
        Followup = false,
        Title = 'Warning!',
        Text = "This autofarm may kick you from the game sometimes. It is NOT undetectable.",
        Buttons = {
            Understood = function()
                --
            end,
        }
    };
    while _G.autoFarm do
        for _,v in ipairs(game:GetService('Workspace').Parts:GetChildren()) do
            task.wait()
            local player = game.Players.LocalPlayer
            local properties = { CFrame = v.CFrame, }
            local easingStyle = Enum.EasingStyle.Linear
            local easingDirection = Enum.EasingDirection.Out
            local duration = 14.5
    
            local tween = game:GetService("TweenService"):Create(player.Character.HumanoidRootPart, TweenInfo.new(duration, easingStyle, easingDirection), properties)
            task.wait()
            tween:Play()
        end
        task.wait(5)
    end
    task.wait(3.5)
end

MainTab:Toggle{
    Name = "AutoFarm",
    StartingState = false,
    Description = "Automatically eat blocks",
    Callback = function(state)
        _G.autoFarm = state
        autoFarm()
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
