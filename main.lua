game.Loaded:Wait()

local RequestFunction = (syn or syn.request) or request or http_request
local Repository = "https://raw.githubusercontent.com/SpyTYX/novaline-hub/main/Games"

if (not RequestFunction) then
    Player:Kick [[Exploit not supported.]]
    return
end

local Response = RequestFunction({
    Url = string.format("%s%i.lua", Repository, game.PlaceId),
    Method = "GET",
})

if (Response.Body == "404: Not Found") then return end

loadstring(Response.Body)()
