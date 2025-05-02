--// em breve //--

repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui")

loadstring(game:HttpGet("https://raw.githubusercontent.com/Lucasggk/hub/main/GameId.lua", true))()

if not table.find(IDs, game.PlaceId) then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Lucasggk/hub/main/Jogo%20sem%20script.lua", true))()
    return
end

local correct_key = "key(isto tudo e uma key so copia e põe lá)"

local function isKeySaved()
    if not isfile("FluentUI_KeySystem.txt") then return false end
    local saved_key = readfile("FluentUI_KeySystem.txt")
    return saved_key == correct_key
end

local function saveKey(key)
    writefile("FluentUI_KeySystem.txt", key)
end

local function deleteKey()
    if isfile("FluentUI_KeySystem.txt") then
        delfile("FluentUI_KeySystem.txt")
    end
end

local autoLoadEnabled = true
if isfile("FluentUI_AutoLoad.txt") then
    autoLoadEnabled = readfile("FluentUI_AutoLoad.txt") == "true"
end

local function saveAutoLoadSetting(value)
    writefile("FluentUI_AutoLoad.txt", tostring(value))
end

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
InterfaceManager:SetLibrary(Fluent)

local Window = Fluent:CreateWindow({
    Title = "Sistema de Key",
    SubTitle = "by Lucas",
    TabWidth = 160,
    Size = UDim2.fromOffset(500, 400),
    Acrylic = false,
    Theme = "Dark",
    Center = true,
    IsDraggable = true
})

local keyTab = Window:AddTab({
    Title = "Key System",
    Icon = "rbxassetid://95214531579570"
})

local configTab = Window:AddTab({
    Title = "Configurações",
    Icon = "settings"
})

configTab:AddToggle("AutoLoadToggle", {
    Title = "Auto Load",
    Description = "Ativa o carregamento automático quando a key está salva",
    Default = autoLoadEnabled,
    Callback = function(value)
        autoLoadEnabled = value
        saveAutoLoadSetting(value)
    end
})

configTab:AddButton({
    Title = "Destroy Key",
    Description = "Remove a key salva localmente",
    Callback = function()
        deleteKey()
        Fluent:Notify({
            Title = "Key Removida",
            Content = "A key salva foi removida com sucesso!",
            Duration = 3
        })
    end
})

InterfaceManager:BuildInterfaceSection(configTab)

local user_input_key = ""

keyTab:AddInput("KeyInput", {
    Title = "Digite sua key",
    Default = "",
    Placeholder = "Cole sua key aqui...",
    Numeric = false,
    Callback = function(Value)
        user_input_key = Value
    end
})

keyTab:AddButton({
    Title = "Verificar Key",
    Callback = function()
        if user_input_key == correct_key then
            saveKey(user_input_key)
            task.wait(3)
            Fluent:Destroy()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Lucasggk/hub/main/Main.hub.loader.lua", true))()
        else
            Fluent:Notify({
                Title = "Erro",
                Content = "Key incorreta! Por favor, verifique e tente novamente.",
                Duration = 5
            })
        end
    end
})

keyTab:AddButton({
    Title = "Obter Key",
    Callback = function()
        setclipboard("https://link-center.net/1345506/sistema-de-key-scripts")
        Fluent:Notify({
            Title = "Link copiado!",
            Content = "O link para obter a key foi copiado para sua área de transferência!",
            Duration = 5
        })
    end
})

keyTab:AddParagraph({
    Title = "Instruções",
    Content = "1. Clique em 'Obter Key' para conseguir sua key\n2. Cole a key no campo acima\n3. Clique em 'Verificar Key'"
})

keyTab:AddParagraph({
    Title = "Aviso",
    Content = "A key sempre será a mesma para todos os usuários!"
})

if isKeySaved() and autoLoadEnabled then
    task.wait(3)
    Fluent:Destroy()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Lucasggk/hub/main/Main.hub.loader.lua", true))()
end
