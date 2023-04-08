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

function autofarm()
    while _G.autoFarm do
        if plr and char then
            local hrp = char:FindFirstChild('HumanoidRootPart')
            hrp.CFrame = CFrame.new(878,956,246)
            task.wait(1);
            hrp.CFrame = CFrame.new(879,954,368)
            task.wait(1.5);
        end
    end
    task.wait();
end

MainTab:Toggle{
    Name = 'AutoFarm',
    Description = 'Automatically teleports you to get food for you.',
    StartingState = false,
    Callback = function(state)
        _G.autoFarm=state
        autofarm()
    end
}
