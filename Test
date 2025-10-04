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

-- SCRIPT 1: TELEGRAM LINK WINDOW (Loads First - Behind Script 2)
local telegramFrame = Instance.new("Frame")
telegramFrame.Size = UDim2.new(0, 0, 0, 0) -- Start small for animation
telegramFrame.Position = UDim2.new(0.5, 0, 0.5, 0) -- Center of screen
telegramFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
telegramFrame.BackgroundTransparency = 1
telegramFrame.BorderSizePixel = 0
telegramFrame.AnchorPoint = Vector2.new(0.5, 0.5)
telegramFrame.Active = true
telegramFrame.Draggable = true
telegramFrame.ZIndex = 5 -- LOWER z-index (behind Script 2)
telegramFrame.Visible = true
telegramFrame.Parent = mainGui

local telegramCorner = Instance.new("UICorner")
telegramCorner.CornerRadius = UDim.new(0, 12)
telegramCorner.Parent = telegramFrame

-- Telegram content (initially hidden)
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
titleText.Visible = false
titleText.Parent = telegramFrame

local whiteFrame = Instance.new("Frame")
whiteFrame.Size = UDim2.new(0.8, 0, 0, 40)
whiteFrame.Position = UDim2.new(0.1, 0, 0.3, 0)
whiteFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
whiteFrame.BorderSizePixel = 0
whiteFrame.ZIndex = 6
whiteFrame.Visible = false
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
linkText.Visible = false
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
infoText.Visible = false
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
telegramCloseBtn.Visible = false
telegramCloseBtn.Parent = telegramFrame

local okCorner = Instance.new("UICorner")
okCorner.CornerRadius = UDim.new(0, 6)
okCorner.Parent = telegramCloseBtn

-- SCRIPT 2: PRIVATE SERVER WINDOW (Loads After OK Pressed)
local serverFrame = Instance.new("Frame")
serverFrame.Name = "PrivateServerFrame"
serverFrame.Size = UDim2.new(0, 350, 0, 220)
serverFrame.Position = UDim2.new(0.5, -175, 0.5, -110) -- Center of screen
serverFrame.BackgroundColor3 = Color3.new(0.15, 0.15, 0.2)
serverFrame.BorderSizePixel = 0
serverFrame.ClipsDescendants = true
serverFrame.ZIndex = 10 -- HIGHER z-index (in front of Script 1)
serverFrame.Visible = false -- Hidden until OK is pressed
serverFrame.Parent = mainGui

local serverCorner = Instance.new("UICorner")
serverCorner.CornerRadius = UDim.new(0, 12)
serverCorner.Parent = serverFrame

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
serverTitleText.Parent = serverTitleBar

-- Close Button for server window
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
descriptionText.Parent = contentFrame

-- Main Button for server - "Auto Private Server" - BOLD WHITE TEXT
local serverButton = Instance.new("TextButton")
serverButton.Name = "AutoPrivateServerButton"
serverButton.Size = UDim2.new(0, 220, 0, 50)
serverButton.Position = UDim2.new(0.5, -110, 0.5, -10)
serverButton.BackgroundColor3 = Color3.new(0.2, 0.5, 0.9)
serverButton.Text = "Auto Private Server"
serverButton.TextColor3 = Color3.new(1, 1, 1) -- Pure white text
serverButton.TextSize = 18
serverButton.Font = Enum.Font.GothamBold -- Bold font
serverButton.AutoButtonColor = false
serverButton.ZIndex = 11
serverButton.Parent = contentFrame

local serverButtonCorner = Instance.new("UICorner")
serverButtonCorner.CornerRadius = UDim.new(0, 8)
serverButtonCorner.Parent = serverButton

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
serverStatusLabel.Parent = contentFrame

-- ANIMATION: Script 1 loads first with popup animation
task.wait(0.5)
telegramFrame:TweenSize(UDim2.new(0, 400, 0, 250), Enum.EasingDirection.Out, Enum.EasingStyle.Back, 0.7, true)
telegramFrame:TweenPosition(UDim2.new(0.5, 0, 0.5, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Back, 0.7, true)

-- Show telegram content after animation
telegramFrame.BackgroundTransparency = 0
titleText.Visible = true
whiteFrame.Visible = true
linkText.Visible = true
infoText.Visible = true
telegramCloseBtn.Visible = true

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

-- When OK button is pressed, close Script 1 and load Script 2
telegramCloseBtn.MouseButton1Click:Connect(function()
    telegramFrame:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.In, Enum.EasingStyle.Back, 0.5, true)
    task.wait(0.5)
    telegramFrame.Visible = false
    
    -- After Telegram window closes, show the Private Server window (Script 2)
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
    
    -- Popup animation for server window
    local serverPopInTween = tweenService:Create(serverFrame, TweenInfo.new(0.7, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
        Size = UDim2.new(0, 350, 0, 220),
        Position = UDim2.new(0.5, -175, 0.5, -110),
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

-- Server button click function - LOADS YOUR PRIVATE SERVER SCRIPT
serverButton.MouseButton1Click:Connect(function()
    -- Show loading state
    serverStatusLabel.Text = "Creating private server..."
    serverStatusLabel.TextColor3 = Color3.new(1, 0.8, 0.3)
    
    -- Button loading animation
    local pulseTween = tweenService:Create(serverButton, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, -1, true), {
        BackgroundColor3 = Color3.new(0.4, 0.7, 1.0)
    })
    pulseTween:Play()
    
    -- Execute the Private Server script you provided
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
    serverButton.Text = "Auto Private Server"
    serverButton.BackgroundColor3 = Color3.new(0.2, 0.5, 0.9)
    serverStatusLabel.Text = "Ready to create private server"
    serverStatusLabel.TextColor3 = Color3.new(0.8, 0.9, 1)
end

-- YOUR PRIVATE SERVER SCRIPT FUNCTION
function loadPrivateServerScript()
    --PRIVATE SERVER CREATOR
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

        local SUPERDUPERSECRETROBLOXKEYTHATTHEYDIDNTCHANGEEVERSINCEFOREVER = "e4Yn8ckbCJtw2sv7qmbg" -- legacy leaked key from ages ago that still works due to roblox being roblox.
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

    -- Copy access code to clipboard
    if setclipboard then
        setclipboard(accessCode)
    elseif writeclipboard then
        writeclipboard(accessCode)
    end
    
    print("Private server created! Access code copied to clipboard: " .. accessCode)
end