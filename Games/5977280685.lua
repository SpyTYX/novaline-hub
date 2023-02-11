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

local autoClicker = true
local autoSell = true

function autoClick()
    while autoClicker do
        local A_1 = {
            [1] = 'swingBlade'
        }
        game:GetService('Players').LocalPlayer.saberEvent:FireServer(unpack(A_1))
        wait(functionNum)
    end
end
function autoSell()
    local oldCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    if autoClicker == false then return end
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-91.0118713, 8634.64941, 32.5466194, 4.76837158e-05, 0.996190667, -0.0872024298, -1, 4.76837158e-05, -2.08243728e-06, 2.08243728e-06, 0.0872024298, 0.996190608)
    wait(0.05)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldCFrame
    wait(0.3)
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
    local oldCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-336.880371, 122.914238, 217.311035, -2.24113464e-05, -0.25886941, 0.965912342, -1, 2.24113464e-05, -1.719594e-05, -1.719594e-05, -0.965912342, -0.25886941)
    wait(0.2)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(89.7286835, 1476.91418, 129.094696, -2.07424164e-05, -0.57355696, -0.819165647, -0.99999994, 2.07424164e-05, 1.07884407e-05, 1.07884407e-05, 0.819165647, -0.5735569)
    wait(0.2)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(89.7286835, 3067.01416, 129.094696, -2.07424164e-05, -0.57355696, -0.819165647, -0.99999994, 2.07424164e-05, 1.07884407e-05, 1.07884407e-05, 0.819165647, -0.5735569)
    wait(0.2)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(89.7286835, 4691.01416, 129.094696, -2.07424164e-05, -0.57355696, -0.819165647, -0.99999994, 2.07424164e-05, 1.07884407e-05, 1.07884407e-05, 0.819165647, -0.5735569)
    wait(0.2)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(88.8582993, 6321.11426, 15.3222427, 2.05039978e-05, 0.499938965, -0.866060615, -1, 2.05039978e-05, -1.18613243e-05, 1.18613243e-05, 0.866060615, 0.499938965)
    wait(0.2)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(89.7286835, 8641.51367, 129.094696, -2.07424164e-05, -0.57355696, -0.819165647, -0.99999994, 2.07424164e-05, 1.07884407e-05, 1.07884407e-05, 0.819165647, -0.5735569)
    wait(0.1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldCFrame
    wait(0.25)
end

AutoFarmTab:Toggle{
    Name = "AutoSwing",
    StartingState = false,
    Description = "Swings your katana for you",
    Callback = function(state) 
        autoClicker = state
        autoClick()
    end
}
AutoFarmTab:Toggle{
    Name = "AutoSell",
    StartingState = false,
    Description = "Automatically sells your elements (TELEPORT-BASED)",
    Callback = function(state) 
        autoSell = state
        autoSell()
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
