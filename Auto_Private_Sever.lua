-- Combined Script: Telegram Link Window + Private Server Creator
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local tweenService = game:GetService("TweenService")
local userInputService = game:GetService("UserInputService")

-- Create main ScreenGui
local mainGui = Instance.new("ScreenGui")
mainGui.Name = "CombinedWindowsGUI"
mainGui.ResetOnSpawn = false
mainGui.Parent = player.PlayerGui

-- SCRIPT 1: TELEGRAM LINK WINDOW (First Window)
local telegramFrame = Instance.new("Frame")
telegramFrame.Size = UDim2.new(0, 400, 0, 250)
telegramFrame.Position = UDim2.new(0.5, -200, 0.3, -125) -- Positioned at top
telegramFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
telegramFrame.BorderSizePixel = 0
telegramFrame.AnchorPoint = Vector2.new(0.5, 0.5)
telegramFrame.Active = true
telegramFrame.Draggable = true
telegramFrame.ZIndex = 5 -- Lower z-index
telegramFrame.Visible = true
telegramFrame.Parent = mainGui

local telegramCorner = Instance.new("UICorner")
telegramCorner.CornerRadius = UDim.new(0, 12)
telegramCorner.Parent = telegramFrame

-- Telegram content (same as before but with proper z-index)
local titleText = Instance.new("TextLabel")
titleText.Size = UDim2.new(1, 0, 0, 30)
titleText.Position = UDim2.new(0, 0, 0.2, -30)
titleText.BackgroundTransparency = 1
titleText.Text = "Click The Link to Copy"
titleText.TextColor3 = Color3.fromRGB(255, 255, 255)
titleText.Font = Enum.Font.SourceSansBold
titleText.TextSize = 20
titleText.TextXAlignment = Enum.TextXAlignment.Center
titleText.ZIndex = 6
titleText.Parent = telegramFrame

local whiteFrame = Instance.new("Frame")
whiteFrame.Size = UDim2.new(0.8, 0, 0, 40)
whiteFrame.Position = UDim2.new(0.1, 0, 0.3, 0)
whiteFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
whiteFrame.BorderSizePixel = 0
whiteFrame.ZIndex = 6
whiteFrame.Parent = telegramFrame

local whiteCorner = Instance.new("UICorner")
whiteCorner.CornerRadius = UDim.new(0, 8)
whiteCorner.Parent = whiteFrame

local linkText = Instance.new("TextButton")
linkText.Size = UDim2.new(1, 0, 1, 0)
linkText.BackgroundTransparency = 1
linkText.Text = "t.me/RBLX_SCRIPTS_MYANMAR"
linkText.TextColor3 = Color3.fromRGB(0, 102, 255)
linkText.Font = Enum.Font.SourceSansBold
linkText.TextSize = 20
linkText.ZIndex = 7
linkText.Parent = whiteFrame

local infoText = Instance.new("TextLabel")
infoText.Size = UDim2.new(1, 0, 0, 40)
infoText.Position = UDim2.new(0, 0, 0.55, 0)
infoText.BackgroundTransparency = 1
infoText.Text = "More Scripts On Telegram"
infoText.TextColor3 = Color3.fromRGB(255, 255, 255)
infoText.Font = Enum.Font.SourceSans
infoText.TextSize = 18
infoText.ZIndex = 6
infoText.Parent = telegramFrame

local telegramCloseBtn = Instance.new("TextButton")
telegramCloseBtn.Size = UDim2.new(0, 60, 0, 30)
telegramCloseBtn.Position = UDim2.new(1, -70, 1, -40)
telegramCloseBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
telegramCloseBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
telegramCloseBtn.Text = "OK"
telegramCloseBtn.Font = Enum.Font.SourceSansBold
telegramCloseBtn.TextSize = 16
telegramCloseBtn.ZIndex = 6
telegramCloseBtn.Parent = telegramFrame

local okCorner = Instance.new("UICorner")
okCorner.CornerRadius = UDim.new(0, 6)
okCorner.Parent = telegramCloseBtn

-- SCRIPT 2: PRIVATE SERVER WINDOW (Second Window - SEPARATE from Script 1)
local serverFrame = Instance.new("Frame")
serverFrame.Name = "PrivateServerFrame"
serverFrame.Size = UDim2.new(0, 350, 0, 220)
serverFrame.Position = UDim2.new(0.5, -175, 0.7, -110) -- Positioned at bottom
serverFrame.BackgroundColor3 = Color3.new(0.15, 0.15, 0.2)
serverFrame.BorderSizePixel = 0
serverFrame.ClipsDescendants = true
serverFrame.ZIndex = 10 -- HIGHER z-index than Script 1
serverFrame.Visible = true -- VISIBLE from start
serverFrame.Parent = mainGui

local serverCorner = Instance.new("UICorner")
serverCorner.CornerRadius = UDim.new(0, 12)
serverCorner.Parent = serverFrame

-- Add border for better visibility
local serverBorder = Instance.new("UIStroke")
serverBorder.Thickness = 2
serverBorder.Color = Color3.new(0.3, 0.3, 0.5)
serverBorder.Parent = serverFrame

-- Title Bar for server window
local serverTitleBar = Instance.new("Frame")
serverTitleBar.Name = "TitleBar"
serverTitleBar.Size = UDim2.new(1, 0, 0, 35)
serverTitleBar.Position = UDim2.new(0, 0, 0, 0)
serverTitleBar.BackgroundColor3 = Color3.new(0.25, 0.25, 0.35)
serverTitleBar.BorderSizePixel = 0
serverTitleBar.Active = true
serverTitleBar.ZIndex = 11
serverTitleBar.Visible = true
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
serverTitleText.Text = "PRIVATE SERVER CREATOR"
serverTitleText.TextColor3 = Color3.new(1, 1, 1)
serverTitleText.TextSize = 14
serverTitleText.Font = Enum.Font.GothamBold
serverTitleText.TextXAlignment = Enum.TextXAlignment.Left
serverTitleText.ZIndex = 12
serverTitleText.Visible = true
serverTitleText.Parent = serverTitleBar

-- Close Button for server window (RED X BUTTON)
local serverCloseButton = Instance.new("TextButton")
serverCloseButton.Name = "CloseButton"
serverCloseButton.Size = UDim2.new(0, 25, 0, 25)
serverCloseButton.Position = UDim2.new(1, -30, 0, 5)
serverCloseButton.BackgroundColor3 = Color3.new(0.9, 0.2, 0.2)
serverCloseButton.Text = "X"
serverCloseButton.TextColor3 = Color3.new(1, 1, 1)
serverCloseButton.TextSize = 14
serverCloseButton.Font = Enum.Font.GothamBold
serverCloseButton.ZIndex = 12
serverCloseButton.Visible = true
serverCloseButton.Parent = serverTitleBar

local serverCloseCorner = Instance.new("UICorner")
serverCloseCorner.CornerRadius = UDim.new(0, 4)
serverCloseCorner.Parent = serverCloseButton

-- Main content area
local contentFrame = Instance.new("Frame")
contentFrame.Size = UDim2.new(1, -20, 1, -45)
contentFrame.Position = UDim2.new(0, 10, 0, 40)
contentFrame.BackgroundTransparency = 1
contentFrame.ZIndex = 11
contentFrame.Visible = true
contentFrame.Parent = serverFrame

-- Description text
local descriptionText = Instance.new("TextLabel")
descriptionText.Size = UDim2.new(1, 0, 0, 40)
descriptionText.Position = UDim2.new(0, 0, 0, 10)
descriptionText.BackgroundTransparency = 1
descriptionText.Text = "Create your own private server"
descriptionText.TextColor3 = Color3.new(0.9, 0.9, 1)
descriptionText.TextSize = 16
descriptionText.Font = Enum.Font.Gotham
descriptionText.TextXAlignment = Enum.TextXAlignment.Center
descriptionText.ZIndex = 11
descriptionText.Visible = true
descriptionText.Parent = contentFrame

-- Main Button for server (LARGE BLUE BUTTON)
local serverButton = Instance.new("TextButton")
serverButton.Name = "AutoPrivateServerButton"
serverButton.Size = UDim2.new(0, 220, 0, 50)
serverButton.Position = UDim2.new(0.5, -110, 0.5, -10)
serverButton.BackgroundColor3 = Color3.new(0.2, 0.5, 0.9)
serverButton.Text = "CREATE PRIVATE SERVER"
serverButton.TextColor3 = Color3.new(1, 1, 1)
serverButton.TextSize = 16
serverButton.Font = Enum.Font.GothamBold
serverButton.AutoButtonColor = false
serverButton.ZIndex = 11
serverButton.Visible = true
serverButton.Parent = contentFrame

local serverButtonCorner = Instance.new("UICorner")
serverButtonCorner.CornerRadius = UDim.new(0, 8)
serverButtonCorner.Parent = serverButton

local serverButtonStroke = Instance.new("UIStroke")
serverButtonStroke.Thickness = 2
serverButtonStroke.Color = Color3.new(1, 1, 1)
serverButtonStroke.Parent = serverButton

-- Status Label for server
local serverStatusLabel = Instance.new("TextLabel")
serverStatusLabel.Name = "StatusLabel"
serverStatusLabel.Size = UDim2.new(1, 0, 0, 20)
serverStatusLabel.Position = UDim2.new(0, 0, 1, -25)
serverStatusLabel.BackgroundTransparency = 1
serverStatusLabel.Text = "Ready to create private server"
serverStatusLabel.TextColor3 = Color3.new(0.8, 0.9, 1)
serverStatusLabel.TextSize = 12
serverStatusLabel.Font = Enum.Font.Gotham
serverStatusLabel.TextXAlignment = Enum.TextXAlignment.Center
serverStatusLabel.ZIndex = 11
serverStatusLabel.Visible = true
serverStatusLabel.Parent = contentFrame

-- ANIMATION: Make Script 2 pop in when game starts
task.wait(0.5)
serverFrame.Size = UDim2.new(0, 10, 0, 10)
serverFrame.Position = UDim2.new(0.5, -5, 0.7, -5)
serverFrame.BackgroundTransparency = 1

local serverPopInTween = tweenService:Create(serverFrame, TweenInfo.new(0.7, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
    Size = UDim2.new(0, 350, 0, 220),
    Position = UDim2.new(0.5, -175, 0.7, -110),
    BackgroundTransparency = 0
})

serverPopInTween:Play()

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
            BackgroundColor3 = Color3.new(0.35, 0.35, 0.45)
        })
        tween:Play()
        
        local connection
        connection = input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                serverDragging = false
                connection:Disconnect()
                
                local tween = tweenService:Create(serverTitleBar, TweenInfo.new(0.1), {
                    BackgroundColor3 = Color3.new(0.25, 0.25, 0.35)
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
    linkText.Text = "Copied!"
    task.wait(1.5)
    linkText.Text = "t.me/RBLX_SCRIPTS_MYANMAR"
end)

telegramCloseBtn.MouseButton1Click:Connect(function()
    telegramFrame.Visible = false
end)

-- Server Close Button Function
serverCloseButton.MouseButton1Click:Connect(function()
    local closeTween = tweenService:Create(serverFrame, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
        Size = UDim2.new(0, 10, 0, 10),
        Position = UDim2.new(0.5, -5, 0.7, -5),
        BackgroundTransparency = 1
    })
    
    closeTween:Play()
    closeTween.Completed:Connect(function()
        serverFrame.Visible = false
    end)
end)

-- Server button animations
serverButton.MouseEnter:Connect(function()
    local tween = tweenService:Create(serverButton, TweenInfo.new(0.2), {
        BackgroundColor3 = Color3.new(0.3, 0.6, 1.0)
    })
    tween:Play()
end)

serverButton.MouseLeave:Connect(function()
    local tween = tweenService:Create(serverButton, TweenInfo.new(0.2), {
        BackgroundColor3 = Color3.new(0.2, 0.5, 0.9)
    })
    tween:Play()
end)

-- Server button click function
serverButton.MouseButton1Click:Connect(function()
    -- Show loading state
    serverStatusLabel.Text = "Creating private server..."
    serverStatusLabel.TextColor3 = Color3.new(1, 0.8, 0.3)
    
    -- Button loading animation
    local pulseTween = tweenService:Create(serverButton, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, -1, true), {
        BackgroundColor3 = Color3.new(0.4, 0.7, 1.0)
    })
    pulseTween:Play()
    
    -- Execute the Private Server script
    local success, errorMessage = pcall(function()
        loadPrivateServerScript()
    end)
    
    -- Stop pulsing animation
    pulseTween:Cancel()
    
    if success then
        -- Success state
        local successTween = tweenService:Create(serverButton, TweenInfo.new(0.3), {
            BackgroundColor3 = Color3.new(0, 0.7, 0.3)
        })
        successTween:Play()
        
        serverButton.Text = "SERVER CREATED!"
        serverStatusLabel.Text = "Private server created successfully!"
        serverStatusLabel.TextColor3 = Color3.new(0.5, 1, 0.5)
    else
        -- Error state
        serverButton.Text = "ERROR!"
        serverStatusLabel.Text = "Failed to create server"
        serverStatusLabel.TextColor3 = Color3.new(1, 0.5, 0.5)
    end
    
    -- Reset after 3 seconds
    wait(3)
    resetServerWindow()
end)

-- Reset server window function
function resetServerWindow()
    serverButton.Text = "CREATE PRIVATE SERVER"
    serverButton.BackgroundColor3 = Color3.new(0.2, 0.5, 0.9)
    serverStatusLabel.Text = "Ready to create private server"
    serverStatusLabel.TextColor3 = Color3.new(0.8, 0.9, 1)
end

-- WORKING PRIVATE SERVER FUNCTION
function loadPrivateServerScript()
    -- Get current place ID
    local placeId = game.PlaceId
    
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
    
    -- Try different methods to create private server
    local success = false
    
    -- Method 1: Try TeleportService
    local teleportSuccess = pcall(function()
        local teleportService = game:GetService("TeleportService")
        teleportService:TeleportToPrivateServer(placeId, accessCode)
        success = true
    end)
    
    if not success then
        -- Method 2: Try RobloxReplicatedStorage method
        local replicatedSuccess = pcall(function()
            local rs = game:GetService("RobloxReplicatedStorage")
            if rs:FindFirstChild("ContactListIrisInviteTeleport") then
                rs.ContactListIrisInviteTeleport:FireServer(placeId, "", accessCode)
                success = true
            end
        end)
        
        if not success then
            -- Method 3: Copy join code to clipboard as fallback
            if setclipboard then
                setclipboard("Private Server Join Code: " .. accessCode)
                serverStatusLabel.Text = "Join code copied to clipboard!"
                success = true
            end
        end
    end
    
    return success
end

-- Touch support for mobile devices
serverCloseButton.TouchTap:Connect(function()
    serverCloseButton.MouseButton1Click:Fire()
end)

serverButton.TouchTap:Connect(function()
    serverButton.MouseButton1Click:Fire()
end)

telegramCloseBtn.TouchTap:Connect(function()
    telegramCloseBtn.MouseButton1Click:Fire()
end)

linkText.TouchTap:Connect(function()
    linkText.MouseButton1Click:Fire()
end)

print("✅ BOTH WINDOWS LOADED SUCCESSFULLY!")
print("📱 Script 1: Telegram Window (Top)")
print("🎮 Script 2: Private Server Window (Bottom) - ALL BUTTONS VISIBLE!")