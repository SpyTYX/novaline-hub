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
    Name = "Main"
}
local MiscTab = Novaline:tab{
    Icon = "rbxassetid://4483362458",
    Name = "Misc"
}

local classSelection = MainTab:Dropdown{
    Name = "Select Class",
    StartingText = "Line Infantry",
    Description = "Changes class",
    Items = {
        {"Life Infantry", "LifeInfantry"},
        {"Sapper", "Sapper"},
        {"Officer", "Officer"},
        {"Blunderer", "Blunderer"},
        {"Fifer", "Fifer"},
    },
    Callback = function(Items)
        local args = {
            [1] = Items
        }

        game:GetService("ReplicatedStorage").Remotes.ChangeClass:FireServer(unpack(args))
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
