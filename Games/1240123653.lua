local functionNum = 0.00000000000000005
local NovalineConnection = loadstring(game:HttpGet("https://raw.githubusercontent.com/SpyTYX/mercury-plus/main/mercury-plus.lua"))()
local Novaline = NovalineConnection:create{
	Name = 'NovalineHub',
    Theme = NovalineConnection.Themes.Dark
}
local AutoFarmTab = Novaline:tab{
    Icon = "rbxassetid://4483362458",
    Name = "AutoFarm"
}
local WorldTab = Novaline:tab{
    Icon = "rbxassetid://4483362458",
    Name = "Teleports"
}
local MiscTab = Novaline:tab{
    Icon = "rbxassetid://4483362458",
    Name = "Misc"
}

local autofarm = true
local autoswing = true
local sword = 'Knife'
local autopowerups = true

AutoFarmTab:Button{
    Name = 'AutoKillEnemies',
    Description = 'Automatically kills enemies (INCLUDES BOSSES)',
    Callback = function(state)
        Novaline:Prompt{
            Followup = false,
            Title = 'NovalineHub',
            Text = "Say 'autofarm false' in the chat to disable, say 'autofarm true' to enable.",
            Buttons = {
                Understood = function()
                    --
                end,
            }
        }
        autofarm = state
        while autofarm do
            local groundDistance = 8
            local Player = game:GetService("Players").LocalPlayer
            local function getNearest()
            local nearest, dist = nil, 99999
            for _,v in pairs(game.Workspace.BossFolder:GetChildren()) do
            if(v:FindFirstChild("Head")~=nil)then
            local m =(Player.Character.Head.Position-v.Head.Position).magnitude
            if(m<dist)then
            dist = m
            nearest = v
            end
            end
            end
            for _,v in pairs(game.Workspace.enemies:GetChildren()) do
            if(v:FindFirstChild("Head")~=nil)then
            local m =(Player.Character.Head.Position-v.Head.Position).magnitude
            if(m<dist)then
            dist = m
            nearest = v
            end
            end
            end
            return nearest
            end
            _G.farm2 = true
            Player.Chatted:Connect(function(m)
            if(m=="autofarm false")then
            _G.farm2 = false
            elseif(m=="autofarm true")then
            _G.farm2 = true
            end
            end)
            _G.globalTarget = nil
            game:GetService("RunService").RenderStepped:Connect(function()
            if(_G.farm2==true)then
            local target = getNearest()
            if(target~=nil)then
            game:GetService("Workspace").CurrentCamera.CFrame = CFrame.new(game:GetService("Workspace").CurrentCamera.CFrame.p, target.Head.Position)
            Player.Character.HumanoidRootPart.CFrame = (target.HumanoidRootPart.CFrame * CFrame.new(0, groundDistance, 9))
            _G.globalTarget = target
            end
            end
            end)
            spawn(function()
            while wait() do
            game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
            game.Players.LocalPlayer.Character.Torso.Velocity = Vector3.new(0,0,0)
            end
            end)
            while wait() do
            if(_G.farm2==true and _G.globalTarget~=nil and _G.globalTarget:FindFirstChild("Head") and Player.Character:FindFirstChildOfClass("Tool"))then
            local target = _G.globalTarget
            game.ReplicatedStorage.Gun:FireServer({["Normal"] = Vector3.new(0, 0, 0), ["Direction"] = target.Head.Position, ["Name"] = Player.Character:FindFirstChildOfClass("Tool").Name, ["Hit"] = target.Head, ["Origin"] = target.Head.Position, ["Pos"] = target.Head.Position,})
            wait()
            end
            end
            end
            wait()
        end
}
AutoFarmTab:Toggle{
    Name = 'AutoSwing',
    Description = 'Swings your knife (or sword) for you',
    StartingState = false,
    Callback = function(state)
        autoswing = state
        while autoswing do
            local A_1 = {
                [1] = 'hit',
                [2] = sword
            }
            game:GetService('ReplicatedStorage').forhackers:InvokeServer(unpack(A_1))
            wait()
        end
    end
}
local itemSelection = AutoFarmTab:Dropdown{
    Name = "Select Knife/Sword",
    StartingText = "Knife",
    Description = "Select the item you want to swing with",
    Items = {
        {"Knife", 'Basic Knife'},
        {"Deathshard", 'Deathshard'},
        {"Clockwork", 'Clockwork'},
        {"Katana", 'Katana'},
        {"Azure", 'Azure Sword'},
        {"Earth Sword", 'Earth Sword'},
        {"Fire Sword", 'Fire Sword'},
        {"Firebrand", 'Firebrand'},
        {"Ice Dragon", 'Ice Dragon'},
        {"Venom Shard", 'Deathshard'},
        {"Leaf Sword", 'Leaf Sword'},
        {"Darkheart", 'Darkheart'},
        {"Heat Sword", 'Heat'},
        {"Golden Knife", 'Golden'},
        {"Rainbow Horse", 'Rainbow Horse Sword'},
        {"Virtual Sword", 'Virtual'},
    },
    Callback = function(Items)
        sword = Items
    end
}
AutoFarmTab:Button{
    Name = 'Get Powerups',
    Description = 'Gets all of the powerups in the map',
    Callback = function(state)
        local oldCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        if game.Workspace.Powerups:GetChildren() == nil then
            return
        else
            for _,v in pairs(game.Workspace.Powerups:GetChildren()) do
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Part.CFrame
                wait(3)
            end
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldCFrame
        end
    end
}
AutoFarmTab:Toggle{
    Name = 'AutoPowerups',
    Description = 'Gets all of the powerups in the map automatically',
    StartingState = false,
    Callback = function(state)
        autoswing = state
        while autopowerups do
            local oldCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            if game.Workspace.Powerups:GetChildren() == nil then
                return
            else
                for _,v in pairs(game.Workspace.Powerups:GetChildren()) do
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Part.CFrame
                    wait(3)
                end
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldCFrame
            end
            wait(3)
        end
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
