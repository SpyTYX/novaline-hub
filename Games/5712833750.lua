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

_G.autoFarm = true

function autoFarm()
    while _G.autoFarm do
        if not _G.autoFarm then return end
        game:GetService("ReplicatedStorage").Events.CoinEvent:FireServer()
        game:GetService("ReplicatedStorage").Events.CoinEvent:FireServer()
        game:GetService("ReplicatedStorage").Events.CoinEvent:FireServer()
        game:GetService("ReplicatedStorage").Events.CoinEvent:FireServer()
        game:GetService("ReplicatedStorage").Events.CoinEvent:FireServer()
        wait()
    end
end
function getCoins()
    for _,v in pairs(game:GetService('Workspace').CoinContainer:GetChildren()) do
        char.HumanoidRootPart.CFrame = v.Coin.CFrame
        wait()
    end
end

MainTab:Toggle{
    Name = "AutoFarm",
    StartingState = false,
    Description = "Farming go brr",
    Callback = function(state)
        _G.autoFarm = state
        autoFarm()
    end
}
MainTab:Button{
    Name = "GetCoins",
    Description = "Teleports to coins and automatically gets them",
    Callback = function()
        getCoins()
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
