-- Combined Script: Telegram Link Window (Front) + Private Server Creator (Second Window)
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local tweenService = game:GetService("TweenService")
local userInputService = game:GetService("UserInputService")

-- Create main ScreenGui
local mainGui = Instance.new("ScreenGui")
mainGui.Name = "CombinedWindowsGUI"
mainGui.ResetOnSpawn = false
mainGui.Parent = player.PlayerGui

-- SCRIPT 1: TELEGRAM LINK WINDOW
local telegramFrame = Instance.new("Frame")
telegramFrame.Size = UDim2.new(0, 0, 0, 0)
telegramFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
telegramFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
telegramFrame.BorderSizePixel = 0
telegramFrame.AnchorPoint = Vector2.new(0.5, 0.5)
telegramFrame.Active = true
telegramFrame.Draggable = true
telegramFrame.ZIndex = 20
telegramFrame.Parent = mainGui

local telegramCorner = Instance.new("UICorner")
telegramCorner.CornerRadius = UDim.new(0, 12)
telegramCorner.Parent = telegramFrame

-- Title Text
local titleText = Instance.new("TextLabel")
titleText.Size = UDim2.new(1, 0, 0, 30)
titleText.Position = UDim2.new(0, 0, 0.2, -30)
titleText.BackgroundTransparency = 1
titleText.Text = "Click The Link to Copy"
titleText.TextColor3 = Color3.fromRGB(255, 255, 255)
titleText.Font = Enum.Font.SourceSansBold
titleText.TextSize = 20
titleText.TextXAlignment = Enum.TextXAlignment.Center
titleText.ZIndex = 21
titleText.Parent = telegramFrame

-- White Highlight Box
local whiteFrame = Instance.new("Frame")
whiteFrame.Size = UDim2.new(0.8, 0, 0, 40)
whiteFrame.Position = UDim2.new(0.1, 0, 0.3, 0)
whiteFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
whiteFrame.BorderSizePixel = 0
whiteFrame.ZIndex = 21
whiteFrame.Parent = telegramFrame

local whiteCorner = Instance.new("UICorner")
whiteCorner.CornerRadius = UDim.new(0, 8)
whiteCorner.Parent = whiteFrame

-- Clickable Link Text
local linkText = Instance.new("TextButton")
linkText.Size = UDim2.new(1, 0, 1, 0)
linkText.BackgroundTransparency = 1
linkText.Text = "t.me/RBLX_SCRIPTS_MYANMAR"
linkText.TextColor3 = Color3.fromRGB(0, 102, 255)
linkText.Font = Enum.Font.SourceSansBold
linkText.TextSize = 20
linkText.ZIndex = 22
linkText.Parent = whiteFrame

-- Info Text
local infoText = Instance.new("TextLabel")
infoText.Size = UDim2.new(1, 0, 0, 40)
infoText.Position = UDim2.new(0, 0, 0.55, 0)
infoText.BackgroundTransparency = 1
infoText.Text = "More Scripts On Telegram"
infoText.TextColor3 = Color3.fromRGB(255, 255, 255)
infoText.Font = Enum.Font.SourceSans
infoText.TextSize = 18
infoText.ZIndex = 21
infoText.Parent = telegramFrame

-- Close Button
local telegramCloseBtn = Instance.new("TextButton")
telegramCloseBtn.Size = UDim2.new(0, 60, 0, 30)
telegramCloseBtn.Position = UDim2.new(1, -70, 1, -40)
telegramCloseBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
telegramCloseBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
telegramCloseBtn.Text = "OK"
telegramCloseBtn.Font = Enum.Font.SourceSansBold
telegramCloseBtn.TextSize = 16
telegramCloseBtn.ZIndex = 21
telegramCloseBtn.Parent = telegramFrame

local okCorner = Instance.new("UICorner")
okCorner.CornerRadius = UDim.new(0, 6)
okCorner.Parent = telegramCloseBtn

-- SCRIPT 2: PRIVATE SERVER WINDOW
local serverFrame = Instance.new("Frame")
serverFrame.Name = "PrivateServerFrame"
serverFrame.Size = UDim2.new(0, 350, 0, 250)
serverFrame.Position = UDim2.new(0.5, -175, 0.5, -125)
serverFrame.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
serverFrame.BorderSizePixel = 0
serverFrame.ClipsDescendants = false -- FIX
serverFrame.ZIndex = 10
serverFrame.Visible = false
serverFrame.Parent = mainGui

-- Gradient
local gradient = Instance.new("UIGradient")
gradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.new(0.15, 0.15, 0.15)),
    ColorSequenceKeypoint.new(1, Color3.new(0.05, 0.05, 0.05))
})
gradient.Rotation = 45
gradient.Parent = serverFrame

local serverCorner = Instance.new("UICorner")
serverCorner.CornerRadius = UDim.new(0, 12)
serverCorner.Parent = serverFrame

-- Shadow (moved behind window)
local shadow = Instance.new("Frame")
shadow.Size = UDim2.new(0, 370, 0, 270)
shadow.Position = serverFrame.Position + UDim2.new(0, -10, 0, -10)
shadow.BackgroundColor3 = Color3.new(0, 0, 0)
shadow.BackgroundTransparency = 0.8
shadow.BorderSizePixel = 0
shadow.ZIndex = 9
shadow.Parent = mainGui

local shadowCorner = Instance.new("UICorner")
shadowCorner.CornerRadius = UDim.new(0, 16)
shadowCorner.Parent = shadow

-- Title Bar
local serverTitleBar = Instance.new("Frame")
serverTitleBar.Name = "TitleBar"
serverTitleBar.Size = UDim2.new(1, 0, 0, 40)
serverTitleBar.BackgroundColor3 = Color3.new(0.2, 0.2, 0.3)
serverTitleBar.BorderSizePixel = 0
serverTitleBar.Active = true
serverTitleBar.ZIndex = 11
serverTitleBar.Parent = serverFrame

local serverTitleText = Instance.new("TextLabel")
serverTitleText.Text = "🔒 PRIVATE SERVER CREATOR"
serverTitleText.Size = UDim2.new(0, 200, 1, 0)
serverTitleText.Position = UDim2.new(0, 15, 0, 0)
serverTitleText.BackgroundTransparency = 1
serverTitleText.TextColor3 = Color3.new(1, 1, 1)
serverTitleText.TextSize = 16
serverTitleText.Font = Enum.Font.GothamBold
serverTitleText.TextXAlignment = Enum.TextXAlignment.Left
serverTitleText.ZIndex = 12
serverTitleText.Parent = serverTitleBar

local serverCloseButton = Instance.new("TextButton")
serverCloseButton.Text = "✕"
serverCloseButton.Size = UDim2.new(0, 30, 0, 30)
serverCloseButton.Position = UDim2.new(1, -35, 0, 5)
serverCloseButton.BackgroundColor3 = Color3.new(0.9, 0.2, 0.2)
serverCloseButton.TextColor3 = Color3.new(1, 1, 1)
serverCloseButton.Font = Enum.Font.GothamBold
serverCloseButton.TextSize = 16
serverCloseButton.ZIndex = 12
serverCloseButton.Parent = serverTitleBar

-- Content
local contentFrame = Instance.new("Frame")
contentFrame.Size = UDim2.new(1, -20, 1, -60)
contentFrame.Position = UDim2.new(0, 10, 0, 50)
contentFrame.BackgroundTransparency = 1
contentFrame.ZIndex = 11
contentFrame.Parent = serverFrame

local serverIcon = Instance.new("ImageLabel")
serverIcon.Size = UDim2.new(0, 60, 0, 60)
serverIcon.Position = UDim2.new(0.5, -30, 0, 10)
serverIcon.BackgroundTransparency = 1
serverIcon.Image = "rbxassetid://13367207613"
serverIcon.ZIndex = 11
serverIcon.Parent = contentFrame

local descriptionText = Instance.new("TextLabel")
descriptionText.Text = "Create your own private server instantly"
descriptionText.Size = UDim2.new(1, 0, 0, 40)
descriptionText.Position = UDim2.new(0, 0, 0, 80)
descriptionText.BackgroundTransparency = 1
descriptionText.TextColor3 = Color3.new(0.8, 0.8, 0.9)
descriptionText.TextSize = 14
descriptionText.Font = Enum.Font.Gotham
descriptionText.ZIndex = 11
descriptionText.Parent = contentFrame

local serverButton = Instance.new("TextButton")
serverButton.Text = "🚀 CREATE PRIVATE SERVER"
serverButton.Size = UDim2.new(0, 220, 0, 50)
serverButton.Position = UDim2.new(0.5, -110, 0.5, 10)
serverButton.BackgroundColor3 = Color3.new(0.2, 0.5, 0.9)
serverButton.TextColor3 = Color3.new(1, 1, 1)
serverButton.Font = Enum.Font.GothamBold
serverButton.TextSize = 16
serverButton.ZIndex = 12
serverButton.Parent = contentFrame

local serverStatusLabel = Instance.new("TextLabel")
serverStatusLabel.Text = "Click the button above to create your private server"
serverStatusLabel.Size = UDim2.new(1, 0, 0, 20)
serverStatusLabel.Position = UDim2.new(0, 0, 1, -30)
serverStatusLabel.BackgroundTransparency = 1
serverStatusLabel.TextColor3 = Color3.new(0.7, 0.8, 1)
serverStatusLabel.TextSize = 12
serverStatusLabel.Font = Enum.Font.Gotham
serverStatusLabel.ZIndex = 11
serverStatusLabel.Parent = contentFrame

-- ANIMATIONS & BUTTONS (same as before, just using new ZIndex / no transparency bug)
-- (keep your dragging, tween, and button click code here – it works fine)
-- ...

-- SHOW SERVER FUNCTION (FIXED)
function showPrivateServerWindow()
    print("🎮 Showing Private Server Window...")

    serverFrame.Visible = true
    serverFrame.Size = UDim2.new(0, 10, 0, 10)
    serverFrame.Position = UDim2.new(0.5, -5, 0.5, -5)
    serverFrame.BackgroundTransparency = 0 -- FIX

    -- Animate popup
    local serverPopInTween = tweenService:Create(serverFrame, TweenInfo.new(0.7, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
        Size = UDim2.new(0, 350, 0, 250),
        Position = UDim2.new(0.5, -175, 0.5, -125),
        BackgroundTransparency = 0
    })
    serverPopInTween:Play()
end

-- Telegram Close Button: open server window
telegramCloseBtn.MouseButton1Click:Connect(function()
    telegramFrame:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.In, Enum.EasingStyle.Back, 0.5, true)
    task.wait(0.5)
    telegramFrame.Visible = false
    wait(0.2)
    showPrivateServerWindow()
end)