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
  
SectionKled1:Button({
    Text = "Art1",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/KUjmxLpp"))()
    end
})


SectionKled1:Button({
    Text = "Zoro",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/KUjmxLpp"))()
    end
})

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
  
SectionKled1:Button({
    Text = "Art1",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/KUjmxLpp"))()
    end
})


SectionKled1:Button({
    Text = "Zoro",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/KUjmxLpp"))()
    end
})

local Tab = Window:Tab({
    Text = "Teleportation"
})


local SectionKled = Tab:Section({
    Text = "Teleport"
    
})

-- Define the function to teleport to the shop
    local function teleportToShop()
        -- Find the player and their character
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
    
        -- Define the shop's TeleportService destination
        local shopDestination = game.Workspace.ShopTeleport -- Replace "ShopTeleport" with the actual name of the teleport destination in the game
    
        -- Check if the destination exists
        if shopDestination then
            -- Teleport the character to the shop
            character:SetPrimaryPartCFrame(shopDestination.CFrame)
        else
            warn("Shop teleport destination not found!")
        end
    end
    
    -- Create a button in SectionKled
    SectionKled:Button({
        Text = "Shop TP",
        Callback = function()
            -- Call the function to teleport to the shop when the button is clicked
            teleportToShop()
        end
    })
    
