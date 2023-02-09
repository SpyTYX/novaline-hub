repeat
    wait()
until game:IsLoaded()

print("Novaline Hub Loading...")

loadstring(game:HttpGet("https://raw.githubusercontent.com/SpyTYX/novaline-hub/main/games/".. game.PlaceId .. ".lua"))()

print("Loaded script for game id".. game.PlaceId)