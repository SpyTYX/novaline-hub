local functionNum = 0.00000000000000005
local NovalineConnection = loadstring(game:HttpGet("https://raw.githubusercontent.com/SpyTYX/mercury-plus/main/mercury-plus.lua"))()
local Novaline = NovalineConnection:create{
	Name = 'NovalineHub',
    Theme = NovalineConnection.Themes.Dark
}
local AutoFarmTab = Novaline:tab{
    Icon = "rbxassetid://4483362458",
    Name = "AutoFarms"
}
local WorldTab = Novaline:tab{
    Icon = "rbxassetid://4483362458",
    Name = "Teleports"
}
local MiscTab = Novaline:tab{
    Icon = "rbxassetid://4483362458",
    Name = "Misc"
}

_G.autoPunch = true
_G.autoOrbs = true
local orbMapSelection = game:GetService('Workspace').Map.Stages.Boosts[1]
_G.autoMap = true
_G.autoBreak = true
_G.orbsHelper = 0
_G.autoUpgradePet = true

while true do
    if orbMapSelection == game:GetService('Workspace').Map.Stages.Boosts[1] then
        _G.orbsHelper = 0
    elseif orbMapSelection == game:GetService('Workspace').Map.Stages.Boosts[2] then
        _G.orbsHelper = 0
    elseif orbMapSelection == game:GetService('Workspace').Map.Stages.Boosts[3] then
        _G.orbsHelper = 0.10000000149011612
    elseif orbMapSelection == game:GetService('Workspace').Map.Stages.Boosts[4] then
        _G.orbsHelper = 0
    elseif orbMapSelection == game:GetService('Workspace').Map.Stages.Boosts[5] then
        _G.orbsHelper = 0
    elseif orbMapSelection == game:GetService('Workspace').Map.Stages.Boosts[6] then
        _G.orbsHelper = 0
    elseif orbMapSelection == game:GetService('Workspace').Map.Stages.Boosts[7] then
        _G.orbsHelper = 0
    elseif orbMapSelection == game:GetService('Workspace').Map.Stages.Boosts[8] then
        _G.orbsHelper = 0.10000000149011612
    elseif orbMapSelection == game:GetService('Workspace').Map.Stages.Boosts[9] then
        _G.orbsHelper = 0
    elseif orbMapSelection == game:GetService('Workspace').Map.Stages.Boosts[10] then
        _G.orbsHelper = 0.5
    elseif orbMapSelection == game:GetService('Workspace').Map.Stages.Boosts[11] then
        _G.orbsHelper = 0
    elseif orbMapSelection == game:GetService('Workspace').Map.Stages.Boosts[12] then
        _G.orbsHelper = 0
    elseif orbMapSelection == game:GetService('Workspace').Map.Stages.Boosts[13] then
        _G.orbsHelper = 0.10000000149011612
    elseif orbMapSelection == game:GetService('Workspace').Map.Stages.Boosts[14] then
        _G.orbsHelper = 0
    elseif orbMapSelection == game:GetService('Workspace').Map.Stages.Boosts[15] then
        _G.orbsHelper = 0
    elseif orbMapSelection == game:GetService('Workspace').Map.Stages.Boosts[16] then
        _G.orbsHelper = 0
    end
end

function autoPunch()
    while _G.autoPunch do
        local A_1 = {
            [1] = {
                [1] = 'Activate_Punch'
            }
        }

        game:GetService('ReplicatedStorage').RemoteEvent:FireServer(unpack(A_1))
        wait(functionNum)
    end
end
function teleportToNextMap()
    local A_1 = {
        [1] = {
            [1] = 'WarpPlrToOtherMap',
            [2] = 'Next'
        }
    }

    game:GetService('ReplicatedStorage').RemoteEvent:FireServer(unpack(A_1))
    wait()
end
function autoOrbs()
    while _G.autoOrbs do
        for _,v in pairs(orbMapSelection:GetChildren()) do
            if not _G.autoOrbs then return end
            game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = v[_G.orbsHelper].CFrame
            wait(0.40)
        end
    end
end

AutoFarmTab:Toggle{
    Name = "AutoPunch",
    StartingState = false,
    Description = "Punches for you",
    Callback = function(state) 
        _G.autoPunch = state
        autoPunch()
    end
}
AutoFarmTab:Toggle{
    Name = "AutoOrbs",
    StartingState = false,
    Description = "Gets all of the orbs in the map (BETA+BUGGYa)",
    Callback = function(state) 
        _G.autoOrbs = state
        autoOrbs()
    end
}
local worldSelection = AutoFarmTab:Dropdown{
    Name = "Select World",
    StartingText = "World 1",
    Description = "Select the world you want to farm orbs on",
    Items = {
        {"World 1", game:GetService('Workspace').Map.Stages.Boosts[1]},
        {"World 2", game:GetService('Workspace').Map.Stages.Boosts[2]},
        {"World 3", game:GetService('Workspace').Map.Stages.Boosts[3]},
        {"World 4", game:GetService('Workspace').Map.Stages.Boosts[4]},
        {"World 5", game:GetService('Workspace').Map.Stages.Boosts[5]},
        {"World 6", game:GetService('Workspace').Map.Stages.Boosts[6]},
        {"World 7", game:GetService('Workspace').Map.Stages.Boosts[7]},
        {"World 8", game:GetService('Workspace').Map.Stages.Boosts[8]},
        {"World 9", game:GetService('Workspace').Map.Stages.Boosts[9]},
        {"World 10", game:GetService('Workspace').Map.Stages.Boosts[10]},
        {"World 11", game:GetService('Workspace').Map.Stages.Boosts[11]},
        {"World 12", game:GetService('Workspace').Map.Stages.Boosts[12]},
        {"World 13", game:GetService('Workspace').Map.Stages.Boosts[13]},
        {"World 14", game:GetService('Workspace').Map.Stages.Boosts[14]},
        {"World 15", game:GetService('Workspace').Map.Stages.Boosts[15]},
        {"World 16", game:GetService('Workspace').Map.Stages.Boosts[16]},
        {"World 17", game:GetService('Workspace').Map.Stages.Boosts[17]},
        {"World 18", game:GetService('Workspace').Map.Stages.Boosts[18]},
        {"World 19", game:GetService('Workspace').Map.Stages.Boosts[19]},
        {"World 20", game:GetService('Workspace').Map.Stages.Boosts[20]},
        {"World 21", game:GetService('Workspace').Map.Stages.Boosts[21]},
        {"World 22", game:GetService('Workspace').Map.Stages.Boosts[22]},
        {"World 23", game:GetService('Workspace').Map.Stages.Boosts[23]},
        {"World 24", game:GetService('Workspace').Map.Stages.Boosts[24]:},
    },
    Callback = function(Items)
        orbMapSelection = Items
    end
}
WorldTab:Button{
    Name = "Teleport to Next Map",
    Description = "Teleports you to the next map",
    Callback = function() 
        teleportToNextMap()
    end
}
WorldTab:Toggle{
    Name = "AutoNextMap",
    StartingState = false,
    Description = "Automatically sends you to the next map",
    Callback = function(state) 
        _G.autoMap = state
        while _G.autoMap do
            teleportToNextMap()
        end
    end
}
