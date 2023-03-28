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
_G.checkStaff = true

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
function staffPrompt()
    Novaline:Prompt{
        Followup = false,
        Title = 'Warning',
        Text = "A Staff Member has joined the game, leaving in 3.5 seconds.",
        Buttons = {}
    }
end
function checkStaff()
    while _G.checkStaff do
        for _,v in ipairs(game:GetService('Players'):GetChildren()) do
            if v.Name == '1qwaiii' or 'tuty_785' or 'arkis_x7' or 'kancat309' or 'Indywyc' or 'KequingImpact' or 'iiArdaXs' or 'officerfisher55' or 'skoseck' or 'BellaM13234' or 'Faintersoup705' or 'JackThePlayer109' or 'Niceblue92163' or 'EricM_YTReal' or 'Bebik_22' or 'Mrmarshmellogamer' or 'frankw7563' or 'Mallarows' or 'gyhjzxd' or 'hannahlouise_14' or 'Firegamer2107' or 'Gansje33' or 'Freaks104' or 'Piecrustmangucci' or 'Luckychoclatekitty' or 'Marti_432' or 'MrYandrak_s' or 'Jonirei13' or 'l5wis' or 'zaini08' or 'IPSUM_20' or 'blub20074' or 'dramaking125' or 'OMBgamingYT' or 'Cinderbelle' or 'MyUsernamesThis' or 'SlimJim_LBG' or 'TheRoyal_Tim' or 'Farley120' or 'Khaia21' or 'DABO17' or 'Rvsila' or 'Sergeant_Wallace' or 'trulybadger' or 'Ghostiiana' or 'xJimm_y' or 'Watercoolings' or '23Sebee' or 'Axcerious' or 'AlreadyPro' or 'SIRJIMM_Y' then
                staffPrompt()
                wait(3.5)
                game:Shutdown()
            end
            wait(2.5)
        end
        task.wait(1)
    end
    task.wait(1)
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
MainTab:Toggle{
    Name = "AntiStaff",
    StartingState = false,
    Description = "Leaves if a staff member joins the game (30+ STAFF)",
    Callback = function(state)
        _G.checkStaff = state
        checkStaff()
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
