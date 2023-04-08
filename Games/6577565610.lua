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

_G.autoFarm = true

function autoFarm()
    while _G.autoFarm do
        local hrp = game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart')
        if hrp and plr and char then
            hrp.CFrame = CFrame.new(-707,-40,291)
        end
        task.wait(4);
    end
end

function getPower()
    if plr and char then
        local hrp = game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart')
        local hum = game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
        if hrp and hum then
            task.wait(0.1);
            hrp.CFrame = CFrame.new(0,999999999999999999999999999999999999,0);
            task.wait(3);
            hum.Health = 0;
            for i=1,850 do
                game:GetService("ReplicatedStorage").Remotes.Reward:FireServer()
                game:GetService("ReplicatedStorage").Remotes.Reward:FireServer()
                game:GetService("ReplicatedStorage").Remotes.Reward:FireServer()
                game:GetService("ReplicatedStorage").Remotes.Reward:FireServer()
                game:GetService("ReplicatedStorage").Remotes.Reward:FireServer()
                game:GetService("ReplicatedStorage").Remotes.Reward:FireServer()
                game:GetService("ReplicatedStorage").Remotes.Reward:FireServer()
                game:GetService("ReplicatedStorage").Remotes.Reward:FireServer()
            end;
        end
    end
end

MainTab:Button{
    Name = "Get Power",
    Description = "Gives you Millions of Power.",
    Callback = function() 
        getPower()
    end
}

MainTab:Toggle{
    Name = 'AutoFarm',
    Description = 'Automatically farms wins for you.',
    StartingState = false,
    Callback = function(state)
        _G.autoFarm=state
        autoFarm()
    end
}
