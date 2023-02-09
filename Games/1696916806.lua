local defaultNum = 50; local inf = math.huge
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
    end})
    GunMods:button({
        Name = "NoGunRange",
        Description = 'Makes your projectiles go as far as it can.',
        Callback = function()
            for i,v in pairs(game.ReplicatedStorage.WeaponScripts.WeaponConfigs:GetChildren()) do
                local gun = require(v)
                gun.range = 999999
            end
    end})
    GunMods:button({
        Name = "Projectiles",
        Description = 'Makes your gun become a shotgun',
        Callback = function()
            for i,v in pairs(game.ReplicatedStorage.WeaponScripts.WeaponConfigs:GetChildren()) do
                local gun = require(v)
                gun.pellets = defaultNum
            end
    end})
    GunMods:button({
        Name = "Firerate",
        Description = 'Adds extra firerate to your guns.',
        Callback = function()
            for i,v in pairs(game.ReplicatedStorage.WeaponScripts.WeaponConfigs:GetChildren()) do
                local gun = require(v)
                gun.RPM = 9999999999
            end
    end})
    GunMods:button({
        Name = "ProjectileSpeed",
        Description = 'Makes your guns go BRRR',
        Callback = function()
            for i,v in pairs(game.ReplicatedStorage.WeaponScripts.WeaponConfigs:GetChildren()) do
                local gun = require(v)
                gun.bulletspeed = inf
            end
    end})
    GunMods:button({
        Name = "AutoFire",
        Description = 'Makes your guns automatically fire, even pistols or shotguns.',
        Callback = function()
            for i,v in pairs(game.ReplicatedStorage.WeaponScripts.WeaponConfigs:GetChildren()) do
                local gun = require(v)
                gun.firemode = 1
            end
    end})
    GunMods:button({
        Name = "NoSpread",
        Description = 'Stops your projectiles from spreading.',
        Callback = function()
            for i,v in pairs(game.ReplicatedStorage.WeaponScripts.WeaponConfigs:GetChildren()) do
                local gun = require(v)
                gun.maxSpread = 0
                gun.minSpread = 0
            end
    end})
    GunMods:button({
        Name = "Shotgun",
        Description = 'Adds extra spread to your projectiles (OVERWRITES NOSPREAD)',
        Callback = function()
            for i,v in pairs(game.ReplicatedStorage.WeaponScripts.WeaponConfigs:GetChildren()) do
                local gun = require(v)
                gun.addSpread = 1
            end
    end})
    Exploits:button({
        Name = "CrashExploit",
        Description = 'Crashes Client',
        Callback = function()
            for i,v in pairs(game.ReplicatedStorage.WeaponScripts.WeaponConfigs:GetChildren()) do
                local gun = require(v)
                gun.pellets = inf
            end
    end})
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
