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
ImageLabel.Image = "http://www.roblox.com/asset/?id= 91093934153189"

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
local MacLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/LongHip2012/Lonely_Hub/main/LonelyHubUi/uilibrary.txt'))()

local Window = MacLib:Window({
   Title = "NazuX hub [Free]",
   Subtitle = "by LongHip12",
   Size = UDim2.fromOffset(500, 350),
   DragStyle = 1,
   DisabledWindowControls = {},
   ShowUserInfo = true,
   Keybind = Enum.KeyCode.LeftControl,
   AcrylicBlur = true,
})

local tabGroups = {
   TabGroup1 = Window:TabGroup()
}

local tabs = {
   Main = tabGroups.TabGroup1:Tab({ Name = "Tab Main", Image = "rbxassetid://10723407389" }),
}

local sections = {
   MainSection1 = tabs.Main:Section({ Side = "Left" ,a=true}),
}
tabs.Main:Select()
sections.MainSection1:SubLabel({
   Text = "General Mode."
})
sections.MainSection1:Toggle({
   Name = "Farm Generator [Wait 4s]",
   Default = false,
   Callback = function(value)
       getgenv().AutoGenerator = value
   end,
}, "AutoGenerator")

spawn(function()
   while true do
      wait()
      if getgenv().AutoGenerator and game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild('PuzzleUI') then
         for i,v in pairs(workspace.Map.Ingame.Map:GetChildren()) do
            wait()
            if v.Name == "Generator" and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Main.Position).Magnitude < 50 then
               print('Auto Detect General')
               v:WaitForChild("Remotes"):WaitForChild("RE"):FireServer()
               wait(4)
            end
         end
      end
   end
end)

sections.MainSection1:Toggle({
   Name = "Farm Generator [Logic]",
   Default = false,
   Callback = function(value)
       getgenv().AutoGenerator1 = value
   end,
}, "AutoGenerator")
function Firegenerator(v,b)
   if v.Progress.Value ~= 100 then
   v:WaitForChild("Remotes"):WaitForChild("RE"):FireServer()
   end
   wait(b)
end
spawn(function()
   while true do
      wait()
      if getgenv().AutoGenerator1 and game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild('PuzzleUI') then
         for i,v in pairs(workspace.Map.Ingame.Map:GetChildren()) do
            if v.Name == "Generator" and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Main.Position).Magnitude < 50 and v.Progress.Value ~= 100 then
               repeat wait()
                  TimeGeneratorLogic = 1.2
                  Firegenerator(v,TimeGeneratorLogic)
                  TimeGeneratorLogic = TimeGeneratorLogic + 0.2
                  Firegenerator(v,TimeGeneratorLogic)
                  TimeGeneratorLogic = TimeGeneratorLogic + 0.3
                  Firegenerator(v,TimeGeneratorLogic)
                  TimeGeneratorLogic = TimeGeneratorLogic + 0.4
                  Firegenerator(v,TimeGeneratorLogic)
                  TimeGeneratorLogic = TimeGeneratorLogic + 0.5
                  Firegenerator(v,TimeGeneratorLogic)
               until not getgenv().AutoGenerator1 or v.Progress.Value == 100 or not game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild('PuzzleUI')
            end
         end
      end
   end
end)

sections.MainSection1:Toggle({
   Name = "Esp Generator",
   Default = false,
   Callback = function(value)
       getgenv().EspGenerator = value
   end,
}, "EspGenerator")

spawn(function()
   while wait(1 + math.random(0.1,0.5)) do
      if getgenv().EspGenerator then
         if workspace.Map:FindFirstChild('Ingame') then
            for i,v in pairs(workspace.Map.Ingame.Map:GetChildren()) do
               if v.Name == "Generator" and not v.Main:FindFirstChildOfClass('Highlight') then
                  v.Main.Transparency = 0
                  local highlight = Instance.new("Highlight")
                  highlight.Adornee = v.Main
                  highlight.Parent = v.Main
                  highlight.FillColor = Color3.fromRGB(255, 255, 255)
                  highlight.FillTransparency = 0.9
               end
            end
         end
      end
   end
end)

sections.MainSection1:SubLabel({
   Text = "Players Mode."
})

sections.MainSection1:Toggle({
   Name = "Esp Players",
   Default = false,
   Callback = function(value)
       getgenv().EspPlayers = value
   end,
}, "EspPlayers")

spawn(function()
   while wait(2 + math.random(0.1,0.5)) do
      if getgenv().EspPlayers then
         for i,v in pairs(workspace.Players.Survivors:GetChildren()) do
            if v:IsA("Model") and not v:FindFirstChildOfClass('Highlight') then
               local highlight = Instance.new("Highlight")
               highlight.Adornee = v
               highlight.Parent = v
               highlight.FillColor = Color3.fromRGB(0, 255, 0)
               highlight.OutlineColor = Color3.fromRGB(0, 255, 0)
               highlight.FillTransparency = 0.9
            end
         end
         for i,v in pairs(workspace.Players.Killers:GetChildren()) do
            if v:IsA("Model") and not v:FindFirstChild('Highlight1') then
               local highlight = Instance.new("Highlight")
               highlight.Name = 'Highlight1'
               highlight.Adornee = v
               highlight.Parent = v
               highlight.FillColor = Color3.fromRGB(255, 0, 0)
               highlight.OutlineColor = Color3.fromRGB(255, 0, 0)
               highlight.FillTransparency = 0.9
            end
         end
      end
   end
end)

sections.MainSection1:Slider({
   Name = "Speed Players [Skull] :",
   Default = 1,
   Minimum = 1,
   Maximum = 7,
   DisplayMethod = "Value",
   Precision = 0,
   Callback = function(Value)
   getgenv().SpeedPlayers = Value
   end
}, "SpeedPlayers")

sections.MainSection1:Toggle({
   Name = "Enabled Speed Players",
   Default = false,
   Callback = function(value)
       getgenv().SpeedEnable = value
   end,
}, "EspPlayers")

spawn(function()
 while wait() do
    if getgenv().SpeedEnable then
       if getgenv().SpeedPlayers >= 1 then
         if game.Players.LocalPlayer.Character:FindFirstChild('SpeedMultipliers') and game.Players.LocalPlayer.Character.SpeedMultipliers:FindFirstChild('Sprinting') then
            game.Players.LocalPlayer.Character.SpeedMultipliers.Sprinting.Value = getgenv().SpeedPlayers
         end
       end
    end
 end
end)

sections.MainSection1:SubLabel({
   Text = "Aim Mode."
})

sections.MainSection1:Toggle({
   Name = "Aim Killer",
   Default = false,
   Callback = function(value)
       getgenv().AimKiller = value
   end,
}, "AimKiller")

spawn(function()
 while wait() do
    if getgenv().AimKiller then
      for i,v in pairs(workspace.Players.Killers:GetChildren()) do
         if v:IsA("Model") then
            repeat wait()
               workspace.Camera.CFrame = v.HumanoidRootPart.CFrame
            until not getgenv().AimKiller or not v
         end
      end
    end
 end
end)

function GetNearPlayer()
   for i, v in pairs(workspace.Players.Survivors:GetChildren()) do
      if v:FindFirstChild("HumanoidRootPart") and v:GetAttribute('Username') ~= game.Players.LocalPlayer.Name then
          local distance = (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
          if closestDistance and distance < closestDistance then
              closestDistance = distance
              plrnear = v
          else
            closestDistance = distance
            plrnear = v
          end
      end
  end
  return plrnear
end

sections.MainSection1:Toggle({
   Name = "Aim Near Players",
   Default = false,
   Callback = function(value)
       getgenv().AimPlr = value
   end,
}, "AimKil")
spawn(function()
   while wait() do
      if getgenv().AimPlr then
           if GetNearPlayer() then
              repeat wait()
                 workspace.Camera.CFrame = GetNearPlayer().HumanoidRootPart.CFrame
              until not getgenv().AimPlr or not v
           end
      end
   end
end)  
