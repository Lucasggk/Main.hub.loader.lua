--// em breve //--

repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui")
 
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





