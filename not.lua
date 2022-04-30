local Not = {}
local CoreGui = game:GetService'CoreGui'
local TweenService = game:GetService'TweenService'

for i,v in pairs(CoreGui:GetChildren()) do
	if v.Name == "Notification" then v:Destroy() end
end

function Not.SendNotification(title,description,delay)
local Notification = Instance.new("ScreenGui")
local Motherframe = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local Shadow = Instance.new("ImageLabel")
local Desc = Instance.new("TextLabel")
local check_box = Instance.new("ImageButton")


Notification.Name = "Notification"
Notification.Parent = CoreGui
Notification.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Motherframe.Name = "Motherframe"
Motherframe.Parent = Notification
Motherframe.AnchorPoint = Vector2.new(0.5, 0.5)
Motherframe.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Motherframe.Position = UDim2.new(-0.1, 0,0.962, 0)
Motherframe.Size = UDim2.new(0, 270, 0, 73)

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = Motherframe

Title.Name = "Title"
Title.Parent = Motherframe
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.025925925, 0, 0, 0)
Title.Size = UDim2.new(0, 263, 0, 29)
Title.Font = Enum.Font.GothamSemibold
Title.TextColor3 = Color3.fromRGB(200, 200, 200)
Title.TextSize = 13.000
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Text = tostring(title)


Shadow.Name = "Shadow"
Shadow.Parent = Motherframe
Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Shadow.BackgroundTransparency = 1.000
Shadow.BorderColor3 = Color3.fromRGB(27, 42, 53)
Shadow.Position = UDim2.new(0, -15, 0, -15)
Shadow.Size = UDim2.new(1, 30, 1, 30)
Shadow.Image = "http://www.roblox.com/asset/?id=5554236805"
Shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
Shadow.ScaleType = Enum.ScaleType.Slice
Shadow.SliceCenter = Rect.new(23, 23, 277, 277)

Desc.Name = "Desc"
Desc.Parent = Motherframe
Desc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Desc.BackgroundTransparency = 1.000
Desc.Position = UDim2.new(0.025925925, 0, 0.397260278, 0)
Desc.Size = UDim2.new(0, 183, 0, 42)
Desc.Font = Enum.Font.GothamSemibold
Desc.Text = tostring(description)
Desc.TextColor3 = Color3.fromRGB(150, 150, 150)
Desc.TextSize = 11.000
Desc.TextXAlignment = Enum.TextXAlignment.Left
Desc.TextYAlignment = Enum.TextYAlignment.Top


check_box.Name = "check_box"
check_box.Parent = Motherframe
check_box.BackgroundTransparency = 1.000
check_box.LayoutOrder = 4
check_box.Position = UDim2.new(0.767874777, 0, 0.167689487, 0)
check_box.Size = UDim2.new(0, 53, 0, 47)
check_box.ZIndex = 2
check_box.Image = "rbxassetid://3926311105"
check_box.ImageColor3 = Color3.fromRGB(240, 101, 54)
check_box.ImageRectOffset = Vector2.new(4, 836)
check_box.ImageRectSize = Vector2.new(48, 48)
check_box.ScaleType = Enum.ScaleType.Fit	

local opened,closed = UDim2.new(0.057, 0,0.963, 0),UDim2.new(-0.1, 0,0.962, 0)


local a = TweenService:Create(Motherframe,TweenInfo.new(.25), { Position = opened})
a:Play()
a.Completed:Connect(function(...)
		wait(delay)
         TweenService:Create(Motherframe,TweenInfo.new(.25), { Position = closed}):Play()
        wait(1)
         Notification:Destroy()
end)
check_box.MouseButton1Click:Connect(function()
    TweenService:Create(Motherframe,TweenInfo.new(.25), { Position = closed}):Play()
    wait(1)
    Notification:Destroy()
end) 
end
return Not
