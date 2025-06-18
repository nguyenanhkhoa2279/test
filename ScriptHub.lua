-- Check Executor 
local executor = getexecutorname() or identifyexecutor()

if executor then
    local supportedExecutors = {
        "Velocity",
        "Wave",
        "Arceus",
        "Swift",
        "AWP",
        "Macsploit",
        "Delta",
        "Fluxus",
        "CodeX",
        "Krnl",
        "Potassium",
        "Argon",
        "Nezur",
        "Cubix",
        "Volcano",
    }

    local isExecutorSupported = true
    for _, name in ipairs(supportedExecutors) do
        if string.find(executor, name) then
            isExecutorSupported = true
            break
        end
    end

    if isExecutorSupported then
        print("Supported Executor!")
    else
        game.Players.LocalPlayer:Kick("Please change Executor")
    end
end

repeat
    wait()
until game:IsLoaded() and game.Players.LocalPlayer

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
----------------------------------------Fluent----------------------------------------
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "NazuX Hub [Free]",
    SubTitle = "By AnhKhoa2279",
    TabWidth = 160,
    Size = UDim2.fromOffset(500, 350),
    Acrylic = true, 
    Theme = "Light",
    MinimizeKey = Enum.KeyCode.LeftControl
})
----------------------------------------Tab----------------------------------------
local Tabs = {
    Dis = Window:AddTab({ Title = "Tab Discord", Icon = "" }),
    Main = Window:AddTab({ Title = "Tab NazuX Hub", Icon = "" }),
    Paid = Window:AddTab({ Title = "Tab Paid Free", Icon = "" }),
    Lonely = Window:AddTab({ Title = "Tab Lonely Hub", Icon = "" }),
    Client = Window:AddTab({ Title = "Tab Executor", Icon = "" }),
    Dev = Window:AddTab({ Title = "Tab Developer", Icon = "" }),
    LP = Window:AddTab({ Title = "Tab Local Player", Icon = "" }),
    BF = Window:AddTab({ Title = "Tab Blox Fruits", Icon = "" }),
    King = Window:AddTab({ Title = "Tab King Legacy", Icon = "" }),
    Kai = Window:AddTab({ Title = "Tab Kaitun", Icon = "" }),
    MM2 = Window:AddTab({Title = "Tab Murder Mystery 2", Icon = ""}),
    Evade = Window:AddTab({Title = "Tab Evade", Icon = ""}),
    Door = Window:AddTab({ Title = "Tab Door", Icon = "" }),
    BB = Window:AddTab({ Title = "Tab Bladeball", Icon = "" }),
    Fs = Window:AddTab({ Title = "Tab Fisch", Icon = "" }),
    Blr = Window:AddTab({ Title = "Tab Bluelock", Icon = "" }),
    Shrimp = Window:AddTab({ Title = "Tab Shrimp Game", Icon = "" }),
    AD = Window:AddTab({ Title = "Tab Dead Rail", Icon = "" }),
    Grow = Window:AddTab({ Title = "Tab Grow A Garden", Icon = "" }),
}
----------------------------------------Dis----------------------------------------
    Tabs.Dis:AddButton({
        Title = "Discord",
        Description = "",
        Callback = function()
            setclipboard("https://discord.gg/HBEmPYXd")
        end
    })
----------------------------------------Main----------------------------------------
    Tabs.Main:AddButton({
        Title = "Blox Fruits",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/NguyenAnhKhoa500/NazuHubScript/refs/heads/main/MainBloxFruits.lua"))()
        end
    })

    Tabs.Main:AddButton({
        Title = "Grow A Garden",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/NguyenAnhKhoa500/NazuHubScript/refs/heads/main/GrowAGarden.lua"))()
        end
    })
----------------------------------------Paid----------------------------------------
    Tabs.Paid:AddButton({
        Title = "Banana Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/NguyenAnhKhoa500/BananaHub/refs/heads/main/BananaHub.lua"))()
        end
    })

    Tabs.Paid:AddButton({
        Title = "Maru Hub",
        Description = "",  
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/KimP/refs/heads/main/MaruHub"))()
        end
    })
----------------------------------------Lonely----------------------------------------
print("Lonely Tab Loading")
wait(0)
    Tabs.Lonely:AddButton({
        Title = "Lonely Blox Fruits",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/LongHip12/LonelyHub/refs/heads/main/LonelyHubScripts/LonelyHub-BF.lua"))()
        end
    })

    Tabs.Lonely:AddButton({
        Title = "Lonely Dead Rail",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/LongHip12/LonelyHub/refs/heads/main/LonelyHubScripts/LonelyHub-Deadrail.lua"))()
        end
    })

    Tabs.Lonely:AddButton({
        Title = "Lonely Meme sea",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/LongHip12/LonelyHub/refs/heads/main/LonelyHubScripts/LonelyHub-MemeSea.lua"))()
        end
    })

    Tabs.Lonely:AddButton({
        Title = "Lonely Fisch",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/LongHip12/LonelyHub/refs/heads/main/LonelyHubScripts/LonelyHub-Fisch.lua"))()
        end
    })

    Tabs.Lonely:AddButton({
        Title = "Script Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/LongHip12/LonelyHub/refs/heads/main/LonelyHubScripts/LonelyHub-ScriptHub.lua"))()
        end
    })
----------------------------------------Client----------------------------------------
print("Client Tab Loading")
wait(1)
    Tabs.Client:AddButton({
        Title = "SynapseX",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/LongHip2012/ScriptBloxFruit/refs/heads/main/SynapsexUi.lua"))()
        end
    })
    
    Tabs.Client:AddButton({
        Title = "ArceusX",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20X%20V3"))()
        end
    })
    
    Tabs.Client:AddButton({
        Title = "KRNL",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/LongHip2012/Lonely-Hub/refs/heads/main/KRNL%20UI%20Remake.lua.txt"))()
        end
    })
----------------------------------------Dev----------------------------------------
print("Dev Tab Loading")
wait(0)
Tabs.Dev:AddButton({
        Title = "Infinite Yield",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
        end
    })
    
Tabs.Dev:AddButton({
        Title = "Dark Dex",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
        end
    })
  
Tabs.Dev:AddButton({
        Title = "Simple Spy",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua"))()
        end
    })
----------------------------------------LP----------------------------------------
print("Loading Local Player Tab")
wait(0)
Tabs.LP:AddButton(
        {
            Title = "Infinite Jump",
            Description = "",
            Callback = function()
                local InfiniteJumpEnabled = true
                game:GetService("UserInputService").JumpRequest:connect(
                    function()
                        if InfiniteJumpEnabled then
                            game:GetService "Players".LocalPlayer.Character:FindFirstChildOfClass "Humanoid":ChangeState(
                                "Jumping"
                            )
                        end
                    end
                )
            end
        }
    )

    Tabs.LP:AddButton(
        {
            Title = "Anti Afk",
            Description = "",
            Callback = function()
                local VirtualUser = game:GetService("VirtualUser")

                game:GetService("Players").LocalPlayer.Idled:Connect(
                    function()
                        VirtualUser:CaptureController()
                        VirtualUser:ClickButton2(Vector2.new())
                    end
                )
            end
        }
    )

    local RunService = game:GetService("RunService")
    local Players = game:GetService("Players")
    local LocalPlayer = Players.LocalPlayer
    local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local noClipEnabled = false
    local noClipConnection = nil

    local function EnableNoClip()
        noClipEnabled = true
        noClipConnection =
            RunService.Stepped:Connect(
            function()
                for _, part in pairs(Character:GetChildren()) do
                    if part:IsA("BasePart") then
                        part.CanCollide = false
                    end
                end
            end
        )
    end

    local function DisableNoClip()
        noClipEnabled = false
        if noClipConnection then
            noClipConnection:Disconnect()
            noClipConnection = nil
        end
    end

    -- Nút bật NoClip
    Tabs.LP:AddButton(
        {
            Title = "Enable NoClip",
            Description = "",
            Callback = function()
                EnableNoClip()
            end
        }
    )

    -- Nút tắt NoClip
    Tabs.LP:AddButton(
        {
            Title = "Disable NoClip",
            Description = "",
            Callback = function()
                DisableNoClip()
            end
        }
    )

    Tabs.LP:AddButton(
        {
            Title = "No FOG",
            Description = "",
            Callback = function()
                local function removeFog()
                    local lighting = game:GetService("Lighting")
                    lighting.FogEnd = 1e10
                    lighting.FogStart = 1e10
                    lighting.FogColor = Color3.new(1, 1, 1)
                end

                removeFog()
            end
        }
    )

    Tabs.LP:AddButton(
        {
            Title = "Full Bright",
            Description = "",
            Callback = function()
                game:GetService("Lighting"):GetPropertyChangedSignal("FogEnd"):Connect(removeFog)
                game:GetService("Lighting"):GetPropertyChangedSignal("FogStart"):Connect(removeFog)
                game:GetService("Lighting"):GetPropertyChangedSignal("FogColor"):Connect(removeFog)

                game:GetService("Lighting").Changed:Connect(removeFog)

                local Light = game:GetService("Lighting")

                function dofullbright()
                    Light.Ambient = Color3.new(1, 1, 1)
                    Light.ColorShift_Bottom = Color3.new(1, 1, 1)
                    Light.ColorShift_Top = Color3.new(1, 1, 1)
                end

                dofullbright()

                Light.LightingChanged:Connect(dofullbright)
            end
        }
    )

    Tabs.LP:AddButton(
        {
            Title = "Super Fix Lag",
            Description = "",
            Callback = function()
                local Lighting = game:GetService("Lighting")
                local Players = game:GetService("Players")
                local LocalPlayer = Players.LocalPlayer
                local Workspace = game:GetService("Workspace")

                local function CanChangeColor(obj)
                    return obj:IsA("BasePart") and obj:IsDescendantOf(Workspace) and
                        not obj:IsDescendantOf(LocalPlayer.Character)
                end

                local function MakeStone(obj)
                    if CanChangeColor(obj) then
                        pcall(
                            function()
                                obj.Color = Color3.fromRGB(115, 115, 115)
                                obj.Material = Enum.Material.SmoothPlastic
                                obj.Reflectance = 0
                            end
                        )
                    end
                end

                for _, obj in pairs(Workspace:GetDescendants()) do
                    MakeStone(obj)
                end

                Workspace.DescendantAdded:Connect(
                    function(obj)
                        task.wait(0.1)
                        MakeStone(obj)
                    end
                )

                local function RemoveUnnecessaryEffects(obj)
                    pcall(
                        function()
                            if
                                obj:IsA("ParticleEmitter") or obj:IsA("Beam") or obj:IsA("Trail") or obj:IsA("Fire") or
                                    obj:IsA("Smoke") or
                                    obj:IsA("Sparkles") or
                                    obj:IsA("Explosion") or
                                    obj:IsA("Highlight") or
                                    obj:IsA("Decal") or
                                    obj:IsA("Texture") or
                                    obj:IsA("PointLight") or
                                    obj:IsA("SurfaceLight") or
                                    obj:IsA("SpotLight")
                             then
                                obj:Destroy()
                            end
                        end
                    )
                end

                for _, obj in pairs(Workspace:GetDescendants()) do
                    RemoveUnnecessaryEffects(obj)
                end

                Workspace.DescendantAdded:Connect(
                    function(obj)
                        task.wait(0.1) -- Tối ưu độ trễ
                        RemoveUnnecessaryEffects(obj)
                    end
                )

                pcall(
                    function()
                        Lighting.GlobalShadows = false
                        Lighting.Brightness = 2
                        Lighting.Ambient = Color3.new(1, 1, 1)
                        Lighting.OutdoorAmbient = Color3.new(1, 1, 1)
                        Lighting.FogEnd = 1000000
                        Lighting.Technology = Enum.Technology.Compatibility

                        local sky = Lighting:FindFirstChild("Sky")
                        if sky then
                            sky:Destroy()
                        end
                    end
                )

                local function ResetCharacterAppearance(character)
                    pcall(
                        function()
                            for _, obj in pairs(character:GetChildren()) do
                                if obj:IsA("Shirt") or obj:IsA("Pants") or obj:IsA("ShirtGraphic") then
                                    obj:Destroy()
                                end
                                if obj:IsA("BodyColors") then
                                    obj:Destroy()
                                end
                            end

                            for _, part in pairs(character:GetChildren()) do
                                if part:IsA("BasePart") then
                                    part.Color = Color3.fromRGB(163, 162, 165) -- Màu mặc định
                                end
                            end
                        end
                    )
                end

                if LocalPlayer.Character then
                    ResetCharacterAppearance(LocalPlayer.Character)
                end

                LocalPlayer.CharacterAdded:Connect(
                    function(character)
                        task.wait(1)
                        ResetCharacterAppearance(character)
                    end
                )

                local function RemoveEnemyClothes()
                    if Workspace:FindFirstChild("Enemies") then
                        for _, enemy in pairs(Workspace.Enemies:GetChildren()) do
                            ResetCharacterAppearance(enemy)
                        end
                    end
                end

                RemoveEnemyClothes()

                if Workspace:FindFirstChild("Enemies") then
                    Workspace.Enemies.ChildAdded:Connect(
                        function(enemy)
                            task.wait(1)
                            ResetCharacterAppearance(enemy)
                        end
                    )
                end

                warn("Fix Lag Completed!")
            end
        }
    )

    Tabs.LP:AddButton(
        {
            Title = "AntiLag 90%",
            Description = "",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/TurboLite/Script/main/FixLag.lua"))()
            end
        }
    )
----------------------------------------BF----------------------------------------
Tabs.BF:AddButton({
        Title = "Redz Hub",
        Description = "",  
        Callback = function()
local Settings = {
    JoinTeam = "Pirates"; -- Pirates / Marines
    Translator = true;   -- true / false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/tlredz/Scripts/refs/heads/main/main.luau"))(Settings)
        end
    })
    
Tabs.BF:AddButton({
        Title = "Hiru Hub",
        Description = "",  
        Callback = function()
            repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaStupid/ExecuteGames/main/QuestGames.lua"))()
        end
    })
    
    Tabs.BF:AddButton({
        Title = "Vxeze Hub",
        Description = "",  
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Dex-Bear/Vxezehub/refs/heads/main/Skidlamcho.txt"))()
        end
    })
    
    Tabs.BF:AddButton({
        Title = "Tsuo Hub",
        Description = "",  
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Tsuo7/TsuoHub/main/Tsuoscripts"))()
        end
    })
    Tabs.BF:AddButton({
        Title = "Xero Hub",
        Description = "",  
        Callback = function()
            getgenv().Team = "Marines"
getgenv().Hide_Menu = false
getgenv().Auto_Execute = false
loadstring(game:HttpGet("https://raw.githubusercontent.com/Xero2409/XeroHub/refs/heads/main/main.lua"))()
        end
    })

    Tabs.BF:AddButton({
        Title = "Teddy HOP",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletgojo/Haidepzai/refs/heads/main/Teddy-Premium"))()
        end
    })
    
Tabs.BF:AddButton({
        Title = "Auto Bounty Lion Hub",
        Description = "",
        Callback = function()
            repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
getgenv().Team = "Pirates"
getgenv().Config = {
    ["Safe Health"] = {50},
    ["Custom Y Run"] = {
        Enabled = true,
        ["Y Run"] = 5000
    },
    ["Hunt Method"] = {
        ["Use Move Predict"] = false,
        ["Hit and Run"] = false,
        ["Aimbot"] = true,
        ["ESP Player"] = true,
        ["Max Attack Time"] = 60
    },
    ["Shop"] = {
        ["Random Fruit"] = false,
        ["Store Fruit"] = true,
        ["Zoro Sword"] = false
    }, 
    ["Ui Theme"] = {
        ["Background"] = "139756291389843",
        ["Skip Button"] = "113079599736013",
        ["Reset Bounty Button"] = "118191900561814"
    },
    ["Setting"] = {
        ["World"] = nil,
        ["White Screen"] = false,
        ["Invisible"] = true,
        ["Fast Delay"] = 0.7, 
        ["Tween Speed"] = 350,
        ["Set Player Server Hop"] = 1,
        ["Url"] = "Your_Webhook_Url",
        ["Chat"] = {
            Enabled = true,
            Wait = 350,
            Massage = {"Fan YT Nghiarobloxtt"}
        }
    },
    ["Skip"] = {
        ["Avoid V4"] = false
    },
    ["Spam All Skill On V4"] = {
        Enabled = true,
        ["Weapons"] = {"Melee", "Sword", "Gun", "Blox Fruit"}
    },
    Items = {
        Use = {"Melee", "Sword", "Blox Fruit"},
        Melee = {
            Enable = true,
            Delay = 0.4,
            Skills = {
                Z = {Enable = true, HoldTime = 0.3},
                X = {Enable = true, HoldTime = 0.2},
                C = {Enable = true, HoldTime = 0.5}
            }
        },
        Sword = {
            Enable = true,
            Delay = 0.5,
            Skills = {
                Z = {Enable = true, HoldTime = 1},
                X = {Enable = true, HoldTime = 0}
            }
        },
        Gun = {
            Enable = false,
            Delay = 0.2,
            Skills = {
                Z = {Enable = false, HoldTime = 0.1},
                X = {Enable = false, HoldTime = 0.1}
            }
        },
        ["Blox Fruit"] = {
            Enable = true,
            Delay = 0.4,
            Skills = {
                Z = {Enable = true, HoldTime = 0.1},
                X = {Enable = true, HoldTime = 0.1},
                C = {Enable = true, HoldTime = 0.15},
                V = {Enable = true, HoldTime = 0.2},
                F = {Enable = false, HoldTime = 0.1}
            }
        }
    }
}
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/10f7f97cebba24a87808c36ebd345a97.lua"))()
        end
    })
    
Tabs.BF:AddButton({
        Title = "Cokka Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/UserDevEthical/Loadstring/main/CokkaHub.lua"))()
        end
    })
    
    Tabs.BF:AddButton({
        Title = "Hoho Hub V4",
        Description = "",
        Callback = function()
            _G.HohoVersion = "v4"
            loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
        end
    })

Tabs.BF:AddButton({
        Title = "Frost Ware Chest",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://frostware.onrender.com/fwchest"))()
        end
    })
    
    Tabs.BF:AddButton({
        Title = "Frost Ware Main",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://frostware.onrender.com/fw"))()
        end
    })
    
    
    Tabs.BF:AddButton({
        Title = "ThunderZ Chest",
        Description = "",
        Callback = function()
        _G.Team = "Marine" -- "Marine" or "Pirate"
_G.MetodeTeleport = "Tween" --"Instant" or "Tween"
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ThundarZ/Welcome/refs/heads/main/Main/BloxFruit/Chest/AllDevices.lua"))()
        end
    })

    Tabs.BF:AddButton({
        Title = "",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Skzuppy/forge-hub/main/loader.lua"))()
        end
    })
    
    Tabs.BF:AddButton({
        Title = "Lion Hub",
        Description = "",
        Callback = function()
           getgenv().Team = "Pirates"
            loadstring(game:HttpGet("https://raw.githubusercontent.com/NHMdz/BloxFruit/refs/heads/main/Lion%20Hub.lua"))()
        end
    })

    Tabs.BF:AddButton({
        Title = "Volcano Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/wpisstestfprg/Volcano/refs/heads/main/VolcanoNewUpdated.luau"))()
        end
    })
    
    Tabs.BF:AddButton({
        Title = "W azure",
        Description = "",
        Callback = function()
getgenv().Team = "Marines"
getgenv().AutoLoad = false --Will Load Script On Server Hop
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b2169cf53bc6104dabe8e19562e5cc2.lua"))()
        end
    })
    
    Tabs.BF:AddButton({
        Title = "Astral Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Overgustx2/Main/refs/heads/main/BloxFruits_25.html"))()
        end
    })
    
    Tabs.BF:AddButton({
        Title = "Volcano Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/wpisstestfprg/Volcano/refs/heads/main/VolcanoNewUpdated.luau"))()
        end
    })

    Tabs.BF:AddButton({
        Title = "Quantum Onyx Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Trustmenotcondom/QTONYX/refs/heads/main/QuantumOnyx.lua"))()
        end
    })
    
    Tabs.BF:AddButton({
        Title = "Relz Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/farghii/relzhub/main/execute.hack"))()
        end
    })
    
    Tabs.BF:AddButton({
        Title = "Alchemy Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://scripts.alchemyhub.xyz"))()
        end
    })
    
    Tabs.BF:AddButton({
        Title = "Blue X Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/Main.lua"))()
        end
    })
    
    Tabs.BF:AddButton({
        Title = "Kncrypt Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/Kncrypt/refs/heads/main/sources/BloxFruit.lua"))()
        end
    })
    
    Tabs.BF:AddButton({
        Title = "Xero Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Xero2409/XeroHub/refs/heads/main/main.lua"))()
        end
    })
   
   Tabs.BF:AddButton({
        Title = "Rubu Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/RubuRoblox/refs/heads/main/RubuBF"))()
        end
    })
    
   Tabs.BF:AddButton({
        Title = "Speed X Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"))()
        end
    })
    
    Tabs.BF:AddButton({
        Title = "Billdev Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/selciawashere/screepts/refs/heads/main/BFKEYSYS"))()
        end
    })
----------------------------------------King----------------------------------------
    Tabs.BF:AddButton({
        Title = "Arc Hub",
        Description = "",
        Callback = function()
            getgenv().RaidUI = false -- For Hidden Raid Mode true = show and false = hidden
getgenv().CustomDistance = 10 -- For Bug Can't Swipe Distance
loadstring(game:HttpGet("https://raw.githubusercontent.com/ChopLoris/ArcHub/main/main.lua"))()
        end
    })
----------------------------------------Kai------------------------------------------
        Tabs.Kai:AddButton(
        {
            Title = "Shinichi Hub",
            Description = "Shinigay Hub",
            Callback = function()
                getgenv().Shinichi = {
    ["Buy Seeds"] = {
        ["Enabled"] = true,
        ["Item"] = {
            ["Carrot"] = true,
            ["Strawberry"] = true,
            ["Blueberry"] = true,
            ["Orange Tulip"] = true,
            ["Tomato"] = true,
            ["Corn"] = true,
            ["Daffodil"] = true,
            ["Watermelon"] = true,
            ["Pumpkin"] = true,
            ["Apple"] = true,
            ["Bamboo"] = true,
            ["Coconut"] = true,
            ["Cactus"] = true,
            ["Dragon Fruit"] = true,
            ["Mango"] = true,
            ["Grape"] = true,
            ["Mushroom"] = true,
            ["Pepper"] = true,
            ["Cacao"] = true,
            ["Beanstalk"] = true
        }
    },
    ["Buy Tools"] = {
        ["Enabled"] = false,
        ["Item"] = {
            ["Watering Can"] = true,
            ["Trowel"] = true,
            ["Recall Wrench"] = true,
            ["Basic Sprinkler"] = true,
            ["Advanced Sprinkler"] = true,
            ["Godly Sprinkler"] = true,
            ["Lightning Rod"] = true,
            ["Master Sprinkler"] = true,
            ["Favorite Tool"] = true
        }
    },
    ["Buy Eggs"] = {
        ["Enabled"] = true,
        ["Item"] = {
            ["Common Egg"] = false,
            ["Uncommon Egg"] = false,
            ["Rare Egg"] = false,
            ["Legendary Egg"] = false,
            ["Mythical Egg"] = false,
            ["Bug Egg"] = true
        }
    },
    ["Buy Events"] = {
        ["Enabled"] = true,
        ["Item"] = {
            ["Flower Seed Pack"] = true,
            ["Nectarine Seed"] = true,
            ["Hive Fruit Seed"] = true,
            ["Honey Sprinkler"] = true,
            ["Bee Egg"] = true,
            ["Bee Crate"] = false,
            ["Honey Comb"] = false,
            ["Bee Chair"] = false,
            ["Honey Torch"] = false,
            ["Honey Walkway"] = false
        }
    },
    ["Dont Buy Seed"] = {
        ["If Money More Than"] = 1000000, -- If we have money more than this, will not buying from Seed Name List
        ["Seed Name"] = {
            "Strawberry",  "Blueberry", "Tomato", "Corn", "Apple"
        }
    },
    ["Delete Planted Seed"] = {
        ["Enabled"] = true,
        ["Slot"] = {
            {slot = 200, min = 0},        -- if money 0 then using this slot
            {slot = 100, min = 1000000},  -- if money 1.000.000 then using this slot
            {slot = 50,  min = 10000000}, -- if money 10.000.000 then using this slot
        },
        ["Name Seed Delete"] = {
            "Strawberry",  "Blueberry", "Tomato", "Corn", "Apple"
        }, 
          ["Buy Honey Shop"] = {
        ["Flower Seed Pack"] = true,
        ["Hive Fruit Seed"] = true,
        ["Bee Crate"] = true,
        ["Nectarine Seed"] = true,
        ["Bee Egg"] = true
        }
    }
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/shinichi-dz/phucshinsayhi/refs/heads/main/KaitunGrowAGarden.lua"))()
        end
    })

    Tabs.Kai:AddButton({
        Title = "Vxeze Hub",
        Description = "",
        Callback = function()
            getgenv().VxezeHubConfig = {

    ["Auto Collect Plants"] = true,

    ["Auto Collect Moonlit Fruit"] = false,

    ["Auto Collect Blood Fruit"] = false,

    ["Loop Auto Sell"] = true,


 

    ["Auto Buy M+ Seeds"] = false,

    ["Auto Buy Selected Seeds"] = true,

    ["Select All Seeds"] = true,

    ["SelectedSeedsToBuy"] = {

        ["Apple"] = false, ["Bamboo"] = false, ["Beanstalk"] = false, ["Blueberry"] = false,

        ["Cacao"] = false, ["Cactus"] = false, ["Carrot"] = false, ["Coconut"] = false,

        ["Corn"] = false, ["Daffodil"] = false, ["Dragon Fruit"] = false, ["Grape"] = false,

        ["Mango"] = false, ["Mushroom"] = false, ["Orange"] = false, ["Pepper"] = false,

        ["Pumpkin"] = false, ["Strawberry"] = false, ["Tomato"] = false, ["Watermelon"] = false

    },


 

    ["Auto Buy Blood"] = false,

    ["Select All Blood Items"] = true,

    ["SelectedBloodItemsToBuy"] = {

        ["Blood Banana"] = false, ["Blood Hedgehog"] = false, ["Blood Kiwi"] = false, ["Blood Owl"] = false,

        ["Moon Melon"] = false, ["Mysterious Crate"] = false, ["Night Egg"] = false,

        ["Night Seed Pack"] = false, ["Star Caller"] = false

    },


 

    ["Auto Buy Eggs"] = false,

    ["Eggs"] = {

        ["Common"] = true, ["Uncommon"] = true, ["Rare"] = true,

        ["Legendary"] = true, ["Mythical"] = true, ["Bug"] = true,

    },

    ["Auto Plant All Seeds"] = true,

    ["Select All Plantable Seeds"] = true,

    ["SelectedSeedsToPlant"] = {

        ["Apple"] = false, ["Bamboo"] = false, ["Beanstalk"] = false, ["Blueberry"] = false,

        ["Cacao"] = false, ["Cactus"] = false, ["Carrot"] = false, ["Coconut"] = false,

        ["Corn"] = false, ["Daffodil"] = false, ["Dragon Fruit"] = false, ["Grape"] = false,

        ["Mango"] = false, ["Mushroom"] = false, ["Orange"] = false, ["Pepper"] = false,

        ["Pumpkin"] = false, ["Strawberry"] = false, ["Tomato"] = false, ["Watermelon"] = false

    },


 

    ["Auto Submit Moonlit"] = false,

    ["Anti-AFK"] = true,

    ["Player NoClip"] = true,

    ["Camera NoClip"] = true,

    ["Continuous E Hold"] = true,

    ["Auto Max Zoom"] = true,

}

loadstring(game:HttpGet("https://raw.githubusercontent.com/Dex-Bear/Vxezehub/refs/heads/main/VxezeHubGrowAGardenKaitun.lua"))()
        end
    })

    Tabs.Kai:AddButton({
        Title = "Xeno Hub",
        Description = "",
        Callback = function()
            -- Max level, godhuman, cdk, sgt
getgenv().Shutdown = true -- Turn on if u are farming bulk accounts
getgenv().Configs = {
    ["Team"] = "Marines",
    ["Gun Farm"] = false, -- Fast farm level, but farming melee is slow
    ["FPS Boost"] = {
        ["Enable"] = true,
        ["FPS Cap"] = 35,
    },
    ["Farm Boss Drops"] = {
        ["Enable"] = false,
        ["When x2 Exp Expired"] = false
    },
    ["Hop"] = {
        ["Enable"] = true,
        ["Hop Find Tushita"] = true,
        ["Hop Find Valkyrie Helm"] = true,
        ["Hop Find Mirror Fractal"] = true
    },
    ["Farm Mastery"] = {
        ["Enable"] = true,
        ["Farm Mastery Weapons"] = {"Sword", "Gun", "Blox Fruit"}, -- Blox Fruit, Gun (left -> right: High -> Low Priority)
        ["Swords To Farm"] = {"Cursed Dual Katana"},
        ["Guns To Farm"] = {"Skull Guitar"},
        ["Mastery Health (%)"] = 40 -- For Blox Fruit, Gun
    },
    ["Auto Spawn rip_indra"] = true,
    ["Auto Spawn Dough King"] = true,
    ["Auto Pull Lever"] = true,
    ["Auto Collect Berry"] = false,
    ["Auto Evo Race"] = false,
    ["Awaken Fruit"] = True,
    ["Rainbow Haki"] = true,
    ["Hop Player Near"] = true,
    ["Skull Guitar"] = true,
    ["Find Fruit"] = true, -- Will find 1m+ fruit to unlock swan door to access third sea
    ["Cursed Dual Katana"] = true,
    ["Switch Melee"] = true,
    ["Eat Fruit"] = "", -- leave blank for none, put the fruit name like this example: Smoke Fruit, T-Rex Fruit, ...
    ["Snipe Fruit"] = "", -- leave blank for none, put the fruit name like this example: Smoke Fruit, T-Rex Fruit, ...
    ["Lock Fragment"] = 0,
    ["Buy Stuffs"] = true -- buso, geppo, soru, ken haki, ...
}
repeat task.wait() pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Xero2409/XeroHub/refs/heads/main/kaitun.lua"))() end) until getgenv().Check_Execute
        end
    })

    Tabs.Kai:AddButton({
        Title = "Mokuro Hub",
        Description = "",
        Callback = function()
            getgenv().Mode = "OneClick"
getgenv().Setting = {
    ["Team"] = "Pirates", -- Options "Pirates", "Marines"
    ["FucusOnLevel"] = true,
    ["Fruits"] = {  -- setting for fruits u want
        ["Primary"] = { -- if current fruit is not in this list, eat/buy
            "Dough-Dough",
            "Dragon-Dragon",
            "Buddha-Buddha",
            -- u can configs add mores/remove and must end with , (comma symbol)
        },
        ["Normal"] = { -- it just a normal fruit list
            "Flame-Flame",
            "Light-Light",
            "Magma-Magma",
            -- u can configs add mores/remove and must end with , (comma symbol)
        }
        -- run this for get all fruit name `local t={};for _,v in pairs(game.ReplicatedStorage.Remotes.CommF_:InvokeServer("GetFruits"))do table.insert(t,v.Name)end;setclipboard(table.concat(t, "\n"))`
    },
    ["Lock Fruits"] = { -- don't use or eat fruits in this list
        "Yeti-Yeti",
        "T-Rex-T-Rex"
    },
    ["IdleCheck"] = 300, -- every (x) seconds if not moving rejoin
};

loadstring(game:HttpGet("https://raw.githubusercontent.com/xQuartyx/QuartyzScript/main/Loader.lua"))()
        end
    })

    Tabs.Kai:AddButton({
        Title = "Royx Hub",
        Description = "",
        Callback = function()
            _G.KaitunConfig = {
    ["Start Farm"] = true,
    -- all melee is already do with it self
    -- auto activate list ( Auto Do List )
    --[[ //auto activate list//
        GodHuman, all melee
        get god human material
        random fruit , store fruit
        smart code redeem

        / sea 1
        auto go sea 2
        skip farm level
        saber
        kill Greybeard (bisento v2)

        / sea 2
        auto go sea 3
        kill darkbeard
        race v2
        bartilo

        / sea 3
        kill boss

        dough awaking
        CDK
        elite hunter
    ]]
    ["Auto Fruit"] = true, -- tween to fruit

    ["RedeemCode Level"] = 2,

    ["white screen"] = false, -- will go white on not focus

    ["Ui Screen"] = false,

    ["LimitFragment"] = 100000,

    -- item

    ["Buy Base Sword"] = true,
    ["Boss List"] = { -- put boss for farm item ---pls dont put boss that have requirement (like Saber boss dofrmigo) because it already kill if can
        "The Saw [Lv. 100] [Boss]",
        "Greybeard [Lv. 750] [Raid Boss]",
    
        "Darkbeard [Lv. 1000] [Raid Boss]",
        "Cursed Captain [Lv. 1325] [Raid Boss]",

        "Captain Elephant [Lv. 1875] [Boss]",
        "Soul Reaper [Lv. 2100] [Raid Boss]",
        "Dough King [Lv. 2300] [Raid Boss]",
        "Cake Prince [Lv. 2300] [Raid Boss]",
        "rip_indra True Form [Lv. 5000] [Raid Boss]",
        "Beautiful Pirate [Lv. 1950] [Boss]",
        "Cake Queen [Lv. 2175] [Boss]"
    },

    -- sea 1
    ["PlayerHunter"] = true, -- will do skip lvl too
    ["Player Hunter Hop"] = true,

    -- sea 2
    ["Auto Factory"] = true,
    ["Rengoku"] = true,
    ["Sea 3 Hop"] = true, -- hop to find fruit
    ["Race v3"] = true,
    ["Skip Race v3"] = true, -- will go sea 3 not care u will get race or not
    ["Instance Soul Guitar"] = false,-- will not go sea 3 if not got dark frag
    
    -- sea 3
    ["CDK"] = true,
    ["Tushita"] = true,
    ["Yama"] = true,
    ["Soul Guitar"] = true,
    ["Pull Lever"] = true,

    -- Add On
    ["Farm When Lvl Max"] = "Katakuri", -- Bone , Katakuri , Coco
    ["Ghoul Race"] = false, -- it beta
    ["Race Lock"] = {"Human","Mink","Fishman"}, -- Human , Mink , Fishman , Skypiea -- but Skypiea not recommend is hard to kill other pp
    ["FPS Cap"] = 60,

    ["Buy Haki Color"] = true, -- will buy only Snow White,Pure Red,Winter Sky
    ["Auto Legendary Sword"] = false,
    ["Auto TTK"] = false,

    -- Sword
    ["Mastery Sword"] = true, -- will farm mastery
    ["Select Rarity"] = {"Mythical","Legendary"}, -- Common , Uncommon,Rare,Legendary,Mythical

    -- Fruit
    ["Select Main Devil Fruit Sniper"] = {"Kitsune-Kitsune"}, -- if have will eat
    ["Select Sub Devil Fruit Sniper"] = {"Dragon-Dragon"}, -- will eat if not have main fruit
    ["Allow Eat Fruit In Inventory"] = true,
    ["Start Sniper"] = true,
    
    -- Fruit2
    ["Safe Fruit"] = {"Dragon-Dragon","Spirit-Spirit","Venom-Venom","Dough-Dough","Kitsune-Kitsune"}, -- will not use this fruit to raids or anyting

    -- Webhook
    ["Link Webhook"] = "",
    ["Start Webhook"] = false,
    ["Webhook Mode"] = "Send Every .. min", -- "Send Every .. min","Send On Level Max","Send On Level Max And Every .. min"
    ["Webhook Minute"] = 10, -- mean 10 Minute
    ["tag user"] = false,
    ["Send Test Webhook"] = false,
}
loadstring(game:HttpGet("https://api.realaya.xyz/v1/files/l/73mkp0aqyfo4ypy8hvl0nz10lq49fey5.lua"))()
        end
    })
----------------------------------------MM2----------------------------------------
    Tabs.MM2:AddButton(
        {
            Title = "Space Hub",
            Description = "",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/ago106/SpaceHub/refs/heads/main/Multi"))()
        end
    })

    Tabs.MM2:AddButton(
        {
            Title = "X Hub",
            Description = "",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/mzkv/mm2/refs/heads/main/xHUB", true))()
        end
    })

    Tabs.MM2:AddButton(
        {
            Title = "Tbao Hub",
            Description = "",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubMurdervssheriff"))()
        end
    })

    Tabs.MM2:AddButton(
        {
            Title = "Kiciahook Hub",
            Description = "",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/kiciahook/kiciahook/refs/heads/main/loader.lua"))()
        end
    })

    Tabs.MM2:AddButton(
        {
            Title = "Tora Is Me's Hub",
            Description = "",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/mm2", false))()
        end
    })

    Tabs.MM2:AddButton(
        {
            Title = "Yarhm Hub",
            Description = "",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Joystickplays/psychic-octo-invention/main/yarhm.lua",))()
        end
    })

    Tabs.MM2:AddButton(
        {
            Title = "Express Hub",
            Description = "",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/AscendFromHeaven/Kitsune-Hub/refs/heads/main/WhitelistMM2"))()
        end
    })

    Tabs.MM2:AddButton(
        {
            Title = "Solix Hub",
            Description = "",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/debunked69/Solixreworkkeysystem/refs/heads/main/solix%20new%20keyui.lua"))()
        end
    })

    Tabs.MM2:AddButton(
        {
            Title = "Foggy Hub",
            Description = "",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/FOGOTY/mm2-piano-reborn/refs/heads/main/scr"))()
        end
    })

    Tabs.MM2:AddButton(
        {
            Title = "Y Hub",
            Description = "",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Luarmor123/YHUB-Community/refs/heads/main/Murder-Mystery2"))()
        end
    })

    Tabs.MM2:AddButton(
        {
            Title = "Forge Hub",
            Description = "",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Skzuppy/forge-hub/main/loader.lua"))()
        end
    })

    Tabs.MM2:AddButton(
        {
            Title = "Vertex Hub",
            Description = "",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/vertex-peak/vertex/refs/heads/main/loadstring"))()
        end
    })

    Tabs.MM2:AddButton(
        {
            Title = "Yarhm Hub",
            Description = "",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Joystickplays/psychic-octo-invention/main/yarhm.lua",))()
        end
    })

    Tabs.MM2:AddButton(
        {
            Title = "Kidachi Hub",
            Description = "",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/KidichiHB/Kidachi/main/Scripts/MM2", true))()
        end
    })

    Tabs.MM2:AddButton(
        {
            Title = "Auto Farm",
            Description = "",
            Callback = function()
                --Best configs that dont kick you:
                _G.AutofarmSettings = {
                    AntiAfk = true,
                    DelayFarm = 2.15,
                    ResetWhenFullBag = true,
                    CoinType = "BeachBall",
                    Disable3DRendering = false,
                    ImproveFPS = false,
                    StartAutofarm = false
                }
                --You can set StartAutofarm to true if you want put autofarm to autoexec
                loadstring(game:HttpGet("https://raw.githubusercontent.com/NoCapital2/MM2Autofarm/main/script"))()
        end
    })

    Tabs.MM2:AddButton(
        {
            Title = "Symphony Hub",
            Description = "",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Thattsick/Symphony-Hub/main/Arrayfields"))()
        end
    })

    Tabs.MM2:AddButton(
        {
            Title = "Mars Hub",
            Description = "",
            Callback = function()
                -- Join our discord https://discord.gg/hr43CMJNkc
                -- Only for MM2 (Murder Mystery 2)

                loadstring(game:HttpGet("https://raw.githubusercontent.com/1andonlymars/MarsHub/main/MM2"))()
        end
    })

    Tabs.MM2:AddButton(
        {
            Title = "R3Th Priv Hub",
            Description = "",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/zxclua/m/main/script"))()
        end
    })

    Tabs.MM2:AddButton(
        {
            Title = "Nexus Hub",
            Description = "",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/s-0-a-b/nexus/main/loadstring"))()
        end
    })
----------------------------------------Evade----------------------------------------
    Tabs.Evade:AddButton(
        {
            Title = "Pepes's Hub",
            Description = "",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/PepesGH1/stuff/main/evadeloader.lua"))
            end
        }
    )

    Tabs.Evade:AddButton(
        {
            Title = "Tora Is Me Hub",
            Description = "",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/EvadeEvent"))
            end
        }
    )

    Tabs.Evade:AddButton(
        {
            Title = "Aurora Hub",
            Description = "",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/cocotv666/Aurora/main/Aurora_Loader"))()
            end
        }
    )

    Tabs.Evade:AddButton(
        {
            Title = ".xyz hub",
            Description = "",
            Callback = function()
                loadstring(
                    game:HttpGet("https://raw.githubusercontent.com/xdevslasher/xyz.evade/main/xyz.evade.lua", true)
                )()
            end
        }
    )

    Tabs.Evade:AddButton(
        {
            Title = "Moon Hub",
            Description = "",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/V3rmz/LemonadeHub/main/Mobile"))()
            end
        }
    )

    Tabs.Evade:AddButton(
        {
            Title = "Tbao Hub",
            Description = "",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubEvade"))()
            end
        }
    )
----------------------------------------Doors----------------------------------------
    Tabs.Door:AddButton({
        Title = "Mspaint V4",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/002c19202c9946e6047b0c6e0ad51f84.lua"))()
        end
    })
    
    Tabs.Door:AddButton({
        Title = "Black King X Bob Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/DarkDoorsKing/Doors/main/Main"))()
        end
    })
    
   Tabs.Door:AddButton({
        Title = "Kolbol Hub",
        Description = "",  
        Callback = function()
            loadstring(game:HttpGet("https://pastefy.app/awczkDwJ/raw"))()
        end
    })
    
    Tabs.Door:AddButton({
        Title = "Item Giver",
        Description = "",  
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Darli17/Entities/refs/heads/main/Tools"))()
        end
    })
    
    Tabs.Door:AddButton({
        Title = "Kittycat Hub",
        Description = "",  
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/CatEnddroid/Kitty-Cats-Doors-Beta/refs/heads/main/hub.lua"))()
        end
    })
    
    Tabs.Door:AddButton({
        Title = "Sensation Hub",
        Description = "",  
        Callback = function()
            loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/730854e5b6499ee91deb1080e8e12ae3.lua"))()
        end
    })
    
    Tabs.Door:AddButton({
        Title = "FFJ Hub",
        Description = "",  
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/FFJ1/Roblox-Exploits/main/scripts/Loader.lua"))()
        end
    })
    
    
----------------------------------------BB----------------------------------------
Tabs.BB:AddButton({
        Title = "Eminence Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/EminenceXLua/Blade-your-Balls/main/BladeBallLoader.lua"))()
        end
    })
    
    Tabs.BB:AddButton({
        Title = "Depth Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githu busercontent.com/funhaji/Blade-Ball/refs/heads/main/No-Lag.lua", true))()
        end
    })
    
    Tabs.BB:AddButton({
        Title = "Beanz Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/pid4k/scripts/main/BeanzHub.lua"))()
        end
    })
    
    Tabs.BB:AddButton({
        Title = "Ronix Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/79ab2d3174641622d317f9e234797acb.lua"))()
        end
    })
    
    Tabs.BB:AddButton({
        Title = "R4mage Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/r4mpage4/4R4mpageHub/refs/heads/main/FixedAntiCheat.lua"))()
        end
    })
    
    Tabs.BB:AddButton({
        Title = "Frostware Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Fsploit/Frostware/refs/heads/main/F-R-O-S-T-W-A-R-E%20BY%20FSPLOIT-BLADE%20BALL.lua"))()
        end
    })
    
    Tabs.BB:AddButton({
        Title = "Frostware V1.4 Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Fsploit/Frostware-/refs/heads/main/Bypass.lua"))()
        end
    })
    
    Tabs.BB:AddButton({
        Title = "Lunar Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Akirascripts/Lunar/refs/heads/main/LuanrOnTop"))()
        end
    })
    
    Tabs.BB:AddButton({
        Title = "Pi Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://pi-hub.pages.dev/protected/loader.lua"))()
        end
    })
    
    Tabs.BB:AddButton({
        Title = "Astrox Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/SoyAdriYT/AstroX/main/Loader.lua"))()
        end
    })
    
    Tabs.BB:AddButton({
        Title = "Nexam Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/CQUqebf5"))()
        end
    })
    
    Tabs.BB:AddButton({
        Title = "FFJ Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/FFJ1/Roblox-Exploits/main/scripts/Loader.lua"))()
        end
    })
    
    Tabs.BB:AddButton({
        Title = "Alchemy Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://scripts.alchemyhub.xyz"))()
        end
    })
    
    Tabs.BB:AddButton({
        Title = "Zap Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://zaphub.xyz/ExecBB"))()
        end
    })
----------------------------------------Fisch----------------------------------------
  Tabs.Fs:AddButton({
        Title = "Speed X Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"))()
        end
    })
    
    Tabs.Fs:AddButton({
        Title = "Zenith Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Efe0626/ZenithHub/refs/heads/main/Loader"))()
        end
    })
    
    Tabs.Fs:AddButton({
        Title = "Mspaint",
        Description = "",
        Callback = function()
            setclipboard("https://mspaint.cc")
        end
    })
    
    Tabs.Fs:AddButton({
        Title = "Alchemy Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://scripts.alchemyhub.xyz"))()
        end
    })
    
    Tabs.Fs:AddButton({
        Title = "Raito Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Efe0626/RaitoHub/refs/heads/main/Script"))()
        end
    })
    
    Tabs.Fs:AddButton({
        Title = "Ronix Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/e4d72046eb884e9c01333d3e704fc2d7.lua"))()
        end
    })
    
    Tabs.Fs:AddButton({
        Title = "Moon X Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/cba17b913ee63c7bfdbb9301e2d87c8b.lua"))()
        end
    })
    
    Tabs.Fs:AddButton({
        Title = "Y Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Luarmor123/community-Y-HUB/refs/heads/main/Fisch-YHUB"))()
        end
    })
    
    Tabs.Fs:AddButton({
        Title = "Solix Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/debunked69/Solixreworkkeysystem/refs/heads/main/solix%20new%20keyui.lua"))()
        end
    })
    
    Tabs.Fs:AddButton({
        Title = "Forge Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Skzuppy/forge-hub/main/loader.lua"))()
        end
    })
    
    
----------------------------------------BLR----------------------------------------    
Tabs.Blr:AddButton({
        Title = "Sterling Hub",
        Description = "",
        Callback = function()
            local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")
local player = Players.LocalPlayer
local function onErrorMessageChanged(errorMessage)
    if errorMessage and errorMessage ~= "" then
        print("Error detected: " .. errorMessage)
        if player then
            wait()
            TeleportService:Teleport(game.PlaceId, player)
        end
    end
end
GuiService.ErrorMessageChanged:Connect(onErrorMessageChanged)
loadstring(game:HttpGet("https://raw.githubusercontent.com/Zayn31214/name/refs/heads/main/SterlingNew"))()
        end
    })
    
    Tabs.Blr:AddButton({
        Title = "Alchemy Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://scripts.alchemyhub.xyz"))()
        end
    })
    
    Tabs.Blr:AddButton({
        Title = "OMG Hub",
        Description = "",  
        Callback = function()
            loadstring(game:HttpGet("https://rawscripts.net/raw/UPD-Blue-Lock:-Rivals-OMG-Hub-29091"))()
        end
    })
 Tabs.Blr:AddButton({
        Title = "Tbao Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/game/refs/heads/main/TbaoHubBlueLockRivals"))()
        end
    })
    
    Tabs.Blr:AddButton({
        Title = "BillDev Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/selciawashere/screepts/refs/heads/main/BLRTBDKEYSYS"))()
        end
    })
    
    Tabs.Blr:AddButton({
        Title = "Nicuse Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://nicuse.xyz/MainHub.lua"))()
        end
    })
    
    Tabs.Blr:AddButton({
        Title = "Arbix Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://pastefy.app/lbLVUm8Z/raw"))()
        end
    })
    
    Tabs.Blr:AddButton({
        Title = "Legend Handless Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/LHking123456/ct4gFewpLxRHJ/refs/heads/main/BLRivals"))()
        end
    })
    
    Tabs.Blr:AddButton({
        Title = "NS Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/OhhMyGehlee/fo/refs/heads/main/ot"))()
        end
    })
----------------------------------------ShrimpGame----------------------------------------
Tabs.Shrimp:AddButton({
        Title = "Rip Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/ShrimpGame.lua"))()
        end
    })
    
    Tabs.Shrimp:AddButton({
        Title = "Moon X Hub",
        Description = "",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/MateoDev2024/MoonX/refs/heads/main/Loader.lua"))()
        end
    })
----------------------------------------AD----------------------------------------
    Tabs.AD:AddButton({
        Title = "Skull hub",
        Description = "",
        Callback = function()
           loadstring(game:HttpGet('https://raw.githubusercontent.com/hungquan99/SkullHub/main/loader.lua'))()
        end
    })

    Tabs.AD:AddButton({
        Title = "",
        Description = "",
        Callback = function()
           loadstring(game:HttpGet("https://raw.githubusercontent.com/ArdyBotzz/NatHub/refs/heads/master/NatHub.lua"))()
        end
    })
----------------------------------------Grow----------------------------------------
    Tabs.Deadrail:AddButton(
        {
            Title = "Speed Hub X",
            Description = "",
            Callback = function()
                loadstring(
                    game:HttpGet(
                        "https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua",
                        true
                    )
                )()
            end
        }
    )

    Tabs.Grow:AddButton(
        {
            Title = "H4xScripts Hub",
            Description = "",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/H4xScripts/Loader/refs/heads/main/loader2.lua"))()
            end
        }
    )

    Tabs.Grow:AddButton(
        {
            Title = "Alchemy Hub,
            Description = "",
            Callback = function()
                loadstring(game:HttpGet("https://scripts.alchemyhub.xyz"))()
            end
        }
    )

    Tabs.Grow:AddButton(
        {
            Title = "Ameicaa Hub",
            Description = "",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/tesghg/Grow-a-Garden/main/ameicaa_Grow_A_Garden.lua"))()
            end
        }
    )

    Tabs.Grow:AddButton(
        {
            Title = "Ameicaa1 Hub",
            Description = "",
            Callback = function()
                loadstring(
                    game:HttpGet("https://raw.githubusercontent.com/ameicaa1/Grow-a-Garden/main/Grow_A_Garden.lua")
                )()
            end
        }
    )
    
    Tabs.Grow:AddButton(
        {
            Title = "Nootmaus's Hub",
            Description = "",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/nootmaus/GrowAAGarden/refs/heads/main/mauscripts"))()
            end
        }
    )
    
    Tabs.Grow:AddButton(
        {
            Title = "Ameicaa1 Hub",
            Description = "No Name:)",
            Callback = function()
                loadstring(
                    game:HttpGet("https://raw.githubusercontent.com/ameicaa1/Grow-a-Garden/main/Grow_A_Garden.lua")
                )()
            end
        }
    )

    Tabs.Grow:AddButton(
        {
            Title = "Space Hub",
            Description = "",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/ago106/SpaceHub/refs/heads/main/Multi"))()
            end
        }
    )

    Tabs.Grow:AddButton(
        {
            Title = "Photon Hub",
            Description = "",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/NittarPP/PhotonScript/refs/heads/main/Loading/Loading.lua"
                    )
                )()
            end
        }
    )
    Tabs.Grow:AddButton(
        {
            Title = "Doggo Hub",
            Description = "",
            Callback = function()
                loadstring(
                    game:HttpGet("https://raw.githubusercontent.com/doggoman230/growagarden/refs/heads/main/script")
                )()
            end
        }
    )

    Tabs.Grow:AddButton(
        {
            Title = "Depso Hub",
            Description = "",
            Callback = function()
                loadstring(
                    game:HttpGet(
                        ("https://raw.githubusercontent.com/depthso/Grow-a-Garden/refs/heads/main/autofarm.lua")
                    )
                )()
            end
        }
    )

    Tabs.Grow:AddButton(
        {
            Title = "Combo Chronicle Vault Hub",
            Description = "",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/checkurasshole/Script/refs/heads/main/IQ"))()
            end
        }
    )

    Tabs.Grow:AddButton(
        {
            Title = "Hakariq Hub",
            Description = "",
            Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/hakariqScripts/Roslina/refs/heads/main/Ro"))(

                )
            end
        }
    )

    Tabs.Grow:AddButton(
        {
            Title = "Grow A Garden",
            Description = "",
            Callback = function()
                loadstring(
                    game:HttpGet("https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/GrowaGarden", true)
                )()
            end
        }
    )

    Tabs.Grow:AddButton(
        {
            Title = "Gentle Hub",
            Description = "",
            Callback = function()
                loadstring(
                    game:HttpGet("https://raw.githubusercontent.com/GentleScriptHub/GentleHub/refs/heads/main/Games")
                )()
            end
        }
    )

    Tabs.Grow:AddButton(
        {
            Title = "Legend Hub",
            Description = "",
            Callback = function()
                loadstring(game:HttpGet("https://scripts.city/LegendHub.lua"))()
            end
        }
    )

    Tabs.Grow:AddButton(
        {
            Title = "Tbao Hub",
            Description = "",
            Callback = function()
                loadstring(game:HttpGet("https://github.com/tbao143/game/blob/main/TbaoHubGrowGarden?raw=true"))()
            end
        }
    )

    Tabs.Grow:AddButton(
        {
            Title = "Lunor Hub",
            Description = "",
            Callback = function()
                loadstring(game:HttpGet("https://lunor.dev/loader"))()
            end
        }
    )