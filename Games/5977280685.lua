local inf = math.huge; local defaultNum = 50
local functionNum = 0.00000000000000005
local NovalineConnection = loadstring(game:HttpGet("https://raw.githubusercontent.com/SpyTYX/mercury-plus/main/mercury-plus.lua"))()
local Novaline = NovalineConnection:create{
	Name = 'NovalineHub',
    Theme = NovalineConnection.Themes.Dark
}
local AutoFarmTab = Novaline:tab{
    Icon = "rbxassetid://4483362458",
    Name = "AutoFarmTab"
}
local EggsTab = Novaline:tab{
    Icon = "rbxassetid://4483362458",
    Name = "EggsTab"
}
local PlayerTab = Novaline:tab{
    Icon = "rbxassetid://4483362458",
    Name = "Player"
}
local MiscTab = Novaline:tab{
    Icon = "rbxassetid://4483362458",
    Name = "Misc"
}

_G.autoClicker = true
_G.autoSell = true
_G.autoBoss = true

function autoClick()
    while _G.autoClicker do
        local A_1 = {
            [1] = 'swingBlade'
        }
        game:GetService('Players').LocalPlayer.saberEvent:FireServer(unpack(A_1))
        wait(functionNum)
    end
end
function autoSell()
    local oldCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    while _G.autoSell do
        if not _G.autoClicker then return end
        game:GetService('Workspace').sellAreaCircles.sellAreaCircle.circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        wait(0.1)
        game:GetService('Workspace').sellAreaCircles.sellAreaCircle.circleInner.CFrame = CFrame.new(0,0,0)
        wait(0.1)
    end
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldCFrame
end
function unlockAll()
    local oldCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1.16381884, 1480.0199, 142.056213, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    wait(0.05)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1.16381884, 3070.11987, 142.056213, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    wait(0.05)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1.16381884, 4694.12012, 142.056213, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    wait(0.05)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(63.1762924, 6324.22021, 101.067047, 0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, 0.422592998)
    wait(0.05)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1.16381884, 8644.62012, 142.056213, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    wait(0.05)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-160.471222, 125.390015, 370.725067, 0.984812498, -0, -0.173621148, 0, 1, -0, 0.173621148, 0, 0.984812498)
    wait(0.1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldCFrame
    wait(0.25)
end

function getChests()
    game:GetService('ReplicatedStorage').rEvents.checkChestRemote:InvokeServer('Daily Rewards Chest')
    game:GetService('ReplicatedStorage').rEvents.checkChestRemote:InvokeServer('Cybernetic Chest')
    game:GetService('ReplicatedStorage').rEvents.checkChestRemote:InvokeServer('Chaos Origins Chest')
    game:GetService('ReplicatedStorage').rEvents.checkChestRemote:InvokeServer('Rising Eternity Chest')
    game:GetService('ReplicatedStorage').rEvents.checkChestRemote:InvokeServer('Divine Destiny Chest')
    game:GetService('ReplicatedStorage').rEvents.checkChestRemote:InvokeServer('Dark Nebula Chest')
    game:GetService('ReplicatedStorage').rEvents.checkChestRemote:InvokeServer('Group Rewards Chest')
    wait(0.25)
end
function redeemCodes()
    game:GetService("ReplicatedStorage").rEvents.codeRemote:InvokeServer('shurikencity500')
    game:GetService("ReplicatedStorage").rEvents.codeRemote:InvokeServer('bossbattle300')
    game:GetService("ReplicatedStorage").rEvents.codeRemote:InvokeServer('treeninja400')
    game:GetService("ReplicatedStorage").rEvents.codeRemote:InvokeServer('firstplanet250')
    game:GetService("ReplicatedStorage").rEvents.codeRemote:InvokeServer('waterfall500')
    game:GetService("ReplicatedStorage").rEvents.codeRemote:InvokeServer('epicturrets450')
    game:GetService("ReplicatedStorage").rEvents.codeRemote:InvokeServer('epictower350')
end
function autoBoss()
    local oldCFrame = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame
    while _G.autoBoss do
        for _,v in pairs(game:GetService('Workspace').spawnedBosses:GetChildren()) do
            game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
            wait()
        end
        wait()
    end
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = oldCFrame
end

AutoFarmTab:Toggle{
    Name = "AutoSwing",
    StartingState = false,
    Description = "Swings your katana for you",
    Callback = function(state) 
        _G.autoClicker = state
        autoClick()
    end
}
AutoFarmTab:Toggle{
    Name = 'AutoSells',
    Description = 'Sells your elements automatically',
    StartingState = false,
    Callback = function(state)
        _G.autoSell = state
        autoSell()
    end
}
AutoFarmTab:Toggle{
    Name = 'AutoBoss',
    Description = 'Teleports to the boss and hits it till it dies.',
    StartingState = false,
    Callback = function(state)
        _G.autoBoss = state
        autoBoss()
    end
}
PlayerTab:Button{
    Name = "Unlock All Islands",
    Description = "Unlocks every island in the game currently available",
    Callback = function() 
        wait(1)
        unlockAll()
    end
}

PlayerTab:Button{
    Name = "Get Chests",
    Description = "Collects every chest in-game thats available",
    Callback = function() 
        wait(1)
        getChests()
    end
}

PlayerTab:Button{
    Name = "Redeem Codes",
    Description = "Redeems every code in the game",
    Callback = function() 
        wait(1)
        redeemCodes()
    end
}
