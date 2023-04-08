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

_G.autoTrain = true
_G.autoPunch = true
_G.autoUpgrade = true
_G.autoFarm = true
_G.glove = 'glove_1'

function autoTrain()
    game:GetService("ReplicatedStorage").Assets.Network.ToggleSetting:FireServer('AutoPunch')
    while _G.autoTrain do
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        task.wait(0.1);
    end
end

function autoFarm()
    game:GetService("ReplicatedStorage").Assets.Network.ToggleSetting:FireServer('AutoFarm')
    while _G.autoFarm do
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        task.wait(0.1);
    end
end

function autoPunch()
    while _G.autoPunch do
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        game:GetService("ReplicatedStorage").Assets.Network.Punch:FireServer()
        task.wait(0.1);
    end
end

function autoUpgrade()
    while _G.autoUpgrade do
        game:GetService("ReplicatedStorage").Assets.Network.Upgrade:FireServer('power_boost')
        game:GetService("ReplicatedStorage").Assets.Network.Upgrade:FireServer('power_boost')
        game:GetService("ReplicatedStorage").Assets.Network.Upgrade:FireServer('power_boost')
        game:GetService("ReplicatedStorage").Assets.Network.Upgrade:FireServer('power_boost')
        game:GetService("ReplicatedStorage").Assets.Network.Upgrade:FireServer('power_boost')
        game:GetService("ReplicatedStorage").Assets.Network.Upgrade:FireServer('power_boost')
        task.wait();
    end
end

function purchaseGlove()
    game:GetService("ReplicatedStorage").Assets.Network.BuyGlove:FireServer(_G.glove)
end

MainTab:Toggle{
    Name = "AutoFarm",
    StartingState = false,
    Description = "Destroys the walls automatically for you.",
    Callback = function(state)
        _G.autoFarm = state
        autoFarm()
    end
}

MainTab:Toggle{
    Name = "AutoTrain",
    StartingState = false,
    Description = "Automatically trains for you (faster than normal training and in-game auto-train)",
    Callback = function(state)
        _G.autoTrain = state
        autoTrain()
    end
}

MainTab:Toggle{
    Name = "AutoPunch",
    StartingState = false,
    Description = "Automatically punches for you (NO ANIMATION)",
    Callback = function(state)
        _G.autoPunch = state
        autoPunch()
    end
}

MainTab:Toggle{
    Name = "AutoUpgrade",
    StartingState = false,
    Description = "Automatically upgrades training boost for you.",
    Callback = function(state)
        _G.autoUpgrade = state
        autoUpgrade()
    end
}

MainTab:Button{
    Name = "Purchase Glove",
    Description = "Purchases the selected glove",
    Callback = function(state)
        purchaseGlove()
    end
}

local gloveSelect = MainTab:Dropdown{
    Name = 'Select Glove',
    StartingText = 'Glove 1',
    Description = 'Select the glove you want to purchase',
    Items = {
        {"Glove 1 (1K)", "glove_1"},
        {"Glove 2 (20K)", "glove_2"},
        {"Glove 3 (100K)", "glove_3"},
        {"Glove 4 (1M)", "glove_4"},
        {"Glove 5 (50M)", "glove_5"},
        {"Glove 6 (??)", "glove_6"},
        {"Glove 7 (??)", "glove_7"},
        {"Glove 8 (??)", "glove_8"},
        {"Glove 9 (??)", "glove_9"},
        {"Glove 10 (??)", "glove_10"},
        {"Glove 11 (??)", "glove_11"},
        {"Glove 12 (??)", "glove_12"},
        {"Glove 13 (??)", "glove_13"},
        {"Glove 14 (??)", "glove_14"},
        {"Glove 15 (??)", "glove_15"},
    },
    Callback = function(Items)
        _G.glove = Items
    end
}
