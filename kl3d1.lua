local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/x4nto/Resonix-Hub/xantoscripts/Library.lua"))()
Library.Theme = "Dark"
local Flags = Library.Flags

local Window = Library:Window({
   Text = "Antifrizi Hub"
})

local Tab = Window:Tab({
   Text = "Generate"
})

local SectionKledi = Tab:Section({
   Text = "Art generator"
})

SectionKledi:Input({
    Text = "Enter the image URL",
    Callback = function(url)
        local Pixels = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://saurl.notxaxaa.repl.co/convert?url=" .. tostring(url)))

        if not Pixels.error then
            for i,v in pairs(Pixels) do
                game.Players.LocalPlayer.PlayerGui.MainGui.PaintFrame.GridHolder.Grid[i].BackgroundColor3 = Color3.fromRGB(v[1], v[2], v[3])
            end
        else
            warn(Pixels.error)
        end
    end
})


local Tab = Window:Tab({
    Text = "Comunity Arts"
})

local SectionKled1 = Tab:Section({
    Text = "Art"
    
})
  
local SectionKled1 = Tab:Button({
    Text = "Xaxa"
    
})

SectionKled1:Button({
    Text = "art generate xaxa",
    Callback = function()
        local xaxa = loadstring(game:HttpGet("https://pastebin.com/raw/KUjmxLpp"))()
    end
})
