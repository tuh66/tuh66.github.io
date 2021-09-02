if game.PlaceId == 5535087806 then
local ui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local line = Instance.new("Frame")
local title = Instance.new("TextLabel")
local line1 = Instance.new("Frame")
local featurebtn = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local feature = Instance.new("Frame")
local text1 = Instance.new("TextLabel")
local autotapbtn = Instance.new("TextButton")
local autorebbtn = Instance.new("TextButton")
local text2 = Instance.new("TextLabel")
local plr = game.Players.LocalPlayer
local mouse = plr:GetMouse()
_G.toggle1 = false
_G.toggle2 = false
_G.ui = false

ui.Name = "ui"
ui.Parent = game.CoreGui
ui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = ui
main.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
main.BorderSizePixel = 0
main.Position = UDim2.new(0.267605633, 0, 0.2577447, 0)
main.Size = UDim2.new(0, 582, 0, 362)
main.Draggable = true
main.Active = true
main.Selectable = true
main.Visible = true

mouse.KeyDown:Connect(function(key)
    if key == "m" then
        if _G.ui == false then
            _G.ui = true
            main.Visible = true
        else
            _G.ui = false
            main.Visible = false
        end
    end
end)

line.Name = "line"
line.Parent = main
line.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
line.BorderSizePixel = 0
line.Position = UDim2.new(0, 0, 0.0718232021, 0)
line.Size = UDim2.new(0, 582, 0, 3)

title.Name = "title"
title.Parent = main
title.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
title.BorderSizePixel = 0
title.Position = UDim2.new(0.0171821304, 0, 0, 0)
title.Size = UDim2.new(0, 171, 0, 26)
title.Font = Enum.Font.SourceSans
title.Text = "HeleHub - Tapping Mania"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 14.000
title.TextXAlignment = Enum.TextXAlignment.Left

feature.Name = "feature"
feature.Parent = main
feature.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
feature.BorderSizePixel = 0
feature.Position = UDim2.new(0.194158077, 0, 0.12983425, 0)
feature.Size = UDim2.new(0, 454, 0, 296)
feature.Visible = false

line1.Name = "line1"
line1.Parent = main
line1.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
line1.BorderSizePixel = 0
line1.Position = UDim2.new(0.161512032, 0, 0.0801104978, 0)
line1.Size = UDim2.new(0, 3, 0, 333)

featurebtn.Name = "featurebtn"
featurebtn.Parent = main
featurebtn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
featurebtn.BorderSizePixel = 0
featurebtn.Position = UDim2.new(0.0171821304, 0, 0.118784532, 0)
featurebtn.Size = UDim2.new(0, 75, 0, 28)
featurebtn.Font = Enum.Font.SourceSans
featurebtn.Text = "Features"
featurebtn.TextColor3 = Color3.fromRGB(255, 255, 255)
featurebtn.TextSize = 18.000
featurebtn.MouseButton1Click:Connect(function()
	if feature.Visible == false then
		feature.Visible = true
    else
        feature.Visible = false
    end
end)

UICorner.Parent = main

text1.Name = "text1"
text1.Parent = feature
text1.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
text1.BackgroundTransparency = 1.000
text1.BorderSizePixel = 0
text1.Position = UDim2.new(0, 0, 0.0168918911, 0)
text1.Size = UDim2.new(0, 144, 0, 39)
text1.Font = Enum.Font.SourceSans
text1.Text = "Auto-Tap: "
text1.TextColor3 = Color3.fromRGB(255, 255, 255)
text1.TextSize = 25.000

autotapbtn.Name = "autotapbtn"
autotapbtn.Parent = feature
autotapbtn.BackgroundColor3 = Color3.fromRGB(255, 0 ,0)
autotapbtn.Position = UDim2.new(0.259911895, 0, 0.0506756753, 0)
autotapbtn.Size = UDim2.new(0, 19, 0, 19)
autotapbtn.Font = Enum.Font.SourceSans
autotapbtn.Text = " "
autotapbtn.TextColor3 = Color3.fromRGB(0, 0, 0)
autotapbtn.TextSize = 14.000
autotapbtn.MouseButton1Click:Connect(function()
	if _G.toggle1 == false then
		_G.toggle1 = true
		autotapbtn.BackgroundColor3 = Color3.fromRGB(50, 255, 19)
	else
		_G.toggle1 = false
		autotapbtn.BackgroundColor3 = Color3.fromRGB(255, 0 ,0)
	end
end)

autorebbtn.Name = "autorebbtn"
autorebbtn.Parent = feature
autorebbtn.BackgroundColor3 = Color3.fromRGB(255, 0 ,0)
autorebbtn.Position = UDim2.new(0.259911895, 0, 0.209459454, 0)
autorebbtn.Size = UDim2.new(0, 19, 0, 19)
autorebbtn.Font = Enum.Font.SourceSans
autorebbtn.Text = " "
autorebbtn.TextColor3 = Color3.fromRGB(0, 0, 0)
autorebbtn.TextSize = 14.000
autorebbtn.MouseButton1Click:Connect(function()
	if _G.toggle2 == false then
		_G.toggle2 = true
		autorebbtn.BackgroundColor3 = Color3.fromRGB(50, 255, 19)
	else
		_G.toggle2 = false
		autorebbtn.BackgroundColor3 = Color3.fromRGB(255, 0 ,0)
	end
end)

text2.Name = "text2"
text2.Parent = feature
text2.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
text2.BackgroundTransparency = 1.000
text2.BorderSizePixel = 0
text2.Position = UDim2.new(0, 0, 0.175675675, 0)
text2.Size = UDim2.new(0, 144, 0, 39)
text2.Font = Enum.Font.SourceSans
text2.Text = "Auto-Reb:"
text2.TextColor3 = Color3.fromRGB(255, 255, 255)
text2.TextSize = 25.000

while true do
	wait()
	if _G.toggle1 == true then
		game:GetService("ReplicatedStorage").RemoteEvents.Click:FireServer()
	end
	if _G.toggle2 == true then
		local args = {
			[1] = 1
		}
		game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))
	end
end
end
