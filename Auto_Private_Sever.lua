local Players = game:GetService("Players")
local player = Players.LocalPlayer

local mainGui = Instance.new("ScreenGui", player.PlayerGui)
mainGui.ResetOnSpawn = false

-- 🔹 GLOBAL SHADOW (only one)
local shadow = Instance.new("Frame")
shadow.Size = UDim2.new(1, 40, 1, 40)
shadow.Position = UDim2.new(-0.02, 0, -0.02, 0)
shadow.BackgroundColor3 = Color3.new(0, 0, 0)
shadow.BackgroundTransparency = 0.5
shadow.BorderSizePixel = 0
shadow.Visible = false
shadow.ZIndex = 5
shadow.Parent = mainGui

-- 🔹 FIRST WINDOW
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 0, 0, 0)
mainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
mainFrame.BackgroundColor3 = Color3.new(0, 0, 0)
mainFrame.BackgroundTransparency = 0
mainFrame.BorderSizePixel = 0
mainFrame.ZIndex = 6
mainFrame.Visible = false
mainFrame.Parent = mainGui

-- Title Bar
local titleBar = Instance.new("Frame", mainFrame)
titleBar.Size = UDim2.new(1, 0, 0, 40)
titleBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
titleBar.ZIndex = 7

local titleLabel = Instance.new("TextLabel", titleBar)
titleLabel.Size = UDim2.new(1, 0, 1, 0)
titleLabel.Text = "Main Window"
titleLabel.TextColor3 = Color3.new(1, 1, 1)
titleLabel.BackgroundTransparency = 1
titleLabel.Font = Enum.Font.SourceSansBold
titleLabel.TextSize = 20
titleLabel.ZIndex = 8

-- Content
local content = Instance.new("TextLabel", mainFrame)
content.Size = UDim2.new(1, -20, 1, -60)
content.Position = UDim2.new(0, 10, 0, 50)
content.Text = "This is the first window."
content.TextColor3 = Color3.new(1, 1, 1)
content.BackgroundTransparency = 1
content.Font = Enum.Font.SourceSans
content.TextSize = 18
content.TextWrapped = true
content.ZIndex = 7

-- Button
local openServerButton = Instance.new("TextButton", mainFrame)
openServerButton.Size = UDim2.new(0, 150, 0, 40)
openServerButton.Position = UDim2.new(0.5, -75, 1, -50)
openServerButton.Text = "Open Server Window"
openServerButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
openServerButton.TextColor3 = Color3.new(1, 1, 1)
openServerButton.Font = Enum.Font.SourceSansBold
openServerButton.TextSize = 18
openServerButton.ZIndex = 8

-- 🔹 SECOND WINDOW
local serverFrame = Instance.new("Frame")
serverFrame.Size = UDim2.new(0, 0, 0, 0)
serverFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
serverFrame.AnchorPoint = Vector2.new(0.5, 0.5)
serverFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
serverFrame.BorderSizePixel = 0
serverFrame.ZIndex = 6
serverFrame.Visible = false
serverFrame.Parent = mainGui

local serverTitle = Instance.new("Frame", serverFrame)
serverTitle.Size = UDim2.new(1, 0, 0, 40)
serverTitle.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
serverTitle.ZIndex = 7

local serverLabel = Instance.new("TextLabel", serverTitle)
serverLabel.Size = UDim2.new(1, 0, 1, 0)
serverLabel.Text = "Private Server"
serverLabel.TextColor3 = Color3.new(1, 1, 1)
serverLabel.BackgroundTransparency = 1
serverLabel.Font = Enum.Font.SourceSansBold
serverLabel.TextSize = 20
serverLabel.ZIndex = 8

local serverContent = Instance.new("TextLabel", serverFrame)
serverContent.Size = UDim2.new(1, -20, 1, -60)
serverContent.Position = UDim2.new(0, 10, 0, 50)
serverContent.Text = "Welcome to your Private Server!"
serverContent.TextColor3 = Color3.new(1, 1, 1)
serverContent.BackgroundTransparency = 1
serverContent.Font = Enum.Font.SourceSans
serverContent.TextSize = 18
serverContent.TextWrapped = true
serverContent.ZIndex = 7

local closeButton = Instance.new("TextButton", serverFrame)
closeButton.Size = UDim2.new(0, 100, 0, 40)
closeButton.Position = UDim2.new(0.5, -50, 1, -50)
closeButton.Text = "Close"
closeButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
closeButton.TextColor3 = Color3.new(1, 1, 1)
closeButton.Font = Enum.Font.SourceSansBold
closeButton.TextSize = 18
closeButton.ZIndex = 8

-- 🔹 FUNCTIONS
local TweenService = game:GetService("TweenService")

local function showWindow(frame)
	shadow.Visible = true
	frame.Visible = true
	frame.Size = UDim2.new(0, 10, 0, 10)
	frame.Position = UDim2.new(0.5, -5, 0.5, -5)

	local tween = TweenService:Create(frame, TweenInfo.new(0.3, Enum.EasingStyle.Back), {
		Size = UDim2.new(0, 400, 0, 300),
		Position = UDim2.new(0.5, -200, 0.5, -150)
	})
	tween:Play()
end

local function hideWindow(frame)
	local tween = TweenService:Create(frame, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {
		Size = UDim2.new(0, 0, 0, 0),
		Position = UDim2.new(0.5, 0, 0.5, 0)
	})
	tween:Play()
	tween.Completed:Connect(function()
		frame.Visible = false
		if not mainFrame.Visible and not serverFrame.Visible then
			shadow.Visible = false
		end
	end)
end

-- 🔹 OPEN SEQUENCE
showWindow(mainFrame)

openServerButton.MouseButton1Click:Connect(function()
	hideWindow(mainFrame)
	wait(0.25) -- ensure first closes fully
	showWindow(serverFrame)
end)

closeButton.MouseButton1Click:Connect(function()
	hideWindow(serverFrame)
	wait(0.25)
	showWindow(mainFrame)
end)