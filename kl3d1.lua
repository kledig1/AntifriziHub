local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Antifrizi Hub", "Midnight")

local Tab = Window:NewTab("main")
local Section = Tab:NewSection("main")

Section:NewButton("Kledi", "kl3d1", function()
    print("kl3d1")
end)


Section:NewTextBox("URL", "Enter Url", function(txt)
	print("Done")
end)
