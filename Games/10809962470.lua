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
local EggsTab = Novaline:tab{
    Icon = "rbxassetid://4483362458",
    Name = "Eggs"
}
local MiscTab = Novaline:tab{
    Icon = "rbxassetid://4483362458",
    Name = "Misc"
}

_G.autoFarm = true
_G.autoGrab = true

function autoFarm()
    while _G.autoFarm do
        game:GetService('ReplicatedStorage').Remotes.Gameplay.ProcessEvent:FireServer()
        game:GetService('ReplicatedStorage').Remotes.Gameplay.AddDropperEvent:FireServer()
        game:GetService('ReplicatedStorage').Remotes.Gameplay.RateUpEvent:FireServer()
        game:GetService('ReplicatedStorage').Remotes.Gameplay.MergeDroppersEvent:FireServer()
        wait(0.05)
    end
end

MainTab:Toggle{
    Name = "AutoFarm",
    StartingState = false,
    Description = "Deposits your grades, merges and adds students, etc",
    Callback = function(state)
        _G.autoFarm = state
        autoFarm()
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
