local gameId = game.PlaceId

IDs = {
  2753915549,
  4442272183,
  7449423635
}


    
if gameId == 537413528 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Lucasggk/Fluentplus-buildaboat/main/Loader.lua", true))()

    
elseif gameId == 70876832253163 or gameId == 116495829188952 then 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Lucasggk/Fluentplus-DeadRails/main/Loader.lua", true))()

    
elseif gameId == 3101667897 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Lucasggk/Fluentplus-LegendsSpeed/main/Loader.lua", true))()


elseif table.find(IDs, gameId) then
    loadstring(Game:HttpGet("https://raw.githubusercontent.com/Lucasggk/Fluentplus-bloxfruits/main/Loader.lua", true))()
    
elseif gameId == 16331984995 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Lucasggk/Fluentplus-buildaboat/main/Loader.lua", true))()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Lucasggk/Fluentplus-DeadRails/main/Loader.lua", true))()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Lucasggk/Fluentplus-LegendsSpeed/main/Loader.lua", true))()
    loadstring(Game:HttpGet("https://raw.githubusercontent.com/Lucasggk/Fluentplus-bloxfruits/main/Loader.lua", true))()
    
else
    
loadstring(game:HttpGet("https://raw.githubusercontent.com/Lucasggk/hub/main/Jogo%20sem%20script.lua", true))()

    
end
