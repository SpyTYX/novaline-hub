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

_G.autoPunch = true
_G.autoLift = true
_G.autoWheel = true

function autoPunch()
    while _G.autoPunch do
        game:GetService("Players").LocalPlayer.Character.Yumruk.Punch.RemoteEvent:FireServer()
        wait(0.5)
    end
end
function autoLift()
    while _G.autoLift do
        game:GetService("Players").LocalPlayer.Character.BasicDumbell.Dumbell.RemoteEvent:FireServer()
        wait(0.5)
    end
end
function autoWheel()
    while _G.autoWheel do
        game:GetService("ReplicatedStorage").Wheel:FireServer()
        wait(0.5)
    end
end

MainTab:Toggle{
    Name = "AutoPunch",
    StartingState = false,
    Description = "Automatically punches",
    Callback = function(state)
        _G.autoPunch = state
        autoPunch()
    end
}
MainTab:Toggle{
    Name = "AutoLift",
    StartingState = false,
    Description = "Automatically lifts your dumbell",
    Callback = function(state)
        _G.autoLift = state
        autoLift()
    end
}
MainTab:Toggle{
    Name = "AutoWheel",
    StartingState = false,
    Description = "Spins the wheel for you automatically",
    Callback = function(state)
        _G.autoWheel = state
        autoWheel()
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
