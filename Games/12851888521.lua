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
    if plr and char then
        local hrp = char:FindFirstChild('HumanoidRootPart')
        if hrp then
            while _G.autoFarm do
                hrp.CFrame = CFrame.new(-271,14,-1586)
                task.wait(5);
            end
        end
    end
end

MainTab:Toggle{
    Name = 'AutoFarm',
    Description = 'Automatically farms wins for you.',
    StartingState = false,
    Callback = function(state)
        _G.autoFarm = state
        autoFarm()
    end
}
