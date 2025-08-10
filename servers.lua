local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "LoadingNotification"
screenGui.Parent = playerGui

local notificationFrame = Instance.new("Frame")
notificationFrame.Size = UDim2.new(0, 280, 0, 70)
notificationFrame.Position = UDim2.new(1, -290, 1, 20)
notificationFrame.BackgroundColor3 = Color3.fromRGB(44, 47, 51)
notificationFrame.BorderSizePixel = 0
notificationFrame.AnchorPoint = Vector2.new(0, 0)
notificationFrame.Parent = screenGui
notificationFrame.BackgroundTransparency = 0.2
notificationFrame.Visible = false

local shadow = Instance.new("UICorner")
shadow.CornerRadius = UDim.new(0, 10)
shadow.Parent = notificationFrame

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, -20, 0, 25)
titleLabel.Position = UDim2.new(0, 10, 0, 5)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "RbxBot Servers"
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextSize = 20
titleLabel.TextColor3 = Color3.fromRGB(100, 149, 237)
titleLabel.TextXAlignment = Enum.TextXAlignment.Left
titleLabel.Parent = notificationFrame

local contentLabel = Instance.new("TextLabel")
contentLabel.Size = UDim2.new(1, -20, 0, 30)
contentLabel.Position = UDim2.new(0, 10, 0, 30)
contentLabel.BackgroundTransparency = 1
contentLabel.Text = "Loading servers, please wait..."
contentLabel.Font = Enum.Font.Gotham
contentLabel.TextSize = 18
contentLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
contentLabel.TextXAlignment = Enum.TextXAlignment.Left
contentLabel.Parent = notificationFrame

local TweenService = game:GetService("TweenService")

local enterTweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local exitTweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.In)

local enterPosition = UDim2.new(1, -290, 1, -90)
local exitPosition = UDim2.new(1, -290, 1, 20)

local function showNotification(time)
	notificationFrame.Position = exitPosition
	notificationFrame.Visible = true
	
	local enterTween = TweenService:Create(notificationFrame, enterTweenInfo, {Position = enterPosition})
	enterTween:Play()
	enterTween.Completed:Wait()
	
	wait(time)
	
	local exitTween = TweenService:Create(notificationFrame, exitTweenInfo, {Position = exitPosition})
	exitTween:Play()
	exitTween.Completed:Wait()
	
	notificationFrame.Visible = false
end

showNotification(4)