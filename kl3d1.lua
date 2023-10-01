local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Antifrizi Hub", "Midnight")

local Tab = Window:NewTab("main")
local Section = Tab:NewSection("main")

Section:NewButton("Kledi", "kl3d1", function()
    print("kl3d1")
end)


-- Create TextBox for URL input
local TextBox = Instance.new("TextBox")
TextBox.Name = "ImageURL"
TextBox.Size = UDim2.new(0, 200, 0, 30)
TextBox.Position = UDim2.new(0.5, -100, 0.2, 0)
TextBox.PlaceholderText = "Enter Image URL"
TextBox.Parent = ScreenGui

-- Create a TextButton to apply the image
local ApplyButton = Instance.new("TextButton")
ApplyButton.Name = "ApplyButton"
ApplyButton.Size = UDim2.new(0, 100, 0, 30)
ApplyButton.Position = UDim2.new(0.5, -50, 0.3, 0)
ApplyButton.Text = "Apply"
ApplyButton.Parent = ScreenGui

ApplyButton.MouseButton1Click:Connect(function()
    local imageURL = TextBox.Text

    -- Create the ImageLabel
    local ImageLabel = Instance.new("ImageLabel")
    ImageLabel.Size = UDim2.new(0, 32, 0, 32)
    ImageLabel.Position = UDim2.new(0.5, -16, 0.5, -16)
    ImageLabel.Image = imageURL
    ImageLabel.Parent = game.Workspace:WaitForChild("StarvingArtistFrame") -- Replace with the actual frame's name

    -- Optional: Resize the frame to fit the image
    local frame = ImageLabel.Parent
    frame.Size = UDim2.new(0, 32, 0, 32)

    -- Optional: Set BackgroundTransparency to 1 for no background
    frame.BackgroundTransparency = 1

    -- Optional: Set other properties as needed
    -- frame.OtherProperty = Value

    -- Optional: Handle error if imageURL is not a valid image URL
end)
