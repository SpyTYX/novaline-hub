repeat
    wait()
until game:IsLoaded()

print("Novaline Hub Loading...")

loadstring(game:HttpGet("https://raw.githubusercontent.com/SpyTYX/novaline-hub/main/Games/".. game.PlaceId .. ".lua"))()

print("Loaded script for game id".. game.PlaceId)
