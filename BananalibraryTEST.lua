if getgenv().Ziram then 
	if game.CoreGui:FindFirstChild("Ziram Hub GUI") then
		for i, v in ipairs(game.CoreGui:GetChildren()) do
			if string.find(v.Name,  "Ziram Hub") then
				v:Destroy()
			end
		end
	end
end
getgenv().Ziram = true

local DisableAnimation = game.Players.LocalPlayer.PlayerGui:FindFirstChild('TouchGui')

local T1UIColor = {
	["Border Color"] = Color3.fromRGB(255, 255, 255), -- Trắng tinh
	["Click Effect Color"] = Color3.fromRGB(255, 255, 255), -- Trắng tinh
	["Setting Icon Color"] = Color3.fromRGB(255, 255, 255), -- Trắng tinh
	["Logo Image"] = "rbxassetid://123188942340057",
	["Search Icon Color"] = Color3.fromRGB(255, 255, 255),
	["Search Icon Highlight Color"] = Color3.fromRGB(255, 255, 255), -- Trắng tinh
	["GUI Text Color"] = Color3.fromRGB(255, 255, 255), -- Trắng tinh
	["Text Color"] = Color3.fromRGB(255, 255, 255), -- Trắng tinh
	["Placeholder Text Color"] = Color3.fromRGB(178, 178, 178),
	["Title Text Color"] = Color3.fromRGB(255, 255, 255), -- Trắng tinh
	["Background Main Color"] = Color3.fromRGB(43, 43, 43), -- Xám đậm
	["Background 1 Color"] = Color3.fromRGB(30,30,30), -- Xám rất đậm
	["Background 1 Transparency"] = 0.5,
	["Background 2 Color"] = Color3.fromRGB(90, 
 90, 90), -- Xám trung bình
	["Background 3 Color"] = Color3.fromRGB(53, 53, 53), -- Xám đậm hơn
	["Background Image"] = "",
	["Page Selected Color"] = Color3.fromRGB(255, 255, 255), -- Trắng tinh
	["Section Text Color"] = Color3.fromRGB(255, 255, 255), -- Trắng tinh
	["Section Underline Color"] = Color3.fromRGB(255, 255, 255), -- Trắng tinh
	["Toggle Border Color"] = Color3.fromRGB(255, 255, 255), -- Trắng tinh
	["Toggle Checked Color"] = Color3.fromRGB(255, 255, 255), -- Trắng tinh
	["Toggle Desc Color"] = Color3.fromRGB(185, 185, 185),
	["Button Color"] = Color3.fromRGB(255, 255, 255), -- Trắng tinh
	["Label Color"] = Color3.fromRGB(255, 255, 255), -- Trắng tinh
	["Dropdown Icon Color"] = Color3.fromRGB(255, 255, 255), -- Trắng tinh
	["Dropdown Selected Color"] = Color3.fromRGB(255, 255, 255), -- Trắng tinh
	["Dropdown Selected Check Color"] = Color3.fromRGB(255, 255, 255), -- Trắng tinh
	["Textbox Highlight Color"] = Color3.fromRGB(255, 255, 255), -- Trắng tinh
	["Box Highlight Color"] = Color3.fromRGB(255, 255, 255), -- Trắng tinh
	["Slider Line Color"] = Color3.fromRGB(75, 75, 75), -- Xám cho thanh trượt
	["Slider Highlight Color"] = Color3.fromRGB(255, 255, 255), -- Trắng tinh
	["Tween 
 Animation 1 Speed"] = DisableAnimation and 0 or 0.25,
	["Tween Animation 2 Speed"] = DisableAnimation and 0 or 0.5,
	["Tween Animation 3 Speed"] = DisableAnimation and 0 or 0.1,
	["Text Stroke Transparency"] = .5
}
getgenv().UIColor = {
	["Border Color"] = Color3.fromRGB(255, 255, 255), -- Trắng tinh
	["Click Effect Color"] = Color3.fromRGB(255, 255, 255), -- Trắng tinh
	["Setting Icon Color"] = Color3.fromRGB(255, 255, 255), -- Trắng tinh
	["Logo Image"] = "rbxassetid://123188942340057",
	["Search Icon Color"] = Color3.fromRGB(255, 255, 255),
	["Search Icon Highlight Color"] = Color3.fromRGB(255, 255, 255), -- Trắng tinh
	["GUI Text Color"] = Color3.fromRGB(255, 255, 255), -- Trắng tinh
	["Text Color"] = Color3.fromRGB(255, 255, 255), -- Trắng tinh
	["Placeholder Text Color"] = Color3.fromRGB(178, 178, 178),
	["Title Text Color"] = Color3.fromRGB(255, 255, 255), -- Trắng tinh
	["Background Main Color"] = Color3.fromRGB(43, 43, 43),
	["Background 1 Color"] = Color3.fromRGB(30,30,30),
	["Background 1 
 Transparency"] = 0.5,
	["Background 2 Color"] = Color3.fromRGB(90, 90, 90),
	["Background 3 Color"] = Color3.fromRGB(53, 53, 53),
	["Background Image"] = "",
	["Page Selected Color"] = Color3.fromRGB(255, 255, 255), -- Trắng tinh
	["Section Text Color"] = Color3.fromRGB(255, 255, 255), -- Trắng tinh
	["Section Underline Color"] = Color3.fromRGB(255, 255, 255), -- Trắng tinh
	["Toggle Border Color"] = Color3.fromRGB(255, 255, 255), -- Trắng tinh
	["Toggle Checked Color"] = Color3.fromRGB(255, 255, 255), -- Trắng tinh
	["Toggle Desc Color"] = Color3.fromRGB(185, 185, 185),
	["Button Color"] = Color3.fromRGB(255, 255, 255), -- Trắng tinh
	["Label Color"] = Color3.fromRGB(255, 255, 255), -- Trắng tinh
	["Dropdown Icon Color"] = Color3.fromRGB(255, 255, 255), -- Trắng tinh
	["Dropdown Selected Color"] = Color3.fromRGB(255, 255, 255), -- Trắng tinh
	["Dropdown Selected Check Color"] = Color3.fromRGB(255, 255, 255), -- Trắng tinh
	["Textbox Highlight Color"] = Color3.fromRGB(255, 255, 255), -- Trắng tinh
	["Box Highlight Color"] = Color3.fromRGB(255, 255, 255), -- Trắng tinh
	["Slider Line Color"] = Color3.fromRGB(75, 75, 
 75),
	["Slider Highlight Color"] = Color3.fromRGB(255, 255, 255), -- Trắng tinh
	["Tween Animation 1 Speed"] = DisableAnimation and 0 or 0.25,
	["Tween Animation 2 Speed"] = DisableAnimation and 0 or 0.5,
	["Tween Animation 3 Speed"] = DisableAnimation and 0 or 0.1,
	["Text Stroke Transparency"] = .5
}


getgenv().UIToggled = false


local currcolor = {}
local Library = {};
 local Library_Function = {}
local TweenService = game:GetService('TweenService')
local uis = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local function makeDraggable(topBarObject, object)
	local dragging = nil
	local dragInput = nil
	local dragStart = nil
	local startPosition = nil
	topBarObject.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPosition = object.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	topBarObject.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	uis.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			local delta = input.Position - dragStart
			if not djtmemay and cac then
				TweenService:Create(object, TweenInfo.new(DisableAnimation and 0 or 0.35, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
					Position = UDim2.new(startPosition.X.Scale, startPosition.X.Offset + delta.X, startPosition.Y.Scale, startPosition.Y.Offset + delta.Y)
				}):Play()
			elseif not djtmemay and not cac then
				object.Position = UDim2.new(startPosition.X.Scale, startPosition.X.Offset 
 + delta.X, startPosition.Y.Scale, startPosition.Y.Offset + delta.Y)
			end
		end
	end)
end

Library_Function.Gui = Instance.new('ScreenGui')
Library_Function.Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Library_Function.Gui.Name = 'Ziram Hub GUI'
Library_Function.Gui.Enabled = false

getgenv().ReadyForGuiLoaded = false
spawn(function()
	repeat
		task.wait()
	until getgenv().ReadyForGuiLoaded
	if getgenv().UIToggled then
		Library_Function.Gui.Enabled = true
	end
end)


Library_Function.NotiGui = Instance.new('ScreenGui')
Library_Function.NotiGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Library_Function.NotiGui.Name = 'Ziram Hub Notification'

Library_Function.HideGui = Instance.new('ScreenGui')
Library_Function.HideGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Library_Function.HideGui.Name = 'Ziram Hub Btn'


local btnHide = Instance.new('TextButton', Library_Function.HideGui) 
btnHide.BackgroundTransparency = 1
btnHide.Text = ""
btnHide.AnchorPoint = Vector2.new(0, 1)
btnHide.Size = UDim2.new(0, 50, 0, 50)
btnHide.Position = UDim2.new(0, 15, 1, -15)

local btnHideFrame = Instance.new('Frame', btnHide)
btnHideFrame.AnchorPoint = Vector2.new(0, 1)
btnHideFrame.Size = UDim2.new(0, 50, 0, 50)
btnHideFrame.Position = UDim2.new(0, 0, 1, 0)
btnHideFrame.Name = "dut dit"
btnHideFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
btnHideFrame.BackgroundTransparency = getgenv().UIToggled and 0 or .25

local imgHide = Instance.new('ImageLabel', btnHide)
imgHide.AnchorPoint = Vector2.new(0, 0)
imgHide.Image = getgenv().UIColor["Logo 
 Image"]
imgHide.BackgroundTransparency = 1
imgHide.Size = UDim2.new(0, getgenv().UIToggled and (getgenv().T1 and 30 or 40) or (getgenv().T1 and 25 or 30), 0, getgenv().UIToggled and (getgenv().T1 and 30 or 40) or (getgenv().T1 and 25 or 30))
imgHide.AnchorPoint = Vector2.new(.5, .5)
imgHide.Position = UDim2.new(.5, 0, .5, 0)

local UICornerBtnHide = Instance.new("UICorner")
UICornerBtnHide.Parent = btnHideFrame
UICornerBtnHide.CornerRadius = UDim.new(1, 0)

Library.ToggleUI = function()
	getgenv().UIToggled = not getgenv().UIToggled
	local sizeXY = getgenv().UIToggled and (getgenv().T1 and 30 or 40) or (getgenv().T1 and 25 or 30)
	TweenService:Create(imgHide, TweenInfo.new(DisableAnimation and 0 or .25), {
		Size = UDim2.new(0, sizeXY, 0, sizeXY)
	}):Play()
	TweenService:Create(btnHideFrame, TweenInfo.new(DisableAnimation and 0 or .25), {
		BackgroundTransparency = getgenv().UIToggled and 0 or .25
	}):Play()
	if game.CoreGui:FindFirstChild("Ziram Hub GUI") then
		for a, b in ipairs(game.CoreGui:GetChildren()) do
			if 
 b.Name == "Ziram Hub GUI" then
				b.Enabled = getgenv().UIToggled
			end
		end
	end
end

Library.DestroyUI = function()
	if game.CoreGui:FindFirstChild("Ziram Hub GUI") then
		for i, v in ipairs(game.CoreGui:GetChildren()) do
			if string.find(v.Name,  "Ziram Hub") then
				v:Destroy()
			end
		end
	end
end

if true then
	local button = btnHide -- Assuming this is a TextButton or ImageButton
	local UIS = game:GetService("UserInputService")
	
	local dragging = false
	local dragInput, dragStart, startPos
	local holdTime = 0.1 -- Time to hold before dragging is enabled
	local holdStarted = 0
	
	-- Function to update the button's position
	local function update(input)
		local delta = input.Position - dragStart
		button.Position = UDim2.new(
			startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y
		)
	end
	
	-- Function to detect the start of dragging (for both mouse and touch)
	local function onInputBegan(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType 
 == Enum.UserInputType.Touch then
			holdStarted = tick() -- Record the time when holding starts
			dragStart = input.Position
			startPos = button.Position
	
			-- Listen for release to stop dragging
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
					holdStarted = 0 -- Reset the hold timer
				end
			end)
		end
	end
	
	-- Function to detect when dragging stops
	local function onInputEnded(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = false
			holdStarted = 0 -- Reset the hold timer
		end
	end
	
	-- Detect input movement (for both mouse and touch)
	local function onInputChanged(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end
	
	-- Connect the events
	button.InputBegan:Connect(onInputBegan)
	button.InputEnded:Connect(onInputEnded)
	button.InputChanged:Connect(onInputChanged)
	
	-- RenderStepped updates the position while dragging
	RunService.RenderStepped:Connect(function()
		if holdStarted > 0 and (tick() - holdStarted >= holdTime) and not 
 dragging then
			dragging = true
		end
	
		if dragging and dragInput then
			update(dragInput)
		end
	end)
		
end

btnHide.MouseButton1Click:Connect(function() 
	Library.ToggleUI()
end)

local NotiContainer = Instance.new("Frame")
local NotiList = Instance.new("UIListLayout")

NotiContainer.Name = "NotiContainer"
NotiContainer.Parent = Library_Function.NotiGui
NotiContainer.AnchorPoint = Vector2.new(1, 1)
NotiContainer.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
NotiContainer.BackgroundTransparency = 1.000
NotiContainer.Position = UDim2.new(1, -5, 1, -5)
NotiContainer.Size = UDim2.new(0, 350, 1, -10)

NotiList.Name = "NotiList"
NotiList.Parent = NotiContainer
NotiList.SortOrder = Enum.SortOrder.LayoutOrder
NotiList.VerticalAlignment = Enum.VerticalAlignment.Bottom
NotiList.Padding = UDim.new(0, 5)


Library_Function.Gui.Parent = game:GetService('CoreGui')
Library_Function.NotiGui.Parent = game:GetService('CoreGui')
Library_Function.HideGui.Parent = game:GetService('CoreGui')

function Library_Function.Getcolor(color)
	return {
		math.floor(color.r * 255),
		math.floor(color.g * 255),
		math.floor(color.b * 255)
	}
end

local libCreateNoti = function(Setting)
	getgenv().TitleNameNoti = Setting.Title or "";
 local Desc = Setting.Desc; 
	local Timeshow = Setting.ShowTime or 10;
 local NotiFrame = Instance.new("Frame")
	local Noticontainer = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Topnoti = Instance.new("Frame")
	local Ruafimg = Instance.new("ImageLabel")
	local RuafimgCorner = Instance.new("UICorner")
	local TextLabelNoti = Instance.new("TextLabel")
	local CloseContainer = Instance.new("Frame")
	local CloseImage = Instance.new("ImageLabel")
	local TextButton = Instance.new("TextButton")
	local TextLabelNoti2 = Instance.new("TextLabel")

	NotiFrame.Name = "NotiFrame"
	NotiFrame.Parent = NotiContainer
	NotiFrame.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
	NotiFrame.BackgroundTransparency = 1.000
	NotiFrame.ClipsDescendants = true
	NotiFrame.Position = UDim2.new(0, 0, 0, 0)
	NotiFrame.Size = UDim2.new(1, 0, 0, 0)
	NotiFrame.AutomaticSize = Enum.AutomaticSize.Y

	Noticontainer.Name = "Noticontainer"
	Noticontainer.Parent = NotiFrame
	Noticontainer.Position = UDim2.new(1, 0, 0, 0)
	Noticontainer.Size = UDim2.new(1, 0, 1, 6)
	Noticontainer.AutomaticSize = Enum.AutomaticSize.Y
	Noticontainer.BackgroundColor3 = getgenv().UIColor["Background 3 Color"]
	UICorner.CornerRadius = UDim.new(0, 4)
	UICorner.Parent = Noticontainer

	Topnoti.Name = "Topnoti"
	Topnoti.Parent = Noticontainer
	Topnoti.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
	Topnoti.BackgroundTransparency = 1.000
	Topnoti.Position = UDim2.new(0, 0, 0, 5)
	Topnoti.Size = UDim2.new(1, 
 0, 0, 25)

	Ruafimg.Name = "Ruafimg"
	Ruafimg.Parent = Topnoti
	Ruafimg.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
	Ruafimg.BackgroundTransparency = 1.000
	Ruafimg.Position = UDim2.new(0, 5, 0, getgenv().T1 and 5 or 0)
	Ruafimg.Size = UDim2.new(0, getgenv().T1 and 30 or 25, 0, getgenv().T1 and 15 or 25)
	Ruafimg.Image = getgenv().UIColor["Logo Image"]

	RuafimgCorner.CornerRadius = UDim.new(1, 0)
	RuafimgCorner.Name = "RuafimgCorner"
	RuafimgCorner.Parent = Ruafimg
	
	local colorR = tostring(Library_Function.Getcolor(getgenv().UIColor['Title Text Color'])[1])
	local colorG = tostring(Library_Function.Getcolor(getgenv().UIColor['Title Text Color'])[2])
	local colorB = tostring(Library_Function.Getcolor(getgenv().UIColor['Title Text Color'])[3])
	local color = colorR .. ',' .. colorG .. ',' .. colorB
	TextLabelNoti.Text = "<font color=\"rgb(" .. color .. ")\">Ziram Hub</font> " .. getgenv().TitleNameNoti -- Đã đổi tên
	
	TextLabelNoti.Name = "TextLabelNoti"
	TextLabelNoti.Parent = Topnoti
	TextLabelNoti.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
	TextLabelNoti.BackgroundTransparency = 1.000
	TextLabelNoti.Position = UDim2.new(0, getgenv().T1 and 40 or 35, 0, 
 0)
	TextLabelNoti.Size = UDim2.new(1, getgenv().T1 and -40 or -35, 1, 0)
	TextLabelNoti.Font = Enum.Font.GothamBold
	TextLabelNoti.TextSize = 14.000
	TextLabelNoti.TextWrapped = true
	TextLabelNoti.TextXAlignment = Enum.TextXAlignment.Left
	TextLabelNoti.RichText = true
	TextLabelNoti.TextColor3 = getgenv().UIColor["GUI Text Color"] -- Trắng tinh

	CloseContainer.Name = "CloseContainer"
	CloseContainer.Parent = Topnoti
	CloseContainer.AnchorPoint = Vector2.new(1, 0.5)
	CloseContainer.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
	CloseContainer.BackgroundTransparency = 1.000
	CloseContainer.Position = UDim2.new(1, -4, 0.5, 0)
	CloseContainer.Size = UDim2.new(0, 22, 0, 22)

	CloseImage.Name = "CloseImage"
	CloseImage.Parent = CloseContainer
	CloseImage.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
	CloseImage.BackgroundTransparency = 1.000
	CloseImage.Size = UDim2.new(1, 0, 1, 0)
	CloseImage.Image = "rbxassetid://3926305904"
	CloseImage.ImageRectOffset = Vector2.new(284, 4)
	CloseImage.ImageRectSize = Vector2.new(24, 24)
	CloseImage.ImageColor3 = getgenv().UIColor["Search Icon Color"] -- Trắng tinh

	TextButton.Parent = CloseContainer
	TextButton.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
	TextButton.BackgroundTransparency = 1.000
	TextButton.Size = UDim2.new(1, 0, 1, 0)
	TextButton.Font = Enum.Font.SourceSans
	TextButton.Text = ""
	TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextButton.TextSize = 14.000

	if Desc then
		TextLabelNoti2.Name = 
 'TextColor'
		TextLabelNoti2.Parent = Noticontainer
		TextLabelNoti2.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
		TextLabelNoti2.BackgroundTransparency = 1.000
		TextLabelNoti2.Position = UDim2.new(0, 10, 0, 35)
		TextLabelNoti2.Size = UDim2.new(1, -15, 0, 0)
		TextLabelNoti2.Font = Enum.Font.GothamBold
		TextLabelNoti2.Text = Desc
		TextLabelNoti2.TextSize = 14.000
		TextLabelNoti2.TextXAlignment = Enum.TextXAlignment.Left
		TextLabelNoti2.RichText = true
		TextLabelNoti2.TextColor3 = getgenv().UIColor["Text Color"] -- Trắng tinh
		TextLabelNoti2.AutomaticSize = Enum.AutomaticSize.Y
		TextLabelNoti2.TextWrapped = true
	end

	local function remove()
		TweenService:Create(Noticontainer, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {
			Position = UDim2.new(1, 0, 0, 0)
		}):Play()
		wait(.25)
		NotiFrame:Destroy()
	end

	TweenService:Create(Noticontainer, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {
		Position = UDim2.new(0, 0, 0, 0)
	}):Play()

	TextButton.MouseEnter:Connect(function()
		TweenService:Create(CloseImage, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {
			ImageColor3 = getgenv().UIColor["Search Icon Highlight Color"] -- Trắng tinh
		}):Play()
	end)

	TextButton.MouseLeave:Connect(function()
		TweenService:Create(CloseImage, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {
			ImageColor3 = getgenv().UIColor["Search Icon Color"] -- Trắng tinh
		}):Play()
	end)

	TextButton.MouseButton1Click:Connect(function()
		wait(.25)
		remove()
	end)

	spawn(function()
		wait(Timeshow)
		remove()
	end)

end

function Library:Notify(Setting, bypass)
	if not getgenv().Config or bypass then
		local s, e = pcall(function()
			libCreateNoti(Setting)
		end)
		if e then
			print(e)
		end
	end
end

function Library:CreateWindow(Setting)

	local TitleNameMain =  "Blox Fruit"
	getgenv().MainDesc = Setting.Desc or ""

	local 
 djtmemay = false
	cac = false

	local Main = Instance.new("Frame")
	local maingui = Instance.new("ImageLabel")
	local MainCorner = Instance.new("UICorner")
	local TopMain = Instance.new("Frame")
	local Ruafimg = Instance.new("ImageLabel")
	local TextLabelMain = Instance.new("TextLabel")
	local PageControl = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local ControlList = Instance.new("ScrollingFrame")
	local UIListLayout = Instance.new("UIListLayout")
	local ControlTitle = Instance.new("TextLabel")
	local MainPage = Instance.new("Frame")
	local UIPage = Instance.new("UIPageLayout")
	local Concacontainer = Instance.new("Frame")
	local Concacmain = Instance.new("Frame")
	local MainContainer

	Main.Name = "Main"
	Main.Parent = Library_Function.Gui
	Main.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
	Main.BackgroundTransparency = 1.000
	Main.Position = UDim2.new(0.5, 0, 0.5, 0)
	Main.AnchorPoint = Vector2.new(0.5, 0.5)
	Main.Size = UDim2.new(0, 629, 0, 359)

	makeDraggable(Main, Main)

	maingui.Name = "maingui"
	maingui.Parent = Main
	maingui.AnchorPoint = Vector2.new(0.5, 0.5)
	maingui.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
	maingui.BackgroundTransparency = 1.000
	maingui.Position = UDim2.new(0.5, 0, 0.5, 0)
	maingui.Selectable = true
	maingui.Size = UDim2.new(1, 30, 1, 30)
	maingui.Image 
 = "rbxassetid://8068653048"
	maingui.ScaleType = Enum.ScaleType.Slice
	maingui.SliceCenter = Rect.new(15, 15, 175, 175)
	maingui.SliceScale = 1.300
	maingui.ImageColor3 = getgenv().UIColor["Border Color"] -- Trắng tinh
	maingui.ImageTransparency = 1

	maingui.ImageColor3 = getgenv().UIColor['Title Text Color'] -- Trắng tinh
	local colorR = tostring(Library_Function.Getcolor(getgenv().UIColor['Title Text Color'])[1])
	local colorG = tostring(Library_Function.Getcolor(getgenv().UIColor['Title Text Color'])[2])
	local colorB = tostring(Library_Function.Getcolor(getgenv().UIColor['Title Text Color'])[3])
	local color = colorR .. ',' .. colorG .. ',' .. colorB
	TextLabelMain.Text = "<font color=\"rgb(" .. color .. ")\">@noguchi.hyuga</font> " .. getgenv().MainDesc or " - Blox Fruit"

	MainContainer = Instance.new("ImageLabel")
	MainContainer.Name = "MainContainer"
	MainContainer.Parent = Main
	MainContainer.BackgroundColor3 = getgenv().UIColor['Background Main Color']
	MainContainer.Size = UDim2.new(1, 0, 1, 0)
	MainContainer.BackgroundTransparency = 1
	MainContainer.Image = "rbxassetid://8387197183"
	MainContainer.ImageTransparency = 0.5
	-- MainContainer
	local uistr = Instance.new("UIStroke", MainContainer);
 uistr["Thickness"] = 2;
	uistr["Color"] = Color3.fromRGB(0, 0, 0);
	getgenv().ReadyForGuiLoaded = true
	
	MainCorner.CornerRadius = UDim.new(0, 4)
	MainCorner.Name = "MainCorner"
	MainCorner.Parent = MainContainer

	Concacontainer.Name = "Concacontainer"
	Concacontainer.Parent = MainContainer
	Concacontainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Concacontainer.BackgroundTransparency = 1.000
	Concacontainer.ClipsDescendants = true
	Concacontainer.Position = UDim2.new(0, 0, 0, 30)
	Concacontainer.Size = UDim2.new(1, 0, 1, -30)
	
	Concacmain.Name = "Concacmain"
	Concacmain.Parent = Concacontainer
	Concacmain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Concacmain.BackgroundTransparency = 1.000
	Concacmain.Selectable = true
	Concacmain.Size = UDim2.new(1, 0, 1, 0)
	
	TopMain.Name = "TopMain"
	TopMain.Parent = MainContainer
	TopMain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TopMain.BackgroundTransparency = 1.000
	TopMain.Size = UDim2.new(1, 0, 0, 25)
	
	Ruafimg.Name = "Ruafimg"
	Ruafimg.Parent = TopMain
	Ruafimg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Ruafimg.BackgroundTransparency = 1.000
	Ruafimg.Position = UDim2.new(0, 5, 0, getgenv().T1 and 5 or 0)
	Ruafimg.Size = UDim2.new(0, getgenv().T1 and 30 or 25, 0, getgenv().T1 
 and 15 or 25)
	Ruafimg.Image = getgenv().UIColor["Logo Image"]

	
	TextLabelMain.Name = "TextLabelMain"
	TextLabelMain.Parent = TopMain
	TextLabelMain.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
	TextLabelMain.BackgroundTransparency = 1.000
	TextLabelMain.Position = UDim2.new(0, getgenv().T1 and 40 or 35, 0, 0)
	TextLabelMain.Size = UDim2.new(1, getgenv().T1 and -40 or -35, 1, 0)
	TextLabelMain.Font = Enum.Font.GothamBold
	TextLabelMain.RichText = true
	TextLabelMain.TextSize = 16.000
	TextLabelMain.TextWrapped = true
	TextLabelMain.TextXAlignment = Enum.TextXAlignment.Left
	TextLabelMain.TextColor3 = getgenv().UIColor["GUI Text Color"] -- Trắng tinh

	local colorR = tostring(Library_Function.Getcolor(getgenv().UIColor['Title Text Color'])[1])
	local colorG = tostring(Library_Function.Getcolor(getgenv().UIColor['Title Text Color'])[2])
	local colorB = tostring(Library_Function.Getcolor(getgenv().UIColor['Title Text Color'])[3])
	local color = colorR .. ',' .. colorG .. ',' .. colorB
	TextLabelMain.Text = "<font color=\"rgb(" .. color .. ")\">Ziram Hub</font> " .. getgenv().MainDesc -- Đã đổi tên

	PageControl.Name = "Background1"
	PageControl.Parent = Concacmain
	PageControl.Position = UDim2.new(0, 5, 0, 0)
	PageControl.Size = UDim2.new(0, 180, 0, 325)
	PageControl.BackgroundTransparency 
 = getgenv().UIColor["Background 1 Transparency"]
	PageControl.BackgroundColor3 = getgenv().UIColor["Background 1 Color"] -- Xám rất đậm
	

	UICorner.CornerRadius = UDim.new(0, 4)
	UICorner.Parent = PageControl

	ControlList.Name = "ControlList"
	ControlList.Parent = PageControl
	ControlList.Active = true
	ControlList.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
	ControlList.BackgroundTransparency = 1.000
	ControlList.BorderColor3 = Color3.fromRGB(27, 42, 53)
	ControlList.BorderSizePixel = 0
	ControlList.Position = UDim2.new(0, 0, 0, 30)
	ControlList.Size = UDim2.new(1, -5, 1, -30)
	ControlList.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
	ControlList.CanvasSize = UDim2.new(0, 0, 0, 0)
	ControlList.ScrollBarThickness = 5
	ControlList.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"

	UIListLayout.Parent = ControlList
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 5)

	ControlTitle.Name = "GUITextColor"
	ControlTitle.Parent = PageControl
	ControlTitle.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
	ControlTitle.BackgroundTransparency = 1.000
	ControlTitle.Position = UDim2.new(0, 5, 0, 0)
	ControlTitle.Size = UDim2.new(1, 0, 0, 25)
	ControlTitle.Font = Enum.Font.GothamBold
	ControlTitle.Text = TitleNameMain
	ControlTitle.TextSize = 14.000
	ControlTitle.TextXAlignment = Enum.TextXAlignment.Left
	ControlTitle.TextColor3 = getgenv().UIColor["GUI Text Color"] -- Trắng tinh

	MainPage.Name = "MainPage"
	MainPage.Parent = Concacmain
	MainPage.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
	MainPage.BackgroundColor3 = getgenv().UIColor["Background 2 Color"] -- Xám trung bình
	MainPage.BackgroundTransparency = 0.5
	MainPage.ClipsDescendants = true
	MainPage.Position = UDim2.new(0, 190, 0, 0)
	MainPage.Size = UDim2.new(0, 435, 0, 325)

	UIPage.Name = "UIPage"
	UIPage.Parent = MainPage
	UIPage.FillDirection = Enum.FillDirection.Vertical
	UIPage.SortOrder = Enum.SortOrder.LayoutOrder
	UIPage.EasingDirection = Enum.EasingDirection.InOut
	UIPage.EasingStyle = Enum.EasingStyle.Quart
	UIPage.Padding = UDim.new(0, 10)
	UIPage.TweenTime = getgenv().UIColor["Tween Animation 1 Speed"]

	UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
		ControlList.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y + 5)
	end)

	local Main_Function = {}

	local LayoutOrderBut = -1
	local LayoutOrder = -1
	local PageCounter = 1

	function Main_Function:AddTab(PageName)

		local Page_Name = tostring(PageName)
		local Page_Title = Page_Name

		LayoutOrder = LayoutOrder + 1
		LayoutOrderBut = LayoutOrderBut + 1

		--Control 
		local PageName = Instance.new("Frame")
		local Frame = Instance.new("Frame")
		local TabNameCorner = Instance.new("UICorner")
		local Line = Instance.new("Frame")
		local InLine = Instance.new("Frame")
		local LineCorner = Instance.new("UICorner")
		local TabTitleContainer = Instance.new("Frame")
		local TabTitle = Instance.new("TextLabel")
		local PageButton = Instance.new("TextButton")


		PageName.Name = Page_Name .. "_Control"
		PageName.Parent = 
 ControlList
		PageName.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
		PageName.BackgroundTransparency = 1.000
		PageName.Size = UDim2.new(1, -10, 0, 25)
		PageName.LayoutOrder = LayoutOrderBut

		Frame.Parent = PageName
		Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Frame.BackgroundTransparency = 1.000 -- Đặt trong suốt
		Frame.Size = UDim2.new(1, 0, 1, 0)

		TabNameCorner.CornerRadius = UDim.new(0, 4)
		TabNameCorner.Name = "TabNameCorner"
		TabNameCorner.Parent = Frame

		Line.Name = "Line"
		Line.Parent = PageName
		Line.BackgroundColor3 = getgenv().UIColor["Border Color"] -- Trắng tinh
		Line.Position = UDim2.new(0, 0, 0, 0)
		Line.Size = UDim2.new(0, 0, 1, 0)
		Line.AnchorPoint = Vector2.new(0, 0)
		Line.BackgroundTransparency = 1.000

		InLine.Name = "InLine"
		InLine.Parent = Line
		InLine.BackgroundColor3 = getgenv().UIColor["Section Underline Color"] -- Trắng tinh
		InLine.Position = UDim2.new(0, 0, 0, 0)
		InLine.Size = UDim2.new(1, 0, 1, 0)

		LineCorner.CornerRadius = UDim.new(0, 4)
		LineCorner.Name = "LineCorner"
		LineCorner.Parent = Line

		TabTitleContainer.Name = "TabTitleContainer"
		TabTitleContainer.Parent = PageName
		TabTitleContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabTitleContainer.BackgroundTransparency = 1.000
		TabTitleContainer.Size = UDim2.new(1, 0, 1, 0)

		TabTitle.Name = "TabTitle"
		TabTitle.Parent = TabTitleContainer
		TabTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabTitle.BackgroundTransparency = 1.000
		TabTitle.Position = UDim2.new(0, 15, 0.5, 0)
		TabTitle.AnchorPoint = Vector2.new(0, 0.5)
		TabTitle.Size = UDim2.new(1, -15, 1, 0)
		TabTitle.Font = Enum.Font.GothamBold
		TabTitle.Text = Page_Title
		TabTitle.TextSize = 14.000
		TabTitle.TextXAlignment = Enum.TextXAlignment.Left
		TabTitle.TextColor3 = getgenv().UIColor["GUI Text Color"] -- Trắng tinh

		PageButton.Name = "PageButton"
		PageButton.Parent = PageName
		PageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		PageButton.BackgroundTransparency = 1.000
		PageButton.Size = UDim2.new(1, 0, 1, 0)
		PageButton.Font = Enum.Font.SourceSans
		PageButton.Text = ""
		PageButton.TextColor3 = Color3.fromRGB(0, 0, 0)
		PageButton.TextSize = 14.000
		
		-- Tab Page (the content area)
		local TabPage = Instance.new("ScrollingFrame")
		TabPage.Name = Page_Name
		TabPage.Parent = MainPage
		TabPage.BackgroundColor3 = getgenv().UIColor["Background 2 Color"] -- Xám trung bình
		TabPage.BackgroundTransparency = 0.5
		TabPage.Size = UDim2.new(1, 0, 1, 0)
		TabPage.CanvasSize = UDim2.new(0, 0, 0, 0)
		TabPage.ScrollBarThickness = 5
		TabPage.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TabPage.BorderSizePixel = 0
		TabPage.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
		TabPage.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
		
		local TabCorner = Instance.new("UICorner")
		TabCorner.CornerRadius = UDim.new(0, 4)
		TabCorner.Parent = TabPage

		local TabList = Instance.new("UIListLayout")
		TabList.Parent = TabPage
		TabList.SortOrder = Enum.SortOrder.LayoutOrder
		TabList.Padding = UDim.new(0, 5)

		TabPage:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
			TabPage.CanvasSize = UDim2.new(0, 0, 0, TabList.AbsoluteContentSize.Y + 10)
		end)
		
		PageCounter = PageCounter + 1

		local CurrentPage = PageCounter
		
		PageButton.MouseEnter:Connect(function()
			if not PageButton.Selected then
				TweenService:Create(TabTitle, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {
					TextColor3 = getgenv().UIColor["Search Icon Highlight Color"] -- Trắng tinh
				}):Play()
			end
			TweenService:Create(Frame, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {
				BackgroundTransparency = .9
			}):Play()
		end)
		
		PageButton.MouseLeave:Connect(function()
			if not PageButton.Selected then
				TweenService:Create(TabTitle, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {
					TextColor3 = getgenv().UIColor["GUI Text Color"] -- Trắng tinh
				}):Play()
			end
			TweenService:Create(Frame, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {
				BackgroundTransparency = 1
			}):Play()
		end)
		
		PageButton.MouseButton1Click:Connect(function()
			if MainPage:FindFirstChild(Page_Name) then
				UIPage:JumpTo(MainPage:FindFirstChild(Page_Name))
			end
		end)
		
		UIPage.Changed:Connect(function(Property)
			if Property == "CurrentPage" then
				if UIPage.CurrentPage.Name == Page_Name then
					TabTitle.TextColor3 = getgenv().UIColor["Page Selected Color"] -- Trắng tinh
					PageButton.Selected = true
					TweenService:Create(Line, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {
						Size = UDim2.new(1, 0, 1, 0)
					}):Play()
				else
					TabTitle.TextColor3 = getgenv().UIColor["GUI Text Color"] -- Trắng tinh
					PageButton.Selected = false
					TweenService:Create(Line, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {
						Size = UDim2.new(0, 0, 1, 0)
					}):Play()
				end
			end
		end)

		local Tab_Function = {}
		
		local SectionCounter = 0

		function Tab_Function:AddSection(SectionName)
			SectionCounter = SectionCounter + 1
			local Section = Instance.new("Frame")
			local UICorner_Section = Instance.new("UICorner")
			local SectionTitle = Instance.new("TextLabel")
			local SectionLine = Instance.new("Frame")
			local UIListLayout_Section = Instance.new("UIListLayout")

			Section.Name = SectionName .. "_Section"
			Section.Parent = TabPage
			Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Section.BackgroundTransparency = 1.000
			Section.Size = UDim2.new(1, -10, 0, 0)
			Section.AutomaticSize = Enum.AutomaticSize.Y
			Section.LayoutOrder = SectionCounter

			UICorner_Section.CornerRadius = UDim.new(0, 4)
			UICorner_Section.Name = "UICorner_Section"
			UICorner_Section.Parent = Section

			SectionTitle.Name = "SectionTitle"
			SectionTitle.Parent = Section
			SectionTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SectionTitle.BackgroundTransparency = 1.000
			SectionTitle.Position = UDim2.new(0, 5, 0, 5)
			SectionTitle.Size = UDim2.new(1, -10, 0, 15)
			SectionTitle.Font = Enum.Font.GothamBold
			SectionTitle.Text = SectionName
			SectionTitle.TextSize = 13.000
			SectionTitle.TextXAlignment = Enum.TextXAlignment.Left
			SectionTitle.TextColor3 = getgenv().UIColor["Section Text Color"] -- Trắng tinh

			SectionLine.Name = "SectionLine"
			SectionLine.Parent = Section
			SectionLine.BackgroundColor3 = getgenv().UIColor["Section Underline Color"] -- Trắng tinh
			SectionLine.Position = UDim2.new(0, 5, 0, 25)
			SectionLine.Size = UDim2.new(1, -10, 0, 1)

			UIListLayout_Section.Parent = Section
			UIListLayout_Section.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout_Section.Padding = UDim.new(0, 5)
			UIListLayout_Section.FillDirection = Enum.FillDirection.Vertical
			UIListLayout_Section.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout_Section.VerticalAlignment = Enum.VerticalAlignment.Top

			local Section_Function = {}
			local ItemCounter = 0
			
			function Section_Function:AddToggle(Setting)
				ItemCounter = ItemCounter + 1

				local Toggle = Instance.new("Frame")
				local UICorner_Toggle = Instance.new("UICorner")
				local ToggleButton = Instance.new("TextButton")
				local ToggleFrame = Instance.new("Frame")
				local ToggleLine = Instance.new("Frame")
				local ToggleCircle = Instance.new("Frame")
				local ToggleTitle = Instance.new("TextLabel")
				local ToggleDesc = Instance.new("TextLabel")
				local UIListLayout_Toggle = Instance.new("UIListLayout")

				Toggle.Name = Setting.Name .. "_Toggle"
				Toggle.Parent = Section
				Toggle.BackgroundColor3 = getgenv().UIColor["Background 3 Color"] -- Xám đậm hơn
				Toggle.BackgroundTransparency = 0
				Toggle.Size = UDim2.new(1, 0, 0, 35)
				Toggle.LayoutOrder = ItemCounter

				UICorner_Toggle.CornerRadius = UDim.new(0, 4)
				UICorner_Toggle.Name = "UICorner_Toggle"
				UICorner_Toggle.Parent = Toggle

				ToggleButton.Name = "ToggleButton"
				ToggleButton.Parent = Toggle
				ToggleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ToggleButton.BackgroundTransparency = 1.000
				ToggleButton.Size = UDim2.new(1, 0, 1, 0)
				ToggleButton.Font = Enum.Font.SourceSans
				ToggleButton.Text = ""
				ToggleButton.TextColor3 = Color3.fromRGB(0, 0, 0)
				ToggleButton.TextSize = 14.000

				ToggleFrame.Name = "ToggleFrame"
				ToggleFrame.Parent = Toggle
				ToggleFrame.AnchorPoint = Vector2.new(1, 0.5)
				ToggleFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ToggleFrame.BackgroundTransparency = 1.000
				ToggleFrame.Position = UDim2.new(1, -5, 0.5, 0)
				ToggleFrame.Size = UDim2.new(0, 30, 0, 15)

				ToggleLine.Name = "ToggleLine"
				ToggleLine.Parent = ToggleFrame
				ToggleLine.AnchorPoint = Vector2.new(0.5, 0.5)
				ToggleLine.BackgroundColor3 = getgenv().UIColor["Toggle Border Color"] -- Trắng tinh
				ToggleLine.Position = UDim2.new(0.5, 0, 0.5, 0)
				ToggleLine.Size = UDim2.new(1, 0, 0, 1)

				ToggleCircle.Name = "ToggleCircle"
				ToggleCircle.Parent = ToggleFrame
				ToggleCircle.BackgroundColor3 = getgenv().UIColor["Toggle Border Color"] -- Trắng tinh
				ToggleCircle.Position = UDim2.new(0, 0, 0.5, 0)
				ToggleCircle.AnchorPoint = Vector2.new(0, 0.5)
				ToggleCircle.Size = UDim2.new(0, 10, 0, 10)
				
				local UICorner_Circle = Instance.new("UICorner")
				UICorner_Circle.CornerRadius = UDim.new(1, 0)
				UICorner_Circle.Parent = ToggleCircle
				
				local ToggleTitleText = Setting.Name
				local ToggleDescText = Setting.Desc or ""

				ToggleTitle.Name = "ToggleTitle"
				ToggleTitle.Parent = Toggle
				ToggleTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ToggleTitle.BackgroundTransparency = 1.000
				ToggleTitle.Position = UDim2.new(0, 5, 0, 0)
				ToggleTitle.Size = UDim2.new(1, -40, 1, 0)
				ToggleTitle.Font = Enum.Font.GothamBold
				ToggleTitle.Text = ToggleTitleText
				ToggleTitle.TextSize = 13.000
				ToggleTitle.TextXAlignment = Enum.TextXAlignment.Left
				ToggleTitle.TextColor3 = getgenv().UIColor["Text Color"] -- Trắng tinh
				
				if Setting.Default then
					ToggleCircle.BackgroundColor3 = getgenv().UIColor["Toggle Checked Color"] -- Trắng tinh
					ToggleCircle.Position = UDim2.new(1, -10, 0.5, 0)
					ToggleLine.BackgroundColor3 = getgenv().UIColor["Toggle Checked Color"]
				end
				
				local Toggle_Function = {}
				
				local isChecked = Setting.Default or false
				
				local function UpdateToggleState(state)
					if state then
						TweenService:Create(ToggleCircle, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {
							Position = UDim2.new(1, -10, 0.5, 0),
							BackgroundColor3 = getgenv().UIColor["Toggle Checked Color"] -- Trắng tinh
						}):Play()
						TweenService:Create(ToggleLine, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {
							BackgroundColor3 = getgenv().UIColor["Toggle Checked Color"] -- Trắng tinh
						}):Play()
						if Setting.Callback then
							pcall(Setting.Callback, true)
						end
					else
						TweenService:Create(ToggleCircle, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {
							Position = UDim2.new(0, 0, 0.5, 0),
							BackgroundColor3 = getgenv().UIColor["Toggle Border Color"] -- Trắng tinh
						}):Play()
						TweenService:Create(ToggleLine, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {
							BackgroundColor3 = getgenv().UIColor["Toggle Border Color"] -- Trắng tinh
						}):Play()
						if Setting.Callback then
							pcall(Setting.Callback, false)
						end
					end
					isChecked = state
				end
				
				ToggleButton.MouseButton1Click:Connect(function()
					UpdateToggleState(not isChecked)
				end)

				function Toggle_Function.SetValue(state)
					UpdateToggleState(state)
				end
				
				function Toggle_Function.GetValue()
					return isChecked
				end

				return Toggle_Function
			end

			function Section_Function:AddButton(Setting)
				ItemCounter = ItemCounter + 1
				
				local Button = Instance.new("Frame")
				local UICorner_Button = Instance.new("UICorner")
				local ButtonText = Instance.new("TextLabel")
				local ClickButton = Instance.new("TextButton")
				
				Button.Name = Setting.Name .. "_Button"
				Button.Parent = Section
				Button.BackgroundColor3 = getgenv().UIColor["Background 3 Color"] -- Xám đậm hơn
				Button.Size = UDim2.new(1, 0, 0, 25)
				Button.LayoutOrder = ItemCounter
				
				UICorner_Button.CornerRadius = UDim.new(0, 4)
				UICorner_Button.Name = "UICorner_Button"
				UICorner_Button.Parent = Button
				
				ButtonText.Name = "ButtonText"
				ButtonText.Parent = Button
				ButtonText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ButtonText.BackgroundTransparency = 1.000
				ButtonText.Position = UDim2.new(0, 5, 0, 0)
				ButtonText.Size = UDim2.new(1, -10, 1, 0)
				ButtonText.Font = Enum.Font.GothamBold
				ButtonText.Text = Setting.Name
				ButtonText.TextSize = 13.000
				ButtonText.TextXAlignment = Enum.TextXAlignment.Center
				ButtonText.TextColor3 = getgenv().UIColor["Button Color"] -- Trắng tinh
				
				ClickButton.Name = "ClickButton"
				ClickButton.Parent = Button
				ClickButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ClickButton.BackgroundTransparency = 1.000
				ClickButton.Size = UDim2.new(1, 0, 1, 0)
				ClickButton.Font = Enum.Font.SourceSans
				ClickButton.Text = ""
				ClickButton.TextColor3 = Color3.fromRGB(0, 0, 0)
				ClickButton.TextSize = 14.000
				
				ClickButton.MouseButton1Click:Connect(function()
					if Setting.Callback then
						pcall(Setting.Callback)
					end
				end)

				return {}
			end
			
			function Section_Function:AddDropdown(Setting)
				ItemCounter = ItemCounter + 1
				
				local Dropdown = Instance.new("Frame")
				local UICorner_Dropdown = Instance.new("UICorner")
				local DropdownButton = Instance.new("TextButton")
				local DropdownTitle = Instance.new("TextLabel")
				local DropdownIcon = Instance.new("ImageLabel")
				local SelectionFrame = Instance.new("Frame")
				local SelectionList = Instance.new("UIListLayout")
				
				Dropdown.Name = Setting.Name .. "_Dropdown"
				Dropdown.Parent = Section
				Dropdown.BackgroundColor3 = getgenv().UIColor["Background 3 Color"] -- Xám đậm hơn
				Dropdown.Size = UDim2.new(1, 0, 0, 35)
				Dropdown.LayoutOrder = ItemCounter
				Dropdown.ClipsDescendants = true
				
				UICorner_Dropdown.CornerRadius = UDim.new(0, 4)
				UICorner_Dropdown.Name = "UICorner_Dropdown"
				UICorner_Dropdown.Parent = Dropdown

				DropdownButton.Name = "DropdownButton"
				DropdownButton.Parent = Dropdown
				DropdownButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DropdownButton.BackgroundTransparency = 1.000
				DropdownButton.Size = UDim2.new(1, 0, 0, 35)
				DropdownButton.Font = Enum.Font.SourceSans
				DropdownButton.Text = ""
				DropdownButton.TextColor3 = Color3.fromRGB(0, 0, 0)
				DropdownButton.TextSize = 14.000

				DropdownTitle.Name = "DropdownTitle"
				DropdownTitle.Parent = DropdownButton
				DropdownTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DropdownTitle.BackgroundTransparency = 1.000
				DropdownTitle.Position = UDim2.new(0, 5, 0, 0)
				DropdownTitle.Size = UDim2.new(1, -40, 1, 0)
				DropdownTitle.Font = Enum.Font.GothamBold
				DropdownTitle.Text = Setting.Name .. ": " .. (Setting.Default or Setting.Options[1])
				DropdownTitle.TextSize = 13.000
				DropdownTitle.TextXAlignment = Enum.TextXAlignment.Left
				DropdownTitle.TextColor3 = getgenv().UIColor["Text Color"] -- Trắng tinh
				
				DropdownIcon.Name = "DropdownIcon"
				DropdownIcon.Parent = DropdownButton
				DropdownIcon.AnchorPoint = Vector2.new(1, 0.5)
				DropdownIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DropdownIcon.BackgroundTransparency = 1.000
				DropdownIcon.Position = UDim2.new(1, -5, 0.5, 0)
				DropdownIcon.Size = UDim2.new(0, 20, 0, 20)
				DropdownIcon.Image = "rbxassetid://3926305904"
				DropdownIcon.ImageRectOffset = Vector2.new(4, 308)
				DropdownIcon.ImageRectSize = Vector2.new(24, 24)
				DropdownIcon.ImageColor3 = getgenv().UIColor["Dropdown Icon Color"] -- Trắng tinh
				
				SelectionFrame.Name = "SelectionFrame"
				SelectionFrame.Parent = Dropdown
				SelectionFrame.BackgroundColor3 = getgenv().UIColor["Background 3 Color"] -- Xám đậm hơn
				SelectionFrame.Position = UDim2.new(0, 0, 0, 35)
				SelectionFrame.Size = UDim2.new(1, 0, 0, 0)
				SelectionFrame.AutomaticSize = Enum.AutomaticSize.Y
				
				SelectionList.Parent = SelectionFrame
				SelectionList.SortOrder = Enum.SortOrder.LayoutOrder
				SelectionList.Padding = UDim.new(0, 1)

				local isExpanded = false
				local currentSelection = Setting.Default or Setting.Options[1]

				local function closeDropdown()
					isExpanded = false
					TweenService:Create(Dropdown, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {
						Size = UDim2.new(1, 0, 0, 35)
					}):Play()
					TweenService:Create(DropdownIcon, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {
						Rotation = 0
					}):Play()
				end

				local function openDropdown()
					isExpanded = true
					TweenService:Create(Dropdown, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {
						Size = UDim2.new(1, 0, 0, 35 + SelectionFrame.AbsoluteSize.Y)
					}):Play()
					TweenService:Create(DropdownIcon, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {
						Rotation = 180
					}):Play()
				end

				for i, option in ipairs(Setting.Options) do
					local OptionButton = Instance.new("TextButton")
					local CheckIcon = Instance.new("ImageLabel")
					
					OptionButton.Name = "Option_" .. option
					OptionButton.Parent = SelectionFrame
					OptionButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					OptionButton.BackgroundTransparency = 1.000
					OptionButton.Size = UDim2.new(1, 0, 0, 20)
					OptionButton.Font = Enum.Font.GothamBold
					OptionButton.Text = option
					OptionButton.TextSize = 13.000
					OptionButton.TextXAlignment = Enum.TextXAlignment.Left
					OptionButton.TextColor3 = getgenv().UIColor["Text Color"] -- Trắng tinh
					OptionButton.LayoutOrder = i

					CheckIcon.Name = "CheckIcon"
					CheckIcon.Parent = OptionButton
					CheckIcon.AnchorPoint = Vector2.new(1, 0.5)
					CheckIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					CheckIcon.BackgroundTransparency = 1.000
					CheckIcon.Position = UDim2.new(1, -5, 0.5, 0)
					CheckIcon.Size = UDim2.new(0, 15, 0, 15)
					CheckIcon.Image = "rbxassetid://3926305904"
					CheckIcon.ImageRectOffset = Vector2.new(324, 164)
					CheckIcon.ImageRectSize = Vector2.new(36, 36)
					CheckIcon.ImageColor3 = getgenv().UIColor["Dropdown Selected Check Color"] -- Trắng tinh
					CheckIcon.Visible = (option == currentSelection)

					OptionButton.MouseButton1Click:Connect(function()
						currentSelection = option
						DropdownTitle.Text = Setting.Name .. ": " .. option
						
						for a, b in ipairs(SelectionFrame:GetChildren()) do
							if b:IsA("TextButton") and b.Name ~= "DropdownButton" then
								b.CheckIcon.Visible = (b.Text == currentSelection)
							end
						end
						
						if Setting.Callback then
							pcall(Setting.Callback, currentSelection)
						end
						
						closeDropdown()
					end)
				end

				SelectionFrame.Size = UDim2.new(1, 0, 0, #Setting.Options * 20)
				
				DropdownButton.MouseButton1Click:Connect(function()
					if isExpanded then
						closeDropdown()
					else
						openDropdown()
					end
				end)

				local dropdown_function = {}
				function dropdown_function.SetValue(Value)
					currentSelection = Value
					DropdownTitle.Text = Setting.Name .. ": " .. Value
					for a, b in ipairs(SelectionFrame:GetChildren()) do
						if b:IsA("TextButton") and b.Name ~= "DropdownButton" then
							b.CheckIcon.Visible = (b.Text == currentSelection)
						end
					end
				end
				return dropdown_function
			end

			function Section_Function:AddTextbox(Setting)
				ItemCounter = ItemCounter + 1
				
				local Textbox = Instance.new("Frame")
				local UICorner_Textbox = Instance.new("UICorner")
				local TextboxInput = Instance.new("TextBox")
				local TextboxTitle = Instance.new("TextLabel")
				
				Textbox.Name = Setting.Name .. "_Textbox"
				Textbox.Parent = Section
				Textbox.BackgroundColor3 = getgenv().UIColor["Background 3 Color"] -- Xám đậm hơn
				Textbox.Size = UDim2.new(1, 0, 0, 35)
				Textbox.LayoutOrder = ItemCounter
				
				UICorner_Textbox.CornerRadius = UDim.new(0, 4)
				UICorner_Textbox.Name = "UICorner_Textbox"
				UICorner_Textbox.Parent = Textbox

				TextboxTitle.Name = "TextboxTitle"
				TextboxTitle.Parent = Textbox
				TextboxTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextboxTitle.BackgroundTransparency = 1.000
				TextboxTitle.Position = UDim2.new(0, 5, 0, 0)
				TextboxTitle.Size = UDim2.new(1, -50, 1, 0)
				TextboxTitle.Font = Enum.Font.GothamBold
				TextboxTitle.Text = Setting.Name .. ":"
				TextboxTitle.TextSize = 13.000
				TextboxTitle.TextXAlignment = Enum.TextXAlignment.Left
				TextboxTitle.TextColor3 = getgenv().UIColor["Text Color"] -- Trắng tinh

				TextboxInput.Name = "TextboxInput"
				TextboxInput.Parent = Textbox
				TextboxInput.AnchorPoint = Vector2.new(1, 0.5)
				TextboxInput.BackgroundColor3 = getgenv().UIColor["Background 3 Color"] -- Xám đậm hơn
				TextboxInput.BackgroundTransparency = 1.000
				TextboxInput.Position = UDim2.new(1, -5, 0.5, 0)
				TextboxInput.Size = UDim2.new(0, 100, 0, 20)
				TextboxInput.Font = Enum.Font.Gotham
				TextboxInput.Text = Setting.Default or ""
				TextboxInput.TextSize = 13.000
				TextboxInput.TextXAlignment = Enum.TextXAlignment.Right
				TextboxInput.TextColor3 = getgenv().UIColor["Textbox Highlight Color"] -- Trắng tinh
				TextboxInput.PlaceholderText = Setting.Placeholder or ""
				TextboxInput.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"] -- Xám nhạt

				local UIStroke_Input = Instance.new("UIStroke")
				UIStroke_Input.Parent = TextboxInput
				UIStroke_Input.Color = getgenv().UIColor["Textbox Highlight Color"] -- Trắng tinh
				UIStroke_Input.Thickness = 0
				UIStroke_Input.Transparency = 1
				
				TextboxInput.Focused:Connect(function()
					TweenService:Create(UIStroke_Input, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {
						Thickness = 1,
						Transparency = 0.5
					}):Play()
				end)

				TextboxInput.FocusLost:Connect(function()
					TweenService:Create(UIStroke_Input, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {
						Thickness = 0,
						Transparency = 1
					}):Play()
					if Setting.Callback then
						pcall(Setting.Callback, TextboxInput.Text)
					end
				end)
				
				local textbox_function = {}
				function textbox_function.SetValue(Value)
					TextboxInput.Text = Value
				end
				return textbox_function
			end
			
			function Section_Function:AddSlider(Setting)
				ItemCounter = ItemCounter + 1
				
				local Slider = Instance.new("Frame")
				local UICorner_Slider = Instance.new("UICorner")
				local SliderTitle = Instance.new("TextLabel")
				local Sliderbox_2 = Instance.new("TextBox")
				local SliderBar = Instance.new("Frame")
				local Bar = Instance.new("Frame")
				local BarCorner = Instance.new("UICorner")
				local DragButton = Instance.new("TextButton")

				Slider.Name = Setting.Name .. "_Slider"
				Slider.Parent = Section
				Slider.BackgroundColor3 = getgenv().UIColor["Background 3 Color"] -- Xám đậm hơn
				Slider.Size = UDim2.new(1, 0, 0, 50)
				Slider.LayoutOrder = ItemCounter
				
				UICorner_Slider.CornerRadius = UDim.new(0, 4)
				UICorner_Slider.Name = "UICorner_Slider"
				UICorner_Slider.Parent = Slider

				SliderTitle.Name = "SliderTitle"
				SliderTitle.Parent = Slider
				SliderTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SliderTitle.BackgroundTransparency = 1.000
				SliderTitle.Position = UDim2.new(0, 5, 0, 0)
				SliderTitle.Size = UDim2.new(1, -50, 0, 20)
				SliderTitle.Font = Enum.Font.GothamBold
				SliderTitle.Text = Setting.Name .. ": " .. (Setting.Default or Setting.MinValue or "0")
				SliderTitle.TextSize = 13.000
				SliderTitle.TextXAlignment = Enum.TextXAlignment.Left
				SliderTitle.TextColor3 = getgenv().UIColor["Text Color"] -- Trắng tinh

				Sliderbox_2.Name = "Sliderbox_2"
				Sliderbox_2.Parent = Slider
				Sliderbox_2.AnchorPoint = Vector2.new(1, 0)
				Sliderbox_2.BackgroundColor3 = getgenv().UIColor["Background 3 Color"] -- Xám đậm hơn
				Sliderbox_2.BackgroundTransparency = 1.000
				Sliderbox_2.Position = UDim2.new(1, -5, 0, 0)
				Sliderbox_2.Size = UDim2.new(0, 50, 0, 20)
				Sliderbox_2.Font = Enum.Font.Gotham
				Sliderbox_2.Text = Setting.Default or Setting.MinValue or "0"
				Sliderbox_2.TextSize = 13.000
				Sliderbox_2.TextXAlignment = Enum.TextXAlignment.Right
				Sliderbox_2.TextColor3 = getgenv().UIColor["Textbox Highlight Color"] -- Trắng tinh

				SliderBar.Name = "SliderBar"
				SliderBar.Parent = Slider
				SliderBar.BackgroundColor3 = getgenv().UIColor["Slider Line Color"] -- Xám cho thanh trượt
				SliderBar.Position = UDim2.new(0, 5, 0, 25)
				SliderBar.Size = UDim2.new(1, -10, 0, 6)
				
				local SliderBarCorner = Instance.new("UICorner")
				SliderBarCorner.CornerRadius = UDim.new(1, 0)
				SliderBarCorner.Parent = SliderBar
				
				Bar.Name = "Bar"
				Bar.Parent = SliderBar
				Bar.BackgroundColor3 = getgenv().UIColor["Slider Highlight Color"] -- Trắng tinh
				Bar.Size = UDim2.new(0, 0, 1, 0)
				
				BarCorner.CornerRadius = UDim.new(1, 0)
				BarCorner.Name = "BarCorner"
				BarCorner.Parent = Bar

				DragButton.Name = "DragButton"
				DragButton.Parent = SliderBar
				DragButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DragButton.BackgroundTransparency = 1.000
				DragButton.Size = UDim2.new(1, 0, 1, 0)
				DragButton.Font = Enum.Font.SourceSans
				DragButton.Text = ""
				DragButton.TextColor3 = Color3.fromRGB(0, 0, 0)
				DragButton.TextSize = 14.000

				local isDragging = false
				local minValue = Setting.MinValue or 0
				local maxValue = Setting.MaxValue or 100
				local stepping = Setting.Stepping or 1
				local SizeChia = SliderBar.AbsoluteSize.X

				local function callBackAndSetText(value)
					if Setting.Callback then
						pcall(Setting.Callback, value)
					end
					SliderTitle.Text = Setting.Name .. ": " .. tostring(value)
					Sliderbox_2.Text = tostring(value)
				end

				-- Reconstructed dragging logic
				DragButton.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
						isDragging = true
						local dragInput = input
						local startPosition = Bar.AbsolutePosition.X
						input.Changed:Connect(function()
							if input.UserInputState == Enum.UserInputState.End then
								isDragging = false
							end
						end)
						
						RunService.RenderStepped:Connect(function()
							if isDragging then
								local newValue = math.clamp(dragInput.Position.X - SliderBar.AbsolutePosition.X, 0, SliderBar.AbsoluteSize.X)
								
								local currentValue = math.floor((((maxValue - minValue) / SliderBar.AbsoluteSize.X) * newValue / stepping)) * stepping + minValue
								
								callBackAndSetText(string.format("%." .. Setting.Rouding or 1 .. "f", currentValue) or math.floor(currentValue))
								
								Bar.Size = UDim2.new(0, math.clamp(dragInput.Position.X - SliderBar.AbsolutePosition.X, 0, SliderBar.AbsoluteSize.X), 1, 0)
							end
						end)
					end
				end)

				local function GetSliderValue(Value)
					local clampedValue = math.clamp(tonumber(Value) or minValue, minValue, maxValue)
					local normalizedValue = (clampedValue - minValue) / (maxValue - minValue)
					
					Bar.Size = UDim2.new(normalizedValue, 0, 1, 0)
					callBackAndSetText(clampedValue)
				end

				Sliderbox_2.FocusLost:Connect(function()
					GetSliderValue(Sliderbox_2.Text)
				end)
				
				-- Initial set from default
				GetSliderValue(Setting.Default or minValue)

				local slider_function = {}
				function slider_function.SetValue(Value)
					GetSliderValue(Value)
				end
				return slider_function
			end

			return Section_Function
		end

		return Tab_Function
	end
	
	return Main_Function
end
return Library
