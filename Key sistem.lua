--// em breve //--

repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui")

loadstring(game:HttpGet("https://raw.githubusercontent.com/Lucasggk/hub/main/GameId.lua", true))()

if table.find(IDs, game.PlaceId) then

local Fluent = loadstring(Game:HttpGet("https://raw.githubusercontent.com/discoart/FluentPlus/refs/heads/main/release.lua", true))() 




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

keys = "" 

local Input = key:AddInput("", {
    Title = "Input your key",
    Default = "",
    Placeholder = "key",
    Numeric = false, 
    Finished = false,
    Callback = function(Value)
        keys = tostring(Value)
    end
})

link_key = tostring("https://link-center.net/1345506/sistema-de-key-scripts")

key:AddButton({ 
  Title = "check key",
  Callback = function()
   if keys == link_key then
    print("key correta")
    task.wait(1)
    Library:Destroy()
    
   else
    print("key errado")
   end
  end
 })

key:AddButton({
  Title = "Get key",
  Callback = function()
   setclipboard("https://link-center.net/1345506/sistema-de-key-scripts")
  end
 })

key:AddParagraph({
  Title = "A KEY SEMPRE SERÁ A MESMA!"
 })








else

loadstring(game:HttpGet("https://raw.githubusercontent.com/Lucasggk/hub/main/Jogo%20sem%20script.lua", true))()

end

