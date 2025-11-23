if getgenv().Crystal then 
	if game.CoreGui:FindFirstChild("Crystal Hub GUI") then
		for i, v in ipairs(game.CoreGui:GetChildren()) do
			if string.find(v.Name,  "Crystal Hub") then
				v:Destroy()
			end
		end
	end
end
getgenv().Crystal = true

local DisableAnimation = game.Players.LocalPlayer.PlayerGui:FindFirstChild('TouchGui')

getgenv().UIColor = {
	["Border Color"] = Color3.fromRGB(40, 40, 40),
	["Click Effect Color"] = Color3.fromRGB(230, 230, 230),
	["Setting Icon Color"] = Color3.fromRGB(230, 230, 230),
	["Logo Image"] = "rbxassetid://123188942340057",
	["Search Icon Color"] = Color3.fromRGB(255, 255, 255),
	["Search Icon Highlight Color"] = Color3.fromRGB(150, 150, 150),
	["GUI Text Color"] = Color3.fromRGB(230, 230, 230),
	["Text Color"] = Color3.fromRGB(230, 230, 230),
	["Placeholder Text Color"] = Color3.fromRGB(150, 150, 150),
	["Title Text Color"] = Color3.fromRGB(255, 255, 255),
	["Background Main Color"] = Color3.fromRGB(30, 30, 30),
	["Background 1 Color"] = Color3.fromRGB(20, 20, 20),
	["Background 1 Transparency"] = 0.5,
	["Background 2 Color"] = Color3.fromRGB(60, 60, 60),
	["Background 3 Color"] = Color3.fromRGB(40, 40, 40),
	["Background Image"] = "",
	["Page Selected Color"] = Color3.fromRGB(200, 200, 200),
	["Section Text Color"] = Color3.fromRGB(200, 200, 200),
	["Section Underline Color"] = Color3.fromRGB(200, 200, 200),
	["Toggle Border Color"] = Color3.fromRGB(200, 200, 200),
	["Toggle Checked Color"] = Color3.fromRGB(230, 230, 230),
	["Toggle Desc Color"] = Color3.fromRGB(150, 150, 150),
	["Button Color"] = Color3.fromRGB(80, 80, 80),
	["Label Color"] = Color3.fromRGB(100, 100, 100),
	["Dropdown Icon Color"] = Color3.fromRGB(230, 230, 230),
	["Dropdown Selected Color"] = Color3.fromRGB(150, 150, 150),
	["Dropdown Selected Check Color"] = Color3.fromRGB(200, 200, 200),
	["Textbox Highlight Color"] = Color3.fromRGB(150, 150, 150),
	["Box Highlight Color"] = Color3.fromRGB(150, 150, 150),
	["Slider Line Color"] = Color3.fromRGB(100, 100, 100),
	["Slider Highlight Color"] = Color3.fromRGB(200, 200, 200),
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
			TweenService:Create(object, TweenInfo.new(DisableAnimation and 0 or 0.35, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				Position = UDim2.new(startPosition.X.Scale, startPosition.X.Offset + delta.X, startPosition.Y.Scale, startPosition.Y.Offset + delta.Y)
			}):Play()
		end
	end)
end

Library_Function.Gui = Instance.new('ScreenGui')
Library_Function.Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Library_Function.Gui.Name = 'Crystal Hub GUI'
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
Library_Function.NotiGui.Name = 'Crystal Hub Notification'

Library_Function.HideGui = Instance.new('ScreenGui')
Library_Function.HideGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Library_Function.HideGui.Name = 'Crystal Hub Btn'

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
btnHideFrame.Name = "btnHideFrame"
btnHideFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
btnHideFrame.BackgroundTransparency = getgenv().UIToggled and 0 or .25

local imgHide = Instance.new('ImageLabel', btnHide)
imgHide.AnchorPoint = Vector2.new(0, 0)
imgHide.Image = getgenv().UIColor["Logo Image"]
imgHide.BackgroundTransparency = 1
imgHide.Size = UDim2.new(0, getgenv().UIToggled and 40 or 30, 0, getgenv().UIToggled and 40 or 30)
imgHide.AnchorPoint = Vector2.new(.5, .5)
imgHide.Position = UDim2.new(.5, 0, .5, 0)

local UICornerBtnHide = Instance.new("UICorner")
UICornerBtnHide.Parent = btnHideFrame
UICornerBtnHide.CornerRadius = UDim.new(1, 0)

Library.ToggleUI = function()
	getgenv().UIToggled = not getgenv().UIToggled
	local sizeXY = getgenv().UIToggled and 40 or 30
	TweenService:Create(imgHide, TweenInfo.new(DisableAnimation and 0 or .25), {
		Size = UDim2.new(0, sizeXY, 0, sizeXY)
	}):Play()
	TweenService:Create(btnHideFrame, TweenInfo.new(DisableAnimation and 0 or .25), {
		BackgroundTransparency = getgenv().UIToggled and 0 or .25
	}):Play()
	if game.CoreGui:FindFirstChild("Crystal Hub GUI") then
		Library_Function.Gui.Enabled = getgenv().UIToggled
	end
end

Library.DestroyUI = function()
	if game.CoreGui:FindFirstChild("Crystal Hub GUI") then
		for i, v in ipairs(game.CoreGui:GetChildren()) do
			if string.find(v.Name,  "Crystal Hub") then
				v:Destroy()
			end
		end
	end
end

-- Make button draggable
local button = btnHide
local dragging = false
local dragInput, dragStart, startPos
local holdTime = 0.1

local function update(input)
	local delta = input.Position - dragStart
	button.Position = UDim2.new(
		startPos.X.Scale, startPos.X.Offset + delta.X,
		startPos.Y.Scale, startPos.Y.Offset + delta.Y
	)
end

button.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragStart = input.Position
		startPos = button.Position
		dragging = true
	end
end)

button.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

button.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = false
	end
end)

uis.InputChanged:Connect(function(input)
	if dragging and input == dragInput then
		update(input)
	end
end)

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

function Library:Notify(Setting, bypass)
	if not getgenv().Config or bypass then
		local s, e = pcall(function()
			-- Notification creation code here
		end)
		if e then
			print(e)
		end
	end
end

function Library:CreateWindow(Setting)
	local TitleNameMain = "Blox Fruit"
	getgenv().MainDesc = Setting.Desc or ""

	local Main = Instance.new("Frame")
	local MainContainer = Instance.new("Frame")
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

	Main.Name = "Main"
	Main.Parent = Library_Function.Gui
	Main.BackgroundColor3 = getgenv().UIColor["Background Main Color"]
	Main.Position = UDim2.new(0.5, 0, 0.5, 0)
	Main.AnchorPoint = Vector2.new(0.5, 0.5)
	Main.Size = UDim2.new(0, 629, 0, 359)

	makeDraggable(Main, Main)

	MainContainer.Name = "MainContainer"
	MainContainer.Parent = Main
	MainContainer.BackgroundColor3 = getgenv().UIColor["Background Main Color"]
	MainContainer.Size = UDim2.new(1, 0, 1, 0)
	MainContainer.BackgroundTransparency = 0

	MainCorner.CornerRadius = UDim.new(0, 4)
	MainCorner.Name = "MainCorner"
	MainCorner.Parent = MainContainer

	TopMain.Name = "TopMain"
	TopMain.Parent = MainContainer
	TopMain.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
	TopMain.Size = UDim2.new(1, 0, 0, 25)

	Ruafimg.Name = "Ruafimg"
	Ruafimg.Parent = TopMain
	Ruafimg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Ruafimg.BackgroundTransparency = 1.000
	Ruafimg.Position = UDim2.new(0, 5, 0, 0)
	Ruafimg.Size = UDim2.new(0, 25, 0, 25)
	Ruafimg.Image = getgenv().UIColor["Logo Image"]

	TextLabelMain.Name = "TextLabelMain"
	TextLabelMain.Parent = TopMain
	TextLabelMain.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
	TextLabelMain.BackgroundTransparency = 1.000
	TextLabelMain.Position = UDim2.new(0, 35, 0, 0)
	TextLabelMain.Size = UDim2.new(1, -35, 1, 0)
	TextLabelMain.Font = Enum.Font.GothamBold
	TextLabelMain.RichText = true
	TextLabelMain.Text = "Ziram Hub " .. getgenv().MainDesc
	TextLabelMain.TextSize = 16.000
	TextLabelMain.TextXAlignment = Enum.TextXAlignment.Left
	TextLabelMain.TextColor3 = getgenv().UIColor["GUI Text Color"]

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
	Concacmain.Size = UDim2.new(1, 0, 1, 0)
	
	PageControl.Name = "Background1"
	PageControl.Parent = Concacmain
	PageControl.Position = UDim2.new(0, 5, 0, 0)
	PageControl.Size = UDim2.new(0, 180, 0, 325)
	PageControl.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
	PageControl.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
	
	UICorner.CornerRadius = UDim.new(0, 4)
	UICorner.Parent = PageControl

	ControlList.Name = "ControlList"
	ControlList.Parent = PageControl
	ControlList.Active = true
	ControlList.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
	ControlList.BackgroundTransparency = 1.000
	ControlList.Position = UDim2.new(0, 0, 0, 30)
	ControlList.Size = UDim2.new(1, -5, 1, -30)
	ControlList.ScrollBarThickness = 5

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
	ControlTitle.TextColor3 = getgenv().UIColor["GUI Text Color"]

	MainPage.Name = "MainPage"
	MainPage.Parent = Concacmain
	MainPage.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
	MainPage.BackgroundTransparency = 1.000
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

	getgenv().ReadyForGuiLoaded = true
	
	local Main_Function = {}

	function Main_Function:AddTab(PageName)
		local Page_Name = tostring(PageName)
		
		local PageName = Instance.new("Frame")
		local Frame = Instance.new("Frame")
		local Line = Instance.new("Frame")
		local InLine = Instance.new("Frame")
		local TabTitle = Instance.new("TextLabel")
		local PageButton = Instance.new("TextButton")

		PageName.Name = Page_Name .. "_Control"
		PageName.Parent = ControlList
		PageName.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
		PageName.BackgroundTransparency = 1.000
		PageName.Size = UDim2.new(1, -10, 0, 25)

		Frame.Parent = PageName
		Frame.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
		Frame.BackgroundTransparency = 1.000
		Frame.Position = UDim2.new(0, 5, 0, 0)
		Frame.Size = UDim2.new(1, -5, 1, 0)

		Line.Name = "Line"
		Line.Parent = Frame
		Line.AnchorPoint = Vector2.new(0, 0.5)
		Line.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
		Line.BackgroundTransparency = 1.000
		Line.Position = UDim2.new(0, 0, 0.5, 0)
		Line.Size = UDim2.new(0, 14, 1, 0)

		InLine.Name = "PageInLine"
		InLine.Parent = Line
		InLine.AnchorPoint = Vector2.new(0.5, 0.5)
		InLine.BorderSizePixel = 0
		InLine.Position = UDim2.new(0.5, 0, 0.5, 0)
		InLine.Size = UDim2.new(1, -10, 1, -10)
		InLine.BackgroundColor3 = getgenv().UIColor["Page Selected Color"]
		InLine.BackgroundTransparency = 1.000

		TabTitle.Name = "GUITextColor"
		TabTitle.Parent = Frame
		TabTitle.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
		TabTitle.BackgroundTransparency = 1.000
		TabTitle.Position = UDim2.new(0, 15, 0, 0)
		TabTitle.Size = UDim2.new(1, -15, 1, 0)
		TabTitle.Font = Enum.Font.GothamBold
		TabTitle.Text = Page_Name
		TabTitle.TextColor3 = getgenv().UIColor["GUI Text Color"]
		TabTitle.TextSize = 14.000
		TabTitle.TextXAlignment = Enum.TextXAlignment.Left

		PageButton.Name = "PageButton"
		PageButton.Parent = PageName
		PageButton.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
		PageButton.BackgroundTransparency = 1.000
		PageButton.Size = UDim2.new(1, 0, 1, 0)
		PageButton.Font = Enum.Font.SourceSans
		PageButton.Text = ""
		PageButton.TextColor3 = Color3.fromRGB(0, 0, 0)
		PageButton.TextSize = 14.000

		local PageContainer = Instance.new("Frame")
		local PageTitle = Instance.new("TextLabel")
		local PageList = Instance.new("ScrollingFrame")
		local Pagelistlayout = Instance.new("UIListLayout")

		PageContainer.Name = "PageContainer"
		PageContainer.Parent = MainPage
		PageContainer.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
		PageContainer.Size = UDim2.new(0, 435, 0, 325)
		PageContainer.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]

		PageTitle.Name = "GUITextColor"
		PageTitle.Parent = PageContainer
		PageTitle.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
		PageTitle.BackgroundTransparency = 1.000
		PageTitle.Position = UDim2.new(0, 5, 0, 0)
		PageTitle.Size = UDim2.new(1, 0, 0, 25)
		PageTitle.Font = Enum.Font.GothamBold
		PageTitle.Text = Page_Name
		PageTitle.TextSize = 16.000
		PageTitle.TextXAlignment = Enum.TextXAlignment.Left
		PageTitle.TextColor3 = getgenv().UIColor["GUI Text Color"]

		PageList.Name = "PageList"
		PageList.Parent = PageContainer
		PageList.Active = true
		PageList.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
		PageList.BackgroundTransparency = 1.000
		PageList.Position = UDim2.new(0, 5, 0, 30)
		PageList.Size = UDim2.new(1, -10, 1, -30)
		PageList.ScrollBarThickness = 5

		Pagelistlayout.Name = "Pagelistlayout"
		Pagelistlayout.Parent = PageList
		Pagelistlayout.SortOrder = Enum.SortOrder.LayoutOrder
		Pagelistlayout.Padding = UDim.new(0, 5)

		PageButton.MouseButton1Click:Connect(function()
			for i, v in pairs(MainPage:GetChildren()) do
				if not (v:IsA('UIPageLayout')) then
					v.Visible = false
				end
			end
			PageContainer.Visible = true
		end)

		local pageFunction = {}

		function pageFunction:CreateSection(Section_Name)
			local Section = Instance.new("Frame")
			local Sectiontitle = Instance.new("TextLabel")
			local SectionList = Instance.new("UIListLayout")

			Section.Name = Section_Name .. "_Section"
			Section.Parent = PageList
			Section.Size = UDim2.new(1, -5, 0, 30)
			Section.BackgroundColor3 = getgenv().UIColor["Background 3 Color"]
			Section.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]

			Sectiontitle.Name = "Sectiontitle"
			Sectiontitle.Parent = Section
			Sectiontitle.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
			Sectiontitle.BackgroundTransparency = 1.000
			Sectiontitle.Size = UDim2.new(1, 0, 1, 0)
			Sectiontitle.Font = Enum.Font.GothamBold
			Sectiontitle.Text = Section_Name
			Sectiontitle.TextSize = 14.000
			Sectiontitle.TextColor3 = getgenv().UIColor["Section Text Color"]

			SectionList.Name = "SectionList"
			SectionList.Parent = Section
			SectionList.SortOrder = Enum.SortOrder.LayoutOrder
			SectionList.Padding = UDim.new(0, 5)

			local sectionFunction = {}

			function sectionFunction:AddButton(Setting)
				local Title = Setting.Text
				local Callback = Setting.Func
				
				local ButtonFrame = Instance.new("Frame")
				local ButtonBG = Instance.new("Frame")
				local ButtonTitle = Instance.new("TextLabel")
				local Button = Instance.new("TextButton")

				ButtonFrame.Name = Title .. '_Button'
				ButtonFrame.Parent = Section
				ButtonFrame.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
				ButtonFrame.BackgroundTransparency = 1.000
				ButtonFrame.Size = UDim2.new(1, 0, 0, 25)

				ButtonBG.Name = "ButtonBG"
				ButtonBG.Parent = ButtonFrame
				ButtonBG.AnchorPoint = Vector2.new(0.5, 0.5)
				ButtonBG.Position = UDim2.new(0.5, 0, 0.5, 0)
				ButtonBG.Size = UDim2.new(1, -10, 1, 0)
				ButtonBG.BackgroundColor3 = getgenv().UIColor["Button Color"]
				ButtonBG.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]

				ButtonTitle.Name = "TextColor"
				ButtonTitle.Parent = ButtonBG
				ButtonTitle.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
				ButtonTitle.BackgroundTransparency = 1.000
				ButtonTitle.Position = UDim2.new(0, 10, 0, 0)
				ButtonTitle.Size = UDim2.new(1, -10, 1, 0)
				ButtonTitle.Font = Enum.Font.GothamBlack
				ButtonTitle.RichText = true
				ButtonTitle.Text = Title
				ButtonTitle.TextSize = 14.000
				ButtonTitle.TextXAlignment = Enum.TextXAlignment.Left
				ButtonTitle.TextColor3 = getgenv().UIColor["Text Color"]

				Button.Name = "Button"
				Button.Parent = ButtonBG
				Button.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
				Button.BackgroundTransparency = 1.000
				Button.Size = UDim2.new(1, 0, 1, 0)
				Button.Font = Enum.Font.SourceSans
				Button.Text = ""
				Button.TextColor3 = Color3.fromRGB(0, 0, 0)
				Button.TextSize = 14.000

				Button.MouseButton1Down:Connect(function()
					Callback()
				end)

				local f = {}
				function f:SetTitle(vl)
					ButtonTitle.Text = vl
				end
				return f
			end

			function sectionFunction:AddLabel(text)
				local LabelFrame = Instance.new("Frame")
				local LabelBG = Instance.new("Frame")
				local LabelTitle = Instance.new("TextLabel")

				LabelFrame.Name = "LabelFrame"
				LabelFrame.Parent = Section
				LabelFrame.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
				LabelFrame.BackgroundTransparency = 1.000
				LabelFrame.Size = UDim2.new(1, 0, 0, 0)
				LabelFrame.AutomaticSize = Enum.AutomaticSize.Y

				LabelBG.Name = "LabelBG"
				LabelBG.Parent = LabelFrame
				LabelBG.AnchorPoint = Vector2.new(0.5, 0)
				LabelBG.Position = UDim2.new(0.5, 0, 0, 0)
				LabelBG.Size = UDim2.new(1, -10, 0, 0)
				LabelBG.BackgroundColor3 = getgenv().UIColor["Label Color"]
				LabelBG.AutomaticSize = Enum.AutomaticSize.Y
				LabelBG.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]

				LabelTitle.Name = "TextColor"
				LabelTitle.Parent = LabelBG
				LabelTitle.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
				LabelTitle.BackgroundTransparency = 1.000
				LabelTitle.Position = UDim2.new(0, 10, 0, 3)
				LabelTitle.Size = UDim2.new(1, -20, 1, 0)
				LabelTitle.Font = Enum.Font.GothamBlack
				LabelTitle.Text = text
				LabelTitle.TextSize = 14.000
				LabelTitle.TextXAlignment = Enum.TextXAlignment.Left
				LabelTitle.AutomaticSize = Enum.AutomaticSize.Y
				LabelTitle.TextWrapped = true
				LabelTitle.TextColor3 = getgenv().UIColor["Text Color"]

				local labelFunction = {}
				function labelFunction:SetText(text)
					LabelTitle.Text = text
				end
				return labelFunction
			end

			return sectionFunction
		end

		local pagefunc = {}
		function pagefunc:AddLeftGroupbox(name)
			return pageFunction:CreateSection(name)
		end
		function pagefunc:AddRightGroupbox(name)
			return pageFunction:CreateSection(name)
		end
		return pagefunc
	end

	return Main_Function
end

return Library
