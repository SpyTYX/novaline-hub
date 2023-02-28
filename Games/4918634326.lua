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

_G.autoWinAll = true

function autoWin()
    while _G.autoWinAll do
        if not _G.autoWinAll then return end
        for _,v in pairs(game:GetService("Workspace"):GetChildren()) do
            if not _G.autoWinAll then return end
            if v.Name == 'rückwand' then
                char.HumanoidRootPart.CFrame = v.Part.CFrame
                wait()
            end
            wait()
        end
        wait(5)
    end
end

MainTab:Toggle{
    Name = "AutoWin",
    StartingState = false,
    Description = "you get it..",
    Callback = function(state)
        _G.autoWinAll = state
        autoWin()
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
