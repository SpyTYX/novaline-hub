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
local mapSelection = game:GetService('Workspace').Map.Stages.Boosts[1]:GetChildren()
_G.autoMap = true

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
end
function autoOrbs()
    while _G.autoOrbs do
        for _,v in pairs(mapSelection) do
            game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = v[0].CFrame
            wait(0.45)
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
    Name = "Get Orbs",
    StartingState = false,
    Description = "Gets all of the orbs in the map",
    Callback = function(state) 
        _G.autoOrbs = state
        autoOrbs()
    end
}
local worldSelection = AutoFarmTab:Dropdown{
    Name = "Select World",
    StartingText = "Food",
    Description = "Select the world you want to farm orbs on",
    Items = {
        {"World 1", game:GetService('Workspace').Map.Stages.Boosts[1]:GetChildren()},
        {"World 2", game:GetService('Workspace').Map.Stages.Boosts[2]:GetChildren()},
        {"World 3", game:GetService('Workspace').Map.Stages.Boosts[3]:GetChildren()},
        {"World 4", game:GetService('Workspace').Map.Stages.Boosts[4]:GetChildren()},
        {"World 5", game:GetService('Workspace').Map.Stages.Boosts[5]:GetChildren()},
        {"World 6", game:GetService('Workspace').Map.Stages.Boosts[6]:GetChildren()},
        {"World 7", game:GetService('Workspace').Map.Stages.Boosts[7]:GetChildren()},
        {"World 8", game:GetService('Workspace').Map.Stages.Boosts[8]:GetChildren()},
        {"World 9", game:GetService('Workspace').Map.Stages.Boosts[9]:GetChildren()},
        {"World 10", game:GetService('Workspace').Map.Stages.Boosts[10]:GetChildren()},
        {"World 11", game:GetService('Workspace').Map.Stages.Boosts[11]:GetChildren()},
        {"World 12", game:GetService('Workspace').Map.Stages.Boosts[12]:GetChildren()},
        {"World 13", game:GetService('Workspace').Map.Stages.Boosts[13]:GetChildren()},
        {"World 14", game:GetService('Workspace').Map.Stages.Boosts[14]:GetChildren()},
        {"World 15", game:GetService('Workspace').Map.Stages.Boosts[15]:GetChildren()},
        {"World 16", game:GetService('Workspace').Map.Stages.Boosts[16]:GetChildren()},
        {"World 17", game:GetService('Workspace').Map.Stages.Boosts[17]:GetChildren()},
        {"World 18", game:GetService('Workspace').Map.Stages.Boosts[18]:GetChildren()},
        {"World 19", game:GetService('Workspace').Map.Stages.Boosts[19]:GetChildren()},
        {"World 20", game:GetService('Workspace').Map.Stages.Boosts[20]:GetChildren()},
        {"World 21", game:GetService('Workspace').Map.Stages.Boosts[21]:GetChildren()},
        {"World 22", game:GetService('Workspace').Map.Stages.Boosts[22]:GetChildren()},
        {"World 23", game:GetService('Workspace').Map.Stages.Boosts[23]:GetChildren()},
        {"World 24", game:GetService('Workspace').Map.Stages.Boosts[24]:GetChildren()},
    },
    Callback = function(Items)
        mapSelection = Items
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
