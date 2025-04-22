local gameId = game.PlaceId

script1 = "loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasggk/Fluentplus-buildaboat/main/Loader.lua', true))()"
script2 = "loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasggk/Fluentplus-DeadRails-/main/Loader.lua', true))()"

tab = {script1, script2}

if gameId == 537413528 then
    loadstring(tab[1])()
elseif gameId == 70876832253163 or gameId == 116495829188952 then
    loadstring(tab[2])()
elseif gameId == 16331984995 then
    loadstring(tab[1])()
    loadstring(tab[2])()
else
    print("jogo sem script ainda")
end
