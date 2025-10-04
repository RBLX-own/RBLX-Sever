-- Combined Script: Script 1 (First Window) -> Script 2 (Second Window)
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local tweenService = game:GetService("TweenService")
local userInputService = game:GetService("UserInputService")

--------------------------------
-- SCRIPT 1 (First Popup Window)
--------------------------------
local gui1 = Instance.new("ScreenGui", player.PlayerGui)
gui1.ResetOnSpawn = false

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 0, 0, 0)
mainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
mainFrame.BorderSizePixel = 0
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Parent = gui1

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = mainFrame

-- Animate in
task.wait(0.1)
mainFrame:TweenSize(UDim2.new(0, 400, 0, 250), Enum.EasingDirection.Out, Enum.EasingStyle.Back, 0.6, true)

-- Title
local titleText = Instance.new("TextLabel")
titleText.Size = UDim2.new(1, 0, 0, 30)
titleText.Position = UDim2.new(0, 0, 0.05, 0)
titleText.BackgroundTransparency = 1
titleText.Text = "Click The Link to Copy"
titleText.TextColor3 = Color3.fromRGB(255, 255, 255)
titleText.Font = Enum.Font.SourceSansBold
titleText.TextSize = 20
titleText.Parent = mainFrame

-- White Frame
local whiteFrame = Instance.new("Frame")
whiteFrame.Size = UDim2.new(0.8, 0, 0, 40)
whiteFrame.Position = UDim2.new(0.1, 0, 0.3, 0)
whiteFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
whiteFrame.BorderSizePixel = 0
whiteFrame.Parent = mainFrame

local whiteCorner = Instance.new("UICorner")
whiteCorner.CornerRadius = UDim.new(0, 8)
whiteCorner.Parent = whiteFrame

-- Clickable link
local linkText = Instance.new("TextButton")
linkText.Size = UDim2.new(1, 0, 1, 0)
linkText.BackgroundTransparency = 1
linkText.Text = "t.me/RBLX_SCRIPTS_MYANMAR"
linkText.TextColor3 = Color3.fromRGB(0, 102, 255)
linkText.Font = Enum.Font.SourceSansBold
linkText.TextSize = 20
linkText.Parent = whiteFrame

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

-- OK button
local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0, 60, 0, 30)
closeBtn.Position = UDim2.new(1, -70, 1, -40)
closeBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
closeBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
closeBtn.Text = "OK"
closeBtn.Font = Enum.Font.SourceSansBold
closeBtn.TextSize = 16
closeBtn.Parent = mainFrame

local okCorner = Instance.new("UICorner")
okCorner.CornerRadius = UDim.new(0, 6)
okCorner.Parent = closeBtn


--------------------------------
-- SCRIPT 2 (Private Server GUI)
--------------------------------
local function LoadScript2()
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "PrivateServerGUI"
    screenGui.Parent = player:WaitForChild("PlayerGui")

    local background = Instance.new("Frame")
    background.Name = "Background"
    background.Size = UDim2.new(0, 300, 0, 200)
    background.Position = UDim2.new(0.5, -150, 0.5, -100)
    background.BackgroundColor3 = Color3.new(0, 0, 0)
    background.BorderSizePixel = 2
    background.Parent = screenGui

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 8)
    corner.Parent = background

    local titleBar = Instance.new("Frame")
    titleBar.Size = UDim2.new(1, 0, 0, 30)
    titleBar.BackgroundColor3 = Color3.new(0.15, 0.15, 0.15)
    titleBar.Parent = background

    local titleText = Instance.new("TextLabel")
    titleText.Size = UDim2.new(1, -40, 1, 0)
    titleText.Position = UDim2.new(0, 10, 0, 0)
    titleText.BackgroundTransparency = 1
    titleText.Text = "Private Server Creator"
    titleText.TextColor3 = Color3.new(1, 1, 1)
    titleText.Font = Enum.Font.GothamBold
    titleText.TextSize = 14
    titleText.TextXAlignment = Enum.TextXAlignment.Left
    titleText.Parent = titleBar

    local closeButton = Instance.new("TextButton")
    closeButton.Size = UDim2.new(0, 25, 0, 25)
    closeButton.Position = UDim2.new(1, -30, 0, 2)
    closeButton.BackgroundColor3 = Color3.new(0.7, 0.2, 0.2)
    closeButton.Text = "X"
    closeButton.TextColor3 = Color3.new(1, 1, 1)
    closeButton.Font = Enum.Font.GothamBold
    closeButton.TextSize = 14
    closeButton.Parent = titleBar

    closeButton.MouseButton1Click:Connect(function()
        screenGui:Destroy()
    end)

    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0, 200, 0, 50)
    button.Position = UDim2.new(0.5, -100, 0.5, -10)
    button.BackgroundColor3 = Color3.new(0.2, 0.2, 0.6)
    button.Text = "Auto Private Server"
    button.TextColor3 = Color3.new(1, 1, 1)
    button.Font = Enum.Font.GothamBold
    button.TextSize = 18
    button.Parent = background

    button.MouseButton1Click:Connect(function()
        button.Text = "Private Server Created!"
        button.BackgroundColor3 = Color3.new(0, 0.6, 0)
    end)
end


--------------------------------
-- LINK BETWEEN SCRIPT 1 & SCRIPT 2
--------------------------------
closeBtn.MouseButton1Click:Connect(function()
	-- Close Script1 with animation
	mainFrame:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.In, Enum.EasingStyle.Back, 0.5, true)
	task.wait(0.5)
	gui1:Destroy()

	-- Open Script2
	LoadScript2()
end)