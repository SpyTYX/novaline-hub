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

_G.autoLift = true
_G.autoWheel = true

function autoLift()
    while _G.autoLift do
        local args = {
            [1] = "Weight1"
        }

        game:GetService("ReplicatedStorage").Events.Weight:FireServer(unpack(args))
        wait()
    end
end
function redeemCodes()
    game:GetService("ReplicatedStorage").Modules.CodeModule.EnterCode:InvokeServer("MOON")
    wait(0.1)
    game:GetService("ReplicatedStorage").Modules.CodeModule.EnterCode:InvokeServer("25M")
    wait(0.1)
    game:GetService("ReplicatedStorage").Modules.CodeModule.EnterCode:InvokeServer("FREE")
    wait(0.1)
    game:GetService("ReplicatedStorage").Modules.CodeModule.EnterCode:InvokeServer("AURA")
    wait(0.1)
    game:GetService("ReplicatedStorage").Modules.CodeModule.EnterCode:InvokeServer("VALENTINE")
    wait(0.1)
    game:GetService("ReplicatedStorage").Modules.CodeModule.EnterCode:InvokeServer("RELEASE")
    wait(0.1)
    game:GetService("ReplicatedStorage").Modules.CodeModule.EnterCode:InvokeServer("10M")
    wait(0.1)
    game:GetService("ReplicatedStorage").Modules.CodeModule.EnterCode:InvokeServer("POG")
    wait(0.1)
    game:GetService("ReplicatedStorage").Modules.CodeModule.EnterCode:InvokeServer("HUGE")
    wait(0.1)
    game:GetService("ReplicatedStorage").Modules.CodeModule.EnterCode:InvokeServer("HELL")
end
function spinWheel()
    while _G.autoWheel do
        game:GetService("ReplicatedStorage").Events:FindFirstChild("Spin Wheel"):FireServer()
        wait(5)
    end
end

MainTab:Toggle{
    Name = "AutoLift",
    StartingState = false,
    Description = "Lifts your dumbell automatically",
    Callback = function(state)
        _G.autoLift = state
        autoLift()
    end
}
MainTab:Toggle{
    Name = "AutoWheel",
    StartingState = false,
    Description = "Spins the Wheel for you",
    Callback = function(state)
        _G.autoLift = state
        autoLift()
    end
}
MainTab:Button{
    Name = "RedeemCodes",
    Description = "Redeems game codes for you",
    Callback = function()
        redeemCodes()
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
