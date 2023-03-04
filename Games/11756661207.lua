local functionNum = 0.00000000000000005
local char = game.Players.LocalPlayer.Character
local plr = game.Players.LocalPlayer
local NovalineConnection = loadstring(game:HttpGet("https://raw.githubusercontent.com/SpyTYX/mercury-plus/main/mercury-plus.lua"))()
local Novaline = NovalineConnection:create{
	Name = 'NovalineHub',
    Theme = NovalineConnection.Themes.Dark
}
local AutoFarmTab = Novaline:tab{
    Icon = "rbxassetid://4483362458",
    Name = "AutoFarm"
}
local WorldTab = Novaline:tab{
    Icon = "rbxassetid://4483362458",
    Name = "Teleports"
}
local MiscTab = Novaline:tab{
    Icon = "rbxassetid://4483362458",
    Name = "Misc"
}

function win()
    local hum = game:GetService('Players').LocalPlayer.Character:WaitForChild('HumanoidRootPart')
    hum.CFrame = CFrame.new(-33,640,-5)
    task.wait()
end

AutoFarmTab:Button{
    Name = 'Win',
    Description = 'you get it? no? fuck you',
    Callback = function(state)
        win()
    end
}
