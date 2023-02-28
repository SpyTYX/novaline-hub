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

_G.teleport = CFrame.new(-17, 6.0048399, -283.669891, -1, 0, 0, 0, 1, 0, 0, 0, -1)

function toPriv()
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(328.100006, 18.5, 275.188354, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    wait()
end
function teleport()
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = _G.teleport
    wait()
end

MainTab:Button({
    Name = "Teleport to Private Island",
    Description = 'Teleports you to a Private Island',
    Callback = function()
        toPriv()
end})
MainTab:Button({
    Name = "Teleport",
    Description = 'Teleports you to selected Place',
    Callback = function()
        teleport()
end})
local teleportSelection = MainTab:Dropdown{
    Name = "Select Place",
    StartingText = "Spawn (MAIN ISLAND)",
    Description = "Select the place you want to go",
    Items = {
        {"Spawn (MAIN ISLAND)", CFrame.new(-17, 6.0048399, -283.669891, -1, 0, 0, 0, 1, 0, 0, 0, -1)},
        {"Sword of The Fallen (SECRET)", CFrame.new(-219.278015, -27.8584003, -8.44737625, -0.994853616, -0.0898707807, 0.0467988104, -0.0473235101, 0.00371515751, -0.998872876, 0.089595601, -0.995946646, -0.00794935226)},
        {"Dino Land (ISLAND)", CFrame.new(99.3867035, 8.59451675, -566.258789, 0.90686363, 0.14834711, 0.394450933, 0.00367007405, 0.933179259, -0.359392524, -0.421408266, 0.327367663, 0.8457219)},
        {"Candy Land (ISLAND)", CFrame.new(69.7476044, 13.8080692, -231.129288, 0, 0, 1, 0, 1, -0, -1, 0, 0)},
        {"Pirate Land (ISLAND)", CFrame.new(-712.252441, 13.8080664, -132.129272, -1, 0, 0, 0, 1, 0, 0, 0, -1)},
        {"VIP Land (ISLAND)", CFrame.new(-594.986633, 13.8080664, -509.670898, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)},
        {"Toy Land (ISLAND)", CFrame.new(-113.852539, 13.8080664, -883.971924, -1, 0, 0, 0, 1, 0, 0, 0, -1)},
        {"Medieval Land (ISLAND)", CFrame.new(551.147461, 13.8080664, -904.971924, -1, 0, 0, 0, 1, 0, 0, 0, -1)},
        {"Atlantis Land (ISLAND)", CFrame.new(-602.852539, 13.8080664, -808.971924, -1, 0, 0, 0, 1, 0, 0, 0, -1)},
        {"Moon Land (ISLAND)", CFrame.new(-966.652405, 13.8080664, -859.728943, 1, 0, 0, 0, 1, 0, 0, 0, 1)},
        {"Backpack Store (DEV+SECRET)", CFrame.new(-142.07193, 17.1556854, -2240.74756, 1, 0, 0, 0, 1, 0, 0, 0, 1)},
        {"Tools Store (DEV+SECRET)", CFrame.new(-142.296173, 16.8596649, -2305.83887, 1, 0, 0, 0, 1, 0, 0, 0, 1)},
        {"Pets Store (DEV+SECRET)", CFrame.new(-140.369858, 13.8802614, -2363.53857, -1.1920929e-07, -1.00000012, 0, -1.00000012, -1.1920929e-07, -0, 0, 0, -1.00000024)},
    },
    Callback = function(Items)
        _G.teleport = Items
    end
}
MiscTab:Button{
    Name = "Reset Character",
    Description = "Respawns your character",
    Callback = function() 
        wait(0.05)
        char.Humanoid.Health = 0
    end
}
MiscTab:Button{
    Name = "Kill Roblox",
    Description = "Destroys roblox instance.",
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
