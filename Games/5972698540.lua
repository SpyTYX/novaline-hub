local functionNum = 0.00000000000000005
local NovalineConnection = loadstring(game:HttpGet("https://raw.githubusercontent.com/SpyTYX/mercury-plus/main/mercury-plus.lua"))()
local Novaline = NovalineConnection:create{
	Name = 'NovalineHub',
    Theme = NovalineConnection.Themes.Dark
}
local MainTab = Novaline:tab{
    Icon = "rbxassetid://4483362458",
    Name = "Main"
}
local WorldTab = Novaline:tab{
    Icon = "rbxassetid://4483362458",
    Name = "Teleports"
}
local MiscTab = Novaline:tab{
    Icon = "rbxassetid://4483362458",
    Name = "Misc"
}

function complete()
    wait(1)
    for _,v in pairs(game:GetService('Workspace').Stages:GetChildren()) do
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = v.Checkpoint.Checkpoint.CFrame
        wait(0.05)
    end
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(908.24585, 567.100891, 416.48584, 0, 0, 1, 0, 1, -0, -1, 0, 0)
end

MainTab:Button{
    Name = 'AutoComplete',
    Description = 'Completes the obby for you',
    Callback = function(state)
        complete()
    end
}