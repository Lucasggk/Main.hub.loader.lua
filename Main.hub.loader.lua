local gameId = game.PlaceId


local seas = {
    2753915549, -- Sea 1
    4442272183, -- Sea 2
    7449423635  -- Sea 3
}


    
if gameId == 537413528 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Lucasggk/Fluentplus-buildaboat/main/Loader.lua", true))()

    
elseif gameId == 70876832253163 or gameId == 116495829188952 then 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Lucasggk/Fluentplus-DeadRails-/main/Loader.lua", true))()

    
elseif gameId == 3101667897 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Lucasggk/Fluentplus-LegendsSpeed/main/Loader.lua", true))()


elseif table.find(seas, game.PlaceId) then
    loadstring(Game:HttpGet("https://raw.githubusercontent.com/Lucasggk/BloxFruits-/main/Loader.lua", true))()
    
elseif gameId == 16331984995 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Lucasggk/Fluentplus-buildaboat/main/Loader.lua", true))()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Lucasggk/Fluentplus-DeadRails-/main/Loader.lua", true))()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Lucasggk/Fluentplus-LegendsSpeed/main/Loader.lua", true))()
    loadstring(Game:HttpGet("https://raw.githubusercontent.com/Lucasggk/BloxFruits-/main/Loader.lua", true))()
    
else
    print("jogo sem script ainda")


    
end
