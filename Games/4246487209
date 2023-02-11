local functionNum = 0.00000000000000005
local NovalineConnection = loadstring(game:HttpGet("https://raw.githubusercontent.com/SpyTYX/mercury-plus/main/mercury-plus.lua"))()
local Novaline = NovalineConnection:create{
	Name = 'NovalineHub',
    Theme = NovalineConnection.Themes.Dark
}
local AutoFarmTab = Novaline:tab{
    Icon = "rbxassetid://4483362458",
    Name = "Main"
}
local WorldTab = Novaline:tab{
    Icon = "rbxassetid://4483362458",
    Name = "Worlds"
}
local EggsTab = Novaline:tab{
    Icon = "rbxassetid://4483362458",
    Name = "Eggs"
}
local MiscTab = Novaline:tab{
    Icon = "rbxassetid://4483362458",
    Name = "Misc"
}

_G.autoSell = true
_G.autoClicker = true
_G.sword = 'Linked Sword'
_G.teleport = CFrame.new()
_G.getFlag = CFrame.new()
_G.autoKOTH = true
_G.autoCapture = true

function autoClick()
    while _G.autoClicker do
        local A_1 = {
            [1] = game:GetService('Players').LocalPlayer.Character:FindFirstChild(_G.sword)
        }

        game:GetService('ReplicatedStorage').Remotes.Power:FireServer(unpack(A_1))
        wait(functionNum)
    end
end

function autoSell()
    while _G.autoSell do
        game:GetService('ReplicatedStorage').Remotes.SellPower:InvokeServer()
        wait(functionNum)
    end
end

function teleport()
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = _G.teleport
end

function getFlag()
    local oldCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    while _G.autoCapture do
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = _G.getFlag
        wait(functionNum)
    end
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = oldCFrame
end

function autoKOTH()
    local oldCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    while _G.autoKOTH do
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-282.639679, 50.8871727, 107.760048, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        wait(functionNum)
    end
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = oldCFrame
end

AutoFarmTab:Toggle{
    Name = "AutoSwing",
    StartingState = false,
    Description = "Swings your Sword for you automatically",
    Callback = function(state) 
        _G.autoClicker = state
        autoClick()
    end
}

local swordSelection = AutoFarmTab:Dropdown{
    Name = "Select Sword",
    StartingText = "Linked Sword",
    Description = "Select the sword you want to swing with",
    Items = {
        {"Linked Sword", 'Linked Sword'},
        {"Ice Linked Sword", 'Ice Linked Sword'},
        {"Fire Linked Sword", 'Fire Linked Sword'},
    },
    Callback = function(Items)
        _G.sword = Items
    end
}

AutoFarmTab:Toggle{
    Name = "AutoSell",
    StartingState = false,
    Description = "Sells for you automatically",
    Callback = function(state) 
        _G.autoSell = state
        autoSell()
    end
}

WorldTab:Button{
    Name = "Teleport",
    Description = "Teleports you to the Place",
    Callback = function(state) 
        teleport()
    end
}

local teleportSelection = WorldTab:Dropdown{
    Name = "Select Place",
    StartingText = "Spawn",
    Description = "Select the place",
    Items = {
        {"Spawn", CFrame.new(-131, -35.7999992, 102, 1, 0, 0, 0, 1, 0, 0, 0, 1)},
        {"Noob Arena", CFrame.new(-1536.99988, 21.6000004, 812.60022, 1, 0, 0, 0, 1, 0, 0, 0, 1)},
        {"Knight Arena", CFrame.new(-1559.99988, 21.6000004, 26.6002808, 1, 0, 0, 0, 1, 0, 0, 0, 1)},
        {"Orc Arena", CFrame.new(-1683, 21.6000004, -1013.39972, 1, 0, 0, 0, 1, 0, 0, 0, 1)},
        {"Wizard Arena", CFrame.new(-350.999756, 21.6000004, -2880.3999, 1, 0, 0, 0, 1, 0, 0, 0, 1)},
        {"Pirate Arena", CFrame.new(-1870.99988, 21.6000004, -2615.55225, 1, 0, 0, 0, 1, 0, 0, 0, 1)},
        {"Undead Arena", CFrame.new(-846.599792, 21.6000004, 2493.64819, 1, 0, 0, 0, 1, 0, 0, 0, 1)},
        {"Ice King Arena", CFrame.new(416.400208, 21.6000004, 2505.64819, 1, 0, 0, 0, 1, 0, 0, 0, 1)},
        {"Zeus Arena", CFrame.new(2112.40015, 21.6000004, 1009.64819, 1, 0, 0, 0, 1, 0, 0, 0, 1)},
        {"Black Knight Arena", CFrame.new(2018.40002, 21.6000004, 2250.64819, 1, 0, 0, 0, 1, 0, 0, 0, 1)},
        {"Grim Reaper Arena", CFrame.new(1864.49902, 21.6000004, 3757.93188, 1, 0, 0, 0, 1, 0, 0, 0, 1)},
        {"Crystal Warlord Arena", CFrame.new(402.099335, 21.6000004, 3928.33179, 1, 0, 0, 0, 1, 0, 0, 0, 1)},
        {"Samurai Arena", CFrame.new(-882.900635, 21.6000004, 4010.33203, 1, 0, 0, 0, 1, 0, 0, 0, 1)},
    },
    Callback = function(Items)
        _G.teleport = Items
    end
}

WorldTab:Toggle{
    Name = "AutoKOTH",
    StartingState = false,
    Description = "Captures KOTH automatically",
    Callback = function(state)
        _G.autoKOTH = state
        autoKOTH()
    end
}

WorldTab:Toggle{
    Name = "Get Flag",
    StartingState = false,
    Description = "Capture selected Flag",
    Callback = function(state)
        _G.autoCapture = state
        getFlag()
    end
}

local teleportSelection = WorldTab:Dropdown{
    Name = "Select Flag",
    StartingText = "Flag 1",
    Description = "Select the Flag",
    Items = {
        {"Flag 1", CFrame.new(-246.749954, -16.9002457, 204.849915, 1, 0, 0, 0, 1, 0, 0, 0, 1)},
        {"Flag 2", CFrame.new(-277.85022, -23.7800941, -79.4500046, 1, 0, 0, 0, 1, 0, 0, 0, 1)},
        {"Flag 3", CFrame.new(-86.1502228, 62.6498108, 6058.25, 1, 0, 0, 0, 1, 0, 0, 0, 1)},
        {"Flag 4", CFrame.new(131.449783, -16.9000931, 193.750061, 1, 0, 0, 0, 1, 0, 0, 0, 1)},
        {"Flag 5", CFrame.new(113.850037, -16.9000931, -60.6500053, 1, 0, 0, 0, 1, 0, 0, 0, 1)},
    },
    Callback = function(Items)
        _G.getFlag = Items
    end
}
