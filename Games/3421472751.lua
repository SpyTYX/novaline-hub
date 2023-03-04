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
local TrollTab = Novaline:tab{
    Icon = "rbxassetid://4483362458",
    Name = "Troll"
}
local MiscTab = Novaline:tab{
    Icon = "rbxassetid://4483362458",
    Name = "Misc"
}

_G.autoAFK = true
_G.autoReload = true

function afk()
    game:GetService("ReplicatedStorage").AFK:FireServer(true)
    wait()
end
function autoAFK()
    while _G.autoAFK do
        game:GetService("ReplicatedStorage").AFK:FireServer(true)
        wait()
    end
    game:GetService("ReplicatedStorage").AFK:FireServer(false)
end
function reload()
    local A_1 = {[1]='Reload'}
    game:GetService("Players").LocalPlayer.Character.M4A1.Network.Invoke:InvokeServer(unpack(A_1))
    game:GetService("Players").LocalPlayer.Character.MP5.Network.Invoke:InvokeServer(unpack(A_1))
    game:GetService("Players").LocalPlayer.Character:FindFirstChild("X-26P").Networking.Reload:InvokeServer()
    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Glock 17").Networking.Reload:InvokeServer(unpack(A_1))
    wait()
end

MainTab:Button{
    Name = "Reload",
    Description = "Reload your gun",
    Callback = function()
        afk()
    end
}

MainTab:Toggle{
    Name = "AutoReload",
    StartingState = false,
    Description = "Automatically reloads your guns",
    Callback = function(state)
        _G.autoReload = state
        while _G.autoReload do
            reload()
        end
    end
}

TrollTab:Button{
    Name = "AFK",
    Description = "Puts your state to AFK",
    Callback = function()
        afk()
    end
}

TrollTab:Toggle{
    Name = "AutoAFK",
    StartingState = false,
    Description = "Automatically puts your state to AFK",
    Callback = function(state)
        _G.autoAFK = state
        autoAFK()
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
