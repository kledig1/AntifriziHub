local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Antifrizi Hub", "Midnight")

local Tab = Window:NewTab("main")
local Section = Tab:NewSection("main")

Section:NewButton("Kledi", "kl3d1", function()
    print("kl3d1")
end)


Section:NewTextBox("URL", "Enter Url", function(txt)
	local image = 'image link' -- image you want to import
 local resolutionX = 32 -- usually it's 32 but it might change depending on the frame?
 local resolutionY = 32 -- usually it's 32 but it might change depending on the frame?
end)
