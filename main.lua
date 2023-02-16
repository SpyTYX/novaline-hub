repeat task.wait() until game:IsLoaded()

local Games = { 10599426741, 11220569194, 11652057145, 1240123653, 155615604, 1696916806, 3101667897, 3623096087, 3823781113, 3956818381, 4246487209, 5490351219, 5972698540, 5977280685, 6075270490, 6075756195, 6512923934, 6875469709, 7728848215, 8003084678, 8540346411, 9203864304, 9498006165, 9647915471, 9772878203 }

if not table.find(Games, game.PlaceId) then return end

print("Welcome to Novaline Hub.")
loadstring(game:HttpGet(string.format("https://raw.githubusercontent.com/SpyTYX/novaline-hub/main/Games/%i%s", game.PlaceId, ".lua"), true))()
