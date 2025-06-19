----------------------------------------ToogleUi----------------------------------------

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local UICorner = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")

ScreenGui.Parent = game:GetService("CoreGui")  
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.AnchorPoint = Vector2.new(0.1, 0.1)
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 0
Frame.BorderColor3 = Color3.fromRGB(27, 42, 53)
Frame.BorderSizePixel = 1
Frame.Position = UDim2.new(0, 20, 0.1, -6)  
Frame.Size = UDim2.new(0, 50, 0, 50)
Frame.Name = "dut dit"

ImageLabel.Parent = Frame
ImageLabel.Name = "Banana Test"
ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
ImageLabel.Size = UDim2.new(0, 40, 0, 40)
ImageLabel.BackgroundColor3 = Color3.fromRGB(163, 162, 165)
ImageLabel.BackgroundTransparency = 1
ImageLabel.BorderSizePixel = 1
ImageLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
ImageLabel.ImageColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Image = "http://www.roblox.com/asset/?id=108581977144891"

UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = Frame

TextButton.Name = "TextButton"
TextButton.Parent = Frame
TextButton.AnchorPoint = Vector2.new(0, 0)
TextButton.Position = UDim2.new(0, 0, 0, 0)
TextButton.Size = UDim2.new(1, 0, 1, 0)
TextButton.BackgroundColor3 = Color3.fromRGB(163, 162, 165)
TextButton.BackgroundTransparency = 1
TextButton.BorderSizePixel = 1
TextButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextButton.TextColor3 = Color3.fromRGB(27, 42, 53)
TextButton.Text = ""
TextButton.Font = Enum.Font.SourceSans
TextButton.TextSize = 8
TextButton.TextTransparency = 0

local TweenService = game:GetService("TweenService")
local VirtualInputManager = game:GetService("VirtualInputManager")

local zoomedIn = false
local originalSize = UDim2.new(0, 40, 0, 40)
local zoomedSize = UDim2.new(0, 30, 0, 30)
local tweenInfo = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

local faded = false
local fadeInTween = TweenService:Create(Frame, tweenInfo, {BackgroundTransparency = 0.25})
local fadeOutTween = TweenService:Create(Frame, tweenInfo, {BackgroundTransparency = 0})

TextButton.MouseButton1Down:Connect(function()

    if zoomedIn then
        TweenService:Create(ImageLabel, tweenInfo, {Size = originalSize}):Play()
    else
        TweenService:Create(ImageLabel, tweenInfo, {Size = zoomedSize}):Play()
    end
    zoomedIn = not zoomedIn

    if faded then
        fadeOutTween:Play()
    else
        fadeInTween:Play()
    end
    faded = not faded

    VirtualInputManager:SendKeyEvent(true, "LeftControl", false, game)
end)
local TweenService = game:GetService("TweenService")
    local Players = game:GetService("Players")
    local SoundService = game:GetService("SoundService")
    local player = Players.LocalPlayer
-- Create Fluent Window
local Library = loadstring(game:HttpGetAsync("https://github.com/ActualMasterOogway/Fluent-Renewed/releases/latest/download/Fluent.luau"))()
local SaveManager = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/SaveManager.luau"))()
local InterfaceManager = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/InterfaceManager.luau"))()
local Window = Library:CreateWindow{
    Title = "NazuX Hub [ Beta ]",
    SubTitle = "by Anh Khoa",
    TabWidth = 160,
    Size = UDim2.fromOffset(500, 350),
    Resize = true,
    MinSize = Vector2.new(470, 380),
    Acrylic = true,
    Theme = "Light",
    MinimizeKey = Enum.KeyCode.LeftControl
}

-- Tabs
local Tabs = {
    Main = Window:CreateTab{ Title = "Tab Main", Icon = "leaf" },
    Settings = Window:CreateTab{ Title = "Tab Settings", Icon = "settings" }
}

-- Toggles
local AutoCollectToggle = Tabs.Main:CreateToggle("AutoCollect", {
    Title = "Auto Collect",
    Default = false
})

local AutoWalkToggle = Tabs.Main:CreateToggle("AutoWalk", {
    Title = "Auto Walk to Plants",
    Default = false
})

local SellInventoryToggle = Tabs.Main:CreateToggle("AutoSell", {
    Title = "Auto Sell Inventory Anywhere",
    Default = false
})

local SellInventoryToggle = Tabs.Main:CreateToggle("AutoSell", {
    Title = "Dupe money",
    Default = false
    task.spawn(function()
    while true do wait()
        for i, v in pairs(game:GetService("Players"):GetPlayers()) do
            if v ~= game.Players.LocalPlayer then
                local Pet = v.Character:FindFirstChildOfClass("Tool")
                if Pet and Pet:GetAttribute("ItemType") == "Pet" then
                    game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("SellPet_RE"):FireServer(Pet)
                end
            end
        end
    end
end)

})

-- Game Services
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local player = Players.LocalPlayer

-- Sell Function
local function sellInventory()
    local remote = ReplicatedStorage:FindFirstChild("SellItems") -- Replace if needed
    if remote and remote:IsA("RemoteEvent") then
        remote:FireServer()
        print("Inventory sold via RemoteEvent.")
    else
        warn("Sell RemoteEvent not found.")
    end
end

-- Find Your Plot
local function getOwnedPlot()
    for _, plot in pairs(workspace.Farm:GetChildren()) do
        local important = plot:FindFirstChild("Important") or plot:FindFirstChild("Importanert")
        if important then
            local data = important:FindFirstChild("Data")
            if data and data:FindFirstChild("Owner") and data.Owner.Value == player.Name then
                return plot
            end
        end
    end
    return nil
end

-- Auto Collect Logic
AutoCollectToggle:OnChanged(function(v)
    if v then
        task.spawn(function()
            while AutoCollectToggle.Value do
                local plot = getOwnedPlot()
                local farm = plot and plot:FindFirstChild("Important"):FindFirstChild("Plants_Physical")
                local character = player.Character
                if farm and character then
                    local root = character:FindFirstChild("HumanoidRootPart")
                    local humanoid = character:FindFirstChild("Humanoid")
                    if root and humanoid then
                        for _, prompt in ipairs(farm:GetDescendants()) do
                            if prompt:IsA("ProximityPrompt") then
                                local dist = (root.Position - prompt.Parent.Position).Magnitude
                                if dist <= 20 then
                                    prompt.Exclusivity = Enum.ProximityPromptExclusivity.AlwaysShow
                                    prompt.MaxActivationDistance = 100
                                    prompt.RequiresLineOfSight = false
                                    prompt.Enabled = true
                                    fireproximityprompt(prompt, 1, true)
                                elseif AutoWalkToggle.Value then
                                    humanoid:MoveTo(prompt.Parent.Position + Vector3.new(0, 5, 0))
                                end
                            end
                        end
                    end
                end
                task.wait(1)
            end
        end)
    end
end)

-- Auto Sell Logic
SellInventoryToggle:OnChanged(function(v)
    if v then
        task.spawn(function()
            while SellInventoryToggle.Value do
                sellInventory()
                task.wait(0.1)
            end
        end)
    end
end)

-- Save + Interface
SaveManager:SetLibrary(Library)
InterfaceManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({})
InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/specific-game")
InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)

SaveManager:LoadAutoloadConfig()

