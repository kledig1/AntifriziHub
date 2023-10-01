local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Antifrizi Hub", "Midnight")

local Tab = Window:NewTab("main")
local Section = Tab:NewSection("main")

Section:NewButton("Kledi", "kl3d1", function()
    print("kl3d1")
end)



-- Assuming Section:NewTextBox() creates a TextBox and returns it

local TextBox = Section:NewTextBox("TextboxText", "TextboxInfo", function(txt)

    local UI = game.Players.LocalPlayer.PlayerGui.MainGui.PaintFrame.GridHolder.Grid
    local image = 'image link'
    local ImageLabel = Instance.new("ImageLabel")
    ImageLabel.Size = UDim2.new(0, 32, 0, 32)
    ImageLabel.Position = UDim2.new(0.5, -16, 0.5, -16)
    ImageLabel.Image = imageURL
 local frame = ImageLabel.Parent
    frame.Size = UDim2.new(0, 32, 0, 32)

end)

