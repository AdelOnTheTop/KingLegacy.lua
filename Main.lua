repeat
  task.wait()
until game:IsLoaded()
repeat
  task.wait()
until game.Players
repeat
  task.wait()
until game.Players.LocalPlayer
if game.PlaceId == 4520749081 or game.PlaceId == 6381829480 or game.PlaceId == 5931540094 then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/AdelOnTheTop/Adel-Hub/main/KingLegacy.lua"))()
elseif game.PlaceId==2753915549 or game.PlaceId==4442272183 or game.PlaceId==7449423635 then 
  loadstring(game:HttpGet("https://raw.githubusercontent.com/AdelOnTheTop/Adel-Hub/main/AdelBloxFruit.lua"))()
end
