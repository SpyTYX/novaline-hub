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

_G.autoDestroy = true
_G.autoClick = true

function autoSpeed()
    while _G.autoDestroy do
        if not _G.autoDestroy then return end
        local A_1 = {
            [1] = game:GetService("Players").LocalPlayer.leaderstats:FindFirstChild("\226\154\161 Speed"),
            [2] = 100000000000000000,
            [3] = "dd"
        }

        game:GetService("ReplicatedStorage").changeValue:FireServer(unpack(A_1))
        wait(1)
    end
end
function autoClick()
    while _G.autoClick do
        if not _G.autoClick then return end
        game:GetService("ReplicatedStorage").Clickspeed:InvokeServer()
        wait()
    end
end
function infHighscore()
    local A_1 = {
        [1] = game:GetService("Players").LocalPlayer.leaderstats:FindFirstChild("\226\154\161 Speed"),
        [2] = math.huge,
        [3] = "dd"
    }
    local A_2 = {
        [1] = game:GetService("Players").LocalPlayer.leaderstats:FindFirstChild("\226\154\161 Speed"),
        [2] = 100000000000000000,
        [3] = "dd"
    }

    game:GetService("ReplicatedStorage").changeValue:FireServer(unpack(A_1))
    wait(0.5)
    game:GetService("ReplicatedStorage").changeValue:FireServer(unpack(A_2))
end

MainTab:Toggle{
    Name = "Set Speed",
    StartingState = false,
    Description = "...i just have no words",
    Callback = function(state) 
        _G.autoDestroy = state
        autoSpeed()
    end
}
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
    Name = "InfiniteHighScore",
    Description = "Gives you infinite highscore, get it?",
    Callback = function(state)
        infHighscore()
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
