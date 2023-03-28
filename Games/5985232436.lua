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

_G.autoHeal = true

function autoHeal()
    while _G.autoHeal do
        game.Players.LocalPlayer.Character.Humanoid.Health = 99.9
        task.wait()
        game.Players.LocalPlayer.Character.Humanoid.Health = 100
        task.wait()
    end
end

function teleportToEnd(_charPosLocal_)
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-346,3,24)
end

MainTab:Toggle{
    Name = "AutoHeal",
    StartingState = false,
    Description = "Automatically heals you so you dont die",
    Callback = function(state)
        _G.autoHeal = state
        autoHeal()
    end
}

MainTab:Button{
    Name = "Teleport to End",
    StartingState = false,
    Description = "Teleports you to the end of the game",
    Callback = function()
        teleportToEnd()
    end
}
