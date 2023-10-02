local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joeengo/exploiting/main/EngoUILIB_V2.lua", true))()

-- Create main window with minimize, maximize, and kill buttons
local main = library:CreateMain("AntifriziHub", "1.0", Enum.KeyCode.LeftAlt)
local tab = main:CreateTab("ImageURL")

tab:CreateLabel("Main")



tab:CreateButton("ButtonText", "ButtonInfo", function()
    main:CreateButton("Minimize", function()
        main:SetVisible(false)
    end)
end)

tab:CreateButton("ButtonText", "ButtonInfo", function()
    main:CreateButton("Maximize", function()
        main:SetVisible(true)
    end)
end)

tab:CreateButton("ButtonText", "ButtonInfo", function()
    main:CreateButton("Kill", function()
        main:Destroy()
    end)
end)
