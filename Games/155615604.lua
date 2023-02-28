local functionNum = 0.00000000000000005
local char = game.Players.LocalPlayer.Character
local plr = game.Players.LocalPlayer
    local NovalineConnection = loadstring(game:HttpGet("https://raw.githubusercontent.com/SpyTYX/mercury-plus/main/mercury-plus.lua"))()
    local Novaline = NovalineConnection:create{
		Name = 'NovalineHub',
        Theme = NovalineConnection.Themes.Dark
    }
    local GunMods = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "GunMods"
    }
    local PlayerTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "Player"
    }
    local MiscTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "Misc"
    }

    _G.godMode = true
    _G.team = 'Bright blue'

    local givegun = GunMods:Dropdown{
        Name = "Gun Giver",
        StartingText = "MP",
        Description = "Select the gun you want to get",
        Items = {
            {"Remington", 'Remington 870'},
            {"MP", 'M9'},
            {"AK", 'AK-47'},
        },
        Callback = function(Items)
            local A_1 = game:GetService("Workspace")["Prison_ITEMS"].giver[Items].ITEMPICKUP
            local Event = game:GetService("Workspace").Remote.ItemHandler
            Event:InvokeServer(A_1)
        end
    }
    local gunmod = GunMods:Dropdown{
        Name = "GunMods",
        StartingText = "MP",
        Description = "Select the gun to have mods on",
        Items = {
            {"Remington", 'Remington 870'},
            {"MP", 'M9'},
            {"AK", 'AK-47'},
        },
        Callback = function(Items)
            local module = nil
            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(Items) then
                module = require(game:GetService("Players").LocalPlayer.Backpack[Items].GunStates)
            elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(Items) then
                module = require(game:GetService("Players").LocalPlayer.Character[Items].GunStates)
            end
            if module ~= nil then
                module["MaxAmmo"] = math.huge
                module["StoredAmmo"] = math.huge
                module["CurrentAmmo"] = math.huge
                module["Spread"] = 0
                module["ReloadTime"] = 0.0001
            end
        end
    }
    local selectTeam = PlayerTab:Dropdown{
        Name = "Team Selector",
        StartingText = "Guards",
        Description = "Select the team you want to join",
        Items = {
            {"Guards", 'Bright blue'},
            {"Prisoners", 'Bright orange'},
        },
        Callback = function(Items)
            _G.team = Items
            local args = {
                [1] = _G.team
            }
            workspace.Remote.TeamEvent:FireServer(unpack(args))
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
    function godMode()
        while _G.godMode do
            char.Humanoid.WalkSpeed = 155
            char.Humanoid.JumpPower = 200
            wait(functionNum)
        end
    end
    PlayerTab:Toggle{
        Name = "GodMode",
        StartingState = false,
        Description = "Enables speed and jump powers",
        Callback = function(state) 
            _G.godMode = state
            godMode()
        end
    }
