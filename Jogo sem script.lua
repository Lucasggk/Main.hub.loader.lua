gameId = game.PlaceId 


local Fluent = loadstring(Game:HttpGet("https://raw.githubusercontent.com/discoart/FluentPlus/refs/heads/main/release.lua", true))() 




local Window = Fluent:CreateWindow({
    Title = "Jogo sem suporte",
    SubTitle = "     Feito por Lucas Lucas",
    TabWidth = 160,
    Size = UDim2.fromOffset(500, 350),
    Acrylic = false,
    Theme = "Dark",
    Center = true,
    IsDraggable = true
})

local a = Window:AddTab({
    Title = "infos",
    Icon = "home"
  })

a:AddParagraph({
    Title = "jogo sem suporte",
    Content = string.format("Id do Jogo: ".. gameId)
  })
