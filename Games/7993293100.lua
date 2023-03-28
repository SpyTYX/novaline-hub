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

_G.teleportArea = CFrame.new(0,-9999999999,0)
_G.NHD = true

function teleport()
    local player = game:GetService('Players').LocalPlayer
    player.Character.HumanoidRootPart.CFrame = _G.teleportArea
end

function win()
    local player = game:GetService('Players').LocalPlayer
    local x = { CFrame = CFrame.new(18,119,842), }
    local y = { CFrame = CFrame.new(12,120,396), }
    local z = { CFrame = CFrame.new(-5,120,-229), }
    local a = { CFrame = CFrame.new(-7,120,-820), }
    local b = { CFrame = CFrame.new(-13,39,-1052), }
    local easingStyle = Enum.EasingStyle.Linear
    local easingDirection = Enum.EasingDirection.Out
    local duration = 0.25
    local xx = game:GetService("TweenService"):Create(player.Character.HumanoidRootPart, TweenInfo.new(duration, easingStyle, easingDirection), x)
    local yy = game:GetService("TweenService"):Create(player.Character.HumanoidRootPart, TweenInfo.new(duration, easingStyle, easingDirection), y)
    local zz = game:GetService("TweenService"):Create(player.Character.HumanoidRootPart, TweenInfo.new(duration, easingStyle, easingDirection), z)
    local aa = game:GetService("TweenService"):Create(player.Character.HumanoidRootPart, TweenInfo.new(duration, easingStyle, easingDirection), a)
    local bb = game:GetService("TweenService"):Create(player.Character.HumanoidRootPart, TweenInfo.new(duration, easingStyle, easingDirection), b)
    task.wait()
    xx:Play()
    task.wait(0.95)
    yy:Play()
    task.wait(0.95)
    zz:Play()
    task.wait(0.95)
    aa:Play()
    task.wait(0.95)
    bb:Play()
end

function noHealthDecrease()
    local player = game:GetService('Players').LocalPlayer
    if player and player.Character then
        local humanoid = player.Character:WaitForChild('Humanoid')
        while _G.NHD do
            humanoid.Health = 100
            task.wait(1)
            humanoid.Health = 99.9
            task.wait(1)
        end
    end
end

function resetAtLocation()
    local originalPos = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame
    game:GetService("ReplicatedStorage").RemoteEvents.Gameplay.MustCrossProperly:FireServer()
    task.wait()
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = originalPos;
end

local tpSelection = MainTab:Dropdown{
    Name = 'Teleport',
    Description = 'Teleports to selected place',
    Items = {
        {'Lobby', CFrame.new(-22,121,939)},
        {'Button Press', CFrame.new(-4,121,979)},
        {'Game End', CFrame.new(61,48,1594)},
        {'Testing (DEV)', CFrame.new(61,48,1594)},
    },
    Callback = function(Items)
        _G.teleportArea = Items
        teleport()
    end
}

MainTab:Button{
    Name = 'Win',
    Description = 'Teleports you to the end',
    Callback = function()
        win()
    end
}

MainTab:Button{
    Name = 'ResetAtLocation',
    Description = 'Resets your player at location',
    Callback = function()
        resetAtLocation()
    end
}

MainTab:Toggle{
    Name = "NoHealthDecrease",
    StartingState = false,
    Description = "Stops player health decreasing when hitting tsunamis",
    Callback = function(state)
        _G.NHD = state
        noHealthDecrease()
    end
}

MainTab:Toggle{
    Name = "GodMode",
    StartingState = false,
    Description = "Enables speed and jump powers",
    Callback = function(state) 
        _G.godMode = state
        godMode()
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
    if _G.godMode then
        while _G.godMode do
            char.Humanoid.WalkSpeed = 155
            char.Humanoid.JumpPower = 200
            wait(functionNum)
        end
    else
        char.Humanoid.WalkSpeed = 16
        char.Humanoid.JumpPower = 50
    end
end
