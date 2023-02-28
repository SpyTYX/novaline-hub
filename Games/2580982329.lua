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

_G.autoClick = true
_G.autoFarmCoins = true

function autoClick()
    while _G.autoClick do
        local A_1 = {
            [1] = 'Phone'
        }
        game:GetService('ReplicatedStorage').Events.SendTexts:FireServer(unpack(A_1))
        wait()
    end
end
function autoFarm()
    while _G.autoFarmCoins do
        if not _G.autoFarmCoins then return end
        for _,v in pairs(game:GetService('Workspace').Coins:GetChildren()) do
            if not _G.autoFarmCoins then return end
            char.HumanoidRootPart.CFrame = v.CFrame
            wait(0.05)
        end
        wait(1)
    end
end

MainTab:Toggle{
    Name = "AutoText",
    StartingState = false,
    Description = "Sends texts to your snapchat edate automatically",
    Callback = function(state)
        _G.autoClick = state
        autoClick()
    end
}
MainTab:Toggle{
    Name = "AutoCoin",
    StartingState = false,
    Description = "Collects coins for you",
    Callback = function(state)
        _G.autoFarmCoins = state
        autoFarm()
    end
}
