--// em breve //--

repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui")

loadstring(game:HttpGet("https://raw.githubusercontent.com/Lucasggk/hub/main/GameId.lua", true))()

if table.find(IDs, game.PlaceId) then
local Fluent = loadstring(Game:HttpGet("https://raw.githubusercontent.com/discoart/FluentPlus/refs/heads/main/release.lua", true))() 
    
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
InterfaceManager:SetLibrary(Fluent)
    
local Window = Fluent:CreateWindow({
    Title = "System key",
    SubTitle = "sistema de key by Lucas",
    TabWidth = 160,
    Size = UDim2.fromOffset(500, 350),
    Acrylic = false,
    Theme = "Dark",
    Center = true,
    IsDraggable = true
})

local key = Window:AddTab({
    Title = "system key",
    Icon = "rbxassetid://95214531579570"
})

local config = Window:AddTab({
    Title = "config",
    Icon = "settings"
})
InterfaceManager:BuildInterfaceSection(config)

keys = ""
link_key = "key(isto tudo e uma key so copia e põe lá)"

local Input = key:AddInput("KeyInput", {
    Title = "Input your key",
    Default = "",
    Placeholder = "key",
    Numeric = false,
    Callback = function(Value)
        keys = Value
    end
})

key:AddButton({
    Title = "check key",
    Callback = function()
        if keys == link_key then
            task.wait(0.5)
            Window:Destroy()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Lucasggk/hub/main/Main.hub.loader.lua", true))()
        else
            Fluent:Notify({
                Title = "Erro",
                Content = "Key incorreta!",
                Duration = 3
            })
        end
    end
})

key:AddButton({
    Title = "get key",
    Callback = function()
        setclipboard("https://link-center.net/1345506/sistema-de-key-scripts")
        Fluent:Notify({
            Title = "Sucesso",
            Content = "Link copiado!",
            Duration = 3
        })
    end
})

key:AddParagraph({
    Title = "A KEY SEMPRE SERÁ A MESMA!"
})
else
loadstring(game:HttpGet("https://raw.githubusercontent.com/Lucasggk/hub/main/Jogo%20sem%20script.lua", true))()
end
