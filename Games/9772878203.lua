local functionNum = 0.00000000000000005
local char = game.Players.LocalPlayer.Character
local plr = game.Players.LocalPlayer
    local NovalineConnection = loadstring(game:HttpGet("https://raw.githubusercontent.com/SpyTYX/mercury-plus/main/mercury-plus.lua"))()
    local Novaline = NovalineConnection:create{
		Name = 'NovalineHub',
        Theme = NovalineConnection.Themes.Dark
    }
    local FloppaTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "Flop"
    }
    local PlayerTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "Player"
    }
    local MiscTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "Misc"
    }

    _G.buyItem = 'Floppa Food'
    _G.autoRent = false
    _G.teleportToRent = true

    function purchase()
        local A_1 = {
            [1] = _G.buyItem,
            [2] = 'the_interwebs'
        }

        game:GetService('ReplicatedStorage').Events.Unlock:FireServer(unpack(A_1))
    end
    function collectRent()
        game:GetService("ReplicatedStorage").Events:FindFirstChild('Collect Rent'):FireServer()
    end
    function teleportToRent()
        while _G.autoRent and _G.teleportToRent do
            game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-78.1193771, 71.3375015, -41.8958969, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            wait(0.5)
        end
    end

    FloppaTab:Button{
        Name = "Purchase Item",
        Description = "Purchases Item selected",
        Callback = function() 
            wait(0.5)
            purchase()
        end
    }
    local shopSelection = FloppaTab:Dropdown{
        Name = "Select Item",
        StartingText = "Food",
        Description = "Select the item you want",
        Items = {
            {"Food", 'Floppa Food'},
            {"Roommate", 'Roommate'},
            {"Calendar", 'Calendar'},
            {"Poster", 'Cat Poster'},
            {"Post", 'Scratching Post'},
            {"Yarn", 'Yarn'},
            {"Bed", 'Cat Bed'},
            {"Plant", 'Houseplant'},
            {"Recipe Book", 'Cook Book'},
            {"Bowl", 'Baby Bowl'},
            {"Ms. Floppa", 'Ms. Floppa'},
            {"Milk", 'Milk Dish'},
            {"Painting", 'Floppa Painting'},
            {"Maid", 'Neko Maid'},
        },
        Callback = function(Items)
            _G.buyItem = Items
            print(_G.buyItem)
        end
    }
    FloppaTab:Button{
        Name = "Get Rent",
        Description = "Collects Rent",
        Callback = function() 
            wait(0.5)
            collectRent()
        end
    }
    FloppaTab:Toggle{
        Name = "AutoRent",
        StartingState = false,
        Description = "Collects rent for you automatically",
        Callback = function(state) 
            _G.autoRent = state
            while _G.autoRent do
                collectRent()
                wait(0.5)
            end
        end
    }
    FloppaTab:Toggle{
        Name = "Teleport to Rent?",
        StartingState = false,
        Description = "Teleports to the place where rent spawns while this is on (FOR AFKING)",
        Callback = function(state)
            _G.teleportToRent = state 
            teleportToRent()
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
