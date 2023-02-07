--Vars
local inf = math.huge; local defaultNum = 50; local plr = game.Players.LocalPlayer; local char = plr.Character
--Base Raiders
if game.PlaceId == 1696916806 then
	print('Loading NovalineHub')
    local NovalineConnection = loadstring(game:HttpGet("https://raw.githubusercontent.com/SpyTYX/mercury-plus/main/mercury-plus.lua"))()

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

end


--Clicker Madness
if game.PlaceId == 5490351219 then
    local functionNum = 0.00000000000000005
    print('Loading NovalineHub')
    local NovalineConnection = loadstring(game:HttpGet("https://raw.githubusercontent.com/SpyTYX/mercury-plus/main/mercury-plus.lua"))()

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
end


--Slashing Simulator
if game.PlaceId == 7728848215 then
    local functionNum = 0.00000000000000005
    print('Loading NovalineHub')
    local NovalineConnection = loadstring(game:HttpGet("https://raw.githubusercontent.com/SpyTYX/mercury-plus/main/mercury-plus.lua"))()

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
end


--Tapping Simulator
if game.PlaceId == 9498006165 then
    local functionNum = 0.00000000000000005
    print('Loading NovalineHub')
    local NovalineConnection = loadstring(game:HttpGet("https://raw.githubusercontent.com/SpyTYX/mercury-plus/main/mercury-plus.lua"))()

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
end

--Clicking Legends X
if game.PlaceId == 9647915471 then
    local functionNum = 0.00000000000000005
    print('Loading NovalineHub')
    local NovalineConnection = loadstring(game:HttpGet("https://raw.githubusercontent.com/SpyTYX/mercury-plus/main/mercury-plus.lua"))()

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
end

--Ultra Clickers Simulator
if game.PlaceId == 6512923934 then
    local functionNum = 0.00000000000000005
    print('Loading NovalineHub')
    local NovalineConnection = loadstring(game:HttpGet("https://raw.githubusercontent.com/SpyTYX/mercury-plus/main/mercury-plus.lua"))()

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
end

-- Clicker Party Simulator
if game.PlaceId == 11220569194 then
    local functionNum = 0.00000000000000005
    print('Loading NovalineHub')
    local NovalineConnection = loadstring(game:HttpGet("https://raw.githubusercontent.com/SpyTYX/mercury-plus/main/mercury-plus.lua"))()

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
    _G.autoRebirthSelection = '1'
    _G.autoHatchEgg = true
    _G.autoEggSelection = 'Basic Egg'
    _G.autoUnlockParty = true
    _G.autoUpgradeParty = true
    _G.autoParty = 'Desert'
    _G.speed = true
    _G.selectedSpeed = 20

    function autoClick()
        while _G.autoClicker do
            local args = {
                [1] = e
            }

            game:GetService("ReplicatedStorage").Click:FireServer(unpack(args))
            wait(functionNum)
        end
    end

    function autoRebirth()
        while _G.autoRebirth do
            local args = {
                [1] = _G.autoRebirthSelection,
                [2] = 'a'
            }

            game:GetService("ReplicatedStorage").Rebirth:FireServer(unpack(args))
            wait(functionNum)
        end
    end

    function autoHatch()
        while _G.autoHatchEgg do
            local args = {
                [1] = _G.autoEggSelection,
                [2] = 'Normal',
                [3] = 'asdgouhsaiugdhasoiudghodsagfasdgdsaoughsadoug'
            }

            game:GetService("ReplicatedStorage").HatchEvents.Hatch:FireServer(unpack(args))
            wait(0.5)
        end
    end

    function autoUnlockParty()
        while _G.autoUnlockParty do
            local args = {
                [1] = _G.autoParty
            }

            game:GetService("ReplicatedStorage").UnlockParty:FireServer(unpack(args))
            wait(functionNum)
        end
    end

    function autoUpgradeParty()
        while _G.autoUpgradeParty do
            local args = {
                [1] = _G.autoParty
            }

            game:GetService("ReplicatedStorage").UpgradeParty:FireServer(unpack(args))
            wait(functionNum)
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

    local autoRebirthSelect = AutoFarmTab:Dropdown{
        Name = 'Select Rebirths',
        StartingText = '1 Rebirth',
        Description = 'Select the Amount of Rebirths',
        Items = {
            {"1 Rebirth", "1"},
            {"5 Rebirth", "2"},
            {"10 Rebirth", "3"},
            {"50 Rebirth", "4"},
            {"100 Rebirth", "5"},
            {"200 Rebirth", "6"},
            {"500 Rebirth", "7"},
            {"750 Rebirth", "8"},
            {"1000 Rebirth", "9"},
            {"1500 Rebirth", "10"},
        },
        Callback = function(Items) 
            _G.autoRebirthSelection = Items
        end
    }

    EggsTab:Toggle{
        Name = "AutoHatch",
        StartingState = false,
        Description = "Hatches eggs for you",
        Callback = function(state) 
            _G.autoHatchEgg = state
            autoHatch()
        end
    }

    local autoHatchSelect = EggsTab:Dropdown{
        Name = 'Select Egg',
        StartingText = 'Basic Egg',
        Description = 'Select the Egg you wanna use',
        Items = {
            {"Basic Egg", "Basic Egg"},
            {"Epic Egg", "Epic Egg"},
            {"Desert Egg", "Desert Egg"},
            {"Desert Myths Egg", "Desert Myths Egg"},
            {"Desert Structures Egg", "Desert Structures Egg"},
            {"Egyptian Gods Egg", "Egyptian Gods Egg"},
            {"Oceanic Egg", "Oceanic Egg"},
            {"Ocean Monsters Egg", "Ocean Monsters Egg"},
        },
        Callback = function(Items) 
            _G.autoEggSelection = Items
        end
    }

    MiscTab:Toggle{
        Name = "AutoUnlockParty",
        StartingState = false,
        Description = "Unlocks parties for you",
        Callback = function(state)
            _G.autoUnlockParty = state
            autoUnlockParty()
        end
    }

    MiscTab:Toggle{
        Name = "AutoUpgradeParty",
        StartingState = false,
        Description = "Upgrades parties for you",
        Callback = function(state)
            _G.autoUpgradeParty = state
            autoUpgradeParty()
        end
    }

    local autoPartiesSelection = EggsTab:Dropdown{
        Name = 'Select Party',
        StartingText = 'Desert Party',
        Description = 'Select the Party you are gonna use',
        Items = {
            {"Desert Party", "Desert"},
            {"Ocean Party", "Ocean"},
            {"Volcano Party", "Volcano"},
            {"Candy Party", "Candy"},
            {"Beach Party", "Beach"},
            {"Toxic Party", "Toxic"},
            {"Anime Party", "Anime"},
            {"Russo Party", "Russo"},
        },
        Callback = function(Items) 
            _G.autoEggSelection = Items
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
        StartingText = "16 Speed",
        Description = "Select the Speed",
        Items = {
            {"5 Speed (VERY SLOW)", 5},
            {"12 Speed (SLOW)", 12},
            {"20 Speed (DEFAULT)", 16},
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
end

-- Clicker Masters
if game.PlaceId == 11652057145 then
    local functionNum = 0.00000000000000005
    print('Loading NovalineHub')
    local NovalineConnection = loadstring(game:HttpGet("https://raw.githubusercontent.com/SpyTYX/mercury-plus/main/mercury-plus.lua"))()

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
    _G.rebirthSelection = 1
    _G.speed = true
    _G.selectedSpeed = 20

    function autoClick()
        while _G.autoClicker do
            game:GetService("ReplicatedStorage").Events.Click:FireServer()
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
        Name = "Rebirth Selection",
        StartingText = "1 Rebirth",
        Description = "Select the amount of Rebirths",
        Items = {
            {"1 Rebirth", 1},
            {"5 Rebirth", 5},
            {"10 Rebirth", 10},
            {"25 Rebirth", 25},
        },
        Callback = function(Items)
            _G.rebirthSelection = Items
            print(_G.rebirthSelection)
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
        StartingText = "16 Speed",
        Description = "Select the Speed",
        Items = {
            {"5 Speed (VERY SLOW)", 5},
            {"12 Speed (SLOW)", 12},
            {"20 Speed (DEFAULT)", 16},
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
end

-- Clicking Havoc
if game.PlaceId == 6075756195 then
    local functionNum = 0.00000000000000005
    print('Loading NovalineHub')
    local NovalineConnection = loadstring(game:HttpGet("https://raw.githubusercontent.com/SpyTYX/mercury-plus/main/mercury-plus.lua"))()

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
    _G.rebirthSelection = 'RB001'
    _G.autoHatchEgg = true
    _G.autoEggSelection = 'Regular'
    _G.speed = true
    _G.selectedSpeed = 16


    function autoClick()
        while _G.autoClicker do
            local args = {
                [1] = 1
            }

            game:GetService("ReplicatedStorage").Click:FireServer(unpack(args))
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

    function autoHatch()
        while _G.autoHatchEgg do
            local args = {
                [1] = _G.autoEggSelection,
                [2] = false,
            }

            game:GetService("ReplicatedStorage").OpenEgg:FireServer(unpack(args))
            wait(0.5)
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
            {"1 Rebirth", 'RB001'},
            {"5 Rebirth", 'RB002'},
            {"10 Rebirth", 'RB003'},
            {"25 Rebirth", 'RB004'},
            {"100 Rebirth", 'RB005'},
            {"250 Rebirth", 'RB006'},
            {"1k Rebirth", 'RB007'},
            {"10k Rebirth", 'RB008'},
            {"100k Rebirth", 'RB009'},
            {"500k Rebirth", 'RB010'},
            {"1m Rebirth", 'RB011'},
            {"5m Rebirth", 'RB012'},
            {"10m Rebirth", 'RB013'},
            {"25m Rebirth", 'RB014'},
            {"100m Rebirth", 'RB015'},
            {"500m Rebirth", 'RB016'},
            {"1b Rebirth", 'RB017'},
            {"5b Rebirth", 'RB018'},
            {"10b Rebirth", 'RB019'},
            {"100b Rebirth", 'RB020'},
        },
        Callback = function(Items)
            _G.rebirthSelection = Items
            print(_G.rebirthSelection)
        end
    }

    EggsTab:Toggle{
        Name = "AutoHatch",
        StartingState = false,
        Description = "Hatches eggs for you",
        Callback = function(state) 
            _G.autoHatchEgg = state
            autoHatch()
        end
    }

    local autoHatchSelect = EggsTab:Dropdown{
        Name = 'Select Egg',
        StartingText = 'Regular Egg',
        Description = 'Select the Egg you wanna use',
        Items = {
            {"Regular Egg", "Regular"},
            {"Striped Egg", "Striped"},
            {"Elemental Egg", "Elemantal"},
            {"Godly Egg", "Godly"},
            {"Dark Egg", "Dark"},
            {"Gummy Egg", "Gummy"},
            {"Mushroom Egg", "Mushroom"},
            {"Wizard Egg", "Wizard"},
        },
        Callback = function(Items) 
            _G.autoEggSelection = Items
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
        StartingText = "16 Speed",
        Description = "Select the Speed",
        Items = {
            {"5 Speed (VERY SLOW)", 5},
            {"12 Speed (SLOW)", 12},
            {"20 Speed (DEFAULT)", 16},
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

    function speed()
        while _G.speed do
            char.Humanoid.WalkSpeed = _G.selectedSpeed
            wait(functionNum)
        end
    end
end

-- Prison Life
if game.PlaceId == 155615604 then
    local functionNum = 0.00000000000000005
    print('Loading NovalineHub')
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
end

-- Ninja Legends
if game.PlaceId == 3956818381 then
    local functionNum = 0.00000000000000005
    print('Loading NovalineHub')
    local NovalineConnection = loadstring(game:HttpGet("https://raw.githubusercontent.com/SpyTYX/mercury-plus/main/mercury-plus.lua"))()

    local Novaline = NovalineConnection:create{
		Name = 'NovalineHub',
        Theme = NovalineConnection.Themes.Dark
    }

    local AutoFarmTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "AutoFarmTab"
    }

    local EggsTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "EggsTab"
    }

    local PlayerTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "Player"
    }

    local MiscTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "Misc"
    }

    _G.autoClicker = true
    _G.autoSell = true
    _G.autoUnlockAllIslands = true
    _G.buySwords = true
    _G.godMode = true
    _G.teleportSelection = CFrame.new(0,0,0)
    _G.autoHatchCrystals = true
    _G.autoFarmBoss = true

    function autoClick()
        while _G.autoClicker do
            local args = {
                [1] = 'swingKatana'
            }

            game:GetService('Players').LocalPlayer.ninjaEvent:FireServer(unpack(args))
            wait(functionNum)
        end
    end

    function autoSell()
        while _G.autoSell do
            if _G.autoClicker == false then return end
            game:GetService('Workspace').sellAreaCircles.sellAreaCircle16.circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            wait(0.1)
            game:GetService('Workspace').sellAreaCircles.sellAreaCircle16.circleInner.CFrame = CFrame.new(0,0,0)
            wait(0.1)
        end
    end

    function unlockIslands()
        local oldCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        for _,v in pairs(game:GetService('Workspace').islandUnlockParts:GetChildren()) do
            game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            wait(0.05)
            game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(307.297058, 123.87394, 1763.52197, 2.07424164e-05, 0.57355696, 0.819165647, -0.99999994, 2.07424164e-05, 1.07884407e-05, -1.07884407e-05, -0.819165647, 0.573557019)
            wait(0.3)
            wait(0.1)
        end
        wait(0.1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldCFrame
    end

    function farmBoss3()
        local oldCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        while _G.autoFarmBoss do
            for _,v in pairs(game:GetService('Workspace').bossWalkParts3:GetChildren()) do
                game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                wait(0.65)
            end
            wait(functionNum)
        end
        wait(0.1)
        _G.autoClicker = false
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldCFrame
    end

    function teleport()
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = _G.teleportSelection
        wait(0.1)
    end

    function unlockSwords()
        if not _G.buySwords then return end
        local args = {
            [1] = 'BuyAllSwords',
            [2] = 'Blazing Vortex Island'
        }
        local requirement = game:GetService('Players').LocalPlayer.ninjaEvent
        requirement:FireServer(unpack(args))
        wait(0.1)
    end

    function openEgg()
        while _G.autoHatchCrystals do
            local args = {
                [1] = 'openCrystal',
                [2] = 'Infinity Void Crystal'
            }

            game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer(unpack(args))
        end
    end

    AutoFarmTab:Toggle{
        Name = "AutoSwing",
        StartingState = false,
        Description = "Swings your katana for you",
        Callback = function(state) 
            _G.autoClicker = state
            autoClick()
        end
    }

    AutoFarmTab:Toggle{
        Name = "AutoSell",
        StartingState = false,
        Description = "Do i even need to explain?",
        Callback = function(state) 
            _G.autoSell = state
            autoSell()
        end
    }

    PlayerTab:Button{
        Name = "Teleport",
        Description = "Teleport to the selected place",
        Callback = function() 
            teleport()
        end
    }

    local teleportSelection = PlayerTab:Dropdown{
        Name = "Select Island",
        StartingText = "Spawn",
        Description = "Select the place you want to go",
        Items = {
            {"Spawn (MAIN ISLAND)", CFrame.new(0,0,0)},
            {"Cloning Altar (CLONING)", CFrame.new(4479.33154, 141.681931, 1382.17188, -0.422592998, 0, -0.906319618, 0, 1, 0, 0.906319618, 0, -0.422592998)},
            {"Elements Altar (ELEMENTS)", CFrame.new(729.453125, 141.681931, -5902.17725, 0.984812498, -0, -0.173621148, 0, 1, -0, 0.173621148, 0, 0.984812498)},
            {"DOJO (AFK FARMING)", CFrame.new(-4109.91553, 141.681931, -5908.68457, 0.939700544, 0, 0.341998369, 0, 1, 0, -0.341998369, 0, 0.939700544)},
            {"Enchanted Island", CFrame.new(26.9946918, 781.996155, -114.43486, 0, 0, -1, 0, 1, 0, 1, 0, 0)},
            {"Astral Island", CFrame.new(247.097946, 2032.19617, 347.208893, 0.819155693, 0, 0.573571265, 0, 1, 0, -0.573571265, 0, 0.819155693)},
            {"Mystical Island", CFrame.new(162.742065, 4065.7981, 13.3782578, -0.819156051, 0, 0.573571265, 0, 1, 0, -0.573571265, 0, -0.819156051)},
            {"Tundra Island", CFrame.new(199.768478, 9303.29688, 12.9378996, -0.939700961, 0, 0.341998369, 0, 1, 0, -0.341998369, 0, -0.939700961)},
            {"Sandstone Island", CFrame.new(199.768478, 17704.4473, 12.9378996, -0.939700961, 0, 0.341998369, 0, 1, 0, -0.341998369, 0, -0.939700961)},
            {"Ancient Inferno Island", CFrame.new(197.86853, 28274.4121, 7.03808689, -0.939700961, 0, 0.341998369, 0, 1, 0, -0.341998369, 0, -0.939700961)},
            {"Midnight Shadow Island", CFrame.new(197.86853, 33225.1016, 7.03808689, -0.939700961, 0, 0.341998369, 0, 1, 0, -0.341998369, 0, -0.939700961)},
            {"Mythical Souls Island", CFrame.new(197.86853, 39335.6953, 7.03808689, -0.939700961, 0, 0.341998369, 0, 1, 0, -0.341998369, 0, -0.939700961)},
            {"Winter Wonder Island", CFrame.new(197.86853, 46028.6797, 7.03808689, -0.939700961, 0, 0.341998369, 0, 1, 0, -0.341998369, 0, -0.939700961)},
            {"Golden Master Island", CFrame.new(197.86853, 52625.8867, 7.03808689, -0.939700961, 0, 0.341998369, 0, 1, 0, -0.341998369, 0, -0.939700961)},
            {"Dragon Legends Island", CFrame.new(197.86853, 59612.8047, 7.03808689, -0.939700961, 0, 0.341998369, 0, 1, 0, -0.341998369, 0, -0.939700961)},
            {"Cybernetic Legends Island", CFrame.new(197.86853, 66687.2969, 7.03808689, -0.939700961, 0, 0.341998369, 0, 1, 0, -0.341998369, 0, -0.939700961)},
            {"Skystorm Ultraus Island", CFrame.new(197.86853, 70289.2891, 7.03808689, -0.939700961, 0, 0.341998369, 0, 1, 0, -0.341998369, 0, -0.939700961)},
            {"Soul Fusion Island", CFrame.new(197.86853, 79765.1172, 7.03808689, -0.939700961, 0, 0.341998369, 0, 1, 0, -0.341998369, 0, -0.939700961)},
            {"Dark Elements Island", CFrame.new(197.86853, 83217.1172, 7.03808689, -0.939700961, 0, 0.341998369, 0, 1, 0, -0.341998369, 0, -0.939700961)},
            {"Inner Peace Island", CFrame.new(197.86853, 87069.2031, 7.03808689, -0.939700961, 0, 0.341998369, 0, 1, 0, -0.341998369, 0, -0.939700961)},
            {"Blazing Vortex Island", CFrame.new(197.86853, 91264.2031, 7.03808689, -0.939700961, 0, 0.341998369, 0, 1, 0, -0.341998369, 0, -0.939700961)},
        },
        Callback = function(Items)
            _G.teleportSelection = Items
            print(_G.teleportSelection)
        end
    }

    PlayerTab:Button{
        Name = "Unlock All Islands",
        Description = "Unlocks every island in the game currently available",
        Callback = function() 
            wait(1)
            unlockIslands()
        end
    }

    PlayerTab:Button{
        Name = "Buy Swords",
        Description = "Buys swords in the shop for you",
        Callback = function() 
            wait(1)
            unlockSwords()
        end
    }

    EggsTab:Toggle{
        Name = "OpenEgg",
        StartingState = false,
        Description = "hi yt",
        Callback = function(state) 
            wait(1)
            openEgg()
        end
    }

    AutoFarmTab:Toggle{
        Name = "AutoBuySwords",
        StartingState = false,
        Description = "Automatically buys swords in the shop for you ",
        Callback = function(state) 
            wait(1)
            while true do
                unlockSwords()
            end
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
end

-- Gas Station Simulator (LEGACY)
if game.PlaceId == 10599426741 then
    local functionNum = 0.00000000000000005
    print('Loading NovalineHub')
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

    _G.autoSprint = true
    _G.autoClean = true

    function clean()
        while _G.autoClean do
            local args = {
                [1] = 'Clean',
                [2] = workspace.Spot.Clean
            }

            game:GetService('ReplicatedStorage').Remote:FireServer(unpack(args))
            wait(2)
        end
    end

    function sprint()
        while _G.autoSprint do
            local args = {
                [1] = 'Sprinting',
                [2] = true
            }

            game:GetService('ReplicatedStorage').Remote:FireServer(unpack(args))
            wait(functionNum)
        end
        local args = {
            [1] = 'Sprinting',
            [2] = false
        }
        game:GetService('ReplicatedStorage').Remote:FireServer(unpack(args))
    end

    AutoFarmTab:Toggle{
        Name = "AutoSprint",
        StartingState = false,
        Description = "Sprints for you automatically",
        Callback = function(state) 
            _G.autoSprint = state
            sprint()
        end
    }

    AutoFarmTab:Toggle{
        Name = "AutoClean",
        StartingState = false,
        Description = "Cleans windows for you automatically",
        Callback = function(state) 
            _G.autoClean = state
            clean()
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
end

-- Raise a Floppa (uwu)
if game.PlaceId == 9203864304 then
    local functionNum = 0.00000000000000005
    print('Loading NovalineHub')
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

    AutoFarmTab:Toggle{
        Name = "AutoRent",
        StartState = false,
        Description = "Gets rent from roommate automatically",
        Callback = function(state)
            _G.autoRent = state
            getRent()
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
end

-- Rebirth Champions X
if game.PlaceId == 8540346411 then
    local functionNum = 0.00000000000000005
    print('Loading NovalineHub')
    local NovalineConnection = loadstring(game:HttpGet("https://raw.githubusercontent.com/SpyTYX/mercury-plus/main/mercury-plus.lua"))()

    local Novaline = NovalineConnection:create{
		Name = 'NovalineHub',
        Theme = NovalineConnection.Themes.Dark
    }

    local AutoFarmTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "AutoFarmTab"
    }

    local EggsTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "Player"
    }

    local MiscTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "Misc"
    }

    _G.autoClicker = true
    _G.autoRebirth = true
    _G.autoRebirthSelection = 1
    _G.autoHatch = true
    _G.autoHatchEggSelection = 'Basic'
    _G.godMode = true

    function autoHatch()
        while _G.autoHatch do
            local args = {
                [1] = _G.autoHatchEggSelection,
                [2] = 'Triple'
            }

            game:GetService('ReplicatedStorage').Functions.Unbox:InvokeServer(unpack(args))
            wait(0.3)
        end
    end

    function autoClick()
        while _G.autoClicker do
            game:GetService('ReplicatedStorage').Events.Click3:FireServer()
            wait(functionNum)
        end
    end

    function autoRebirth()
        while _G.autoClicker do
            local args = {
                [1] = _G.autoRebirthSelection
            }

            game:GetService('ReplicatedStorage').Events.Rebirth:FireServer(unpack(args))
            wait(functionNum)
        end
    end

    AutoFarmTab:Toggle{
        Name = "AutoClicker",
        StartingState = false,
        Description = "Clicks for you automatically",
        Callback = function(state) 
            _G.autoClicker = state
            autoClick()
        end
    }

    AutoFarmTab:Toggle{
        Name = "AutoRebirth",
        StartingState = false,
        Description = "Rebirths for you automatically",
        Callback = function(state) 
            _G.autoRebirth = state
            autoRebirth()
        end
    }

    local rebirthSelection = AutoFarmTab:Dropdown{
        Name = "Select Rebirths",
        StartingText = "1 Rebirth",
        Description = "Select the amount of rebirths",
        Items = {
            {"1 Rebirth", 1},
            {"5 Rebirths", 2},
            {"10 Rebirths", 3},
            {"25 Rebirths", 4},
            {"100 Rebirths", 5},
            {"500 Rebirths", 6},
            {"2.5K Rebirths", 7},
            {"5K Rebirths", 8},
            {"10K Rebirths", 9},
            {"50K Rebirths", 10},
        },
        Callback = function(Items)
            _G.autoRebirthSelection = Items
            print(_G.autoRebirthSelection)
        end
    }

    EggsTab:Toggle{
        Name = "AutoUnbox",
        StartingState = false,
        Description = "Unboxes eggs for you",
        Callback = function(state) 
            _G.autoHatch = state
            autoHatch()
        end
    }

    local eggSelection = EggsTab:Dropdown{
        Name = "Select Egg",
        StartingText = "Basic Egg",
        Description = "Select the egg you want to hatch",
        Items = {
            {"Basic Egg", 'Basic'},
            {"Mythic Egg", 'Mythic'},
            {"Forest Egg", 'Forest'},
            {"Beach Egg", 'Beach'},
            {"Atlantis Egg", 'Atlantis'},
            {"Desert Egg", 'Desert'},
            {"Winter Egg", 'Winter'},
            {"Volcano Egg", 'Volcano'},
            {"Moon Egg", 'Moon'},
            {"Cyber Egg", 'Cyber'},
            {"Magic Egg", 'Magic'},
        },
        Callback = function(Items)
            _G.autoHatchEggSelection = Items
            print(_G.autoHatchEggSelection)
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
            if _G.godMode == false then
                char.Humanoid.WalkSpeed = 16
                char.Humanoid.JumpPower = 50
            end
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
end

-- Legends of Speed
if game.PlaceId == 3101667897 then
    local functionNum = 0.00000000000000005
    print('Loading NovalineHub')
    local NovalineConnection = loadstring(game:HttpGet("https://raw.githubusercontent.com/SpyTYX/mercury-plus/main/mercury-plus.lua"))()

    local Novaline = NovalineConnection:create{
		Name = 'NovalineHub',
        Theme = NovalineConnection.Themes.Dark
    }

    local AutoFarmTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "AutoFarmTab"
    }

    local EggsTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "Player"
    }

    local MiscTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "Misc"
    }

    _G.autoSpeed = true
    _G.autoHatch = true
    _G.autoRebirth = true
    _G.autoCrystalSelection = 'Purple Crystal'
    _G.autoRace = true
    _G.godMode = true

    function autoSpeed()
        while _G.autoSpeed do
            local A_1 = {
                [1] = 'collectOrb',
                [2] = 'Red Orb',
                [3] = 'City'
            }

            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer(unpack(A_1))
            wait(functionNum)
        end
    end

    function autoHatch()
        while _G.autoHatch do
            local A_1 = {
                [1] = 'openCrystal',
                [2] = _G.autoCrystalSelection
            }

            game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer(unpack(A_1))
        end
    end

    function autoRebirth()
        while _G.autoRebirth do
            local A_1 = {
                [1] = 'rebirthRequest'
            }
            
            game:GetService('ReplicatedStorage').rEvents.rebirthEvent:FireServer(unpack(A_1))
            wait(functionNum)
        end
    end

    function autoRace()
        while _G.autoRace do
            local args = {
                [1] = "joinRace"
            }

            game:GetService("ReplicatedStorage").rEvents.raceEvent:FireServer(unpack(args))
            wait(functionNum)
        end
    end

    AutoFarmTab:Toggle{
        Name = "AutoSpeed",
        StartingState = false,
        Description = "yes",
        Callback = function(state) 
            _G.autoSpeed = state
            autoSpeed()
        end
    }

    AutoFarmTab:Toggle{
        Name = "AutoRebirth",
        StartingState = false,
        Description = "Rebirths for you automatically",
        Callback = function(state) 
            _G.autoRebirth = state
            autoRebirth()
        end
    }

    local crystalSelection = EggsTab:Dropdown{
        Name = "Select Crystal",
        StartingText = "Purple Crystal",
        Description = "Select the crystal you want to hatch",
        Items = {
            {"Purple Crystal", 'Purple Crystal'},
            {"Blue Crystal", 'Blue Crystal'},
            {"Yellow Crystal", 'Yellow Crystal'},
        },
        Callback = function(Items)
            _G.autoCrystalSelection = Items
            print(_G.autoCrystalSelection)
        end
    }

    EggsTab:Toggle{
        Name = "AutoCrystal",
        StartingState = false,
        Description = "Opens Crystals for you automatically",
        Callback = function(state) 
            _G.autoHatch = state
            autoHatch()
        end
    }

    AutoFarmTab:Toggle{
        Name = "AutoRace",
        StartingState = false,
        Description = "Joins races for you automatically",
        Callback = function(state) 
            _G.autoRace = state
            autoRace()
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

    MiscTab:Toggle{
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
end

-- Muscle Legends
if game.PlaceId == 3623096087 then
    local functionNum = 0.00000000000000005
    print('Loading NovalineHub')
    local NovalineConnection = loadstring(game:HttpGet("https://raw.githubusercontent.com/SpyTYX/mercury-plus/main/mercury-plus.lua"))()

    local Novaline = NovalineConnection:create{
		Name = 'NovalineHub',
        Theme = NovalineConnection.Themes.Dark
    }

    local AutoFarmTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "AutoFarmTab"
    }

    local EggsTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "Player"
    }

    local MiscTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "Misc"
    }

    _G.autoRep = true
    _G.godMode = true

    function autoRep()
        while _G.autoRep do
            local A_1 = {
                [1] = 'rep'
            }

            game:GetService('Players').LocalPlayer.muscleEvent:FireServer(unpack(A_1))
            wait(0.175)
        end
    end

    AutoFarmTab:Toggle{
        Name = "AutoBench",
        StartingState = false,
        Description = "Automatically reps",
        Callback = function(state) 
            _G.autoRep = state
            autoRep()
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
            if _G.godMode == false then
                char.Humanoid.WalkSpeed = 16
                char.Humanoid.JumpPower = 50
            end
            wait(functionNum)
        end
    end

    MiscTab:Toggle{
        Name = "GodMode",
        StartingState = false,
        Description = "Enables speed and jump powers",
        Callback = function(state) 
            _G.godMode = state
            godMode()
        end
    }
end

-- Saber Simulator
if game.PlaceId == 3823781113 then
    local functionNum = 0.00000000000000005
    print('Loading NovalineHub')
    local NovalineConnection = loadstring(game:HttpGet("https://raw.githubusercontent.com/SpyTYX/mercury-plus/main/mercury-plus.lua"))()

    local Novaline = NovalineConnection:create{
		Name = 'NovalineHub',
        Theme = NovalineConnection.Themes.Dark
    }

    local AutoFarmTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "AutoFarmTab"
    }

    local EggsTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "Player"
    }

    local WorldsTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "Player"
    }

    local MiscTab = Novaline:tab{
        Icon = "rbxassetid://4483362458",
        Name = "Misc"
    }

    _G.autoClicker = true
    _G.autoSell = true
    
    function autoClick()
        while _G.autoClicker do
            game:GetService("Players").LocalPlayer.Character.Starter.RemoteClick:FireServer()
            game:GetService('ReplicatedStorage').Events.Clicked:FireServer()
            game:GetService('ReplicatedStorage').Events.UpdateData:InvokeServer()
            wait(functionNum)
        end
    end

    function autoSell()
        while _G.autoSell do
            game:GetService('ReplicatedStorage').Events.Sell:FireServer()
            game:GetService('ReplicatedStorage').Events.UpdateData:InvokeServer()
            wait(functionNum)
        end
    end

    AutoFarmTab:Toggle{
        Name = "AutoSwing",
        StartingState = false,
        Description = "Swings your sword for you automatically",
        Callback = function(state) 
            _G.autoClicker = state
            autoClick()
        end
    }

    AutoFarmTab:Toggle{
        Name = "AutoSell",
        StartingState = false,
        Description = "Sells for you automatically",
        Callback = function(state) 
            _G.autoSell = state
            autoSell()
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
            if _G.godMode == false then
                char.Humanoid.WalkSpeed = 16
                char.Humanoid.JumpPower = 50
            end
            wait(functionNum)
        end
    end

    MiscTab:Toggle{
        Name = "GodMode",
        StartingState = false,
        Description = "Enables speed and jump powers",
        Callback = function(state) 
            _G.godMode = state
            godMode()
        end
    }
end
