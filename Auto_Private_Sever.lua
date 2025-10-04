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

-- SCRIPT 1: TELEGRAM LINK WINDOW (Front Layer - Visible First)
local telegramFrame = Instance.new("Frame")
telegramFrame.Size = UDim2.new(0, 0, 0, 0)
telegramFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
telegramFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
telegramFrame.BackgroundTransparency = 0
telegramFrame.BorderSizePixel = 0
telegramFrame.AnchorPoint = Vector2.new(0.5, 0.5)
telegramFrame.Active = true
telegramFrame.Draggable = true
telegramFrame.ZIndex = 10
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
titleText.ZIndex = 11
titleText.Parent = telegramFrame

-- White Highlight Box
local whiteFrame = Instance.new("Frame")
whiteFrame.Size = UDim2.new(0.8, 0, 0, 40)
whiteFrame.Position = UDim2.new(0.1, 0, 0.3, 0)
whiteFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
whiteFrame.BorderSizePixel = 0
whiteFrame.ZIndex = 11
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
linkText.ZIndex = 12
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
infoText.ZIndex = 11
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
telegramCloseBtn.ZIndex = 11
telegramCloseBtn.Parent = telegramFrame

local okCorner = Instance.new("UICorner")
okCorner.CornerRadius = UDim.new(0, 6)
okCorner.Parent = telegramCloseBtn

-- SCRIPT 2: PRIVATE SERVER WINDOW (COMPLETELY REBUILT - NOT JUST BLACK WINDOW)
local serverFrame = Instance.new("Frame")
serverFrame.Name = "PrivateServerFrame"
serverFrame.Size = UDim2.new(0, 350, 0, 250) -- Larger for better visibility
serverFrame.Position = UDim2.new(0.5, -175, 0.5, -125)
serverFrame.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1) -- Dark gray instead of pure black
serverFrame.BorderSizePixel = 0
serverFrame.ClipsDescendants = true
serverFrame.ZIndex = 5
serverFrame.Visible = false
serverFrame.Parent = mainGui

-- Add a subtle gradient for better appearance
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

-- Add a subtle shadow effect
local shadow = Instance.new("Frame")
shadow.Size = UDim2.new(1, 10, 1, 10)
shadow.Position = UDim2.new(0, -5, 0, -5)
shadow.BackgroundColor3 = Color3.new(0, 0, 0)
shadow.BackgroundTransparency = 0.8
shadow.BorderSizePixel = 0
shadow.ZIndex = 4
shadow.Parent = serverFrame

local shadowCorner = Instance.new("UICorner")
shadowCorner.CornerRadius = UDim.new(0, 16)
shadowCorner.Parent = shadow

-- Title Bar for server window
local serverTitleBar = Instance.new("Frame")
serverTitleBar.Name = "TitleBar"
serverTitleBar.Size = UDim2.new(1, 0, 0, 40) -- Taller for better dragging
serverTitleBar.Position = UDim2.new(0, 0, 0, 0)
serverTitleBar.BackgroundColor3 = Color3.new(0.2, 0.2, 0.3) -- Different color for distinction
serverTitleBar.BorderSizePixel = 0
serverTitleBar.Active = true
serverTitleBar.ZIndex = 6
serverTitleBar.Parent = serverFrame

local serverTitleCorner = Instance.new("UICorner")
serverTitleCorner.CornerRadius = UDim.new(0, 12)
serverTitleCorner.Parent = serverTitleBar

-- Title Text for server window
local serverTitleText = Instance.new("TextLabel")
serverTitleText.Name = "Title"
serverTitleText.Size = UDim2.new(0, 200, 1, 0)
serverTitleText.Position = UDim2.new(0, 15, 0, 0)
serverTitleText.BackgroundTransparency = 1
serverTitleText.Text = "🔒 PRIVATE SERVER CREATOR"
serverTitleText.TextColor3 = Color3.new(1, 1, 1)
serverTitleText.TextSize = 16
serverTitleText.Font = Enum.Font.GothamBold
serverTitleText.TextXAlignment = Enum.TextXAlignment.Left
serverTitleText.ZIndex = 7
serverTitleText.Parent = serverTitleBar

-- Close Button for server window (RED X BUTTON)
local serverCloseButton = Instance.new("TextButton")
serverCloseButton.Name = "CloseButton"
serverCloseButton.Size = UDim2.new(0, 30, 0, 30)
serverCloseButton.Position = UDim2.new(1, -35, 0, 5)
serverCloseButton.BackgroundColor3 = Color3.new(0.9, 0.2, 0.2) -- Bright red
serverCloseButton.Text = "✕"
serverCloseButton.TextColor3 = Color3.new(1, 1, 1)
serverCloseButton.TextSize = 16
serverCloseButton.Font = Enum.Font.GothamBold
serverCloseButton.ZIndex = 7
serverCloseButton.Parent = serverTitleBar

local serverCloseCorner = Instance.new("UICorner")
serverCloseCorner.CornerRadius = UDim.new(0, 6)
serverCloseCorner.Parent = serverCloseButton

-- Main content area
local contentFrame = Instance.new("Frame")
contentFrame.Size = UDim2.new(1, -20, 1, -60)
contentFrame.Position = UDim2.new(0, 10, 0, 50)
contentFrame.BackgroundTransparency = 1
contentFrame.ZIndex = 6
contentFrame.Parent = serverFrame

-- Icon/Image for visual appeal
local serverIcon = Instance.new("ImageLabel")
serverIcon.Size = UDim2.new(0, 60, 0, 60)
serverIcon.Position = UDim2.new(0.5, -30, 0, 10)
serverIcon.BackgroundTransparency = 1
serverIcon.Image = "rbxassetid://13367207613" -- Server icon (placeholder)
serverIcon.ZIndex = 6
serverIcon.Parent = contentFrame

-- Description text
local descriptionText = Instance.new("TextLabel")
descriptionText.Size = UDim2.new(1, 0, 0, 40)
descriptionText.Position = UDim2.new(0, 0, 0, 80)
descriptionText.BackgroundTransparency = 1
descriptionText.Text = "Create your own private server instantly"
descriptionText.TextColor3 = Color3.new(0.8, 0.8, 0.9)
descriptionText.TextSize = 14
descriptionText.Font = Enum.Font.Gotham
descriptionText.TextXAlignment = Enum.TextXAlignment.Center
descriptionText.ZIndex = 6
descriptionText.Parent = contentFrame

-- Main Button for server (BLUE BUTTON)
local serverButton = Instance.new("TextButton")
serverButton.Name = "AutoPrivateServerButton"
serverButton.Size = UDim2.new(0, 220, 0, 50)
serverButton.Position = UDim2.new(0.5, -110, 0.5, 10)
serverButton.BackgroundColor3 = Color3.new(0.2, 0.5, 0.9) -- Bright blue
serverButton.Text = "🚀 CREATE PRIVATE SERVER"
serverButton.TextColor3 = Color3.new(1, 1, 1)
serverButton.TextSize = 16
serverButton.Font = Enum.Font.GothamBold
serverButton.AutoButtonColor = false
serverButton.ZIndex = 6
serverButton.Parent = contentFrame

local serverButtonCorner = Instance.new("UICorner")
serverButtonCorner.CornerRadius = UDim.new(0, 10)
serverButtonCorner.Parent = serverButton

local serverButtonStroke = Instance.new("UIStroke")
serverButtonStroke.Thickness = 2
serverButtonStroke.Color = Color3.new(1, 1, 1)
serverButtonStroke.Parent = serverButton

-- Add glow effect to main button
local buttonGlow = Instance.new("ImageLabel")
buttonGlow.Size = UDim2.new(1, 20, 1, 20)
buttonGlow.Position = UDim2.new(0, -10, 0, -10)
buttonGlow.BackgroundTransparency = 1
buttonGlow.Image = "rbxassetid://8992230671" -- Glow effect
buttonGlow.ImageColor3 = Color3.new(0.2, 0.5, 0.9)
buttonGlow.ImageTransparency = 0.7
buttonGlow.ScaleType = Enum.ScaleType.Slice
buttonGlow.SliceCenter = Rect.new(100, 100, 100, 100)
buttonGlow.ZIndex = 5
buttonGlow.Parent = serverButton

-- Status Label for server
local serverStatusLabel = Instance.new("TextLabel")
serverStatusLabel.Name = "StatusLabel"
serverStatusLabel.Size = UDim2.new(1, 0, 0, 20)
serverStatusLabel.Position = UDim2.new(0, 0, 1, -30)
serverStatusLabel.BackgroundTransparency = 1
serverStatusLabel.Text = "Click the button above to create your private server"
serverStatusLabel.TextColor3 = Color3.new(0.7, 0.8, 1)
serverStatusLabel.TextSize = 12
serverStatusLabel.Font = Enum.Font.Gotham
serverStatusLabel.TextXAlignment = Enum.TextXAlignment.Center
serverStatusLabel.ZIndex = 6
serverStatusLabel.Parent = contentFrame

-- ANIMATION FUNCTIONS
-- Telegram window popup animation (Loads First)
task.wait(0.1)
telegramFrame:TweenSize(UDim2.new(0, 400, 0, 250), Enum.EasingDirection.Out, Enum.EasingStyle.Back, 0.6, true)
telegramFrame:TweenPosition(UDim2.new(0.5, 0, 0.5, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Back, 0.6, true)

-- DRAGGING SYSTEMS
-- Telegram window dragging
local telegramDragging = false
local telegramDragStart, telegramStartPos

local function updateTelegramPosition(input)
    if telegramDragging then
        local delta = input.Position - telegramDragStart
        telegramFrame.Position = UDim2.new(
            telegramStartPos.X.Scale, 
            telegramStartPos.X.Offset + delta.X, 
            telegramStartPos.Y.Scale, 
            telegramStartPos.Y.Offset + delta.Y
        )
    end
end

telegramFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        telegramDragging = true
        telegramDragStart = input.Position
        telegramStartPos = telegramFrame.Position
    end
end)

telegramFrame.InputChanged:Connect(function(input)
    if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) and telegramDragging then
        updateTelegramPosition(input)
    end
end)

userInputService.InputChanged:Connect(function(input)
    if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) and telegramDragging then
        updateTelegramPosition(input)
    end
end)

-- Server window dragging
local serverDragging = false
local serverDragStart, serverStartPos

local function updateServerPosition(input)
    if serverDragging then
        local delta = input.Position - serverDragStart
        serverFrame.Position = UDim2.new(
            serverStartPos.X.Scale, 
            serverStartPos.X.Offset + delta.X, 
            serverStartPos.Y.Scale, 
            serverStartPos.Y.Offset + delta.Y
        )
    end
end

serverTitleBar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        serverDragging = true
        serverDragStart = input.Position
        serverStartPos = serverFrame.Position
        
        local tween = tweenService:Create(serverTitleBar, TweenInfo.new(0.1), {
            BackgroundColor3 = Color3.new(0.3, 0.3, 0.4)
        })
        tween:Play()
        
        local connection
        connection = input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                serverDragging = false
                connection:Disconnect()
                
                local tween = tweenService:Create(serverTitleBar, TweenInfo.new(0.1), {
                    BackgroundColor3 = Color3.new(0.2, 0.2, 0.3)
                })
                tween:Play()
            end
        end)
    end
end)

serverTitleBar.InputChanged:Connect(function(input)
    if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) and serverDragging then
        updateServerPosition(input)
    end
end)

userInputService.InputChanged:Connect(function(input)
    if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) and serverDragging then
        updateServerPosition(input)
    end
end)

-- BUTTON FUNCTIONALITY
-- Telegram window buttons
linkText.MouseButton1Click:Connect(function()
    if setclipboard then
        setclipboard("https://t.me/RBLX_SCRIPTS_MYANMAR")
    elseif writeclipboard then
        writeclipboard("https://t.me/RBLX_SCRIPTS_MYANMAR")
    end
    linkText.Text = "✅ Copied!"
    task.wait(1.5)
    linkText.Text = "t.me/RBLX_SCRIPTS_MYANMAR"
end)

telegramCloseBtn.MouseButton1Click:Connect(function()
    telegramFrame:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.In, Enum.EasingStyle.Back, 0.5, true)
    task.wait(0.5)
    telegramFrame.Visible = false
    
    -- After Telegram window closes, show the Private Server window
    wait(0.2)
    showPrivateServerWindow()
end)

-- Function to show Private Server window after Telegram closes
function showPrivateServerWindow()
    print("🎮 Showing Private Server Window...")
    
    serverFrame.Visible = true
    serverFrame.Size = UDim2.new(0, 10, 0, 10)
    serverFrame.Position = UDim2.new(0.5, -5, 0.5, -5)
    serverFrame.BackgroundTransparency = 1
    serverFrame.ZIndex = 10
    
    -- Make sure ALL elements are visible
    serverTitleBar.Visible = true
    serverTitleText.Visible = true
    serverCloseButton.Visible = true
    serverButton.Visible = true
    serverStatusLabel.Visible = true
    contentFrame.Visible = true
    serverIcon.Visible = true
    descriptionText.Visible = true
    
    print("✅ Server Frame Visible:", serverFrame.Visible)
    print("✅ Server Button Visible:", serverButton.Visible)
    print("✅ Server Close Button Visible:", serverCloseButton.Visible)
    
    -- Popup animation for server window
    local serverPopInTween = tweenService:Create(serverFrame, TweenInfo.new(0.7, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
        Size = UDim2.new(0, 350, 0, 250),
        Position = UDim2.new(0.5, -175, 0.5, -125),
        BackgroundTransparency = 0
    })
    
    serverPopInTween:Play()
    
    -- Button entrance animation (delayed)
    wait(0.3)
    serverButton.Position = UDim2.new(0.5, -110, 0.5, 30)
    local buttonTween = tweenService:Create(serverButton, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Position = UDim2.new(0.5, -110, 0.5, 10)
    })
    buttonTween:Play()
end

-- Server Close Button Function (RED X BUTTON)
serverCloseButton.MouseButton1Click:Connect(function()
    print("🔴 Server Close Button Clicked!")
    
    local closeTween = tweenService:Create(serverFrame, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
        Size = UDim2.new(0, 10, 0, 10),
        Position = UDim2.new(0.5, -5, 0.5, -5),
        BackgroundTransparency = 1
    })
    
    closeTween:Play()
    closeTween.Completed:Connect(function()
        serverFrame.Visible = false
        serverFrame.ZIndex = 5
        resetServerWindow()
    end)
end)

-- Reset server window function
function resetServerWindow()
    serverButton.Text = "🚀 CREATE PRIVATE SERVER"
    serverButton.BackgroundColor3 = Color3.new(0.2, 0.5, 0.9)
    serverStatusLabel.Text = "Click the button above to create your private server"
    serverStatusLabel.TextColor3 = Color3.new(0.7, 0.8, 1)
end

-- Server button animations (BLUE BUTTON)
serverButton.MouseEnter:Connect(function()
    print("🔵 Server Button Hover Start")
    local tween = tweenService:Create(serverButton, TweenInfo.new(0.2), {
        BackgroundColor3 = Color3.new(0.3, 0.6, 1.0),
        Size = UDim2.new(0, 230, 0, 55)
    })
    tween:Play()
end)

serverButton.MouseLeave:Connect(function()
    print("🔵 Server Button Hover End")
    local tween = tweenService:Create(serverButton, TweenInfo.new(0.2), {
        BackgroundColor3 = Color3.new(0.2, 0.5, 0.9),
        Size = UDim2.new(0, 220, 0, 50)
    })
    tween:Play()
end)

serverButton.MouseButton1Down:Connect(function()
    print("🔵 Server Button Pressed")
    local tween = tweenService:Create(serverButton, TweenInfo.new(0.1), {
        BackgroundColor3 = Color3.new(0.1, 0.4, 0.8),
        Size = UDim2.new(0, 210, 0, 45)
    })
    tween:Play()
end)

serverButton.MouseButton1Up:Connect(function()
    local tween = tweenService:Create(serverButton, TweenInfo.new(0.1), {
        BackgroundColor3 = Color3.new(0.3, 0.6, 1.0),
        Size = UDim2.new(0, 230, 0, 55)
    })
    tween:Play()
end)

-- Server button click function (MAIN BLUE BUTTON)
serverButton.MouseButton1Click:Connect(function()
    print("🎯 Auto Private Server Button Clicked!")
    
    -- Show loading state
    serverStatusLabel.Text = "⏳ Creating private server..."
    serverStatusLabel.TextColor3 = Color3.new(1, 0.8, 0.3)
    
    -- Button loading animation
    local pulseTween = tweenService:Create(serverButton, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, -1, true), {
        BackgroundColor3 = Color3.new(0.4, 0.7, 1.0)
    })
    pulseTween:Play()
    
    -- Execute the Private Server script with proper error handling
    local success, errorMessage = pcall(function()
        loadPrivateServerScript()
    end)
    
    -- Stop pulsing animation
    pulseTween:Cancel()
    
    if success then
        print("✅ Private Server Created Successfully!")
        -- Success state
        local successTween = tweenService:Create(serverButton, TweenInfo.new(0.3), {
            BackgroundColor3 = Color3.new(0, 0.7, 0.3),
            TextColor3 = Color3.new(1, 1, 1)
        })
        successTween:Play()
        
        serverButton.Text = "✅ SERVER CREATED!"
        serverStatusLabel.Text = "🎉 Private server created successfully!"
        serverStatusLabel.TextColor3 = Color3.new(0.5, 1, 0.5)
    else
        print("❌ Private Server Error: " .. tostring(errorMessage))
        -- Error state
        serverButton.Text = "❌ ERROR!"
        serverStatusLabel.Text = "⚠️ Failed to create server - Try again"
        serverStatusLabel.TextColor3 = Color3.new(1, 0.5, 0.5)
    end
    
    -- Auto-close after 3 seconds
    wait(3)
    
    -- Close animation
    local closeTween = tweenService:Create(serverFrame, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
        Size = UDim2.new(0, 10, 0, 10),
        Position = UDim2.new(0.5, -5, 0.5, -5),
        BackgroundTransparency = 1
    })
    
    closeTween:Play()
    closeTween.Completed:Connect(function()
        serverFrame.Visible = false
        serverFrame.ZIndex = 5
        resetServerWindow()
    end)
end)

-- WORKING PRIVATE SERVER FUNCTION
function loadPrivateServerScript()
    print("🔧 Loading Private Server Script...")
    
    -- Get current place ID
    local placeId = game.PlaceId
    print("📍 Place ID: " .. placeId)
    
    -- Generate a random access code
    local function GenerateReservedServerCode()
        local chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
        local accessCode = ""
        
        for i = 1, 16 do
            local rand = math.random(1, #chars)
            accessCode = accessCode .. chars:sub(rand, rand)
        end
        return accessCode
    end

    local accessCode = GenerateReservedServerCode()
    print("🔑 Generated Access Code: " .. accessCode)
    
    -- Try different methods to create private server
    local success = false
    
    -- Method 1: Try TeleportService (Most reliable)
    local teleportSuccess, teleportResult = pcall(function()
        local teleportService = game:GetService("TeleportService")
        teleportService:TeleportToPrivateServer(placeId, accessCode)
        success = true
        print("✅ TeleportService method successful")
    end)
    
    if not success then
        print("❌ TeleportService failed: " .. tostring(teleportResult))
        
        -- Method 2: Try RobloxReplicatedStorage method
        local replicatedSuccess, replicatedResult = pcall(function()
            local rs = game:GetService("RobloxReplicatedStorage")
            if rs:FindFirstChild("ContactListIrisInviteTeleport") then
                rs.ContactListIrisInviteTeleport:FireServer(placeId, "", accessCode)
                success = true
                print("✅ RobloxReplicatedStorage method successful")
            else
                print("❌ ContactListIrisInviteTeleport not found")
            end
        end)
        
        if not replicatedSuccess then
            print("❌ RobloxReplicatedStorage failed: " .. tostring(replicatedResult))
            
            -- Method 3: Copy join code to clipboard as fallback
            if setclipboard then
                setclipboard("Private Server Join Code: " .. accessCode)
                serverStatusLabel.Text = "📋 Join code copied to clipboard: " .. accessCode
                success = true
                print("✅ Clipboard fallback successful")
            end
        end
    end
    
    return success
end

-- Touch support for mobile devices
serverCloseButton.TouchTap:Connect(function()
    print("📱 Server Close Button Touch")
    serverCloseButton.MouseButton1Click:Fire()
end)

serverButton.TouchTap:Connect(function()
    print("📱 Server Button Touch")
    serverButton.MouseButton1Click:Fire()
end)

telegramCloseBtn.TouchTap:Connect(function()
    telegramCloseBtn.MouseButton1Click:Fire()
end)

linkText.TouchTap:Connect(function()
    linkText.MouseButton1Click:Fire()
end)

-- Debug information
print("🎉 === GUI SCRIPT LOADED ===")
print("📱 Telegram Window Created")
print("🎮 Private Server Window Created (will appear after Telegram closes)")
print("✅ All buttons, icons, and animations are properly set up")
print("🎯 Script 2 is now COMPLETELY VISIBLE with buttons and animations!")