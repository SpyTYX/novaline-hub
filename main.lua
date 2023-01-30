local ReplicatedStorage = game:GetService("ReplicatedStorage")


--Vars
local inf = math.huge; local defaultNum = 50; local plr = game.Players.LocalPlayer; local char = plr.Character


--Base Raiders
if game.PlaceId == 1696916806 then
	print('Loading NovalineHub')
    local NovalineConnection = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

    local Novaline = NovalineConnection:create{
        Theme = NovalineConnection.Themes.Dark
    }

    local GunMods = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "GunMods"
    }

    local Exploits = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "Exploits"
    }

    local MiscTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "Misc"
    }

    GunMods:button({
        Name = "InfiniteAmmo",
        Description = 'Gives your guns InfiniteAmmo',
        Callback = function()
            for i,v in pairs(game.ReplicatedStorage.WeaponScripts.WeaponConfigs:GetChildren()) do
                local gun = require(v)
                gun.magSize = inf
            end
            Novaline:set_status("Status: Enabled InfiniteAmmo Module")
    end})

    GunMods:button({
        Name = "InfiniteGunRange",
        Description = 'Gives your guns InfiniteGunRange',
        Callback = function()
            for i,v in pairs(game.ReplicatedStorage.WeaponScripts.WeaponConfigs:GetChildren()) do
                local gun = require(v)
                gun.range = 99999
            end
            Novaline:set_status("Status: Enabled InfiniteGunRange Module")
    end})

    GunMods:button({
        Name = "MoreProjectiles",
        Description = 'Gives your guns more projectiles to shoot.',
        Callback = function()
            for i,v in pairs(game.ReplicatedStorage.WeaponScripts.WeaponConfigs:GetChildren()) do
                local gun = require(v)
                gun.pellets = defaultNum
            end
            Novaline:set_status("Status: Enabled Projectiles Module")
    end})

    GunMods:button({
        Name = "InfiniteRPM",
        Description = 'Makes your guns go BRRR',
        Callback = function()
            for i,v in pairs(game.ReplicatedStorage.WeaponScripts.WeaponConfigs:GetChildren()) do
                local gun = require(v)
                gun.RPM = 9999999999
            end
            Novaline:set_status("Status: Enabled InfiniteRPM Module")
    end})

    GunMods:button({
        Name = "ProjectileSpeed",
        Description = 'Makes your guns go BRRR',
        Callback = function()
            for i,v in pairs(game.ReplicatedStorage.WeaponScripts.WeaponConfigs:GetChildren()) do
                local gun = require(v)
                gun.bulletspeed = inf
            end
            Novaline:set_status("Status: Enabled ProjectileSpeed Module")
    end})

    GunMods:button({
        Name = "FireMode",
        Description = 'Changes fire mode.',
        Callback = function()
            for i,v in pairs(game.ReplicatedStorage.WeaponScripts.WeaponConfigs:GetChildren()) do
                local gun = require(v)
                gun.firemode = 1
            end
            Novaline:set_status("Status: Enabled FireMode Module")
    end})

    GunMods:button({
        Name = "NoSpread",
        Description = 'Stops projectiles spreading around',
        Callback = function()
            for i,v in pairs(game.ReplicatedStorage.WeaponScripts.WeaponConfigs:GetChildren()) do
                local gun = require(v)
                gun.maxSpread = 0
                gun.minSpread = 0
            end
            Novaline:set_status("Status: Enabled InfiniteGunRange Module")
    end})

    GunMods:button({
        Name = "Shotgun",
        Description = 'Makes your projectile spread more (Overwrites NoSpread)',
        Callback = function()
            for i,v in pairs(game.ReplicatedStorage.WeaponScripts.WeaponConfigs:GetChildren()) do
                local gun = require(v)
                gun.addSpread = 1
            end
            Novaline:set_status("Status: Enabled Shoutgun Module")
    end})

    Novaline:Credit{
        Name = "Manaxtri",
        Description = "Creator of NovalineHub",
        V3rm = "https://v3rmillion.net/member.php?action=profile&uid=2975312",
        Discord = "Moons#9999"
    }

    Exploits:button({
        Name = "CrashExploit",
        Description = 'Crashes Client (Sometimes crashes server)',
        Callback = function()
            for i,v in pairs(game.ReplicatedStorage.WeaponScripts.WeaponConfigs:GetChildren()) do
                local gun = require(v)
                gun.RPM = inf
                gun.pellets = inf
                gun.addSpread = inf
            end
            Novaline:set_status("Status: Enabled CrashExploit Module")
    end})

    MiscTab:Button{
        Name = "Reset Character",
        Description = "Resets your character",
        Callback = function() 
            wait(0.05)
            char.Humanoid.Health = 0
        end
    }

    MiscTab:Button{
        Name = "Kill Roblox",
        Description = "Destroys roblox instance (just do alt+f4 smh)",
        Callback = function() 
            wait(1)
            game:Shutdown()
        end
    }

    MiscTab:Button{
        Name = "Destroy NovalineHub",
        Description = "whyyy :(((!!!",
        Callback = function() 
            wait(1)
            Novaline:Destroy()
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

    Novaline:Credit{
        Name = "Moons",
        Description = "Owner and the only Developer",
        V3rm = "Moozys",
        Discord = "Moons#9999"
    }

    Novaline:Credit{
        Name = "SirWeeb",
        Description = "Owner of Novaline (NAME IDEA)",
        V3rm = "SirWeeb",
        Discord = "Weebster#6969"
    }

    Novaline:Credit{
        Name = "Alawapr",
        Description = "Developer of Novaline (i still dont know why he is here)",
        V3rm = "Alawapr",
        Discord = "Alawapr#4968"
    }

end


--Clicker Madness
if game.PlaceId == 5490351219 then
    local functionNum = 0.00000000000000005
    print('Loading NovalineHub')
    local NovalineConnection = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

    local Novaline = NovalineConnection:create{
		Name = 'NovalineHub',
        Theme = NovalineConnection.Themes.Dark
    }

    local AutoFarmTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "AutoFarms"
    }

    local EggsTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "Eggs"
    }

    local MiscTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "Misc"
    }

    _G.autoClicker = true
    _G.autoRebirth = true
    _G.autoRebirthValue = 1
    _G.autoBeast = true
    _G.buyEgg = true
    _G.eggSelection = "basic"

    function autoClicker()
        while _G.autoClicker do
            local args = {
                [1] = 1
            }

            game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.ClickService.Click:FireServer(unpack(args))
            wait(functionNum)
        end
    end
    function autoRebirth()
        while _G.autoRebirth do
            local args = {
                [1] = _G.autoRebirthValue
            }

            game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.RebirthService.BuyRebirths:FireServer(unpack(args))
            wait(functionNum)
        end
    end

    function autoBeast()
        while _G.autoBeast do
            game:GetService(ReplicatedStorage).Aero.AeroRemoteServices.BeastModeService.Begin:FireServer()
            wait(1)
        end
    end

    function buyEgg()
        while _G.buyEgg do
            local args = {
                [1] = _G.eggSelection
            }

            game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.Purchase:FireServer(unpack(args))
            wait(0.5)
        end
    end

    AutoFarmTab:Toggle{
        Name = "AutoClicker",
        StartingState = false,
        Description = "Clicks for you",
        Callback = function(state) 
            _G.autoClicker = state
            autoClicker()
        end
    }

    AutoFarmTab:Toggle{
        Name = "AutoRebirth",
        StartingState = false,
        Description = "Rebirths for you",
        Callback = function(state) 
            _G.autoRebirth = state
            autoRebirth()
        end
    }

    local AutoRebirthSelection = AutoFarmTab:Dropdown{
        Name = "Select Rebirth",
        StartingText = "1 Rebirth",
        Description = "Select the amount of rebirths",
        Items = {
            {"1 Rebirth", 1},
            {"10 Rebirth", 10},
            {"100 Rebirth", 100},
            {"1k Rebirth", 1000},
            {"10k Rebirth", 10000},
            {"100k Rebirth", 100000},
            {"1m Rebirth", 1000000},
            {"10m Rebirth", 10000000},
            {"100m Rebirth", 100000000},
            {"1b Rebirth", 1000000000},
            {"10b Rebirth", 10000000000},
            {"100b Rebirth", 100000000000},
        },
        Callback = function(Items) 
            _G.autoRebirthValue = Items
        end

    }

    AutoFarmTab:Toggle{
        Name = "AutoBeast",
        StartingState = false,
        Description = "Turns BeastMode on for you",
        Callback = function(state) 
            _G.autoBeast = state
            autoBeast()
        end
    }

    EggsTab:Toggle{
        Name = "AutoEgg",
        StartingState = false,
        Description = "Buys selected egg for you",
        Callback = function(state) 
            _G.buyEgg = state
            buyEgg()
        end
    }

    local EggSelection = EggsTab:Dropdown{
        Name = "Select Egg",
        StartingText = "Basic Egg",
        Description = "Select the egg for AutoEgg",
        Items = {
            {"Basic Egg", "basic"},
            {"Lava Egg", "lava"},
            {"Desert Egg", "desert"},
            {"Ocean Egg", "ocean"},
            {"Winter Egg", "winter"},
            {"Toxic Egg", "toxic"},
            {"Candy Egg", "candy"},
            {"Forest Egg", "forest"},
            {"Storm Egg", "storm"},
            {"Blocks Egg", "blocks"},
            {"Space Egg", "space"},
            {"Dominus Egg", "dominus"},
            {"Infinity Egg", "infinity"},
            {"Future Egg", "future"},
            {"City Egg", "city"},
            {"Moon Egg", "moon"},
            {"Fire Egg", "fire"},
            {"Premium Egg (ROBUX)", "premium"},
            {"Deluxe Egg (ROBUX)", "deluxe"},
            {"Omega Egg (ROBUX)", "omega"},
            {"Imposter Egg (ROBUX)", "imposter"},
            {"Halloween Egg (EVENT)", "halloween"},
        },
        Callback = function(Items) 
            _G.eggSelection = Items
        end
    }
    MiscTab:Button{
        Name = "Purchase Click Multiplier",
        Description = "Purchase 'ClickMultiplier' Upgrade",
        Callback = function() 
            local args = {
                [1] = 'ClickMultiply'
            }

            game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.UpgradeService.BuyUpgrade:FireServer(unpack(args))
        end
    }

    MiscTab:Button{
        Name = "Purchase Cursor Damage",
        Description = "Purchase 'CursorDamage' Upgrade",
        Callback = function() 
            local args = {
                [1] = 'CursorDamage'
            }

            game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.UpgradeService.BuyUpgrade:FireServer(unpack(args))
        end
    }

    MiscTab:Button{
        Name = "Purchase Pet Storage",
        Description = "Purchase 'PetStorage' Upgrade",
        Callback = function() 
            local args = {
                [1] = 'PetStorage'
            }

            game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.UpgradeService.BuyUpgrade:FireServer(unpack(args))
        end
    }

    MiscTab:Button{
        Name = "Purchase WalkSpeed",
        Description = "Purchase 'WalkSpeed' Upgrade",
        Callback = function() 
            local args = {
                [1] = 'WalkSpeed'
            }

            game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.UpgradeService.BuyUpgrade:FireServer(unpack(args))
        end
    }

    MiscTab:Button{
        Name = "Purchase JumpPower",
        Description = "Purchase 'JumpPower' Upgrade",
        Callback = function() 
            local args = {
                [1] = 'JumpPower'
            }

            game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.UpgradeService.BuyUpgrade:FireServer(unpack(args))
        end
    }

    MiscTab:Button{
        Name = "Purchase Health",
        Description = "Purchase 'Health' Upgrade",
        Callback = function() 
            local args = {
                [1] = 'Health'
            }

            game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.UpgradeService.BuyUpgrade:FireServer(unpack(args))
        end
    }

    MiscTab:Button{
        Name = "Reset Character",
        Description = "Resets your character",
        Callback = function() 
            wait(0.05)
            char.Humanoid.Health = 0
        end
    }

    MiscTab:Button{
        Name = "Kill Roblox",
        Description = "Destroys roblox instance (just do alt+f4 smh)",
        Callback = function() 
            wait(1)
            game:Shutdown()
        end
    }

    MiscTab:Button{
        Name = "Destroy NovalineHub",
        Description = "whyyy :(((!!!",
        Callback = function() 
            wait(1)
            Novaline:Destroy()
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

    Novaline:Credit{
        Name = "Moons",
        Description = "Owner and the only Developer",
        V3rm = "Moozys",
        Discord = "Moons#9999"
    }

    Novaline:Credit{
        Name = "SirWeeb",
        Description = "Owner of Novaline (NAME IDEA)",
        V3rm = "SirWeeb",
        Discord = "Weebster#6969"
    }

    Novaline:Credit{
        Name = "Alawapr",
        Description = "Developer of Novaline (i still dont know why he is here)",
        V3rm = "Alawapr",
        Discord = "Alawapr#4968"
    }
end


--Slashing Simulator
if game.PlaceId == 7728848215 then
    local functionNum = 0.00000000000000005
    print('Loading NovalineHub')
    local NovalineConnection = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

    local Novaline = NovalineConnection:create{
		Name = 'NovalineHub',
        Theme = NovalineConnection.Themes.Dark
    }

    local AutoFarmTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "AutoFarm"
    }

    local MiscTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "Misc"
    }

    _G.autoSlice = true
    _G.autoRebirth = true
    _G.rebirthSelection = 1

    function autoSlice()
        while _G.autoSlice do
            local args = {
                [1] = false
            }

            game:GetService("ReplicatedStorage").Remotes.Game.AirSlice:FireServer(unpack(args))
            wait(functionNum)
        end
    end

    AutoFarmTab:Toggle{
        Name = "AutoSlice",
        StartingState = false,
        Description = "Slices your sword for you",
        Callback = function(state) 
            _G.autoSlice = state
            autoSlice()
        end
    }

    MiscTab:Button{
        Name = "Reset Character",
        Description = "Resets your character",
        Callback = function() 
            wait(0.05)
            char.Humanoid.Health = 0
        end
    }

    MiscTab:Button{
        Name = "Kill Roblox",
        Description = "Destroys roblox instance (just do alt+f4 smh)",
        Callback = function() 
            wait(1)
            game:Shutdown()
        end
    }

    MiscTab:Button{
        Name = "Destroy NovalineHub",
        Description = "whyyy :(((!!!",
        Callback = function() 
            wait(1)
            Novaline:Destroy()
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

    Novaline:Credit{
        Name = "Moons",
        Description = "Owner and the only Developer",
        V3rm = "Moozys",
        Discord = "Moons#9999"
    }

    Novaline:Credit{
        Name = "SirWeeb",
        Description = "Owner of Novaline (NAME IDEA)",
        V3rm = "SirWeeb",
        Discord = "Weebster#6969"
    }

    Novaline:Credit{
        Name = "Alawapr",
        Description = "Developer of Novaline (i still dont know why he is here)",
        V3rm = "Alawapr",
        Discord = "Alawapr#4968"
    }
end


--Tapping Simulator
if game.PlaceId == 9498006165 then
    local functionNum = 0.00000000000000005
    print('Loading NovalineHub')
    local NovalineConnection = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

    local Novaline = NovalineConnection:create{
		Name = 'NovalineHub',
        Theme = NovalineConnection.Themes.Dark
    }

    local AutoFarmTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "AutoFarms"
    }

    local WorldsTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "World"
    }

    local EggsTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "Eggs"
    }

    local MiscTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "Misc"
    }

    _G.autoClicker = true
    _G.autoRebirth = true
    _G.rebirthSelection = 1
    _G.autoHatchEgg = true
    _G.egg = "75M Egg"
    _G.speed = true
    _G.selectedSpeed = 20

    function autoClick()
        while _G.autoClicker do
            local args = {
                [1] = 'Main'
            }

            game:GetService("ReplicatedStorage").Events.Tap:FireServer()
            wait(functionNum)
        end
    end

    function autoRebirth()
        while _G.autoRebirth do
            local args = {
                [1] = _G.rebirthSelection
            }

            game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
            wait(functionNum)
        end
    end

    function hatchEgg()
        while _G.autoHatchEgg do
            local args = {
                [1] = {},
                [2] = _G.egg,
                [3] = 1
            }

            game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer(unpack(args))
            wait(0.00005)
        end
    end

    function speed()
        while _G.speed do
            char.Humanoid.WalkSpeed = _G.selectedSpeed
            wait(functionNum)
        end
    end

    AutoFarmTab:Toggle{
        Name = "AutoClicker",
        StartingState = false,
        Description = "Clicks for you",
        Callback = function(state) 
            _G.autoClicker = state
            autoClick()
        end
    }

    AutoFarmTab:Toggle{
        Name = "AutoRebirth",
        StartingState = false,
        Description = "Rebirths for you",
        Callback = function(state) 
            _G.autoRebirth = state
            autoRebirth()
        end
    }

    local rebirthSelection = AutoFarmTab:Dropdown{
        Name = "Select Rebirth",
        StartingText = "1 Rebirth",
        Description = "Select the amount of Rebirths",
        Items = {
            {"1 Rebirth", 1},
            {"5 Rebirth", 5},
            {"10 Rebirth", 10},
            {"20 Rebirth", 20},
            {"100 Rebirth", 100},
            {"500 Rebirth", 500},
            {"4000 Rebirth", 4000},
        },
        Callback = function(Items) 
            _G.rebirthSelection = Items
        end
    }

    EggsTab:Toggle{
        Name = "AutoHatch",
        StartingState = false,
        Description = "Hatches eggs for you",
        Callback = function(state) 
            _G.autoHatchEgg = state
            hatchEgg()
        end
    }

    local eggSelectionhaha = EggsTab:Dropdown{
        Name = "Select Egg",
        StartingText = "Starter Egg",
        Description = "Select the Egg",
        Items = {
            {"Starter Egg", "Starter Egg"},
            {"Wood Egg", "Wood Egg"},
            {"Jungle Egg", "Jungle Egg"},
            {"Forest Egg", "Forest Egg"},
            {"Bee Egg", "Bee Egg"},
            {"Swamp Egg", "Swamp Egg"},
            {"Snow Egg", "Snow Egg"},
            {"Desert Egg", "Desert Egg"},
            {"Beach Egg", "Beach Egg"},
            {"Mine Egg", "Mine Egg"},
            {"Cloud Egg", "Cloud Egg"},
            {"Coral Egg", "Coral Egg"},
            {"Dark Egg", "Dark Egg"},
            {"Fire Egg", "Fire Egg"},
            {"Underworld Egg", "Underworld Egg"},
            {"Molten Egg", "Molten Egg"},
            {"Magma Egg", "Magma Egg"},
            {"Blue Magma Egg", "Blue Magma Egg"},
            {"Purple Magma Egg", "Purple Magma Egg"},
            {"Yellow Magma Egg", "Yellow Magma Egg"},
            {"Red Magma Egg", "Red Magma Egg"},
            {"Holy Egg", "Holy Egg"},
            {"Holy Wood Egg", "Holy Wood Egg"},
            {"Holy Bee Egg", "Holy Bee Egg"},
            {"Flora Egg", "Flora Egg"},
            {"Castle Egg", "Castle Egg"},
            {"Candy Egg", "Candy Egg"},
            {"Festive Egg", "Festival Egg"},
            {"Japanese Egg", "Japan Egg"},
            {"75M Egg (EVENT)", "75M Egg"},
        },
        Callback = function(Items) 
            _G.egg = Items
        end
    }

    WorldsTab:Button{
        Name = "Teleport to Spawn",
        Description = "Teleports you to Spawn",
        Callback = function() 
            local args = {
                [1] = CFrame.new(-296.79730224609375, 23.281475067138672, -501.625732421875) * CFrame.Angles(-0, -1.5707963705062866, 0)
            }

            game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
        end
    }

    WorldsTab:Button{
        Name = "Teleport to Forest",
        Description = "Teleports you to Forest",
        Callback = function() 
            local args = {
                [1] = CFrame.new(-163.98446655273438, 987.5964965820312, -403.33941650390625) * CFrame.Angles(-0, 0, -0)
            }

            game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
        end
    }

    WorldsTab:Button{
        Name = "Teleport to Flowerlands",
        Description = "Teleports you to Flowerlands",
        Callback = function() 
            local args = {
                [1] = CFrame.new(-179.51564025878906, 1524.6309814453125, -682.4987182617188) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732)
            }

            game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
        end
    }

    WorldsTab:Button{
        Name = "Teleport to Swamp",
        Description = "Teleports you to Swamp",
        Callback = function() 
            local args = {
                [1] = CFrame.new(-264.35888671875, 2123.06298828125, -694.6613159179688) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732)
            }

            game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
        end
    }

    WorldsTab:Button{
        Name = "Teleport to Snow Island",
        Description = "Teleports you to Snow Island",
        Callback = function() 
            local args = {
                [1] = CFrame.new(-201.77197265625, 2944.481689453125, -470.40875244140625) * CFrame.Angles(0, 1.5707963705062866, 0)
            }

            game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
        end
    }

    WorldsTab:Button{
        Name = "Teleport to Desert",
        Description = "Teleports you to Desert",
        Callback = function() 
            local args = {
                [1] = CFrame.new(-166.28515625, 4235.38916015625, -779.1531372070312) * CFrame.Angles(0, 1.5707963705062866, 0)
            }

            game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
        end
    }

    WorldsTab:Button{
        Name = "Teleport to Death Island",
        Description = "Teleports you to Death Island",
        Callback = function() 
            local args = {
                [1] = CFrame.new(-276.2012634277344, 5425.62158203125, -480.28778076171875) * CFrame.Angles(0, 1.5707963705062866, 0)
            }

            game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
        end
    }

    WorldsTab:Button{
        Name = "Teleport to Beach Island",
        Description = "Teleports you to Beach Island",
        Callback = function() 
            local args = {
                [1] = CFrame.new(-140.3450927734375, 6881.630859375, -495.68212890625) * CFrame.Angles(0, 1.5707963705062866, 0)
            }

            game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
        end
    }

    WorldsTab:Button{
        Name = "Teleport to Mines",
        Description = "Teleports you to Mines",
        Callback = function() 
            local args = {
                [1] = CFrame.new(-243.2586669921875, 8376.5166015625, -483.8897705078125) * CFrame.Angles(0, 1.5707963705062866, 0)
            }

            game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
        end
    }

    WorldsTab:Button{
        Name = "Teleport to Clouds",
        Description = "Teleports you to Clouds",
        Callback = function() 
             local args = {
                 [1] = CFrame.new(-253.30348205566406, 11262.8818359375, -237.8885955810547) * CFrame.Angles(0, 1.5707963705062866, 0)
            }

             game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
        end
    }

    WorldsTab:Button{
        Name = "Teleport to Coral Island",
        Description = "Teleports you to Coral Island",
        Callback = function() 
            local args = {
                [1] = CFrame.new(-511.0211181640625, 13812.0322265625, -543.2418212890625) * CFrame.Angles(-0, -1.5707963705062866, 0)
            }

            game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
        end
    }

    WorldsTab:Button{
        Name = "Teleport to Darkheart Island",
        Description = "Teleports you to Darkheart",
        Callback = function() 
            local args = {
                  [1] = CFrame.new(-408.697509765625, 17180.138671875, -552.0464477539062) * CFrame.Angles(0, 1.5707963705062866, 0)
              }

            game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
        end
    }

    WorldsTab:Button{
        Name = "Teleport to World 2",
        Description = "Teleports you to World 2",
        Callback = function()
            local args = {
                [1] = CFrame.new(1410.1021728515625, 159.49407958984375, -2861.50048828125) * CFrame.Angles(0, 1.5707963705062866, 0)
            }
            
            game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
        end
    }

    WorldsTab:Button{
        Name = "Teleport to Magma Island",
        Description = "Teleports you to Magma",
        Callback = function()
            local args = {
                [1] = CFrame.new(1280.5958251953125, 2193.828125, -2885.144287109375) * CFrame.Angles(0, 1.5707963705062866, 0)
            }

            game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
        end
    }

    WorldsTab:Button{
        Name = "Teleport to Blue Magma Island",
        Description = "Teleports you to Blue Magma",
        Callback = function() 
            local args = {
                [1] = CFrame.new(1401.12939453125, 5240.41943359375, -2953.919677734375) * CFrame.Angles(0, 1.5707963705062866, 0)
            }

            game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
        end
    }

    WorldsTab:Button{
        Name = "Teleport to Purple Magma Island",
        Description = "Teleports you to Purple Magma",
        Callback = function() 
            local args = {
                [1] = CFrame.new(1319.7027587890625, 7662.02490234375, -2958.0576171875) * CFrame.Angles(0, 1.5707963705062866, 0)
            }

            game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
        end
    }

    WorldsTab:Button{
        Name = "Teleport to Yellow Magma Island",
        Description = "Teleports you to Yellow Magma",
        Callback = function() 
            local args = {
                [1] = CFrame.new(1403.5440673828125, 10404.09765625, -2903.138427734375) * CFrame.Angles(-3.1415927410125732, 0.7853636741638184, -3.1415927410125732)
            }

            game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
        end
    }

    WorldsTab:Button{
        Name = "Teleport to Red Magma Island",
        Description = "Teleports you to Red Magma",
        Callback = function() 
            local args = {
                [1] = CFrame.new(1426.2127685546875, 13353.703125, -2900.90087890625) * CFrame.Angles(-3.1415927410125732, 0.7853636741638184, -3.1415927410125732)
            }

            game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
        end
    }

    MiscTab:Toggle{
        Name = "Set Speed",
        StartingState = false,
        Description = "Sets your speed to the selected speed.",
        Callback = function(state) 
            _G.speed = state
            speed()
        end
    }

    local speedSelection = MiscTab:Dropdown{
        Name = "Select Speed",
        StartingText = "20 Speed",
        Description = "Select the Speed",
        Items = {
            {"5 Speed (VERY SLOW)", 5},
            {"12 Speed (SLOW)", 12},
            {"20 Speed (DEFAULT)", 20},
            {"30 Speed (SLIGHTLY FAST)", 30},
            {"50 Speed (FAST)", 50},
            {"100 Speed (VERY FAST)", 100},
            {"... Speed (BYE)", math.huge},
        },
        Callback = function(Items) 
            _G.selectedSpeed = Items
        end
    }

    MiscTab:Button{
        Name = "Reset Character",
        Description = "Resets your character",
        Callback = function() 
            wait(0.05)
            char.Humanoid.Health = 0
        end
    }

    MiscTab:Button{
        Name = "Kill Roblox",
        Description = "Destroys roblox instance (just do alt+f4 smh)",
        Callback = function() 
            wait(1)
            game:Shutdown()
        end
    }

    MiscTab:Button{
        Name = "Destroy NovalineHub",
        Description = "whyyy :(((!!!",
        Callback = function() 
            wait(1)
            Novaline:Destroy()
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

    Novaline:Credit{
        Name = "Moons",
        Description = "Owner and the only Developer",
        V3rm = "Moozys",
        Discord = "Moons#9999"
    }

    Novaline:Credit{
        Name = "SirWeeb",
        Description = "Owner of Novaline (NAME IDEA)",
        V3rm = "SirWeeb",
        Discord = "Weebster#6969"
    }

    Novaline:Credit{
        Name = "Alawapr",
        Description = "Developer of Novaline (i still dont know why he is here)",
        V3rm = "Alawapr",
        Discord = "Alawapr#4968"
    }
end

--Clicking Legends X
if game.PlaceId == 9647915471 then
    local functionNum = 0.00000000000000005
    print('Loading NovalineHub')
    local NovalineConnection = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

    local Novaline = NovalineConnection:create{
		Name = 'NovalineHub',
        Theme = NovalineConnection.Themes.Dark
    }

    local AutoFarmTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "AutoFarms"
    }

    local WorldsTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "World"
    }

    local EggsTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "Eggs"
    }

    local MiscTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "Misc"
    }

    _G.autoClicker = true
    _G.autoRebirth = true
    _G.rebirthSelection = 'Rb1'
    _G.autoHatchEggs = true
    _G.autoHatchSelection = 'Common Egg'
    _G.autoUpgrade = true
    _G.autoUpgradeSelection = 'WalkSpeed'

    function autoClick()
        while _G.autoClicker do
            local args = {
                [1] = "Normal"
            }

            game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.Click:FireServer(unpack(args))
            wait(functionNum)
        end
    end
    
    function autoRebirth()
        while _G.autoRebirth do
            local args = {
                [1] = "List",
                [2] = _G.rebirthSelection
            }

            game:GetService("ReplicatedStorage").GameClient.Events.RemoteFunction.Rebirth:InvokeServer(unpack(args))
            wait(functionNum)
        end
    end

    function autoHatch()
        while _G.autoHatchEggs do
            local args = {
                [1] = workspace.Eggs:FindFirstChild(_G.autoHatchSelection),
                [2] = 'Buy1'
            }

            game:GetService("ReplicatedStorage").GameClient.Events.RemoteFunction.BuyEgg:InvokeServer(unpack(args))
            wait(functionNum)
        end
    end

    function autoUpgrade()
        while _G.autoUpgrade do
            local args = {
                [1] = "List",
                [2] = _G.autoUpgradeSelection
            }

            game:GetService("ReplicatedStorage").GameClient.Events.RemoteFunction.Upgrade:InvokeServer(unpack(args))
            wait(1)
        end
    end


    AutoFarmTab:Toggle{
        Name = "AutoClicker",
        StartingState = false,
        Description = "Clicks for you",
        Callback = function(state) 
            _G.autoClicker = state
            autoClick()
        end
    }

    AutoFarmTab:Toggle{
        Name = "AutoRebirth",
        StartingState = false,
        Description = "Rebirths for you",
        Callback = function(state) 
            _G.autoRebirth = state
            autoRebirth()
        end
    }

    local rebirthSelection = AutoFarmTab:Dropdown{
        Name = "Rebirth Selection",
        StartingText = "1 Rebirth",
        Description = "Select the amount of Rebirths",
        Items = {
            {"1 Rebirth", "Rb1"},
            {"5 Rebirths", "Rb2"},
            {"15 Rebirths", "Rb3"},
            {"50 Rebirths", "Rb4"},
            {"250 Rebirths", "Rb5"},
            {"750 Rebirths", "Rb6"},
            {"2.75k Rebirths", "Rb7"},
            {"10.5k Rebirths", "Rb8"},
            {"25.52k Rebirths", "Rb9"},
            {"52.25k Rebirths", "Rb10"},
            {"75.95k Rebirths", "Rb11"},
            {"105.2k Rebirths", "Rb12"},
            {"210k Rebirths", "Rb13"},
            {"530k Rebirths", "Rb14"},
            {"1M Rebirths", "Rb15"},
            {"3M Rebirths", "Rb16"},
            {"7M Rebirths", "Rb17"},
            {"10M Rebirths", "Rb18"},
            {"15M Rebirths", "Rb19"},
            {"25M Rebirths", "Rb20"},
            {"50M Rebirths", "Rb21"},
            {"100M Rebirths", "Rb22"},
            {"250M Rebirths", "Rb23"},
            {"500M Rebirths", "Rb24"},
            {"1B Rebirths", "Rb25"},
            {"2.5B Rebirths", "Rb26"},
            {"5B Rebirths", "Rb27"},
            {"10B Rebirths", "Rb28"},
            {"50B Rebirths", "Rb29"},
            {"100B Rebirths", "Rb30"},
            {"100B Rebirths", "Rb31"},
            {"500B Rebirths", "Rb32"},
            {"1T Rebirths", "Rb33"},
        },
        Callback = function(Items)
            _G.rebirthSelection = Items
            print(_G.rebirthSelection)
        end
    }

    AutoFarmTab:Toggle{
        Name = "AutoUpgrade",
        StartingState = false,
        Description = "Upgrades selected Upgrade for you",
        Callback = function(state) 
            _G.autoUpgrade = state
            autoUpgrade()
        end
    }

    EggsTab:Toggle{
        Name = "AutoHatch",
        StartingState = false,
        Description = "Hatches eggs for you",
        Callback = function(state) 
            _G.autoHatchEggs = state
            autoHatch()
        end
    }

    local upgradeSelection = AutoFarmTab:Dropdown{
        Name = "Upgrade Selection",
        StartingText = "WalkSpeed Upgrade",
        Description = "Select the Upgrade you wanna Upgrade",
        Items = {
            {"WalkSpeed Upgrade", "WalkSpeed"},
            {"Jump Upgrade", "Jump"},
            {"WalkSpeed Upgrade", "WalkSpeed"},
        },
        Callback = function(Items)
            _G.autoHatchSelection = Items
            print(_G.autoHatchSelection)
        end
    }

    local hatchSelection = EggsTab:Dropdown{
        Name = "Egg Selection",
        StartingText = "Common Egg",
        Description = "Select the egg you wanna Hatch",
        Items = {
            {"Common Egg", "Common Egg"},
            {"Jagged Egg", "Jagged Egg"},
            {"Candy Egg", "Candy Egg"},
            {"Space Egg", "Space Egg"},
            {"Frozen Egg", "Frozen Egg"},
            {"Water Egg", "Water Egg"},
            {"Space Egg", "Space Egg"},
            {"Mushroom Egg", "Mushroom Egg"},
            {"Molten Egg", "Molten Egg"},
            {"Lunar Egg (EVENT)", "Chinese NY Egg"},
        },
        Callback = function(Items)
            _G.autoHatchSelection = Items
            print(_G.autoHatchSelection)
        end
    }

    MiscTab:Button{
        Name = "Reset Character",
        Description = "Resets your character",
        Callback = function() 
            wait(0.05)
            char.Humanoid.Health = 0
        end
    }

    MiscTab:Button{
        Name = "Kill Roblox",
        Description = "Destroys roblox instance (just do alt+f4 smh)",
        Callback = function() 
            wait(1)
            game:Shutdown()
        end
    }

    MiscTab:Button{
        Name = "Destroy NovalineHub",
        Description = "whyyy :(((!!!",
        Callback = function() 
            wait(1)
            Novaline:Destroy()
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

    Novaline:Credit{
        Name = "Moons",
        Description = "Owner and the only Developer",
        V3rm = "Moozys",
        Discord = "Moons#9999"
    }

    Novaline:Credit{
        Name = "SirWeeb",
        Description = "Owner of Novaline (NAME IDEA)",
        V3rm = "SirWeeb",
        Discord = "Weebster#6969"
    }

    Novaline:Credit{
        Name = "Alawapr",
        Description = "Developer of Novaline (i still dont know why he is here)",
        V3rm = "Alawapr",
        Discord = "Alawapr#4968"
    }
end

--Ultra Clickers Simulator
if game.PlaceId == 6512923934 then
    local functionNum = 0.00000000000000005
    print('Loading NovalineHub')
    local NovalineConnection = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

    local Novaline = NovalineConnection:create{
		Name = 'NovalineHub',
        Theme = NovalineConnection.Themes.Dark
    }

    local AutoFarmTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "AutoFarms"
    }

    local WorldsTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "World"
    }

    local EggsTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "Eggs"
    }

    local MiscTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "Misc"
    }

    _G.autoClicker = true

    function autoClick()
        while _G.autoClicker do
            workspace.Events.AddClick:FireServer()
            wait(functionNum)
        end
    end

    AutoFarmTab:Toggle{
        Name = "AutoClicker",
        StartingState = false,
        Description = "Clicks for you",
        Callback = function(state) 
            _G.autoClicker = state
            autoClick()
        end
    }


    MiscTab:Button{
        Name = "Reset Character",
        Description = "Resets your character",
        Callback = function() 
            wait(0.05)
            char.Humanoid.Health = 0
        end
    }

    MiscTab:Button{
        Name = "Kill Roblox",
        Description = "Destroys roblox instance (just do alt+f4 smh)",
        Callback = function() 
            wait(1)
            game:Shutdown()
        end
    }

    MiscTab:Button{
        Name = "Destroy NovalineHub",
        Description = "whyyy :(((!!!",
        Callback = function() 
            wait(1)
            Novaline:Destroy()
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

    Novaline:Credit{
        Name = "Moons",
        Description = "Owner and the only Developer",
        V3rm = "Moozys",
        Discord = "Moons#9999"
    }

    Novaline:Credit{
        Name = "SirWeeb",
        Description = "Owner of Novaline (NAME IDEA)",
        V3rm = "SirWeeb",
        Discord = "Weebster#6969"
    }

    Novaline:Credit{
        Name = "Alawapr",
        Description = "Developer of Novaline (i still dont know why he is here)",
        V3rm = "Alawapr",
        Discord = "Alawapr#4968"
    }
end

