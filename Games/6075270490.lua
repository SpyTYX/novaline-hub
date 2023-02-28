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
local MiscTab = Novaline:tab{
    Icon = "rbxassetid://4483362458",
    Name = "Misc"
}

_G.teleport = CFrame.new()

function autoWin()
    local oldCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    for _,v in pairs(game:GetService('Workspace').Winparts:GetChildren()) do
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Part.CFrame
        wait(5.5)
    end
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldCFrame
end
function teleport()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = _G.teleport
end

AutoFarmTab:Button{
    Name = "AutoWin",
    Description = "Wins every level for you.",
    Callback = function() 
        autoWin()
    end
}
AutoFarmTab:Button{
    Name = "Teleport",
    Description = "Teleports you to the places",
    Callback = function() 
        teleport()
    end
}
local teleportSelection = AutoFarmTab:Dropdown{
    Name = "Select Place",
    StartingText = "Spawn",
    Description = "Select the palce you want to teleport to",
    Items = {
        {"Spawn", CFrame.new(0, 45, 0, 45, 0, 0, 0, 45, 0, 0, 0, 45)},
        {"Tutorial Win", CFrame.new(-413.5, 34.5000076, 35, 1, 0, 0, 0, 1, 0, 0, 0, 1)},
        {"DoubleTrouble Win", CFrame.new(-400.5, 8.50000763, -144, 1, 0, 0, 0, 1, 0, 0, 0, 1)},
        {"Threepeater Win", CFrame.new(0, 33.5000076, -366.5, 0, 0, -1, 0, 1, 0, 1, 0, 0)},
        {"TheTeamTower Win", CFrame.new(470.5, 78.5, -85, -1, 0, -0, 0, 0, -1, 0, -1, -0)},
        {"The Maze Win", CFrame.new(-286, 8.50000763, -315, 1, 0, 0, 0, 1, 0, 0, 0, 1)},
        {"TripleOrNothing Win", CFrame.new(201.5, 4.50000763, -422, -1, 0, 0, 0, 1, 0, 0, 0, -1)},
        {"TimersAndJumps", CFrame.new(-240, 22.5000076, -420.5, 0, 0, 1, 0, 1, -0, -1, 0, 0)},
        {"ColourCoded Win", CFrame.new(-534.5, 8.00000763, -641, 1, 0, 0, 0, 1, 0, 0, 0, 1)},
        {"Paintball Win", CFrame.new(88.5, 10.5, -595, 0, 0, 1, 0, 1, -0, -1, 0, 0)},
        {"AboveDanger Win", CFrame.new(192.5, 8.50000763, 3, 1, 0, 0, 0, 1, 0, 0, 0, 1)},
        {"Pushbox Win", CFrame.new(-497.5, 6.50000763, 58, -1, 0, 0, 0, 1, 0, 0, 0, -1)},
        {"GettingWeird Win", CFrame.new(320, -25.4999924, -506, 0, 0, -1, 0, 1, 0, 1, 0, 0)},
        {"Pushbox Test (DEV)", CFrame.new(15, 1.75000381, 92.5, 0, 1, -0, -1, 0, 0, 0, 0, 1)},
        {"Dummy (DEV)", CFrame.new(10.448822, 27.4075317, -4.90104103, 1, 0, 0, 0, 1, 0, 0, 0, 1)},
    },
    Callback = function(Items)
        _G.teleport = Items
    end
}
