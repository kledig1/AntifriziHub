local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joeengo/exploiting/main/EngoUILIB_V2.lua", true))()

local main = library:CreateMain("AntifriziHub", "1.0", Enum.KeyCode.LeftAlt)

local tab = main:CreateTab("ImageURL")

tab:CreateLabel("Main")

local inputURL = ""
local paintframe

local function resizeImage()
    local response, code, headers, status = http.request(inputURL)
    
    if code == 200 then
        local filename = "downloaded_image.jpg"
        local file = io.open(filename, "wb")
        file:write(response)
        file:close()
        
        image = love.graphics.newImage(filename)
        os.remove(filename)
        
        if image then
            image:setFilter("nearest", "nearest")
            image = image:getDrawable()
            image:setFilter("nearest", "nearest")
            
            local resizedImage = love.image.newImageData(32, 32)
            resizedImage:paste(image, 0, 0, 0, 0, 32, 32)
            
            local colors = {}
            for y = 0, 31 do
                for x = 0, 31 do
                    local r, g, b, _ = resizedImage:getPixel(x, y)
                    table.insert(colors, {r, g, b})
                end
            end
            
            -- Now you have the RGB colors in the 'colors' table
            -- You can use these to paint in your starving artist paintframe
            
        else
            print("Error loading image from URL.")
        end
    else
        print("Error fetching URL: " .. code)
    end
end

tab:CreateTextbox("Image URL", function(value)
    inputURL = value
end)

tab:CreateButton("Resize Image", function()
    resizeImage()
end)

tab:CreateToggle("Toggle", function(value)
    -- Your toggle code here
end)
