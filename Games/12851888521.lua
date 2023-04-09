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
_G.autoRebirth = true
_G.autoHatch = true
_G.eggSelected = true
_G.spinWheel = true

function autoFarm()
    if plr and char then
        local hrp = char:FindFirstChild('HumanoidRootPart')
        if hrp then
            while _G.autoFarm do
                hrp.CFrame = CFrame.new(-340,14,-1294)
                task.wait(5);
            end
        end
    end
end

function autoRebirth()
    while _G.autoRebirth do
        game:GetService("ReplicatedStorage"):FindFirstChild("functions-shared/network@GlobalFunctions"):FindFirstChild("s:rebirth"):FireServer(39)
        task.wait()
    end
end

function autoHatch()
    while _G.autoHatch do
        game:GetService("ReplicatedStorage"):FindFirstChild("functions-shared/network@GlobalFunctions"):FindFirstChild("s:openEgg"):FireServer(10,_G.eggSelected)
        task.wait(1.5)
    end
end

function spin()
    game:GetService("ReplicatedStorage"):FindFirstChild("functions-shared/network@GlobalFunctions"):FindFirstChild("s:spin"):FireServer(69)
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

MainTab:Toggle{
    Name = 'AutoRebirth',
    Description = 'Automatically rebirths for you.',
    StartingState = false,
    Callback = function(state)
        _G.autoFarm = state
        autoFarm()
    end
}

MainTab:Toggle{
    Name = 'AutoHatch',
    Description = 'Automatically hatches eggs for you.',
    StartingState = false,
    Callback = function(state)
        _G.autoHatch = state
        autoHatch()
    end
}

local eggSelection = MainTab:Dropdown{
    Name = "Select Egg",
    StartingText = "Farm Egg",
    Description = "Select the egg you want to hatch.",
    Items = {
        {"Farm Egg", 'Farm Egg'},
        {"Forest Egg", 'Forest Egg'},
        {"Water Egg", 'Water Egg'},
        {"Jungle Egg", 'Jungle Egg'},
        {"Midas Egg", 'Midas Egg'},
        {"Cave Egg", 'Cave Egg'},
        {"Flame Egg", 'Flame Egg'},
        {"Celestial Egg", 'Celestial Egg'},
        {"Temple Egg", 'Temple Egg'},
        {"Ice Egg", 'Ice Egg'},
        {"Alien Egg", 'Alien Egg'},
        {"Swamp Egg", 'Swamp Egg'},
        {"Candy Egg", 'Candy Egg'},
    },
    Callback = function(Items)
        _G.eggSelected = Items
    end
}

MainTab:Button{
    Name = "Spin Wheel",
    Description = "Spin the wheel.",
    Callback = function() 
        spin()
    end
}

MainTab:Toggle{
    Name = 'AutoSpin',
    Description = 'Automatically spins the wheel for you.',
    StartingState = false,
    Callback = function(state)
        _G.spinWheel = state
        while _G.spinWheel do
            spin()
            task.wait();
        end
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
