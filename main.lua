repeat
wait()
until game:IsLoaded()
print("NovalineHub by Moons#9999 (Thanks to SirWeeb for making this Loader.)")
loadstring(game:HttpGet("https://raw.githubusercontent.com/SpyTYX/novaline-hub/main/Games/".. game.PlaceId .. ".lua"))()
print("Loading Script for Place ID-".. game.PlaceId)
