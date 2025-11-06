-- NovaZ Library - Monochrome với hiệu ứng cao cấp
local NovaZ = {}
NovaZ.__index = NovaZ

-- Services
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

-- Monochrome Color Palette (Chỉ đen trắng)
local COLORS = {
    Black = Color3.fromRGB(10, 10, 10),
    DarkGray = Color3.fromRGB(20, 20, 20),
    Gray = Color3.fromRGB(40, 40, 40),
    LightGray = Color3.fromRGB(60, 60, 60),
    White = Color3.fromRGB(255, 255, 255),
    Silver = Color3.fromRGB(200, 200, 200)
}

-- Animation Presets
local TWEEN_INFO = {
    Quick = TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
    Smooth = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
    Bounce = TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
    Elastic = TweenInfo.new(0.4, Enum.EasingStyle.Elastic, Enum.EasingDirection.Out)
}

-- Utility Functions
local function createRoundedCorner(radius)
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, radius)
    return corner
end

local function createPadding(left, right, top, bottom)
    local padding = Instance.new("UIPadding")
    padding.PaddingLeft = UDim.new(0, left or 12)
    padding.PaddingRight = UDim.new(0, right or 12)
    padding.PaddingTop = UDim.new(0, top or 12)
    padding.PaddingBottom = UDim.new(0, bottom or 12)
    return padding
end

local function createStroke(color, thickness)
    local stroke = Instance.new("UIStroke")
    stroke.Color = color
    stroke.Thickness = thickness or 1
    stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    return stroke
end

local function createGlowEffect(parent)
    local glow = Instance.new("ImageLabel")
    glow.Name = "GlowEffect"
    glow.Size = UDim2.new(1, 20, 1, 20)
    glow.Position = UDim2.new(0, -10, 0, -10)
    glow.BackgroundTransparency = 1
    glow.Image = "rbxassetid://8992230671"
    glow.ImageColor3 = COLORS.White
    glow.ImageTransparency = 0.9
    glow.ScaleType = Enum.ScaleType.Slice
    glow.SliceCenter = Rect.new(100, 100, 100, 100)
    glow.Parent = parent
    return glow
end

local function createPulseAnimation(object)
    local pulse = RunService.Heartbeat:Connect(function()
        local alpha = math.sin(tick() * 5) * 0.1 + 0.9
        object.ImageTransparency = alpha
    end)
    return pulse
end

local function createShineEffect(parent)
    local shine = Instance.new("Frame")
    shine.Name = "ShineEffect"
    shine.Size = UDim2.new(0, 100, 2, 0)
    shine.Position = UDim2.new(-0.5, 0, -0.5, 0)
    shine.BackgroundColor3 = COLORS.White
    shine.BackgroundTransparency = 0.8
    shine.BorderSizePixel = 0
    shine.Rotation = 45
    
    local shineCorner = createRoundedCorner(10)
    shineCorner.Parent = shine
    
    -- Animation
    spawn(function()
        while shine.Parent do
            TweenService:Create(shine, TweenInfo.new(1.5, Enum.EasingStyle.Linear), {
                Position = UDim2.new(1.5, 0, -0.5, 0)
            }):Play()
            wait(1.5)
            shine.Position = UDim2.new(-0.5, 0, -0.5, 0)
            wait(0.5)
        end
    end)
    
    shine.Parent = parent
    return shine
end

function NovaZ.new()
    local self = setmetatable({}, NovaZ)
    self.elements = {}
    self.pages = {}
    self.currentPage = nil
    self.animations = {}
    return self
end

-- Main Window Creation
function NovaZ:CreateWindow(title, ownerName)
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "NovaZUI"
    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    screenGui.ResetOnSpawn = false

    local mainContainer = Instance.new("Frame")
    mainContainer.Name = "MainContainer"
    mainContainer.Size = UDim2.new(0, 650, 0, 500)
    mainContainer.Position = UDim2.new(0.5, -325, 0.5, -250)
    mainContainer.AnchorPoint = Vector2.new(0.5, 0.5)
    mainContainer.BackgroundColor3 = COLORS.Black
    mainContainer.BorderSizePixel = 0

    local mainCorner = createRoundedCorner(12)
    mainCorner.Parent = mainContainer

    local mainStroke = createStroke(COLORS.Gray, 2)
    mainStroke.Parent = mainContainer

    -- Header (Kết hợp cả 2 design)
    local header = Instance.new("Frame")
    header.Name = "Header"
    header.Size = UDim2.new(1, 0, 0, 70)
    header.BackgroundColor3 = COLORS.DarkGray
    header.BorderSizePixel = 0

    local headerCorner = createRoundedCorner(12)
    headerCorner.Parent = header

    local headerStroke = createStroke(COLORS.LightGray, 1)
    headerStroke.Parent = header

    -- Title Section (Zinner Hub style)
    local titleContainer = Instance.new("Frame")
    titleContainer.Name = "TitleContainer"
    titleContainer.Size = UDim2.new(0.6, 0, 1, 0)
    titleContainer.Position = UDim2.new(0, 20, 0, 0)
    titleContainer.BackgroundTransparency = 1

    local mainTitle = Instance.new("TextLabel")
    mainTitle.Name = "MainTitle"
    mainTitle.Size = UDim2.new(1, 0, 0, 35)
    mainTitle.Position = UDim2.new(0, 0, 0, 10)
    mainTitle.BackgroundTransparency = 1
    mainTitle.Text = title or "NovaZ Hub"
    mainTitle.TextColor3 = COLORS.White
    mainTitle.TextSize = 22
    mainTitle.TextXAlignment = Enum.TextXAlignment.Left
    mainTitle.Font = Enum.Font.GothamBlack
    mainTitle.Parent = titleContainer

    local ownerLabel = Instance.new("TextLabel")
    ownerLabel.Name = "Owner"
    ownerLabel.Size = UDim2.new(1, 0, 0, 20)
    ownerLabel.Position = UDim2.new(0, 0, 0, 40)
    ownerLabel.BackgroundTransparency = 1
    ownerLabel.Text = "By " .. (ownerName or "NovaZ Team")
    ownerLabel.TextColor3 = COLORS.Silver
    ownerLabel.TextSize = 12
    ownerLabel.TextXAlignment = Enum.TextXAlignment.Left
    ownerLabel.Font = Enum.Font.Gotham
    ownerLabel.Parent = titleContainer

    titleContainer.Parent = header

    -- Search Box (Teddy Hub style)
    local searchContainer = Instance.new("Frame")
    searchContainer.Name = "SearchContainer"
    searchContainer.Size = UDim2.new(0, 200, 0, 35)
    searchContainer.Position = UDim2.new(1, -230, 0.5, -17.5)
    searchContainer.BackgroundTransparency = 1

    local searchBox = Instance.new("TextBox")
    searchBox.Name = "SearchBox"
    searchBox.Size = UDim2.new(1, 0, 1, 0)
    searchBox.BackgroundColor3 = COLORS.Gray
    searchBox.Text = ""
    searchBox.PlaceholderText = "🔍 Find a setting..."
    searchBox.PlaceholderColor3 = COLORS.Silver
    searchBox.TextColor3 = COLORS.White
    searchBox.TextSize = 14
    searchBox.Font = Enum.Font.Gotham
    searchBox.ClearTextOnFocus = false

    local searchCorner = createRoundedCorner(8)
    searchCorner.Parent = searchBox

    local searchPadding = createPadding(12, 12, 8, 8)
    searchPadding.Parent = searchBox

    local searchStroke = createStroke(COLORS.LightGray, 1)
    searchStroke.Parent = searchBox

    -- Search animation
    searchBox.Focused:Connect(function()
        TweenService:Create(searchBox, TWEEN_INFO.Smooth, {
            BackgroundColor3 = COLORS.LightGray,
            Size = UDim2.new(1.1, 0, 1.2, 0)
        }):Play()
        TweenService:Create(searchStroke, TWEEN_INFO.Smooth, {
            Color = COLORS.White,
            Thickness = 2
        }):Play()
    end)

    searchBox.FocusLost:Connect(function()
        TweenService:Create(searchBox, TWEEN_INFO.Smooth, {
            BackgroundColor3 = COLORS.Gray,
            Size = UDim2.new(1, 0, 1, 0)
        }):Play()
        TweenService:Create(searchStroke, TWEEN_INFO.Smooth, {
            Color = COLORS.LightGray,
            Thickness = 1
        }):Play()
    end)

    searchBox.Parent = searchContainer
    searchContainer.Parent = header

    header.Parent = mainContainer

    -- Content Area
    local contentArea = Instance.new("Frame")
    contentArea.Name = "ContentArea"
    contentArea.Size = UDim2.new(1, 0, 1, -70)
    contentArea.Position = UDim2.new(0, 0, 0, 70)
    contentArea.BackgroundTransparency = 1
    contentArea.Parent = mainContainer

    -- Sidebar (Teddy Hub style)
    local sidebar = Instance.new("Frame")
    sidebar.Name = "Sidebar"
    sidebar.Size = UDim2.new(0, 200, 1, 0)
    sidebar.BackgroundColor3 = COLORS.DarkGray
    sidebar.BorderSizePixel = 0
    sidebar.Parent = contentArea

    local sidebarCorner = createRoundedCorner(12)
    sidebarCorner.Parent = sidebar

    local sidebarPadding = createPadding(15, 15, 20, 20)
    sidebarPadding.Parent = sidebar

    -- Navigation List
    local navList = Instance.new("ScrollingFrame")
    navList.Name = "NavigationList"
    navList.Size = UDim2.new(1, 0, 1, -10)
    navList.Position = UDim2.new(0, 0, 0, 10)
    navList.BackgroundTransparency = 1
    navList.BorderSizePixel = 0
    navList.ScrollBarThickness = 3
    navList.ScrollBarImageColor3 = COLORS.White
    navList.AutomaticCanvasSize = Enum.AutomaticSize.Y

    local listLayout = Instance.new("UIListLayout")
    listLayout.Padding = UDim.new(0, 8)
    listLayout.Parent = navList

    navList.Parent = sidebar

    -- Main Content (Zinner Hub style)
    local mainContent = Instance.new("Frame")
    mainContent.Name = "MainContent"
    mainContent.Size = UDim2.new(1, -210, 1, 0)
    mainContent.Position = UDim2.new(0, 210, 0, 0)
    mainContent.BackgroundTransparency = 1
    mainContent.ClipsDescendants = true
    mainContent.Parent = contentArea

    local contentPadding = createPadding(25, 25, 25, 25)
    contentPadding.Parent = mainContent

    screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    self.elements = {
        ScreenGui = screenGui,
        MainContainer = mainContainer,
        Sidebar = sidebar,
        MainContent = mainContent,
        NavList = navList,
        SearchBox = searchBox
    }

    -- Setup search functionality
    self:SetupSearch()
    
    -- Add glow effects
    createGlowEffect(mainContainer)
    createGlowEffect(header)

    return self
end

-- Search functionality
function NovaZ:SetupSearch()
    self.elements.SearchBox:GetPropertyChangedSignal("Text"):Connect(function()
        local searchText = self.elements.SearchBox.Text:lower()
        
        for _, navButton in pairs(self.elements.NavList:GetChildren()) do
            if navButton:IsA("TextButton") then
                local label = navButton:FindFirstChild("Label")
                if label then
                    local buttonText = label.Text:lower()
                    if searchText == "" or buttonText:find(searchText) then
                        navButton.Visible = true
                        TweenService:Create(navButton, TWEEN_INFO.Quick, {
                            BackgroundTransparency = 0
                        }):Play()
                    else
                        TweenService:Create(navButton, TWEEN_INFO.Quick, {
                            BackgroundTransparency = 1
                        }):Play()
                        wait(0.15)
                        navButton.Visible = false
                    end
                end
            end
        end
    end)
end

-- Create Section (Teddy Hub style)
function NovaZ:CreateSection(title)
    local section = Instance.new("Frame")
    section.Name = title .. "Section"
    section.Size = UDim2.new(1, 0, 0, 35)
    section.BackgroundTransparency = 1

    local sectionLabel = Instance.new("TextLabel")
    sectionLabel.Name = "SectionLabel"
    sectionLabel.Size = UDim2.new(1, 0, 1, 0)
    sectionLabel.BackgroundTransparency = 1
    sectionLabel.Text = "◈ " .. string.upper(title)
    sectionLabel.TextColor3 = COLORS.Silver
    sectionLabel.TextSize = 11
    sectionLabel.TextXAlignment = Enum.TextXAlignment.Left
    sectionLabel.Font = Enum.Font.GothamBold
    sectionLabel.TextTransparency = 0.4
    sectionLabel.Parent = section

    -- Animated underline
    local sectionLine = Instance.new("Frame")
    sectionLine.Name = "SectionLine"
    sectionLine.Size = UDim2.new(0, 0, 0, 1)
    sectionLine.Position = UDim2.new(0, 0, 1, -1)
    sectionLine.BackgroundColor3 = COLORS.White
    sectionLine.BorderSizePixel = 0
    sectionLine.Parent = section

    -- Animate line
    TweenService:Create(sectionLine, TWEEN_INFO.Smooth, {
        Size = UDim2.new(1, 0, 0, 1)
    }):Play()

    section.Parent = self.elements.NavList

    return section
end

-- Create Navigation Button với hiệu ứng
function NovaZ:CreateNavButton(title, icon)
    local navButton = Instance.new("TextButton")
    navButton.Name = title .. "Nav"
    navButton.Size = UDim2.new(1, 0, 0, 45)
    navButton.BackgroundColor3 = COLORS.Gray
    navButton.Text = ""
    navButton.AutoButtonColor = false

    local buttonCorner = createRoundedCorner(8)
    buttonCorner.Parent = navButton

    local buttonPadding = createPadding(15, 15, 10, 10)
    buttonPadding.Parent = navButton

    local buttonStroke = createStroke(COLORS.LightGray, 1)
    buttonStroke.Parent = navButton

    local buttonLabel = Instance.new("TextLabel")
    buttonLabel.Name = "Label"
    buttonLabel.Size = UDim2.new(1, -40, 1, 0)
    buttonLabel.Position = UDim2.new(0, 40, 0, 0)
    buttonLabel.BackgroundTransparency = 1
    buttonLabel.Text = title
    buttonLabel.TextColor3 = COLORS.White
    buttonLabel.TextSize = 14
    buttonLabel.TextXAlignment = Enum.TextXAlignment.Left
    buttonLabel.Font = Enum.Font.GothamSemibold
    buttonLabel.Parent = navButton

    local buttonIcon = Instance.new("TextLabel")
    buttonIcon.Name = "Icon"
    buttonIcon.Size = UDim2.new(0, 30, 0, 30)
    buttonIcon.Position = UDim2.new(0, 5, 0.5, -15)
    buttonIcon.BackgroundTransparency = 1
    buttonIcon.Text = icon or "✦"
    buttonIcon.TextColor3 = COLORS.White
    buttonIcon.TextSize = 16
    buttonIcon.Font = Enum.Font.GothamBold
    buttonIcon.Parent = navButton

    -- Add shine effect
    local shine = createShineEffect(navButton)
    shine.Visible = false

    -- Hover effects với nhiều hiệu ứng
    navButton.MouseEnter:Connect(function()
        if not navButton:GetAttribute("Active") then
            TweenService:Create(navButton, TWEEN_INFO.Smooth, {
                BackgroundColor3 = COLORS.LightGray,
                Size = UDim2.new(1.02, 0, 1.05, 0)
            }):Play()
            TweenService:Create(buttonStroke, TWEEN_INFO.Smooth, {
                Color = COLORS.White,
                Thickness = 2
            }):Play()
            TweenService:Create(buttonIcon, TWEEN_INFO.Smooth, {
                TextColor3 = COLORS.White,
                Rotation = 10
            }):Play()
            
            -- Show shine effect
            shine.Visible = true
        end
    end)

    navButton.MouseLeave:Connect(function()
        if not navButton:GetAttribute("Active") then
            TweenService:Create(navButton, TWEEN_INFO.Smooth, {
                BackgroundColor3 = COLORS.Gray,
                Size = UDim2.new(1, 0, 1, 0)
            }):Play()
            TweenService:Create(buttonStroke, TWEEN_INFO.Smooth, {
                Color = COLORS.LightGray,
                Thickness = 1
            }):Play()
            TweenService:Create(buttonIcon, TWEEN_INFO.Smooth, {
                TextColor3 = COLORS.White,
                Rotation = 0
            }):Play()
            
            -- Hide shine effect
            shine.Visible = false
        end
    end)

    navButton.Parent = self.elements.NavList

    return navButton
end

-- Create Page
function NovaZ:CreatePage(title)
    local page = Instance.new("ScrollingFrame")
    page.Name = title .. "Page"
    page.Size = UDim2.new(1, 0, 1, 0)
    page.BackgroundTransparency = 1
    page.BorderSizePixel = 0
    page.ScrollBarThickness = 4
    page.ScrollBarImageColor3 = COLORS.White
    page.AutomaticCanvasSize = Enum.AutomaticSize.Y
    page.Visible = false

    local pageLayout = Instance.new("UIListLayout")
    pageLayout.Padding = UDim.new(0, 20)
    pageLayout.Parent = page

    local pagePadding = createPadding(10, 10, 10, 10)
    pagePadding.Parent = page

    page.Parent = self.elements.MainContent

    self.pages[title] = page
    return page
end

-- Switch Page với animation
function NovaZ:SwitchToPage(pageName)
    if self.currentPage then
        TweenService:Create(self.currentPage, TWEEN_INFO.Smooth, {
            Position = UDim2.new(-1, 0, 0, 0)
        }):Play()
        wait(0.2)
        self.currentPage.Visible = false
    end
    
    if self.pages[pageName] then
        self.pages[pageName].Visible = true
        self.pages[pageName].Position = UDim2.new(1, 0, 0, 0)
        TweenService:Create(self.pages[pageName], TWEEN_INFO.Elastic, {
            Position = UDim2.new(0, 0, 0, 0)
        }):Play()
        self.currentPage = self.pages[pageName]
    end
end

-- Create Label (Zinner Hub style)
function NovaZ:CreateLabel(parent, text, isTitle)
    local labelContainer = Instance.new("Frame")
    labelContainer.Name = "LabelContainer"
    labelContainer.Size = UDim2.new(1, 0, 0, isTitle and 40 or 30)
    labelContainer.BackgroundTransparency = 1

    local label = Instance.new("TextLabel")
    label.Name = "Label"
    label.Size = UDim2.new(1, 0, 1, 0)
    label.BackgroundTransparency = 1
    label.Text = text
    label.TextColor3 = isTitle and COLORS.White or COLORS.Silver
    label.TextSize = isTitle and 18 or 14
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.Font = isTitle and Enum.Font.GothamBlack or Enum.Font.Gotham
    label.Parent = labelContainer

    if isTitle then
        local titleLine = Instance.new("Frame")
        titleLine.Name = "TitleLine"
        titleLine.Size = UDim2.new(0, 0, 0, 2)
        titleLine.Position = UDim2.new(0, 0, 1, -2)
        titleLine.BackgroundColor3 = COLORS.White
        titleLine.BorderSizePixel = 0
        
        -- Animate line
        TweenService:Create(titleLine, TWEEN_INFO.Smooth, {
            Size = UDim2.new(0, 60, 0, 2)
        }):Play()
        
        titleLine.Parent = labelContainer
    end

    labelContainer.Parent = parent
    return labelContainer
end

-- Create Toggle với hiệu ứng đặc biệt
function NovaZ:CreateToggle(parent, text, defaultState, callback)
    local toggleContainer = Instance.new("Frame")
    toggleContainer.Name = "ToggleContainer"
    toggleContainer.Size = UDim2.new(1, 0, 0, 60)
    toggleContainer.BackgroundColor3 = COLORS.DarkGray
    toggleContainer.BorderSizePixel = 0

    local toggleCorner = createRoundedCorner(10)
    toggleCorner.Parent = toggleContainer

    local togglePadding = createPadding(20, 20, 15, 15)
    togglePadding.Parent = toggleContainer

    local toggleStroke = createStroke(COLORS.Gray, 1)
    toggleStroke.Parent = toggleContainer

    local label = Instance.new("TextLabel")
    label.Name = "Label"
    label.Size = UDim2.new(0.7, 0, 1, 0)
    label.BackgroundTransparency = 1
    label.Text = text
    label.TextColor3 = COLORS.White
    label.TextSize = 14
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.Font = Enum.Font.GothamSemibold
    label.Parent = toggleContainer

    local toggleButton = Instance.new("TextButton")
    toggleButton.Name = "Toggle"
    toggleButton.Size = UDim2.new(0, 60, 0, 30)
    toggleButton.Position = UDim2.new(1, -65, 0.5, -15)
    toggleButton.BackgroundColor3 = defaultState and COLORS.White or COLORS.Gray
    toggleButton.Text = ""

    local toggleBtnCorner = createRoundedCorner(15)
    toggleBtnCorner.Parent = toggleButton

    local toggleBtnStroke = createStroke(defaultState and COLORS.White or COLORS.LightGray, 2)
    toggleBtnStroke.Parent = toggleButton

    local thumb = Instance.new("Frame")
    thumb.Name = "Thumb"
    thumb.Size = UDim2.new(0, 24, 0, 24)
    thumb.Position = defaultState and UDim2.new(1, -25, 0.5, -12) or UDim2.new(0, 1, 0.5, -12)
    thumb.BackgroundColor3 = defaultState and COLORS.Black or COLORS.DarkGray
    thumb.BorderSizePixel = 0

    local thumbCorner = createRoundedCorner(12)
    thumbCorner.Parent = thumb
    thumb.Parent = toggleButton

    -- Add glow effect
    local toggleGlow = createGlowEffect(toggleButton)
    toggleGlow.ImageTransparency = 0.95

    local isOn = defaultState or false

    toggleButton.MouseButton1Click:Connect(function()
        isOn = not isOn
        
        local goalPosition = isOn and UDim2.new(1, -25, 0.5, -12) or UDim2.new(0, 1, 0.5, -12)
        local goalColor = isOn and COLORS.White or COLORS.Gray
        local thumbColor = isOn and COLORS.Black or COLORS.DarkGray
        
        -- Complex animation sequence
        TweenService:Create(toggleButton, TWEEN_INFO.Smooth, {
            BackgroundColor3 = goalColor,
            Size = UDim2.new(0, 62, 0, 32)
        }):Play()
        
        TweenService:Create(thumb, TWEEN_INFO.Bounce, {
            Position = goalPosition,
            BackgroundColor3 = thumbColor
        }):Play()
        
        TweenService:Create(toggleBtnStroke, TWEEN_INFO.Smooth, {
            Color = isOn and COLORS.White or COLORS.LightGray
        }):Play()
        
        TweenService:Create(toggleGlow, TWEEN_INFO.Smooth, {
            ImageTransparency = isOn and 0.8 or 0.95
        }):Play()
        
        wait(0.1)
        TweenService:Create(toggleButton, TWEEN_INFO.Smooth, {
            Size = UDim2.new(0, 60, 0, 30)
        }):Play()
        
        if callback then
            callback(isOn)
        end
    end)

    toggleButton.Parent = toggleContainer
    toggleContainer.Parent = parent

    return {
        Container = toggleContainer,
        GetState = function() return isOn end,
        SetState = function(state)
            isOn = state
            thumb.Position = state and UDim2.new(1, -25, 0.5, -12) or UDim2.new(0, 1, 0.5, -12)
            toggleButton.BackgroundColor3 = state and COLORS.White or COLORS.Gray
            thumb.BackgroundColor3 = state and COLORS.Black or COLORS.DarkGray
        end
    }
end

-- Create Button với hiệu ứng shine và pulse
function NovaZ:CreateButton(parent, text, callback)
    local button = Instance.new("TextButton")
    button.Name = text .. "Button"
    button.Size = UDim2.new(1, 0, 0, 50)
    button.BackgroundColor3 = COLORS.Gray
    button.Text = text
    button.TextColor3 = COLORS.White
    button.TextSize = 14
    button.Font = Enum.Font.GothamBold
    button.AutoButtonColor = false

    local buttonCorner = createRoundedCorner(8)
    buttonCorner.Parent = button

    local buttonPadding = createPadding(20, 20, 15, 15)
    buttonPadding.Parent = button

    local buttonStroke = createStroke(COLORS.LightGray, 1)
    buttonStroke.Parent = button

    -- Add shine effect
    local shine = createShineEffect(button)
    shine.Visible = false

    -- Add pulse animation
    local pulse = createPulseAnimation(createGlowEffect(button))

    -- Hover effects
    button.MouseEnter:Connect(function()
        TweenService:Create(button, TWEEN_INFO.Smooth, {
            BackgroundColor3 = COLORS.LightGray,
            Size = UDim2.new(1, -5, 0, 52)
        }):Play()
        TweenService:Create(buttonStroke, TWEEN_INFO.Smooth, {
            Color = COLORS.White,
            Thickness = 2
        }):Play()
        shine.Visible = true
    end)

    button.MouseLeave:Connect(function()
        TweenService:Create(button, TWEEN_INFO.Smooth, {
            BackgroundColor3 = COLORS.Gray,
            Size = UDim2.new(1, 0, 0, 50)
        }):Play()
        TweenService:Create(buttonStroke, TWEEN_INFO.Smooth, {
            Color = COLORS.LightGray,
            Thickness = 1
        }):Play()
        shine.Visible = false
    end)

    button.MouseButton1Click:Connect(function()
        -- Click animation sequence
        TweenService:Create(button, TWEEN_INFO.Quick, {
            BackgroundColor3 = COLORS.White,
            TextColor3 = COLORS.Black
        }):Play()
        TweenService:Create(buttonStroke, TWEEN_INFO.Quick, {
            Thickness = 3
        }):Play()
        
        wait(0.1)
        
        TweenService:Create(button, TWEEN_INFO.Quick, {
            BackgroundColor3 = COLORS.LightGray,
            TextColor3 = COLORS.White
        }):Play()
        TweenService:Create(buttonStroke, TWEEN_INFO.Quick, {
            Thickness = 2
        }):Play()
        
        if callback then
            callback()
        end
    end)

    button.Parent = parent
    return button
end

-- Create Slider với hiệu ứng
function NovaZ:CreateSlider(parent, text, minValue, maxValue, defaultValue, callback)
    local sliderContainer = Instance.new("Frame")
    sliderContainer.Name = "SliderContainer"
    sliderContainer.Size = UDim2.new(1, 0, 0, 80)
    sliderContainer.BackgroundColor3 = COLORS.DarkGray
    sliderContainer.BorderSizePixel = 0

    local sliderCorner = createRoundedCorner(10)
    sliderCorner.Parent = sliderContainer

    local sliderPadding = createPadding(20, 20, 20, 20)
    sliderPadding.Parent = sliderContainer

    local sliderStroke = createStroke(COLORS.Gray, 1)
    sliderStroke.Parent = sliderContainer

    local label = Instance.new("TextLabel")
    label.Name = "Label"
    label.Size = UDim2.new(1, 0, 0, 25)
    label.BackgroundTransparency = 1
    label.Text = text .. ": " .. defaultValue
    label.TextColor3 = COLORS.White
    label.TextSize = 14
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.Font = Enum.Font.GothamSemibold
    label.Parent = sliderContainer

    local track = Instance.new("Frame")
    track.Name = "Track"
    track.Size = UDim2.new(1, 0, 0, 6)
    track.Position = UDim2.new(0, 0, 1, -30)
    track.BackgroundColor3 = COLORS.Gray
    track.BorderSizePixel = 0

    local trackCorner = createRoundedCorner(3)
    trackCorner.Parent = track
    track.Parent = sliderContainer

    local fill = Instance.new("Frame")
    fill.Name = "Fill"
    fill.Size = UDim2.new((defaultValue - minValue) / (maxValue - minValue), 0, 1, 0)
    fill.BackgroundColor3 = COLORS.White
    fill.BorderSizePixel = 0

    local fillCorner = createRoundedCorner(3)
    fillCorner.Parent = fill
    fill.Parent = track

    local thumb = Instance.new("TextButton")
    thumb.Name = "Thumb"
    thumb.Size = UDim2.new(0, 20, 0, 20)
    thumb.Position = UDim2.new((defaultValue - minValue) / (maxValue - minValue), -10, 0.5, -10)
    thumb.BackgroundColor3 = COLORS.White
    thumb.Text = ""

    local thumbCorner = createRoundedCorner(10)
    thumbCorner.Parent = thumb
    thumb.Parent = sliderContainer

    local thumbStroke = createStroke(COLORS.Black, 2)
    thumbStroke.Parent = thumb

    -- Add glow to thumb
    local thumbGlow = createGlowEffect(thumb)
    thumbGlow.ImageTransparency = 0.9

    local currentValue = defaultValue

    local function updateValue(xPosition)
        local relativeX = math.clamp(xPosition, 0, track.AbsoluteSize.X)
        local value = minValue + (relativeX / track.AbsoluteSize.X) * (maxValue - minValue)
        currentValue = math.floor(value)
        
        fill.Size = UDim2.new(relativeX / track.AbsoluteSize.X, 0, 1, 0)
        thumb.Position = UDim2.new(relativeX / track.AbsoluteSize.X, -10, 0.5, -10)
        label.Text = text .. ": " .. currentValue
        
        -- Pulse effect when changing value
        TweenService:Create(thumb, TWEEN_INFO.Quick, {
            Size = UDim2.new(0, 22, 0, 22)
        }):Play()
        wait(0.05)
        TweenService:Create(thumb, TWEEN_INFO.Quick, {
            Size = UDim2.new(0, 20, 0, 20)
        }):Play()
        
        if callback then
            callback(currentValue)
        end
    end

    thumb.MouseButton1Down:Connect(function()
        local connection
        connection = UserInputService.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement then
                updateValue(input.Position.X - track.AbsolutePosition.X)
            end
        end)
        
        UserInputService.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                connection:Disconnect()
            end
        end)
    end)

    sliderContainer.Parent = parent

    return {
        Container = sliderContainer,
        GetValue = function() return currentValue end,
        SetValue = function(value)
            currentValue = math.clamp(value, minValue, maxValue)
            local relativeX = ((currentValue - minValue) / (maxValue - minValue)) * track.AbsoluteSize.X
            fill.Size = UDim2.new(relativeX / track.AbsoluteSize.X, 0, 1, 0)
            thumb.Position = UDim2.new(relativeX / track.AbsoluteSize.X, -10, 0.5, -10)
            label.Text = text .. ": " .. currentValue
        end
    }
end

-- Create Dropdown với animation
function NovaZ:CreateDropdown(parent, text, options, defaultOption, callback)
    local dropdownContainer = Instance.new("Frame")
    dropdownContainer.Name = "DropdownContainer"
    dropdownContainer.Size = UDim2.new(1, 0, 0, 80)
    dropdownContainer.BackgroundTransparency = 1

    local label = Instance.new("TextLabel")
    label.Name = "Label"
    label.Size = UDim2.new(1, 0, 0, 25)
    label.BackgroundTransparency = 1
    label.Text = text
    label.TextColor3 = COLORS.White
    label.TextSize = 14
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.Font = Enum.Font.GothamSemibold
    label.Parent = dropdownContainer

    local dropdownButton = Instance.new("TextButton")
    dropdownButton.Name = "DropdownButton"
    dropdownButton.Size = UDim2.new(1, 0, 0, 45)
    dropdownButton.Position = UDim2.new(0, 0, 0, 30)
    dropdownButton.BackgroundColor3 = COLORS.DarkGray
    dropdownButton.Text = defaultOption or options[1] or "Select..."
    dropdownButton.TextColor3 = COLORS.White
    dropdownButton.TextSize = 14
    dropdownButton.Font = Enum.Font.Gotham
    dropdownButton.AutoButtonColor = false

    local buttonCorner = createRoundedCorner(8)
    buttonCorner.Parent = dropdownButton

    local buttonPadding = createPadding(15, 35, 12, 12)
    buttonPadding.Parent = dropdownButton

    local buttonStroke = createStroke(COLORS.Gray, 1)
    buttonStroke.Parent = dropdownButton

    local arrow = Instance.new("TextLabel")
    arrow.Name = "Arrow"
    arrow.Size = UDim2.new(0, 20, 0, 20)
    arrow.Position = UDim2.new(1, -25, 0.5, -10)
    arrow.BackgroundTransparency = 1
    arrow.Text = "▼"
    arrow.TextColor3 = COLORS.White
    arrow.TextSize = 12
    arrow.Font = Enum.Font.GothamBold
    arrow.Parent = dropdownButton

    local dropdownList = Instance.new("Frame")
    dropdownList.Name = "DropdownList"
    dropdownList.Size = UDim2.new(1, 0, 0, 0)
    dropdownList.Position = UDim2.new(0, 0, 1, 5)
    dropdownList.BackgroundColor3 = COLORS.DarkGray
    dropdownList.Visible = false
    dropdownList.BorderSizePixel = 0
    dropdownList.ClipsDescendants = true

    local listCorner = createRoundedCorner(8)
    listCorner.Parent = dropdownList

    local listLayout = Instance.new("UIListLayout")
    listLayout.Parent = dropdownList

    local isOpen = false
    local selectedOption = defaultOption or options[1]

    local function toggleDropdown()
        isOpen = not isOpen
        
        if isOpen then
            dropdownList.Visible = true
            dropdownList.Size = UDim2.new(1, 0, 0, math.min(#options * 40, 200))
            TweenService:Create(arrow, TWEEN_INFO.Smooth, {Rotation = 180}):Play()
            TweenService:Create(buttonStroke, TWEEN_INFO.Smooth, {
                Color = COLORS.White,
                Thickness = 2
            }):Play()
        else
            TweenService:Create(dropdownList, TWEEN_INFO.Smooth, {
                Size = UDim2.new(1, 0, 0, 0)
            }):Play()
            TweenService:Create(arrow, TWEEN_INFO.Smooth, {Rotation = 0}):Play()
            TweenService:Create(buttonStroke, TWEEN_INFO.Smooth, {
                Color = COLORS.Gray,
                Thickness = 1
            }):Play()
            wait(0.3)
            dropdownList.Visible = false
        end
    end

    dropdownButton.MouseButton1Click:Connect(toggleDropdown)

    -- Create options với hiệu ứng
    for i, option in ipairs(options) do
        local optionButton = Instance.new("TextButton")
        optionButton.Name = option
        optionButton.Size = UDim2.new(1, 0, 0, 40)
        optionButton.BackgroundColor3 = COLORS.DarkGray
        optionButton.Text = option
        optionButton.TextColor3 = COLORS.White
        optionButton.TextSize = 14
        optionButton.Font = Enum.Font.Gotham
        optionButton.AutoButtonColor = false

        local optionCorner = createRoundedCorner(6)
        optionCorner.Parent = optionButton

        local optionPadding = createPadding(15, 15, 10, 10)
        optionPadding.Parent = optionButton

        optionButton.MouseEnter:Connect(function()
            TweenService:Create(optionButton, TWEEN_INFO.Smooth, {
                BackgroundColor3 = COLORS.Gray
            }):Play()
        end)

        optionButton.MouseLeave:Connect(function()
            TweenService:Create(optionButton, TWEEN_INFO.Smooth, {
                BackgroundColor3 = COLORS.DarkGray
            }):Play()
        end)

        optionButton.MouseButton1Click:Connect(function()
            selectedOption = option
            dropdownButton.Text = option
            toggleDropdown()
            
            if callback then
                callback(option)
            end
        end)

        optionButton.Parent = dropdownList
    end

    dropdownList.Parent = dropdownButton
    dropdownButton.Parent = dropdownContainer
    dropdownContainer.Parent = parent

    return {
        Container = dropdownContainer,
        GetSelected = function() return selectedOption end,
        SetSelected = function(option)
            if table.find(options, option) then
                selectedOption = option
                dropdownButton.Text = option
            end
        end
    }
end

-- Create Text Input
function NovaZ:CreateInput(parent, text, placeholder, callback)
    local inputContainer = Instance.new("Frame")
    inputContainer.Name = "InputContainer"
    inputContainer.Size = UDim2.new(1, 0, 0, 80)
    inputContainer.BackgroundTransparency = 1

    local label = Instance.new("TextLabel")
    label.Name = "Label"
    label.Size = UDim2.new(1, 0, 0, 25)
    label.BackgroundTransparency = 1
    label.Text = text
    label.TextColor3 = COLORS.White
    label.TextSize = 14
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.Font = Enum.Font.GothamSemibold
    label.Parent = inputContainer

    local textBox = Instance.new("TextBox")
    textBox.Name = "TextBox"
    textBox.Size = UDim2.new(1, 0, 0, 45)
    textBox.Position = UDim2.new(0, 0, 0, 30)
    textBox.BackgroundColor3 = COLORS.DarkGray
    textBox.Text = ""
    textBox.PlaceholderText = placeholder or "Enter text..."
    textBox.PlaceholderColor3 = COLORS.Silver
    textBox.TextColor3 = COLORS.White
    textBox.TextSize = 14
    textBox.Font = Enum.Font.Gotham
    textBox.ClearTextOnFocus = false

    local boxCorner = createRoundedCorner(8)
    boxCorner.Parent = textBox

    local boxPadding = createPadding(15, 15, 12, 12)
    boxPadding.Parent = textBox

    local boxStroke = createStroke(COLORS.Gray, 1)
    boxStroke.Parent = textBox

    textBox.Focused:Connect(function()
        TweenService:Create(textBox, TWEEN_INFO.Smooth, {
            BackgroundColor3 = COLORS.Gray
        }):Play()
        TweenService:Create(boxStroke, TWEEN_INFO.Smooth, {
            Color = COLORS.White,
            Thickness = 2
        }):Play()
    end)

    textBox.FocusLost:Connect(function()
        TweenService:Create(textBox, TWEEN_INFO.Smooth, {
            BackgroundColor3 = COLORS.DarkGray
        }):Play()
        TweenService:Create(boxStroke, TWEEN_INFO.Smooth, {
            Color = COLORS.Gray,
            Thickness = 1
        }):Play()
        
        if callback then
            callback(textBox.Text)
        end
    end)

    textBox.Parent = inputContainer
    inputContainer.Parent = parent

    return {
        Container = inputContainer,
        GetText = function() return textBox.Text end,
        SetText = function(newText) textBox.Text = newText end
    }
end

-- Notification System với hiệu ứng
function NovaZ:Notify(title, message, duration)
    duration = duration or 3
    
    local notification = Instance.new("Frame")
    notification.Name = "Notification"
    notification.Size = UDim2.new(0, 300, 0, 80)
    notification.Position = UDim2.new(1, 350, 1, -100)
    notification.BackgroundColor3 = COLORS.DarkGray
    notification.BorderSizePixel = 0

    local notifCorner = createRoundedCorner(10)
    notifCorner.Parent = notification

    local notifStroke = createStroke(COLORS.White, 2)
    notifStroke.Parent = notification

    local notifPadding = createPadding(15, 15, 12, 12)
    notifPadding.Parent = notification

    -- Add glow
    local notifGlow = createGlowEffect(notification)
    notifGlow.ImageTransparency = 0.8

    local titleLabel = Instance.new("TextLabel")
    titleLabel.Name = "Title"
    titleLabel.Size = UDim2.new(1, 0, 0, 25)
    titleLabel.BackgroundTransparency = 1
    titleLabel.Text = title
    titleLabel.TextColor3 = COLORS.White
    titleLabel.TextSize = 16
    titleLabel.TextXAlignment = Enum.TextXAlignment.Left
    titleLabel.Font = Enum.Font.GothamBold
    titleLabel.Parent = notification

    local messageLabel = Instance.new("TextLabel")
    messageLabel.Name = "Message"
    messageLabel.Size = UDim2.new(1, 0, 1, -25)
    messageLabel.Position = UDim2.new(0, 0, 0, 25)
    messageLabel.BackgroundTransparency = 1
    messageLabel.Text = message
    messageLabel.TextColor3 = COLORS.Silver
    messageLabel.TextSize = 13
    messageLabel.TextXAlignment = Enum.TextXAlignment.Left
    messageLabel.TextYAlignment = Enum.TextYAlignment.Top
    messageLabel.Font = Enum.Font.Gotham
    messageLabel.Parent = notification

    notification.Parent = self.elements.ScreenGui

    -- Animation in
    TweenService:Create(notification, TWEEN_INFO.Elastic, {
        Position = UDim2.new(1, -320, 1, -100)
    }):Play()

    -- Auto remove
    delay(duration, function()
        TweenService:Create(notification, TWEEN_INFO.Smooth, {
            Position = UDim2.new(1, 350, 1, -100)
        }):Play()
        wait(0.3)
        notification:Destroy()
    end)
end

-- Cleanup
function NovaZ:Destroy()
    for _, animation in pairs(self.animations) do
        animation:Disconnect()
    end
    if self.elements.ScreenGui then
        self.elements.ScreenGui:Destroy()
    end
end

return NovaZ
