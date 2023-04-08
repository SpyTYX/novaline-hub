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

function win()
    local hrp = game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart');
    if hrp then
        hrp.CFrame = CFrame.new(315,10,326);
    end
end

function getBadges()
    local hrp = game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart');
    if hrp then
        hrp.CFrame = CFrame.new(-1466,2.5,181);
        task.wait(2.5);
    end
    if hrp then
        task.wait(1);
        hrp.CFrame = CFrame.new(19277,9630,-7268);
    end
end

MainTab:Button{
    Name = "Win",
    Description = "le teleporté",
    Callback = function() 
        win()
    end
}

MainTab:Button{
    Name = "Get Badges",
    Description = "Gets you 2 badges lol",
    Callback = function() 
        getBadges()
    end
}
