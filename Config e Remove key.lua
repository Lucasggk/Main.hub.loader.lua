local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
InterfaceManager:SetLibrary(Fluent)

local conf = Window:AddTab({
    Title = "configurações", 
    Icon = "settings"
})

InterfaceManager:BuildInterfaceSection(conf)

local function deleteKey()
    if isfile("FluentUI_KeySystem.txt") then
        delfile("FluentUI_KeySystem.txt")
    end
end

conf:AddButton({
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
