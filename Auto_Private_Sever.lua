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

-- SCRIPT 1: TELEGRAM LINK WINDOW (First Layer)
local telegramFrame = Instance.new("Frame")
telegramFrame.Size = UDim2.new(0, 0, 0, 0) -- start small for animation
telegramFrame.Position = UDim2.new(0.5, 0, 0.4, 0) -- Positioned higher
telegramFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
telegramFrame.BackgroundTransparency = 0
telegramFrame.BorderSizePixel = 0
telegramFrame.AnchorPoint = Vector2.new(0.5, 0.5)
telegramFrame.Active = true
telegramFrame.Draggable = true
telegramFrame.ZIndex = 2 -- Higher z-index for top layer
telegramFrame.Parent = mainGui

-- Rounded corners for telegram popup
local telegramCorner = Instance.new("UICorner")
telegramCorner.CornerRadius = UDim.new(0, 12)
telegramCorner.Parent = telegramFrame

-- Logo in top-left corner (placeholder)
local logo = Instance.new("ImageLabel")
logo.Size = UDim2.new(0, 60, 0, 60)
logo.Position = UDim2.new(0, 10, 0, 10)
logo.BackgroundTransparency = 1
logo.Image = "rbxassetid://0" -- Placeholder image
logo.ZIndex = 3
logo.Parent = telegramFrame

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
titleText.ZIndex = 3
titleText.Parent = telegramFrame

-- White Highlight Box
local whiteFrame = Instance.new("Frame")
whiteFrame.Size = UDim2.new(0.8, 0, 0, 40)
whiteFrame.Position = UDim2.new(0.1, 0, 0.3, 0)
whiteFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
whiteFrame.BorderSizePixel = 0
whiteFrame.ZIndex = 3
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
linkText.ZIndex = 4
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
infoText.ZIndex = 3
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
telegramCloseBtn.ZIndex = 3
telegramCloseBtn.Parent = telegramFrame

local okCorner = Instance.new("UICorner")
okCorner.CornerRadius = UDim.new(0, 6)
okCorner.Parent = telegramCloseBtn

-- SCRIPT 2: PRIVATE SERVER WINDOW (Second Layer)
local serverFrame = Instance.new("Frame")
serverFrame.Name = "PrivateServerFrame"
serverFrame.Size = UDim2.new(0, 300, 0, 200)
serverFrame.Position = UDim2.new(0.5, -150, 0.6, 0) -- Positioned below telegram window
serverFrame.BackgroundColor3 = Color3.new(0, 0, 0)
serverFrame.BorderSizePixel = 2
serverFrame.BorderColor3 = Color3.new(0.3, 0.3, 0.3)
serverFrame.ClipsDescendants = true
serverFrame.ZIndex = 1 -- Lower z-index for bottom layer
serverFrame.Parent = mainGui

-- Create Corner Radius for modern look
local serverCorner = Instance.new("UICorner")
serverCorner.CornerRadius = UDim.new(0, 8)
serverCorner.Parent = serverFrame

-- Create Title Bar for server window
local serverTitleBar = Instance.new("Frame")
serverTitleBar.Name = "TitleBar"
serverTitleBar.Size = UDim2.new(1, 0, 0, 30)
serverTitleBar.Position = UDim2.new(0, 0, 0, 0)
serverTitleBar.BackgroundColor3 = Color3.new(0.15, 0.15, 0.15)
serverTitleBar.BorderSizePixel = 0
serverTitleBar.Active = true
serverTitleBar.ZIndex = 2
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
serverCloseButton.Parent = serverTitleBar

local serverCloseCorner = Instance.new("UICorner")
serverCloseCorner.CornerRadius = UDim.new(0, 4)
serverCloseCorner.Parent = serverCloseButton

-- Create Main Button for server
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
serverStatusLabel.Visible = false
serverStatusLabel.ZIndex = 2
serverStatusLabel.Parent = serverFrame

-- ANIMATION FUNCTIONS
-- Telegram window popup animation
task.wait(0.1)
telegramFrame:TweenSize(UDim2.new(0, 400, 0, 250), Enum.EasingDirection.Out, Enum.EasingStyle.Back, 0.6, true)
telegramFrame:TweenPosition(UDim2.new(0.5, 0, 0.4, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Back, 0.6, true)

-- Server window popup animation (delayed)
task.wait(0.3)
serverFrame.Size = UDim2.new(0, 10, 0, 10)
serverFrame.Position = UDim2.new(0.5, -5, 0.6, 0)
serverFrame.BackgroundTransparency = 1
serverTitleBar.Visible = false
serverButton.Visible = false
serverStatusLabel.Visible = false

local serverPopInTween = tweenService:Create(serverFrame, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
    Size = UDim2.new(0, 300, 0, 200),
    Position = UDim2.new(0.5, -150, 0.6, 0),
    BackgroundTransparency = 0
})

serverPopInTween:Play()

serverPopInTween.Completed:Connect(function()
    serverTitleBar.Visible = true
    serverButton.Visible = true
    serverStatusLabel.Visible = true
    
    -- Fade in server elements
    local fadeInTween = tweenService:Create(serverButton, TweenInfo.new(0.3), {
        BackgroundTransparency = 0,
        TextTransparency = 0
    })
    fadeInTween:Play()
end)

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
        
        -- Visual feedback
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
end)

-- Server window buttons
serverCloseButton.MouseButton1Click:Connect(function()
    local closeTween = tweenService:Create(serverFrame, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
        Size = UDim2.new(0, 10, 0, 10),
        Position = UDim2.new(0.5, -5, 0.6, 0),
        BackgroundTransparency = 1
    })
    
    closeTween:Play()
    closeTween.Completed:Connect(function()
        serverFrame.Visible = false
    end)
end)

-- Touch support for server close button
serverCloseButton.TouchTap:Connect(function()
    serverCloseButton.MouseButton1Click:Fire()
end)

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

-- Touch support for server main button
serverButton.TouchTap:Connect(function()
    serverButton.MouseButton1Click:Fire()
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
    
    -- Execute the Private Server script
    loadPrivateServerScript()
    
    -- Stop pulsing and show success
    pulseTween:Cancel()
    
    local successTween = tweenService:Create(serverButton, TweenInfo.new(0.3), {
        BackgroundColor3 = Color3.new(0, 0.6, 0),
        TextColor3 = Color3.new(0.95, 0.95, 0.95)
    })
    successTween:Play()
    
    serverButton.Text = "Private Server Created!"
    serverStatusLabel.Text = "Private server created successfully!"
    serverStatusLabel.TextColor3 = Color3.new(0.8, 0.8, 0.8)
    
    -- Auto-close after 3 seconds
    wait(3)
    
    -- Close animation
    local closeTween = tweenService:Create(serverFrame, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
        Size = UDim2.new(0, 10, 0, 10),
        Position = UDim2.new(0.5, -5, 0.6, 0),
        BackgroundTransparency = 1
    })
    
    closeTween:Play()
    closeTween.Completed:Connect(function()
        serverFrame.Visible = false
    end)
end)

-- Private Server Script Function
function loadPrivateServerScript()
    local md5 = {}
    local hmac = {}
    local base64 = {}

    do
        do
            local T = {
                0xd76aa478, 0xe8c7b756, 0x242070db, 0xc1bdceee, 0xf57c0faf, 0x4787c62a, 0xa8304613, 0xfd469501,
                0x698098d8, 0x8b44f7af, 0xffff5bb1, 0x895cd7be, 0x6b901122, 0xfd987193, 0xa679438e, 0x49b40821,
                0xf61e2562, 0xc040b340, 0x265e5a51, 0xe9b6c7aa, 0xd62f105d, 0x02441453, 0xd8a1e681, 0xe7d3fbc8,
                0x21e1cde6, 0xc33707d6, 0xf4d50d87, 0x455a14ed, 0xa9e3e905, 0xfcefa3f8, 0x676f02d9, 0x8d2a4c8a,
                0xfffa3942, 0x8771f681, 0x6d9d6122, 0xfde5380c, 0xa4beea44, 0x4bdecfa9, 0xf6bb4b60, 0xbebfbc70,
                0x289b7ec6, 0xeaa127fa, 0xd4ef3085, 0x04881d05, 0xd9d4d039, 0xe6db99e5, 0x1fa27cf8, 0xc4ac5665,
                0xf4292244, 0x432aff97, 0xab9423a7, 0xfc93a039, 0x655b59c3, 0x8f0ccc92, 0xffeff47d, 0x85845dd1,
                0x6fa87e4f, 0xfe2ce6e0, 0xa3014314, 0x4e0811a1, 0xf7537e82, 0xbd3af235, 0x2ad7d2bb, 0xeb86d391,
            }

            local function add(a, b)
                local lsw = bit32.band(a, 0xFFFF) + bit32.band(b, 0xFFFF)
                local msw = bit32.rshift(a, 16) + bit32.rshift(b, 16) + bit32.rshift(lsw, 16)
                return bit32.bor(bit32.lshift(msw, 16), bit32.band(lsw, 0xFFFF))
            end

            local function rol(x, n)
                return bit32.bor(bit32.lshift(x, n), bit32.rshift(x, 32 - n))
            end

            local function F(x, y, z)
                return bit32.bor(bit32.band(x, y), bit32.band(bit32.bnot(x), z))
            end
            local function G(x, y, z)
                return bit32.bor(bit32.band(x, z), bit32.band(y, bit32.bnot(z)))
            end
            local function H(x, y, z)
                return bit32.bxor(x, bit32.bxor(y, z))
            end
            local function I(x, y, z)
                return bit32.bxor(y, bit32.bor(x, bit32.bnot(z)))
            end

            function md5.sum(message)
                local a, b, c, d = 0x67452301, 0xefcdab89, 0x98badcfe, 0x10325476

                local message_len = #message
                local padded_message = message .. "\128"
                while #padded_message % 64 ~= 56 do
                    padded_message = padded_message .. "\0"
                end

                local len_bytes = ""
                local len_bits = message_len * 8
                for i = 0, 7 do
                    len_bytes = len_bytes .. string.char(bit32.band(bit32.rshift(len_bits, i * 8), 0xFF))
                end
                padded_message = padded_message .. len_bytes

                for i = 1, #padded_message, 64 do
                    local chunk = padded_message:sub(i, i + 63)
                    local X = {}
                    for j = 0, 15 do
                        local b1, b2, b3, b4 = chunk:byte(j * 4 + 1, j * 4 + 4)
                        X[j] = bit32.bor(b1, bit32.lshift(b2, 8), bit32.lshift(b3, 16), bit32.lshift(b4, 24))
                    end

                    local aa, bb, cc, dd = a, b, c, d

                    local s = { 7, 12, 17, 22, 5, 9, 14, 20, 4, 11, 16, 23, 6, 10, 15, 21 }

                    for j = 0, 63 do
                        local f, k, shift_index
                        if j < 16 then
                            f = F(b, c, d)
                            k = j
                            shift_index = j % 4
                        elseif j < 32 then
                            f = G(b, c, d)
                            k = (1 + 5 * j) % 16
                            shift_index = 4 + (j % 4)
                        elseif j < 48 then
                            f = H(b, c, d)
                            k = (5 + 3 * j) % 16
                            shift_index = 8 + (j % 4)
                        else
                            f = I(b, c, d)
                            k = (7 * j) % 16
                            shift_index = 12 + (j % 4)
                        end

                        local temp = add(a, f)
                        temp = add(temp, X[k])
                        temp = add(temp, T[j + 1])
                        temp = rol(temp, s[shift_index + 1])

                        local new_b = add(b, temp)
                        a, b, c, d = d, new_b, b, c
                    end

                    a = add(a, aa)
                    b = add(b, bb)
                    c = add(c, cc)
                    d = add(d, dd)
                end

                local function to_le_hex(n)
                    local s = ""
                    for i = 0, 3 do
                        s = s .. string.char(bit32.band(bit32.rshift(n, i * 8), 0xFF))
                    end
                    return s
                end

                return to_le_hex(a) .. to_le_hex(b) .. to_le_hex(c) .. to_le_hex(d)
            end
        end

        do
            function hmac.new(key, msg, hash_func)
                if #key > 64 then
                    key = hash_func(key)
                end

                local o_key_pad = ""
                local i_key_pad = ""
                for i = 1, 64 do
                    local byte = (i <= #key and string.byte(key, i)) or 0
                    o_key_pad = o_key_pad .. string.char(bit32.bxor(byte, 0x5C))
                    i_key_pad = i_key_pad .. string.char(bit32.bxor(byte, 0x36))
                end

                return hash_func(o_key_pad .. hash_func(i_key_pad .. msg))
            end
        end

        do
            local b = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

            function base64.encode(data)
                return (
                    (data:gsub(".", function(x)
                        local r, b_val = "", x:byte()
                        for i = 8, 1, -1 do
                            r = r .. (b_val % 2 ^ i - b_val % 2 ^ (i - 1) > 0 and "1" or "0")
                        end
                        return r
                    end) .. "0000"):gsub("%d%d%d?%d?%d?%d?", function(x)
                        if #x < 6 then
                            return ""
                        end
                        local c = 0
                        for i = 1, 6 do
                            c = c + (x:sub(i, i) == "1" and 2 ^ (6 - i) or 0)
                        end
                        return b:sub(c + 1, c + 1)
                    end) .. ({ "", "==", "=" })[#data % 3 + 1]
                )
            end
        end
    end

    local function GenerateReservedServerCode(placeId)
        local uuid = {}
        for i = 1, 16 do
            uuid[i] = math.random(0, 255)
        end

        uuid[7] = bit32.bor(bit32.band(uuid[7], 0x0F), 0x40) -- v4
        uuid[9] = bit32.bor(bit32.band(uuid[9], 0x3F), 0x80) -- RFC 4122

        local firstBytes = ""
        for i = 1, 16 do
            firstBytes = firstBytes .. string.char(uuid[i])
        end

        local gameCode =
            string.format("%02x%02x%02x%02x-%02x%02x-%02x%02x-%02x%02x-%02x%02x%02x%02x%02x%02x", table.unpack(uuid))

        local placeIdBytes = ""
        local pIdRec = placeId
        for _ = 1, 8 do
            placeIdBytes = placeIdBytes .. string.char(pIdRec % 256)
            pIdRec = math.floor(pIdRec / 256)
        end

        local content = firstBytes .. placeIdBytes

        local SUPERDUPERSECRETROBLOXKEYTHATTHEYDIDNTCHANGEEVERSINCEFOREVER = "e4Yn8ckbCJtw2sv7qmbg"
        local signature = hmac.new(SUPERDUPERSECRETROBLOXKEYTHATTHEYDIDNTCHANGEEVERSINCEFOREVER, content, md5.sum)

        local accessCodeBytes = signature .. content

        local accessCode = base64.encode(accessCodeBytes)
        accessCode = accessCode:gsub("+", "-"):gsub("/", "_")

        local pdding = 0
        accessCode, _ = accessCode:gsub("=", function()
            pdding = pdding + 1
            return ""
        end)

        accessCode = accessCode .. tostring(pdding)

        return accessCode, gameCode
    end

    local accessCode, _ = GenerateReservedServerCode(game.PlaceId)
    game.RobloxReplicatedStorage.ContactListIrisInviteTeleport:FireServer(game.PlaceId, "", accessCode)
end
