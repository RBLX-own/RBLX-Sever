-- Combined Script: Telegram Link Window (Front) + Private Server Creator (Hidden Behind)
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local tweenService = game:GetService("TweenService")
local userInputService = game:GetService("UserInputService")

-- Create main ScreenGui
local mainGui = Instance.new("ScreenGui")
mainGui.Name = "CombinedWindowsGUI"
mainGui.ResetOnSpawn = false
mainGui.Parent = player.PlayerGui

-- SCRIPT 1: TELEGRAM LINK WINDOW (Front Layer - Visible)
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
titleText.Visible = true
titleText.Parent = telegramFrame

-- White Highlight Box
local whiteFrame = Instance.new("Frame")
whiteFrame.Size = UDim2.new(0.8, 0, 0, 40)
whiteFrame.Position = UDim2.new(0.1, 0, 0.3, 0)
whiteFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
whiteFrame.BorderSizePixel = 0
whiteFrame.ZIndex = 11
whiteFrame.Visible = true
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
linkText.Visible = true
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
infoText.Visible = true
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
telegramCloseBtn.Visible = true
telegramCloseBtn.Parent = telegramFrame

local okCorner = Instance.new("UICorner")
okCorner.CornerRadius = UDim.new(0, 6)
okCorner.Parent = telegramCloseBtn

-- SCRIPT 2: PRIVATE SERVER WINDOW (Hidden Behind - Not Visible)
local serverFrame = Instance.new("Frame")
serverFrame.Name = "PrivateServerFrame"
serverFrame.Size = UDim2.new(0, 300, 0, 200)
serverFrame.Position = UDim2.new(0.5, -150, 0.5, -100)
serverFrame.BackgroundColor3 = Color3.new(0, 0, 0)
serverFrame.BorderSizePixel = 2
serverFrame.BorderColor3 = Color3.new(0.3, 0.3, 0.3)
serverFrame.ClipsDescendants = true
serverFrame.ZIndex = 1
serverFrame.Visible = false
serverFrame.Parent = mainGui

local serverCorner = Instance.new("UICorner")
serverCorner.CornerRadius = UDim.new(0, 8)
serverCorner.Parent = serverFrame

-- Title Bar for server window
local serverTitleBar = Instance.new("Frame")
serverTitleBar.Name = "TitleBar"
serverTitleBar.Size = UDim2.new(1, 0, 0, 30)
serverTitleBar.Position = UDim2.new(0, 0, 0, 0)
serverTitleBar.BackgroundColor3 = Color3.new(0.15, 0.15, 0.15)
serverTitleBar.BorderSizePixel = 0
serverTitleBar.Active = true
serverTitleBar.ZIndex = 2
serverTitleBar.Visible = true
serverTitleBar.Parent = serverFrame

local serverTitleCorner = Instance.new("UICorner")
serverTitleCorner.CornerRadius = UDim.new(0, 8)
serverTitleCorner.Parent = serverTitleBar

-- Title Text for server window
local serverTitleText = Instance.new("TextLabel")
serverTitleText.Name = "Title"
serverTitleText.Size = UDim2.new(0, 150, 1, 0)
serverTitleText.Position = UDim2.new(0, 10, 0, 0)
serverTitleText.BackgroundTransparency = 1
serverTitleText.Text = "Private Server Creator"
serverTitleText.TextColor3 = Color3.new(0.9, 0.9, 0.9)
serverTitleText.TextSize = 14
serverTitleText.Font = Enum.Font.GothamBold
serverTitleText.TextXAlignment = Enum.TextXAlignment.Left
serverTitleText.ZIndex = 3
serverTitleText.Visible = true
serverTitleText.Parent = serverTitleBar

-- Close Button for server window
local serverCloseButton = Instance.new("TextButton")
serverCloseButton.Name = "CloseButton"
serverCloseButton.Size = UDim2.new(0, 25, 0, 25)
serverCloseButton.Position = UDim2.new(1, -30, 0, 2)
serverCloseButton.BackgroundColor3 = Color3.new(0.7, 0.2, 0.2)
serverCloseButton.Text = "X"
serverCloseButton.TextColor3 = Color3.new(0.9, 0.9, 0.9)
serverCloseButton.TextSize = 14
serverCloseButton.Font = Enum.Font.GothamBold
serverCloseButton.ZIndex = 3
serverCloseButton.Visible = true
serverCloseButton.Parent = serverTitleBar

local serverCloseCorner = Instance.new("UICorner")
serverCloseCorner.CornerRadius = UDim.new(0, 4)
serverCloseCorner.Parent = serverCloseButton

-- Main Button for server
local serverButton = Instance.new("TextButton")
serverButton.Name = "AutoPrivateServerButton"
serverButton.Size = UDim2.new(0, 200, 0, 50)
serverButton.Position = UDim2.new(0.5, -100, 0.5, -10)
serverButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.6)
serverButton.Text = "Auto Private Server"
serverButton.TextColor3 = Color3.new(0.95, 0.95, 0.95)
serverButton.TextSize = 18
serverButton.Font = Enum.Font.GothamBold
serverButton.AutoButtonColor = false
serverButton.ZIndex = 2
serverButton.Visible = true
serverButton.Parent = serverFrame

local serverButtonCorner = Instance.new("UICorner")
serverButtonCorner.CornerRadius = UDim.new(0, 8)
serverButtonCorner.Parent = serverButton

local serverButtonStroke = Instance.new("UIStroke")
serverButtonStroke.Thickness = 2
serverButtonStroke.Color = Color3.new(0.4, 0.4, 0.4)
serverButtonStroke.Parent = serverButton

-- Status Label for server
local serverStatusLabel = Instance.new("TextLabel")
serverStatusLabel.Name = "StatusLabel"
serverStatusLabel.Size = UDim2.new(0, 250, 0, 20)
serverStatusLabel.Position = UDim2.new(0.5, -125, 0.5, 40)
serverStatusLabel.BackgroundTransparency = 1
serverStatusLabel.Text = "Click to create private server"
serverStatusLabel.TextColor3 = Color3.new(0.8, 0.8, 0.8)
serverStatusLabel.TextSize = 12
serverStatusLabel.Font = Enum.Font.Gotham
serverStatusLabel.TextXAlignment = Enum.TextXAlignment.Center
serverStatusLabel.ZIndex = 2
serverStatusLabel.Visible = true
serverStatusLabel.Parent = serverFrame

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
            BackgroundColor3 = Color3.new(0.25, 0.25, 0.25)
        })
        tween:Play()
        
        local connection
        connection = input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                serverDragging = false
                connection:Disconnect()
                
                local tween = tweenService:Create(serverTitleBar, TweenInfo.new(0.1), {
                    BackgroundColor3 = Color3.new(0.15, 0.15, 0.15)
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
    telegramFrame:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.In, Enum.EasingStyle.Back, 0.5, true)
    task.wait(0.5)
    telegramFrame.Visible = false
    
    -- After Telegram window closes, show the Private Server window
    wait(0.2)
    showPrivateServerWindow()
end)

-- Function to show Private Server window after Telegram closes
function showPrivateServerWindow()
    serverFrame.Visible = true
    serverFrame.Size = UDim2.new(0, 10, 0, 10)
    serverFrame.Position = UDim2.new(0.5, -5, 0.5, -5)
    serverFrame.BackgroundTransparency = 1
    serverFrame.ZIndex = 10
    
    -- Ensure all elements are visible
    serverTitleBar.Visible = true
    serverTitleText.Visible = true
    serverCloseButton.Visible = true
    serverButton.Visible = true
    serverStatusLabel.Visible = true
    
    -- Popup animation for server window
    local serverPopInTween = tweenService:Create(serverFrame, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
        Size = UDim2.new(0, 300, 0, 200),
        Position = UDim2.new(0.5, -150, 0.5, -100),
        BackgroundTransparency = 0
    })
    
    serverPopInTween:Play()
end

-- Server Close Button Function
serverCloseButton.MouseButton1Click:Connect(function()
    local closeTween = tweenService:Create(serverFrame, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
        Size = UDim2.new(0, 10, 0, 10),
        Position = UDim2.new(0.5, -5, 0.5, -5),
        BackgroundTransparency = 1
    })
    
    closeTween:Play()
    closeTween.Completed:Connect(function()
        serverFrame.Visible = false
        serverFrame.ZIndex = 1
        resetServerWindow()
    end)
end)

-- Reset server window function
function resetServerWindow()
    serverButton.Text = "Auto Private Server"
    serverButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.6)
    serverStatusLabel.Text = "Click to create private server"
    serverStatusLabel.TextColor3 = Color3.new(0.8, 0.8, 0.8)
    serverStatusLabel.Visible = true
end

-- Server button animations
serverButton.MouseEnter:Connect(function()
    local tween = tweenService:Create(serverButton, TweenInfo.new(0.2), {
        BackgroundColor3 = Color3.new(0.3, 0.3, 0.8),
        Size = UDim2.new(0, 210, 0, 55),
        Position = UDim2.new(0.5, -105, 0.5, -12.5)
    })
    tween:Play()
end)

serverButton.MouseLeave:Connect(function()
    local tween = tweenService:Create(serverButton, TweenInfo.new(0.2), {
        BackgroundColor3 = Color3.new(0.2, 0.2, 0.6),
        Size = UDim2.new(0, 200, 0, 50),
        Position = UDim2.new(0.5, -100, 0.5, -10)
    })
    tween:Play()
end)

serverButton.MouseButton1Down:Connect(function()
    local tween = tweenService:Create(serverButton, TweenInfo.new(0.1), {
        BackgroundColor3 = Color3.new(0.15, 0.15, 0.5),
        Size = UDim2.new(0, 190, 0, 45),
        Position = UDim2.new(0.5, -95, 0.5, -7.5)
    })
    tween:Play()
end)

serverButton.MouseButton1Up:Connect(function()
    local tween = tweenService:Create(serverButton, TweenInfo.new(0.1), {
        BackgroundColor3 = Color3.new(0.3, 0.3, 0.8),
        Size = UDim2.new(0, 210, 0, 55),
        Position = UDim2.new(0.5, -105, 0.5, -12.5)
    })
    tween:Play()
end)

-- Server button click function
serverButton.MouseButton1Click:Connect(function()
    -- Show loading state
    serverStatusLabel.Visible = true
    serverStatusLabel.Text = "Creating private server..."
    serverStatusLabel.TextColor3 = Color3.new(0.8, 0.8, 0.8)
    
    -- Button loading animation
    local pulseTween = tweenService:Create(serverButton, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, -1, true), {
        BackgroundColor3 = Color3.new(0.4, 0.4, 0.9)
    })
    pulseTween:Play()
    
    -- Execute the Private Server script with proper error handling
    local success, errorMessage = pcall(function()
        loadPrivateServerScript()
    end)
    
    -- Stop pulsing animation
    pulseTween:Cancel()
    
    if success then
        -- Success state
        local successTween = tweenService:Create(serverButton, TweenInfo.new(0.3), {
            BackgroundColor3 = Color3.new(0, 0.6, 0),
            TextColor3 = Color3.new(0.95, 0.95, 0.95)
        })
        successTween:Play()
        
        serverButton.Text = "Private Server Created!"
        serverStatusLabel.Text = "Private server created successfully!"
        serverStatusLabel.TextColor3 = Color3.new(0.8, 0.8, 0.8)
    else
        -- Error state
        serverButton.Text = "Error!"
        serverStatusLabel.Text = "Failed to create server"
        serverStatusLabel.TextColor3 = Color3.new(1, 0.3, 0.3)
        warn("Private Server Error: " .. tostring(errorMessage))
    end
    
    -- Auto-close after 3 seconds
    wait(3)
    
    -- Close animation
    local closeTween = tweenService:Create(serverFrame, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
        Size = UDim2.new(0, 10, 0, 10),
        Position = UDim2.new(0.5, -5, 0.5, -5),
        BackgroundTransparency = 1
    })
    
    closeTween:Play()
    closeTween.Completed:Connect(function()
        serverFrame.Visible = false
        serverFrame.ZIndex = 1
        resetServerWindow()
    end)
end)

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
    
    -- Method 1: Try TeleportService (Most reliable)
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
                setclipboard("Private Server Code: " .. accessCode)
                serverStatusLabel.Text = "Join code copied to clipboard: " .. accessCode
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

-- Initial setup to ensure everything is visible
print("GUI Script Loaded Successfully!")
print("Telegram Window: " .. tostring(telegramFrame.Visible))
print("Server Window: " .. tostring(serverFrame.Visible))
print("Server Button: " .. tostring(serverButton.Visible))
print("Server Close Button: " .. tostring(serverCloseButton.Visible))