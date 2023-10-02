local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

-- Create main window with minimize, maximize, and kill buttons
local main = library:CreateMain("AntifriziHub", "1.0", Enum.KeyCode.LeftAlt)
local tab = main:CreateTab("ImageURL")

tab:CreateLabel("Main")

    main:CreateButton("Minimize", function()
        main:SetVisible(false)
    end)
end)

    main:CreateButton("Maximize", function()
        main:SetVisible(true)
    end)
end)

    main:CreateButton("Kill", function()
        main:Destroy()
    end)
end)

