--Vars
local inf = math.huge; local defaultNum = 50; local plr = game.Players.LocalPlayer; local char = plr.Character

--Base Raiders
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