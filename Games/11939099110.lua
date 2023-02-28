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
    Name = "AutoFarm"
}
local EggsTab = Novaline:tab{
    Icon = "rbxassetid://4483362458",
    Name = "Eggs"
}
local MiscTab = Novaline:tab{
    Icon = "rbxassetid://4483362458",
    Name = "Misc"
}

_G.autoCoin = true
_G.teleport = CFrame.new(228.584869, 134.548706, -15.1624041, 0.939700544, 0, -0.341998369, 0, -1.00000048, -0, -0.341998369, 0, -0.939700961)
_G.autoHatch = true
_G.autoEquipSki = true
_G.autoHatchSelection = 'Win40'

function autoCoin()
    while _G.autoCoin do
        game:GetService("ReplicatedStorage").Remote.Event.Game:FindFirstChild("[C-S]PlayerPickCoin"):FireServer()
        wait(functionNum)
    end
end
function equipSki()
    game:GetService("ReplicatedStorage").Remote.Event.Skin:FindFirstChild("[C-S]TryEquipSkin2"):FireServer()
    wait(0.5)
end
function unequipSki()
    game:GetService("ReplicatedStorage").Remote.Event.Skin:FindFirstChild("[C-S]TryUnequipSkin"):FireServer()
    wait(0.5)
end
function toVip()
    char.HumanoidRootPart.CFrame = _G.teleport
end
function autoHatch()
    while _G.autoHatch do
        local A_1 = {
            [1] = _G.autoHatchSelection
        }
        game:GetService('ReplicatedStorage').Remotes.Function.Luck:FindFirstChild('[C-S]DoLuck'):InvokeServer(unpack(A_1))
        wait(0.5)
    end
end

MainTab:Toggle{
    Name = "AutoCoin",
    StartingState = false,
    Description = "Collects coins for you",
    Callback = function(state)
        _G.autoCoin = state
        autoCoin()
    end
}
MainTab:Button{
    Name = "EquipSki",
    Description = "Equips your Ski",
    Callback = function()
        equipSki()
    end
}
MainTab:Toggle{
    Name = "AutoEquipSki",
    StartingState = false,
    Description = "Equips your Ski automatically",
    Callback = function(state)
        _G.autoEquipSki = state
        while _G.autoEquipSki do
            equipSki()
        end
    end
}
MainTab:Button{
    Name = "Teleport to VIP Island",
    Description = "you get it?",
    Callback = function()
        toVip()
    end
}
EggsTab:Toggle{
    Name = "AutoHatch",
    StartingState = false,
    Description = "Hatches Eggs for you",
    Callback = function(state)
        _G.autoHatch = state
        autoHatch()
    end
}
local autoHatchSelect = EggsTab:Dropdown{
    Name = 'Select Egg',
    StartingText = 'Basic Egg',
    Description = 'Select the Egg you wanna use',
    Items = {
        {"Basic Egg", "Win40"},
        {"Red Egg", "Win320"},
        {"Purple Egg", "Win1200"},
        {"Pink Egg", "Win2400"},
        {"Cyan Egg", "Win5"},
        {"Red Egg", "Win6"},
    },
    Callback = function(Items) 
        _G.autoHatchSelection = Items
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
