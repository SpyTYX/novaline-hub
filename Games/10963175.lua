local functionNum = 0.00000000000000005
local plr = game:GetService('Players').LocalPlayer
local char = plr.Character
local NovalineConnection = loadstring(game:HttpGet("https://raw.githubusercontent.com/SpyTYX/mercury-plus/main/mercury-plus.lua"))()
local Novaline = NovalineConnection:create{
	Name = 'NovalineHub',
    Theme = NovalineConnection.Themes.Dark
}
local MainTab = Novaline:tab{
    Icon = "rbxassetid://4483362458",
    Name = "Main"
}
local MiscTab = Novaline:tab{
    Icon = "rbxassetid://4483362458",
    Name = "Misc"
}

_G.autoGrabCash = true
_G.speedAndJump = true

function autoGrabCash()
    while _G.autoGrabCash do
        for _,v in ipairs(game:GetService("Workspace").LootSystem.Loot:GetDescendants()) do
            if v.Name == 'TouchInterest' and v.Parent then
                firetouchinterest(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart,v.Parent,0);
                task.wait();
                firetouchinterest(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart,v.Parent,1);
            end
        end
        task.wait();
    end
end

function speedAndJump()
    local hum = game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
    if _G.speedAndJump then
        while _G.speedAndJump do
            hum.WalkSpeed = 150;
            hum.JumpPower = 125;
            task.wait();
        end
    else
        hum.WalkSpeed = 16;
        hum.JumpPower = 50;
    end
end

MainTab:Toggle{
    Name = 'AutoGrabCash',
    Description = 'Automatically grabs cash from the streets to get money.',
    StartingState = false,
    Callback = function(state)
        _G.autoGrabCash = state
        autoGrabCash()
    end
}

MainTab:Toggle{
    Name = 'Speed and Jump',
    Description = 'Lets you jump higher and walk faster',
    StartingState = false,
    Callback = function(state)
        _G.speedAndJump=state
        speedAndJump()
    end
}
