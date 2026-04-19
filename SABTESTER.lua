-- H4ll0 Script | SAB - FULL FEATURES w/ KEY SYSTEM
-- Authorized Pentest Tool - Complete Brainrot Assessment Suite
-- Key Auth Required | Horror Red Glitch Theme

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")

-- ========================================
-- KEY SYSTEM CONFIG
-- ========================================
local KEY = nil -- Set your key here for auto-auth
local AUTHORIZED_KEYS = {
    "H4LL0-2026-BRAINROT-V1",
    "SAB-PENTEST-KEY123", 
    "REDTEAM-H4LL0-999",
    "BRAINROT-MASTER-KEY"
}
local isAuthenticated = false

-- Key GUI Setup (Horror Red Glitch)
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "H4ll0KeyAuth"
ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

local KeyFrame = Instance.new("Frame")
KeyFrame.Size = UDim2.new(0, 450, 0, 350)
KeyFrame.Position = UDim2.new(0.5, -225, 0.5, -175)
KeyFrame.BackgroundColor3 = Color3.fromRGB(15, 0, 0)
KeyFrame.BorderSizePixel = 0
KeyFrame.Parent = ScreenGui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 20)
UICorner.Parent = KeyFrame

-- Glitch Animation
local glitchInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut, -1, true)
local glitchTween = TweenService:Create(KeyFrame, glitchInfo, {BackgroundColor3 = Color3.fromRGB(50, 0, 0)})

-- Title
local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 100)
Title.Position = UDim2.new(0, 0, 0, 10)
Title.BackgroundTransparency = 1
Title.Text = "🔥 H4ll0 Script | SAB 🔥\nBRAINROT FULL SUITE"
Title.TextColor3 = Color3.fromRGB(255, 0, 0)
Title.TextScaled = true
Title.Font = Enum.Font.GothamBlack
Title.TextStrokeTransparency = 0
Title.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
Title.Parent = KeyFrame

-- Key Input
local KeyBox = Instance.new("TextBox")
KeyBox.Size = UDim2.new(0.85, 0, 0, 60)
KeyBox.Position = UDim2.new(0.075, 0, 0, 130)
KeyBox.BackgroundColor3 = Color3.fromRGB(35, 0, 0)
KeyBox.BorderSizePixel = 0
KeyBox.Text = ""
KeyBox.PlaceholderText = "👻 Enter Key (H4LL0-2026-BRAINROT-V1)"
KeyBox.TextColor3 = Color3.fromRGB(255, 100, 100)
KeyBox.PlaceholderColor3 = Color3.fromRGB(200, 0, 0)
KeyBox.TextScaled = true
KeyBox.Font = Enum.Font.GothamBold
KeyBox.Parent = KeyFrame

local KeyCorner = Instance.new("UICorner")
KeyCorner.CornerRadius = UDim.new(0, 12)
KeyCorner.Parent = KeyBox

-- Verify Button
local VerifyBtn = Instance.new("TextButton")
VerifyBtn.Size = UDim2.new(0.85, 0, 0, 60)
VerifyBtn.Position = UDim2.new(0.075, 0, 0, 220)
VerifyBtn.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
VerifyBtn.BorderSizePixel = 0
VerifyBtn.Text = "🔑 VERIFY & LOAD SCRIPT"
VerifyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
VerifyBtn.TextScaled = true
VerifyBtn.Font = Enum.Font.GothamBlack
VerifyBtn.Parent = KeyFrame

local BtnCorner = Instance.new("UICorner")
BtnCorner.CornerRadius = UDim.new(0, 12)
BtnCorner.Parent = VerifyBtn

-- Status Label
local StatusLabel = Instance.new("TextLabel")
StatusLabel.Size = UDim2.new(1, 0, 0, 50)
StatusLabel.Position = UDim2.new(0, 0, 1, -50)
StatusLabel.BackgroundTransparency = 1
StatusLabel.Text = "⏳ Awaiting Authentication..."
StatusLabel.TextColor3 = Color3.fromRGB(255, 255, 0)
StatusLabel.TextScaled = true
StatusLabel.Font = Enum.Font.GothamBold
StatusLabel.Parent = KeyFrame

-- KEY AUTHENTICATION
VerifyBtn.MouseButton1Click:Connect(function()
    local inputKey = KeyBox.Text:upper()
    
    glitchTween:Play()
    StatusLabel.Text = "🔍 Verifying Key..."
    StatusLabel.TextColor3 = Color3.fromRGB(0, 255, 255)
    
    wait(1.5)
    
    -- Validate Key
    for _, validKey in pairs(AUTHORIZED_KEYS) do
        if inputKey == validKey then
            isAuthenticated = true
            StatusLabel.Text = "✅ AUTHORIZED! Loading Full Suite..."
            StatusLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
            
            wait(2)
            ScreenGui:Destroy()
            loadFullScript()
            return
        end
    end
    
    -- Invalid Key
    StatusLabel.Text = "❌ INVALID KEY! Access Denied"
    StatusLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
    KeyBox.Text = ""
end)

-- AUTO-AUTH FOR DEV (Remove in production)
if KEY and table.find(AUTHORIZED_KEYS, KEY) then
    isAuthenticated = true
    wait(1)
    ScreenGui:Destroy()
    loadFullScript()
end

-- ========================================
-- FULL MAIN SCRIPT (All Features)
-- ========================================
function loadFullScript()
    local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    local Humanoid = Character:WaitForChild("Humanoid")
    local RootPart = Character:WaitForChild("HumanoidRootPart")
    
    print("🔥 H4ll0 FULL SUITE LOADED - KEY AUTHENTICATED 🔥")
    
    -- Red Glitch UI Library
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/H4ll0/SAB-UI/master/RedGlitchUI.lua"))()
    local Window = Library:CreateWindow("H4ll0 | SAB FULL SUITE ✓", "AUTHORIZED", Color3.fromRGB(0, 255, 0))
    
    -- Auth Badge
    Window:Label("🔑 KEY VERIFIED | Full Red Team Access")
    
    -- Variables
    local flying = false
    local stealing = false
    local brainrotItems = {}
    local stealCount = 0
    local antiSlap = false
    local invisible = false
    local baseLocked = false
    local flySpeed = 50
    
    -- Red Glitch Character Effects
    local function applyGlitch(part)
        part.Color = Color3.fromRGB(100, 0, 0)
        part.Material = Enum.Material.Neon
        local light = Instance.new("PointLight")
        light.Color = Color3.fromRGB(255, 0, 0)
        light.Brightness = 2
        light.Range = 10
        light.Parent = part
        spawn(function()
            while light.Parent do
                light.Enabled = not light.Enabled
                wait(0.1)
            end
        end)
    end
    
    for _, part in pairs(Character:GetChildren()) do
        if part:IsA("BasePart") then
            applyGlitch(part)
            part.CanCollide = false
        end
    end
    
    -- BRAINROT FUNCTIONS
    local function scanBrainrot()
        brainrotItems = {}
        for _, obj in pairs(workspace:GetDescendants()) do
            if (obj.Name:lower():find("brain") or obj.Name:lower():find("rot") or 
                obj.Name:lower():find("item") or obj.Name:lower():find("collect")) and 
                (obj:IsA("Part") or obj:IsA("MeshPart")) and obj:FindFirstChild("Handle") then
                table.insert(brainrotItems, obj)
            end
        end
    end
    
    -- 1. FLY (ESP32 Anti-Detect)
    Window:Toggle("✈️ Fly Hack", function(state)
        flying = state
        if flying then
            local bv = Instance.new("BodyVelocity")
            local bg = Instance.new("BodyGyro")
            bv.MaxForce = Vector3.new(4000, 4000, 4000)
            bg.MaxTorque = Vector3.new(4000, 4000, 4000)
            bv.Parent = RootPart
            bg.Parent = RootPart
            
            spawn(function()
                while flying do
                    local cam = workspace.CurrentCamera
                    local move = Vector3.new(0,0,0)
                    local uis = game:GetService("UserInputService")
                    
                    if uis:IsKeyDown(Enum.KeyCode.W) then move = move + cam.CFrame.LookVector end
                    if uis:IsKeyDown(Enum.KeyCode.S) then move = move - cam.CFrame.LookVector end
                    if uis:IsKeyDown(Enum.KeyCode.A) then move = move - cam.CFrame.RightVector end
                    if uis:IsKeyDown(Enum.KeyCode.D) then move = move + cam.CFrame.RightVector end
                    if uis:IsKeyDown(Enum.KeyCode.Space) then move = move + Vector3.new(0,1,0) end
                    if uis:IsKeyDown(Enum.KeyCode.LeftShift) then move = move - Vector3.new(0,1,0) end
                    
                    bv.Velocity = move * flySpeed
                    bg.CFrame = cam.CFrame
                    wait()
                end
                bv:Destroy()
                bg:Destroy()
            end)
        end
    end)
    
    Window:Slider("Fly Speed", 16, 100, function(value)
        flySpeed = value
    end)
    
    -- 2. SPEED HACK
    Window:Slider("⚡ Speed", 16, 500, function(value)
        Humanoid.WalkSpeed = value
    end)
    
    -- 3. TELEPORT SYSTEM
    Window:Button("🎯 TP Nearest Brainrot", function()
        scanBrainrot()
        local closest, dist = nil, math.huge
        for _, brainrot in pairs(brainrotItems) do
            if brainrot and brainrot.Parent then
                local mag = (brainrot.Handle.Position - RootPart.Position).Magnitude
                if mag < dist then
                    closest = brainrot.Handle
                    dist = mag
                end
            end
        end
        if closest then
            RootPart.CFrame = closest.CFrame * CFrame.new(0, 5, -3)
        end
    end)
    
    -- 4. AUTO STEAL + BASE TP
    Window:Toggle("🧠 Auto Steal → Base", function(state)
        stealing = state
        local basePos = Vector3.new(0, 50, 0)
        spawn(function()
            while stealing do
                scanBrainrot()
                for _, brainrot in pairs(brainrotItems) do
                    if brainrot and brainrot.Parent then
                        local dist = (brainrot.Handle.Position - RootPart.Position).Magnitude
                        if dist < 100 then
                            local oldCFrame = RootPart.CFrame
                            RootPart.CFrame = brainrot.Handle.CFrame * CFrame.new(0, 0, -5)
                            firetouchinterest(RootPart, brainrot.Handle, 0)
                            wait(0.05)
                            firetouchinterest(RootPart, brainrot.Handle, 1)
                            RootPart.CFrame = oldCFrame
                            stealCount = stealCount + 1
                        end
                    end
                end
                
                -- Auto base return
                if (RootPart.Position - basePos).Magnitude > 150 then
                    RootPart.CFrame = CFrame.new(basePos)
                end
                wait(0.1)
            end
        end)
    end)
    
    -- 5. INVISIBLE BRAINROT
    Window:Toggle("👻 Invisible", function(state)
        invisible = state
        for _, part in pairs(Character:GetChildren()) do
            if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
                part.Transparency = state and 1 or 0.3
            end
        end
    end)
    
    -- 6. INFINITE TIME LOCK BASE
    Window:Toggle("⏰ Infinite Base Time", function(state)
        baseLocked = state
        spawn(function()
            while baseLocked do
                -- SAB time GUI lock (adjust path as needed)
                pcall(function()
                    LocalPlayer.PlayerGui.TimeGui.TextLabel.Text = "∞:∞:∞"
                end)
                wait(1)
            end
        end)
    end)
    
    -- 7. SKIN BASE + FLYING PARTS
    Window:Button("🎨 Red Glitch Skin Base", function()
        for _, part in pairs(workspace:GetDescendants()) do
            if part.Name:lower():find("base") or part.Name:lower():find("spawn") then
                part.Color = Color3.fromRGB(50, 0, 0)
                part.Material = Enum.Material.ForceField
                applyGlitch(part)
            end
        end
    end)
    
    -- 8. ANTI GET SLAPPED
    Window:Toggle("🛡️ Anti Slap", function(state)
        antiSlap = state
        Humanoid.MaxHealth = state and math.huge or 100
        Humanoid.Health = state and math.huge or 100
    end)
    
    -- 9. BRAINROT ESP
    Window:Toggle("👁️ Brainrot ESP", function(state)
        for _, brainrot in pairs(brainrotItems) do
            if brainrot:FindFirstChild("BillboardGui") then
                brainrot.BillboardGui:Destroy()
            end
            if state and brainrot and brainrot.Parent then
                local esp = Instance.new("BillboardGui", brainrot.Handle)
                esp.Size = UDim2.new(0, 120, 0, 60)
                esp.StudsOffset = Vector3.new(0, 4, 0)
                local label = Instance.new("TextLabel", esp)
                label.Size = UDim2.new(1, 0, 1, 0)
                label.BackgroundTransparency = 1
                label.Text = "🧠 BRAINROT #" .. stealCount
                label.TextColor3 = Color3.fromRGB(255, 0, 0)
                label.TextStrokeTransparency = 0
                label.Font = Enum.Font.GothamBold
                label.TextScaled = true
            end
        end
    end)
    
    -- Live Stats
    local statsLabel = Window:Label("🧠 Stolen: 0 | Status: READY")
    RunService.Heartbeat:Connect(function()
        statsLabel.Text = "🧠 Brainrot: " .. stealCount .. " | Fly: " .. tostring(flying) .. " | Steal: " .. tostring(stealing)
    end)
    
    -- Respawn Handler
    LocalPlayer.CharacterAdded:Connect(function(newChar)
        Character = newChar
        Humanoid = Character:WaitForChild("Humanoid")
        RootPart = Character:WaitForChild("HumanoidRootPart")
        wait(2)
        stealCount = 0
        for _, part in pairs(Character:GetChildren()) do
            if part:IsA("BasePart") then applyGlitch(part) end
        end
    end)
end
