-- Raise a Floppa (uwu, owo, furr, purr, nya, 0w0, >-<, 'w', ^w^, *w*)
local functionNum = 0.00000000000000005
local char = game.Players.LocalPlayer.Character
local plr = game.Players.LocalPlayer
    local NovalineConnection = loadstring(game:HttpGet("https://raw.githubusercontent.com/SpyTYX/mercury-plus/main/mercury-plus.lua"))()
    local Novaline = NovalineConnection:create{
		Name = 'NovalineHub',
        Theme = NovalineConnection.Themes.Dark
    }
    local AutoFarmTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "AutoFarmTab"
    }
    local PlayerTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "Player"
    }
    local MiscTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "Misc"
    }

    _G.buyFromShop = 'Floppa Food'
    _G.selectedTeleport = CFrame.new(0,0,0)

    function buy()
        local args = {
            [1] = _G.buyFromShop
        }

        game:GetService('ReplicatedStorage').Purchase:FireServer(unpack(args))
    end
    function teleport()
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = _G.selectedTeleport
    end

    AutoFarmTab:Button{
        Name = "Buy Item",
        Description = "Buys Item from Shop",
        Callback = function() 
            buy()
        end
    }
    local shopSelection = AutoFarmTab:Dropdown{
        Name = "Select Item",
        StartingText = "Food",
        Description = "Select the item you want",
        Items = {
            {"Food", 'Floppa Food'},
            {"Roommate", 'Roommate'},
            {"Post", 'Stratching Post'},
            {"Hat", 'Cool Hat'},
            {"Bed", 'Cat Bed'},
            {"Ms. Floppa", 'Ms. Floppa'},
            {"Divorce", 'Divorce Papers'},
            {"Bowl", 'Baby Bowl'},
            {"Milk", 'Milk Dish'},
            {"Pizza Recipe", 'Pizza Recipe'},
            {"Bed", 'Cat Bed'},
            {"Maid", 'Neko Bed'},
            {"Bingus", 'Bingus'},
            {"Homie Sogga", 'Sogga'},
            {"Maid 2", 'Neko Maid 2.0'},
            {"Catnip", 'Catnip Plant'},
            {"Fertilizer", 'Poop Fertilizer'},
            {"Floppa Sword", 'Floppa Sword'},
            {"Floppa Shield", 'Floppa Shield'},
            {"Jinx", 'Jinx'},
        },
        Callback = function(Items)
            _G.buyFromShop = Items
            print(_G.buyFromShop)
        end
    }
    PlayerTab:Button{
        Name = "Teleport",
        Description = "Teleports to Selected Place",
        Callback = function() 
            teleport()
        end
    }
    local shopSelection = PlayerTab:Dropdown{
        Name = "Select Place",
        StartingText = "House",
        Description = "Select where you want to teleport",
        Items = {
            {"Lake", 0,0,0},
            {"Floppa Bowl", CFrame.new(-36.7804031, 5.1801753, -16.1630688, 0, 0, 1, 0, 1, -0, -1, 0, 0)},
            {"Backrooms", CFrame.new(-12798.5664, 54.4847717, -16089.9521, -0.798616767, 0, -0.601840496, 0, 1, 0, 0.601840496, 0, -0.798616767)},
            {"House", CFrame.new(-71.0050125, 6.17499161, -39.8749962, 1, 0, 0, 0, 1, 0, 0, 0, 1)},
            {"Stove", CFrame.new(-49.1239243, 9.0375061, -61.9489136, -1, 0, 0, 0, 1, 0, 0, 0, -1)},
            {"Mailbox", CFrame.new(5.94999886, 1.69999981, -54.4967422, 0, 0, 1, 0, 1, -0, -1, 0, 0)},
            {"Jinx Cauldron", CFrame.new(-140.112122, 0.600000143, -117.70919, 0.10454309, 0, 0.994520426, 0, 1, 0, -0.994520426, 0, 0.10454309)},
            {"Alien", CFrame.new(14.7750015, -82, 400, 0, 0, -1, 0, 1, 0, 1, 0, 0)},
            {"Litter Box", CFrame.new(-81.7337418, 5.74499893, -17.6725349, 1, 0, 0, 0, 1, 0, 0, 0, 1)},
        },
        Callback = function(Items)
            _G.selectedTeleport = Items
            print(_G.selectedTeleport)
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
        char.Humanoid.WalkSpeed = 155
        char.Humanoid.JumpPower = 200
        if _G.godMode == false then
            char.Humanoid.WalkSpeed = 16
            char.Humanoid.JumpPower = 50
        end
        wait(functionNum)
    end
    PlayerTab:Toggle{
        Name = "GodMode",
        StartingState = false,
        Description = "Enables speed and jump powers",
        Callback = function(state) 
            _G.godMode = state
            while true do
                godMode()
            end
        end
    }
