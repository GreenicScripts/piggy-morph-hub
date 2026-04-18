-- ==================
-- SERVICES
-- ==================
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- VALID KEYS
local validKeys = {
    ["KEYAUTH-H260P8-67S4R6-L13XQL-66CT78-0EVBXG"] = true,
    ["KEYAUTH-1KXKB6-K9Z5GN-4REMCP-VNWXL4-MQ8QTO"] = true,
    ["KEYAUTH-M7EM7Z-C9KJ4A-ICNMDD-WLX1LY-8QNJ6D"] = true,
    ["KEYAUTH-OOXPNE-0SBM4K-ZZO7LI-F4R4P1-5RIW2C"] = true,
    ["KEYAUTH-HBZC6W-I14C67-H9D94N-NRUN6C-581SOA"] = true,
}

local function makeCorner(parent, radius)
    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, radius or 8)
    c.Parent = parent
end

local function makeShadow(parent)
    local shadow = Instance.new("ImageLabel")
    shadow.Parent = parent
    shadow.BackgroundTransparency = 1
    shadow.Image = "rbxassetid://5554236805"
    shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    shadow.ImageTransparency = 0.6
    shadow.Size = UDim2.new(1, 30, 1, 30)
    shadow.Position = UDim2.new(0, -15, 0, -15)
    shadow.ZIndex = -1
end

-- ==================
-- KEY SYSTEM GUI
-- ==================
local KeyGui = Instance.new("ScreenGui")
KeyGui.Name = "KeySystem"
KeyGui.ResetOnSpawn = false
KeyGui.Parent = PlayerGui

local Frame = Instance.new("Frame")
Frame.Parent = KeyGui
Frame.BackgroundColor3 = Color3.fromRGB(18, 18, 24)
Frame.Size = UDim2.new(0, 420, 0, 280)
Frame.Position = UDim2.new(0.5, -210, 0.5, -140)
Frame.BorderSizePixel = 0
makeCorner(Frame, 12)
makeShadow(Frame)

local TopBar = Instance.new("Frame")
TopBar.Parent = Frame
TopBar.Size = UDim2.new(1, 0, 0, 50)
TopBar.BorderSizePixel = 0
TopBar.BackgroundColor3 = Color3.fromRGB(0, 100, 255)
makeCorner(TopBar, 12)

local UIGradient = Instance.new("UIGradient")
UIGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 100, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(100, 0, 255))
})
UIGradient.Rotation = 45
UIGradient.Parent = TopBar

local Title = Instance.new("TextLabel")
Title.Parent = TopBar
Title.Text = "🔑  Tonyfortin152 Key System"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Size = UDim2.new(1, 0, 1, 0)
Title.BackgroundTransparency = 1
Title.Font = Enum.Font.GothamBold
Title.TextSize = 16

local Subtitle = Instance.new("TextLabel")
Subtitle.Parent = Frame
Subtitle.Text = "Enter your key or complete Linkvertise to get one"
Subtitle.TextColor3 = Color3.fromRGB(130, 130, 150)
Subtitle.Size = UDim2.new(1, 0, 0, 25)
Subtitle.Position = UDim2.new(0, 0, 0, 58)
Subtitle.BackgroundTransparency = 1
Subtitle.Font = Enum.Font.Gotham
Subtitle.TextSize = 12

local Divider = Instance.new("Frame")
Divider.Parent = Frame
Divider.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
Divider.Size = UDim2.new(0.9, 0, 0, 1)
Divider.Position = UDim2.new(0.05, 0, 0, 88)
Divider.BorderSizePixel = 0

local TextBox = Instance.new("TextBox")
TextBox.Parent = Frame
TextBox.Size = UDim2.new(0.88, 0, 0, 42)
TextBox.Position = UDim2.new(0.06, 0, 0, 100)
TextBox.BackgroundColor3 = Color3.fromRGB(28, 28, 38)
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.PlaceholderText = "KEYAUTH-XXXXXXXX-XXXX-XXXX..."
TextBox.PlaceholderColor3 = Color3.fromRGB(80, 80, 100)
TextBox.Text = ""
TextBox.BorderSizePixel = 0
TextBox.Font = Enum.Font.Gotham
TextBox.TextSize = 12
TextBox.ClearTextOnFocus = false
makeCorner(TextBox, 8)

local TextPad = Instance.new("UIPadding")
TextPad.PaddingLeft = UDim.new(0, 10)
TextPad.Parent = TextBox

local SubmitBtn = Instance.new("TextButton")
SubmitBtn.Parent = Frame
SubmitBtn.Size = UDim2.new(0.88, 0, 0, 40)
SubmitBtn.Position = UDim2.new(0.06, 0, 0, 152)
SubmitBtn.Text = "✅  Submit Key"
SubmitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
SubmitBtn.BorderSizePixel = 0
SubmitBtn.Font = Enum.Font.GothamBold
SubmitBtn.TextSize = 14
SubmitBtn.BackgroundColor3 = Color3.fromRGB(0, 100, 255)
makeCorner(SubmitBtn, 8)

local UIGradient2 = Instance.new("UIGradient")
UIGradient2.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 100, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(100, 0, 255))
})
UIGradient2.Rotation = 45
UIGradient2.Parent = SubmitBtn

local GetKeyBtn = Instance.new("TextButton")
GetKeyBtn.Parent = Frame
GetKeyBtn.Size = UDim2.new(0.88, 0, 0, 36)
GetKeyBtn.Position = UDim2.new(0.06, 0, 0, 202)
GetKeyBtn.Text = "🔗  Get Key via Linkvertise"
GetKeyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
GetKeyBtn.BorderSizePixel = 0
GetKeyBtn.Font = Enum.Font.GothamBold
GetKeyBtn.TextSize = 13
GetKeyBtn.BackgroundColor3 = Color3.fromRGB(255, 140, 0)
makeCorner(GetKeyBtn, 8)

local Status = Instance.new("TextLabel")
Status.Parent = Frame
Status.Text = "Waiting for key..."
Status.TextColor3 = Color3.fromRGB(130, 130, 150)
Status.Size = UDim2.new(1, 0, 0, 25)
Status.Position = UDim2.new(0, 0, 0, 248)
Status.BackgroundTransparency = 1
Status.Font = Enum.Font.Gotham
Status.TextSize = 12

-- ==================
-- SUCCESS GUI (with Continue button)
-- ==================
local function showSuccessGui()
    KeyGui:Destroy()

    local SuccessGui = Instance.new("ScreenGui")
    SuccessGui.Name = "SuccessGui"
    SuccessGui.ResetOnSpawn = false
    SuccessGui.Parent = PlayerGui

    local SFrame = Instance.new("Frame")
    SFrame.Parent = SuccessGui
    SFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 24)
    SFrame.Size = UDim2.new(0, 380, 0, 190)
    SFrame.Position = UDim2.new(0.5, -190, 0.5, -95)
    SFrame.BorderSizePixel = 0
    makeCorner(SFrame, 12)
    makeShadow(SFrame)

    local STop = Instance.new("Frame")
    STop.Parent = SFrame
    STop.Size = UDim2.new(1, 0, 0, 45)
    STop.BackgroundColor3 = Color3.fromRGB(0, 180, 80)
    STop.BorderSizePixel = 0
    makeCorner(STop, 12)

    local STopGrad = Instance.new("UIGradient")
    STopGrad.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 180, 80)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 120, 200))
    })
    STopGrad.Rotation = 45
    STopGrad.Parent = STop

    local STitle = Instance.new("TextLabel")
    STitle.Parent = STop
    STitle.Text = "✅  Access Granted!"
    STitle.TextColor3 = Color3.fromRGB(255, 255, 255)
    STitle.Size = UDim2.new(1, 0, 1, 0)
    STitle.BackgroundTransparency = 1
    STitle.Font = Enum.Font.GothamBold
    STitle.TextSize = 17

    local SWelcome = Instance.new("TextLabel")
    SWelcome.Parent = SFrame
    SWelcome.Text = "👋  Welcome to Tonyfortin152's Script!"
    SWelcome.TextColor3 = Color3.fromRGB(220, 220, 220)
    SWelcome.Size = UDim2.new(1, 0, 0, 30)
    SWelcome.Position = UDim2.new(0, 0, 0, 55)
    SWelcome.BackgroundTransparency = 1
    SWelcome.Font = Enum.Font.GothamBold
    SWelcome.TextSize = 14

    local SSub = Instance.new("TextLabel")
    SSub.Parent = SFrame
    SSub.Text = "Key verified — press Continue to load the hub!"
    SSub.TextColor3 = Color3.fromRGB(100, 100, 120)
    SSub.Size = UDim2.new(1, 0, 0, 25)
    SSub.Position = UDim2.new(0, 0, 0, 83)
    SSub.BackgroundTransparency = 1
    SSub.Font = Enum.Font.Gotham
    SSub.TextSize = 12

    -- Continue button
    local ContinueBtn = Instance.new("TextButton")
    ContinueBtn.Parent = SFrame
    ContinueBtn.Size = UDim2.new(0.88, 0, 0, 38)
    ContinueBtn.Position = UDim2.new(0.06, 0, 0, 118)
    ContinueBtn.Text = "▶  Continue"
    ContinueBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    ContinueBtn.BorderSizePixel = 0
    ContinueBtn.Font = Enum.Font.GothamBold
    ContinueBtn.TextSize = 14
    ContinueBtn.BackgroundColor3 = Color3.fromRGB(0, 180, 80)
    makeCorner(ContinueBtn, 8)

    local ContGrad = Instance.new("UIGradient")
    ContGrad.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 180, 80)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 120, 200))
    })
    ContGrad.Rotation = 45
    ContGrad.Parent = ContinueBtn

    ContinueBtn.MouseButton1Click:Connect(function()
        SuccessGui:Destroy()
        loadMainScript()
    end)

    -- Auto-continue after 6 seconds
    task.delay(6, function()
        if SuccessGui and SuccessGui.Parent then
            SuccessGui:Destroy()
            loadMainScript()
        end
    end)
end

-- ==================
-- BUTTON LOGIC
-- ==================
GetKeyBtn.MouseButton1Click:Connect(function()
    pcall(function() setclipboard("https://direct-link.net/4295026/gceI9kt62AMz") end)
    Status.Text = "✅ Link copied! Paste it in your browser."
    Status.TextColor3 = Color3.fromRGB(0, 220, 100)
end)

SubmitBtn.MouseButton1Click:Connect(function()
    local key = TextBox.Text
    if key == "" then
        Status.Text = "❌ Please enter a key!"
        Status.TextColor3 = Color3.fromRGB(255, 80, 80)
        return
    end

    Status.Text = "⏳ Checking key..."
    Status.TextColor3 = Color3.fromRGB(255, 200, 0)
    SubmitBtn.Active = false
    task.wait(0.8)

    if validKeys[key] then
        validKeys[key] = nil
        Status.Text = "✅ Key accepted!"
        Status.TextColor3 = Color3.fromRGB(0, 220, 100)
        task.wait(0.8)
        showSuccessGui()
    else
        Status.Text = "❌ Invalid or already used key!"
        Status.TextColor3 = Color3.fromRGB(255, 80, 80)
        SubmitBtn.Active = true
    end
end)

-- ==================
-- MAIN SCRIPT LOADER
-- ==================
function loadMainScript()

    -- Print ASCII art to console in green
    local asciiArt = [[
░██████╗░█████╗░██████╗░██╗██████╗░████████╗  ██╗░░░░░░█████╗░░█████╗░██████╗░███████╗██████╗░
██╔════╝██╔══██╗██╔══██╗██║██╔══██╗╚══██╔══╝  ██║░░░░░██╔══██╗██╔══██╗██╔══██╗██╔════╝██╔══██╗
╚█████╗░██║░░╚═╝██████╔╝██║██████╔╝░░░██║░░░  ██║░░░░░██║░░██║███████║██║░░██║█████╗░░██║░░██║
░╚═══██╗██║░░██╗██╔══██╗██║██╔═══╝░░░░██║░░░  ██║░░░░░██║░░██║██╔══██║██║░░██║██╔══╝░░██║░░██║
██████╔╝╚█████╔╝██║░░██║██║██║░░░░░░░░██║░░░  ███████╗╚█████╔╝██║░░██║██████╔╝███████╗██████╔╝
╚═════╝░░╚════╝░╚═╝░░╚═╝╚═╝╚═╝░░░░░░░░╚═╝░░░  ╚══════╝░╚════╝░╚═╝░░╚═╝╚═════╝░╚══════╝╚═════╝░

███████╗███╗░░██╗░░░░░██╗░█████╗░██╗░░░██╗██╗
██╔════╝████╗░██║░░░░░██║██╔══██╗╚██╗░██╔╝██║
█████╗░░██╔██╗██║░░░░░██║██║░░██║░╚████╔╝░██║
██╔══╝░░██║╚████║██╗░░██║██║░░██║░░╚██╔╝░░╚═╝
███████╗██║░╚███║╚█████╔╝╚█████╔╝░░░██║░░░██╗
╚══════╝╚═╝░░╚══╝░╚════╝░░╚════╝░░░░╚═╝░░░╚═╝
]]

    -- Use rconsoleprint if available (Synapse X / ScriptWare style), else print
    if rconsoleprint then
        rconsoleprint("\27[32m" .. asciiArt .. "\27[0m")
    elseif consolePrint then
        consolePrint(asciiArt)
    else
        print("\27[32m" .. asciiArt .. "\27[0m")
    end

    -- ==================
    -- SERVICES
    -- ==================
    local RunService = game:GetService("RunService")
    local TweenService = game:GetService("TweenService")
    local UserInputService = game:GetService("UserInputService")
    local Stats = game:GetService("Stats")
    local Camera = workspace.CurrentCamera

    -- ==================
    -- CHARACTER REFS
    -- ==================
    local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
    local Humanoid = Character:WaitForChild("Humanoid")

    LocalPlayer.CharacterAdded:Connect(function(char)
        Character = char
        HumanoidRootPart = char:WaitForChild("HumanoidRootPart")
        Humanoid = char:WaitForChild("Humanoid")
    end)

    -- ==================
    -- DEVICE DETECTION
    -- ==================
    local isMobile = UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled
    local screenSize = Camera.ViewportSize
    local isSmallScreen = screenSize.X < 600

    -- ==================
    -- PING / LAG PREDICTION
    -- ==================
    local pingHistory = {}
    local predictedPing = 0
    local lagMultiplier = 1

    local function getCurrentPing()
        return math.floor(Stats.Network.ServerStatsItem["Data Ping"]:GetValue())
    end

    local function updatePingPrediction()
        local ping = getCurrentPing()
        table.insert(pingHistory, ping)
        if #pingHistory > 10 then table.remove(pingHistory, 1) end
        local sum = 0
        for _, v in pairs(pingHistory) do sum = sum + v end
        predictedPing = sum / #pingHistory
        if predictedPing < 80 then
            lagMultiplier = 1
        elseif predictedPing < 150 then
            lagMultiplier = 1.3
        elseif predictedPing < 300 then
            lagMultiplier = 1.8
        else
            lagMultiplier = 2.5
        end
    end

    task.spawn(function()
        while task.wait(1) do
            pcall(updatePingPrediction)
        end
    end)

    -- ==================
    -- SETTINGS
    -- ==================
    local Settings = {
        AutoFarm = false,
        AutoInteract = false,
        ESP = false,
        Float = false,
        NoClip = false,
        InteractInterval = 6.5,
        FarmSpeed = 16,
        LowEndMode = false,
    }

    -- ==================
    -- EXECUTOR DETECTION (fixed)
    -- ==================
    local executorName = "Unknown Executor"
    pcall(function()
        if syn and syn.request then
            executorName = "Synapse X"
        elseif KRNL_LOADED then
            executorName = "Krnl"
        elseif getgenv and getgenv().is_sirhurt_closure then
            executorName = "SirHurt"
        elseif pebc then
            executorName = "Protosmasher"
        elseif rconsoleprint then
            executorName = "ScriptWare"
        elseif getgenv and getgenv().fluxus then
            executorName = "Fluxus"
        elseif gethui then
            executorName = "Xeno / Hydrogen"
        elseif getexecutorname then
            executorName = getexecutorname()
        end
    end)

    -- ==================
    -- HELPERS
    -- ==================
    local function makeCornerH(parent, radius)
        local c = Instance.new("UICorner")
        c.CornerRadius = UDim.new(0, radius or 8)
        c.Parent = parent
        return c
    end

    local function makeGradient(parent, c1, c2, rotation)
        local g = Instance.new("UIGradient")
        g.Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, c1),
            ColorSequenceKeypoint.new(1, c2),
        })
        g.Rotation = rotation or 45
        g.Parent = parent
        return g
    end

    local function tw(obj, props, duration, style, dir)
        TweenService:Create(obj,
            TweenInfo.new(duration or 0.3, style or Enum.EasingStyle.Quart, dir or Enum.EasingDirection.Out),
            props
        ):Play()
    end

    local function makeShadowH(parent)
        local s = Instance.new("ImageLabel")
        s.Parent = parent
        s.BackgroundTransparency = 1
        s.Image = "rbxassetid://5554236805"
        s.ImageColor3 = Color3.fromRGB(0,0,0)
        s.ImageTransparency = 0.5
        s.Size = UDim2.new(1,40,1,40)
        s.Position = UDim2.new(0,-20,0,-20)
        s.ZIndex = -1
    end

    local HUB_W = isMobile and 310 or 370
    local HUB_H = isMobile and 480 or 540
    local FONT_S = isMobile and 11 or 13
    local FONT_L = isMobile and 13 or 15
    local ROW_H = isMobile and 42 or 46

    -- ==================
    -- NOTIFICATION SYSTEM
    -- ==================
    local NotifGui = Instance.new("ScreenGui")
    NotifGui.Name = "NotifGui"
    NotifGui.ResetOnSpawn = false
    NotifGui.IgnoreGuiInset = true
    NotifGui.DisplayOrder = 998
    NotifGui.Parent = PlayerGui

    local notifStack = {}
    local NOTIF_W = isMobile and 260 or 300
    local NOTIF_X = isMobile and (screenSize.X/2 - 130) or (screenSize.X - 320)

    local function notify(title, message, color, duration)
        color = color or Color3.fromRGB(100, 0, 220)
        duration = duration or 3.5

        local nFrame = Instance.new("Frame")
        nFrame.Parent = NotifGui
        nFrame.Size = UDim2.new(0, NOTIF_W, 0, 0)
        nFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 28)
        nFrame.BorderSizePixel = 0
        nFrame.Position = UDim2.new(0, NOTIF_X, 0, 20 + (#notifStack * 0))
        nFrame.ClipsDescendants = true
        makeCornerH(nFrame, 10)

        local nStroke = Instance.new("UIStroke")
        nStroke.Parent = nFrame
        nStroke.Color = color
        nStroke.Thickness = 1.5

        local nBar = Instance.new("Frame")
        nBar.Parent = nFrame
        nBar.Size = UDim2.new(0, 4, 1, 0)
        nBar.BackgroundColor3 = color
        nBar.BorderSizePixel = 0
        makeCornerH(nBar, 4)

        local nTitle = Instance.new("TextLabel")
        nTitle.Parent = nFrame
        nTitle.Text = title
        nTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
        nTitle.Size = UDim2.new(1, -20, 0, 22)
        nTitle.Position = UDim2.new(0, 14, 0, 6)
        nTitle.BackgroundTransparency = 1
        nTitle.Font = Enum.Font.GothamBold
        nTitle.TextSize = isMobile and 11 or 12
        nTitle.TextXAlignment = Enum.TextXAlignment.Left

        local nMsg = Instance.new("TextLabel")
        nMsg.Parent = nFrame
        nMsg.Text = message
        nMsg.TextColor3 = Color3.fromRGB(180, 180, 220)
        nMsg.Size = UDim2.new(1, -20, 0, 26)
        nMsg.Position = UDim2.new(0, 14, 0, 26)
        nMsg.BackgroundTransparency = 1
        nMsg.Font = Enum.Font.Gotham
        nMsg.TextSize = isMobile and 10 or 11
        nMsg.TextXAlignment = Enum.TextXAlignment.Left
        nMsg.TextWrapped = true

        local nPBG = Instance.new("Frame")
        nPBG.Parent = nFrame
        nPBG.Size = UDim2.new(1, -14, 0, 3)
        nPBG.Position = UDim2.new(0, 7, 0, 54)
        nPBG.BackgroundColor3 = Color3.fromRGB(40,40,60)
        nPBG.BorderSizePixel = 0
        nPBG.ClipsDescendants = true
        makeCornerH(nPBG, 99)

        local nPFill = Instance.new("Frame")
        nPFill.Parent = nPBG
        nPFill.Size = UDim2.new(1, 0, 1, 0)
        nPFill.BackgroundColor3 = color
        nPFill.BorderSizePixel = 0
        makeCornerH(nPFill, 99)

        table.insert(notifStack, nFrame)

        local function repositionAll()
            local yOff = 20
            for _, f in pairs(notifStack) do
                if f and f.Parent then
                    tw(f, {Position = UDim2.new(0, NOTIF_X, 0, yOff)}, 0.25)
                    yOff = yOff + 68
                end
            end
        end

        tw(nFrame, {Size = UDim2.new(0, NOTIF_W, 0, 62)}, 0.35, Enum.EasingStyle.Back)
        repositionAll()
        tw(nPFill, {Size = UDim2.new(0, 0, 1, 0)}, duration, Enum.EasingStyle.Linear)

        task.delay(duration, function()
            tw(nFrame, {Size = UDim2.new(0, NOTIF_W, 0, 0), BackgroundTransparency = 1}, 0.3)
            task.wait(0.35)
            for i, f in pairs(notifStack) do
                if f == nFrame then table.remove(notifStack, i) break end
            end
            nFrame:Destroy()
            repositionAll()
        end)
    end

    -- ==================
    -- MORPH DETECTION
    -- ==================
    local function getMorphs()
        local morphs = {}
        for _, obj in pairs(workspace:GetDescendants()) do
            local nameLower = obj.Name:lower()
            if (obj:IsA("BasePart") or obj:IsA("Model")) and (
                nameLower:find("morph") or nameLower:find("piggy") or
                nameLower:find("pig") or nameLower:find("skin") or
                nameLower:find("collectible") or nameLower:find("claim")
            ) then
                local inChar = false
                local p = obj
                while p do
                    if p == Character then inChar = true break end
                    p = p.Parent
                end
                if not inChar then
                    table.insert(morphs, obj)
                end
            end
        end
        return morphs
    end

    local function getMorphPosition(obj)
        if obj:IsA("BasePart") then return obj.Position
        elseif obj:IsA("Model") then
            local prim = obj.PrimaryPart or obj:FindFirstChildOfClass("BasePart")
            if prim then return prim.Position end
        end
    end

    local function getNearestMorph()
        local nearest, nearestDist, nearestPos = nil, math.huge, nil
        if not HumanoidRootPart then return end
        for _, obj in pairs(getMorphs()) do
            local pos = getMorphPosition(obj)
            if pos then
                local dist = (HumanoidRootPart.Position - pos).Magnitude
                if dist < nearestDist then
                    nearest = obj
                    nearestDist = dist
                    nearestPos = pos
                end
            end
        end
        return nearest, nearestDist, nearestPos
    end

    -- ==================
    -- INTERACT
    -- ==================
    local function tryInteractObj(obj)
        if not obj then return end
        local part = obj:IsA("BasePart") and obj
            or (obj:IsA("Model") and (obj.PrimaryPart or obj:FindFirstChildOfClass("BasePart")))

        local searchIn = obj:IsA("Model") and obj:GetDescendants() or obj:GetChildren()
        for _, v in pairs(searchIn) do
            if v:IsA("ProximityPrompt") then pcall(fireproximityprompt, v) end
        end

        if part and HumanoidRootPart then
            pcall(function()
                local orig = HumanoidRootPart.CFrame
                HumanoidRootPart.CFrame = CFrame.new(part.Position + Vector3.new(0,2,0))
                task.wait(0.08 * lagMultiplier)
                HumanoidRootPart.CFrame = orig
            end)
        end

        for _, remote in pairs(game:GetDescendants()) do
            if remote:IsA("RemoteEvent") then
                local rn = remote.Name:lower()
                if rn:find("collect") or rn:find("claim") or rn:find("morph") or
                   rn:find("interact") or rn:find("touch") or rn:find("obtain") or
                   rn:find("grab") or rn:find("pick") then
                    pcall(function() remote:FireServer(obj) end)
                    pcall(function() remote:FireServer(part) end)
                    pcall(function() remote:FireServer() end)
                end
            end
        end
    end

    -- ==================
    -- NOCLIP
    -- ==================
    local noclipConn = nil

    local function enableNoclip()
        if noclipConn then return end
        noclipConn = RunService.Stepped:Connect(function()
            if not Settings.NoClip then return end
            if not Character then return end
            for _, part in pairs(Character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = false
                end
            end
        end)
    end

    local function disableNoclip()
        if noclipConn then noclipConn:Disconnect() noclipConn = nil end
        if Character then
            for _, part in pairs(Character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = true
                end
            end
        end
    end

    -- ==================
    -- FLOAT
    -- ==================
    local floatConn = nil
    local floatBV = nil

    local function disableFloat()
        if floatConn then floatConn:Disconnect() floatConn = nil end
        if floatBV then floatBV:Destroy() floatBV = nil end
    end

    local function enableFloat()
        if not Character or not HumanoidRootPart then return end
        disableFloat()
        floatBV = Instance.new("BodyVelocity")
        floatBV.Velocity = Vector3.new(0,0,0)
        floatBV.MaxForce = Vector3.new(0, math.huge, 0)
        floatBV.P = math.huge
        floatBV.Parent = HumanoidRootPart
        local floatY = HumanoidRootPart.Position.Y + 8
        floatConn = RunService.Heartbeat:Connect(function()
            if not Settings.Float or not HumanoidRootPart or not floatBV then return end
            local bob = math.sin(tick() * 2) * 0.5
            floatBV.Velocity = Vector3.new(0, (floatY + bob - HumanoidRootPart.Position.Y) * 10, 0)
        end)
    end

    -- ==================
    -- AUTO FARM LOOP
    -- ==================
    local farmConn = nil
    local farmCooldown = false
    local lastFarmNotif = 0

    local function startAutoFarm()
        if farmConn then farmConn:Disconnect() end
        enableNoclip()
        farmConn = RunService.Heartbeat:Connect(function()
            if not Settings.AutoFarm then return end
            if farmCooldown then return end
            pcall(function()
                if not HumanoidRootPart or not Humanoid then return end
                Humanoid.WalkSpeed = Settings.FarmSpeed

                local nearest, dist, pos = getNearestMorph()
                if not nearest or not pos then return end

                local tpThreshold = Settings.LowEndMode and 20 or (40 + predictedPing * 0.1)

                if dist > tpThreshold then
                    HumanoidRootPart.CFrame = CFrame.new(pos + Vector3.new(0, 3, 0))
                    task.wait(0.05 * lagMultiplier)
                elseif dist > 4 then
                    Humanoid:MoveTo(pos)
                else
                    farmCooldown = true
                    tryInteractObj(nearest)
                    local cooldownTime = 0.4 + (predictedPing / 1000)
                    task.wait(math.clamp(cooldownTime, 0.3, 1.5))
                    farmCooldown = false
                    if tick() - lastFarmNotif > 5 then
                        lastFarmNotif = tick()
                        notify("🐷 Auto Farm", "Claimed: " .. nearest.Name, Color3.fromRGB(0,200,100), 2.5)
                    end
                end
            end)
        end)
    end

    -- ==================
    -- AUTO INTERACT LOOP
    -- ==================
    local interactTimer = 0
    local interactConn = nil

    local function startAutoInteract()
        if interactConn then interactConn:Disconnect() end
        interactConn = RunService.Heartbeat:Connect(function(dt)
            if not Settings.AutoInteract then return end
            interactTimer = interactTimer + dt
            local adjustedInterval = Settings.InteractInterval * (Settings.LowEndMode and 1.4 or lagMultiplier)
            if interactTimer >= adjustedInterval then
                interactTimer = 0
                pcall(function()
                    for _, obj in pairs(getMorphs()) do tryInteractObj(obj) end
                end)
            end
        end)
    end

    -- ==================
    -- ESP
    -- ==================
    local ESPFolder = Instance.new("Folder")
    ESPFolder.Name = "MorphESP"
    ESPFolder.Parent = workspace

    local function clearESP()
        for _, v in pairs(ESPFolder:GetChildren()) do v:Destroy() end
    end

    local function updateESP()
        clearESP()
        if not Settings.ESP then return end
        if Settings.LowEndMode and #getMorphs() > 10 then
            notify("⚠️ ESP Warning", "Too many morphs — ESP skipped (Low-End Mode)", Color3.fromRGB(255,160,0), 3)
            return
        end
        for _, obj in pairs(getMorphs()) do
            local adornee = obj:IsA("BasePart") and obj
                or (obj:IsA("Model") and (obj.PrimaryPart or obj:FindFirstChildOfClass("BasePart")))
            if adornee then
                local bb = Instance.new("BillboardGui")
                bb.Parent = ESPFolder bb.Adornee = adornee
                bb.Size = UDim2.new(0,130,0,48) bb.StudsOffset = Vector3.new(0,4,0)
                bb.AlwaysOnTop = true bb.ResetOnSpawn = false

                local lbl = Instance.new("TextLabel") lbl.Parent = bb
                lbl.Size = UDim2.new(1,0,0.6,0) lbl.BackgroundTransparency = 1
                lbl.Text = "🐷 "..obj.Name lbl.TextColor3 = Color3.fromRGB(255,80,80)
                lbl.Font = Enum.Font.GothamBold lbl.TextSize = 12
                lbl.TextStrokeTransparency = 0 lbl.TextStrokeColor3 = Color3.fromRGB(0,0,0)

                local dLbl = Instance.new("TextLabel") dLbl.Parent = bb
                dLbl.Size = UDim2.new(1,0,0.4,0) dLbl.Position = UDim2.new(0,0,0.6,0)
                dLbl.BackgroundTransparency = 1 dLbl.Font = Enum.Font.Gotham dLbl.TextSize = 11
                dLbl.TextColor3 = Color3.fromRGB(255,200,200)
                dLbl.TextStrokeTransparency = 0 dLbl.TextStrokeColor3 = Color3.fromRGB(0,0,0)

                local pos = getMorphPosition(obj)
                task.spawn(function()
                    while dLbl and dLbl.Parent do
                        if HumanoidRootPart and pos then
                            dLbl.Text = math.floor((HumanoidRootPart.Position - pos).Magnitude).." studs"
                        end
                        task.wait(0.5)
                    end
                end)

                if not Settings.LowEndMode then
                    local hl = Instance.new("SelectionBox") hl.Parent = ESPFolder
                    hl.Adornee = obj hl.Color3 = Color3.fromRGB(255,60,60)
                    hl.LineThickness = 0.07 hl.SurfaceTransparency = 0.75
                    hl.SurfaceColor3 = Color3.fromRGB(255,60,60)
                end
            end
        end
    end

    task.spawn(function()
        while task.wait(Settings.LowEndMode and 4 or 2) do
            if Settings.ESP then updateESP() else clearESP() end
        end
    end)

    startAutoFarm()
    startAutoInteract()

    -- ==================
    -- LOADING EFFECT
    -- ==================
    local function doLoadingEffect(cb)
        local s = tick()
        while tick()-s < 2 do
            for i=1,Settings.LowEndMode and 1000 or 5000 do local _=math.sqrt(i) end
            task.wait()
        end
        local f = tick()
        while tick()-f < 1 do
            for i=1,Settings.LowEndMode and 10000 or 50000 do local _=i*i end
        end
        if cb then cb() end
    end

    -- ==================
    -- MAIN HUB GUI
    -- ==================
    local HubGui = Instance.new("ScreenGui")
    HubGui.Name = "PiggyMorphHub"
    HubGui.ResetOnSpawn = false
    HubGui.IgnoreGuiInset = true
    HubGui.Parent = PlayerGui

    local MainFrame = Instance.new("Frame")
    MainFrame.Parent = HubGui
    MainFrame.BackgroundColor3 = Color3.fromRGB(14,14,22)
    MainFrame.Size = UDim2.new(0, HUB_W, 0, HUB_H)
    MainFrame.Position = isMobile
        and UDim2.new(0.5, -HUB_W/2, 0.5, -HUB_H/2)
        or  UDim2.new(0, 16, 0.5, -HUB_H/2)
    MainFrame.BorderSizePixel = 0
    MainFrame.ClipsDescendants = false
    MainFrame.Visible = false
    makeCornerH(MainFrame, 14)
    makeShadowH(MainFrame)

    local HubBorder = Instance.new("UIStroke")
    HubBorder.Parent = MainFrame HubBorder.Thickness = 2
    task.spawn(function()
        local h=0
        while MainFrame and MainFrame.Parent do
            h=(h+0.005)%1 HubBorder.Color=Color3.fromHSV(h,1,1) task.wait(0.03)
        end
    end)

    -- TOP BAR
    local TopBarH = Instance.new("Frame")
    TopBarH.Parent = MainFrame TopBarH.Size = UDim2.new(1,0,0,52)
    TopBarH.BackgroundColor3 = Color3.fromRGB(100,0,220)
    TopBarH.BorderSizePixel = 0 makeCornerH(TopBarH,14)
    makeGradient(TopBarH,Color3.fromRGB(120,0,220),Color3.fromRGB(0,100,255),135)

    local HubTitle = Instance.new("TextLabel")
    HubTitle.Parent = TopBarH HubTitle.Text = "🐷  Piggy Morphs Hub"
    HubTitle.TextColor3 = Color3.fromRGB(255,255,255)
    HubTitle.Size = UDim2.new(1,-90,1,0) HubTitle.Position = UDim2.new(0,14,0,0)
    HubTitle.BackgroundTransparency = 1 HubTitle.Font = Enum.Font.GothamBold
    HubTitle.TextSize = FONT_L HubTitle.TextXAlignment = Enum.TextXAlignment.Left

    local PingLbl = Instance.new("TextLabel")
    PingLbl.Parent = TopBarH PingLbl.Text = "📶 ..."
    PingLbl.TextColor3 = Color3.fromRGB(200,255,200)
    PingLbl.Size = UDim2.new(0,60,0,20) PingLbl.Position = UDim2.new(1,-120,0.5,-10)
    PingLbl.BackgroundTransparency = 1 PingLbl.Font = Enum.Font.GothamBold
    PingLbl.TextSize = 10 PingLbl.TextXAlignment = Enum.TextXAlignment.Right

    task.spawn(function()
        while PingLbl and PingLbl.Parent do
            local p = pcall(getCurrentPing) and getCurrentPing() or 0
            PingLbl.Text = "📶 "..p.."ms"
            PingLbl.TextColor3 = p < 100 and Color3.fromRGB(100,255,150)
                or p < 200 and Color3.fromRGB(255,220,50)
                or Color3.fromRGB(255,80,80)
            task.wait(1)
        end
    end)

    local MinBtn = Instance.new("TextButton")
    MinBtn.Parent = TopBarH MinBtn.Size = UDim2.new(0,30,0,30)
    MinBtn.Position = UDim2.new(1,-38,0.5,-15) MinBtn.Text = "—"
    MinBtn.TextColor3 = Color3.fromRGB(255,255,255)
    MinBtn.BackgroundColor3 = Color3.fromRGB(255,255,255)
    MinBtn.BackgroundTransparency = 0.8 MinBtn.BorderSizePixel = 0
    MinBtn.Font = Enum.Font.GothamBold MinBtn.TextSize = 13 makeCornerH(MinBtn,8)

    local isMinimized = false
    MinBtn.MouseButton1Click:Connect(function()
        isMinimized = not isMinimized
        if isMinimized then
            tw(MainFrame, {Size = UDim2.new(0,HUB_W,0,52)}, 0.3, Enum.EasingStyle.Quart)
            MinBtn.Text = "+"
        else
            tw(MainFrame, {Size = UDim2.new(0,HUB_W,0,HUB_H)}, 0.35, Enum.EasingStyle.Back)
            MinBtn.Text = "—"
        end
    end)

    -- Drag
    local dragging,dragInput,dragStart,startPos = false,nil,nil,nil
    TopBarH.InputBegan:Connect(function(inp)
        if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
            dragging=true dragStart=inp.Position startPos=MainFrame.Position
            inp.Changed:Connect(function() if inp.UserInputState==Enum.UserInputState.End then dragging=false end end)
        end
    end)
    TopBarH.InputChanged:Connect(function(inp)
        if inp.UserInputType==Enum.UserInputType.MouseMovement or inp.UserInputType==Enum.UserInputType.Touch then dragInput=inp end
    end)
    UserInputService.InputChanged:Connect(function(inp)
        if inp==dragInput and dragging then
            local d=inp.Position-dragStart
            MainFrame.Position=UDim2.new(startPos.X.Scale,startPos.X.Offset+d.X,startPos.Y.Scale,startPos.Y.Offset+d.Y)
        end
    end)

    -- ==================
    -- TAB SYSTEM
    -- ==================
    local tabNames = {"⚔️ Farm", "👁️ Visual", "🔧 Utils", "⚙️ Settings"}
    local tabFrames = {}
    local tabBtns = {}
    local activeTab = 1

    local TabBar = Instance.new("Frame")
    TabBar.Parent = MainFrame TabBar.Size = UDim2.new(1,0,0,36)
    TabBar.Position = UDim2.new(0,0,0,52) TabBar.BackgroundColor3 = Color3.fromRGB(12,12,20)
    TabBar.BorderSizePixel = 0

    local TabLayout = Instance.new("UIListLayout")
    TabLayout.Parent = TabBar TabLayout.FillDirection = Enum.FillDirection.Horizontal
    TabLayout.SortOrder = Enum.SortOrder.LayoutOrder TabLayout.Padding = UDim.new(0,0)

    local ContentHolder = Instance.new("Frame")
    ContentHolder.Parent = MainFrame
    ContentHolder.Size = UDim2.new(1,0,1,-88)
    ContentHolder.Position = UDim2.new(0,0,0,88)
    ContentHolder.BackgroundTransparency = 1
    ContentHolder.BorderSizePixel = 0
    ContentHolder.ClipsDescendants = true

    local function makeTabContent()
        local sf = Instance.new("ScrollingFrame")
        sf.Parent = ContentHolder
        sf.Size = UDim2.new(1,0,1,0)
        sf.BackgroundTransparency = 1
        sf.BorderSizePixel = 0
        sf.ScrollBarThickness = isMobile and 3 or 4
        sf.ScrollBarImageColor3 = Color3.fromRGB(120,80,255)
        sf.CanvasSize = UDim2.new(0,0,0,600)
        sf.Visible = false
        sf.ScrollingEnabled = true
        sf.AutomaticCanvasSize = Enum.AutomaticSize.Y

        local layout = Instance.new("UIListLayout")
        layout.Parent = sf layout.SortOrder = Enum.SortOrder.LayoutOrder
        layout.Padding = UDim.new(0,6) layout.HorizontalAlignment = Enum.HorizontalAlignment.Center

        local pad = Instance.new("UIPadding")
        pad.Parent = sf pad.PaddingTop = UDim.new(0,8) pad.PaddingBottom = UDim.new(0,16)

        return sf
    end

    for i, name in pairs(tabNames) do
        local sf = makeTabContent()
        tabFrames[i] = sf

        local btn = Instance.new("TextButton")
        btn.Parent = TabBar
        btn.Size = UDim2.new(1/#tabNames, 0, 1, 0)
        btn.Text = name btn.Font = Enum.Font.GothamBold
        btn.TextSize = isMobile and 9 or 10
        btn.BorderSizePixel = 0
        btn.BackgroundColor3 = Color3.fromRGB(12,12,20)
        btn.TextColor3 = Color3.fromRGB(120,120,160)
        btn.LayoutOrder = i
        tabBtns[i] = btn

        btn.MouseButton1Click:Connect(function()
            activeTab = i
            for j, f in pairs(tabFrames) do
                f.Visible = (j == i)
                tw(tabBtns[j], {
                    TextColor3 = (j==i) and Color3.fromRGB(200,160,255) or Color3.fromRGB(120,120,160),
                    BackgroundColor3 = (j==i) and Color3.fromRGB(20,20,35) or Color3.fromRGB(12,12,20)
                }, 0.2)
            end
        end)
    end

    tabFrames[1].Visible = true
    tabBtns[1].TextColor3 = Color3.fromRGB(200,160,255)
    tabBtns[1].BackgroundColor3 = Color3.fromRGB(20,20,35)

    local TabLine = Instance.new("Frame")
    TabLine.Parent = TabBar TabLine.Size = UDim2.new(0,0,0,2)
    TabLine.Position = UDim2.new(0,0,1,-2)
    TabLine.BackgroundColor3 = Color3.fromRGB(140,80,255) TabLine.BorderSizePixel = 0

    -- ==================
    -- WIDGET BUILDERS
    -- ==================
    local function makeSectionLabel(parent, text)
        local wrapper = Instance.new("Frame")
        wrapper.Parent = parent wrapper.Size = UDim2.new(0.94, 0, 0, 28)
        wrapper.BackgroundTransparency = 1 wrapper.BorderSizePixel = 0

        local lbl = Instance.new("TextLabel")
        lbl.Parent = wrapper lbl.Text = text
        lbl.TextColor3 = Color3.fromRGB(140,100,255)
        lbl.Size = UDim2.new(1,-10,1,0) lbl.Position = UDim2.new(0,8,0,0)
        lbl.BackgroundTransparency = 1 lbl.Font = Enum.Font.GothamBold
        lbl.TextSize = 10 lbl.TextXAlignment = Enum.TextXAlignment.Left

        local line = Instance.new("Frame") line.Parent = wrapper
        line.Size = UDim2.new(1,-16,0,1) line.Position = UDim2.new(0,8,1,-1)
        line.BackgroundColor3 = Color3.fromRGB(35,35,55) line.BorderSizePixel = 0
    end

    local function makeToggle(parent, label, icon, settingKey, c1, c2, callback)
        local wrapper = Instance.new("Frame")
        wrapper.Parent = parent wrapper.Size = UDim2.new(0.94, 0, 0, ROW_H)
        wrapper.BackgroundColor3 = Color3.fromRGB(20,20,32) wrapper.BorderSizePixel = 0
        makeCornerH(wrapper, 10)
        local RS = Instance.new("UIStroke") RS.Parent = wrapper RS.Color = Color3.fromRGB(40,40,60) RS.Thickness = 1

        local IL = Instance.new("TextLabel") IL.Parent = wrapper IL.Text = icon
        IL.Size = UDim2.new(0,30,1,0) IL.Position = UDim2.new(0,8,0,0)
        IL.BackgroundTransparency = 1 IL.Font = Enum.Font.GothamBold IL.TextSize = 16

        local NL = Instance.new("TextLabel") NL.Parent = wrapper NL.Text = label
        NL.TextColor3 = Color3.fromRGB(210,210,255)
        NL.Size = UDim2.new(0.55,0,1,0) NL.Position = UDim2.new(0,40,0,0)
        NL.BackgroundTransparency = 1 NL.Font = Enum.Font.GothamBold
        NL.TextSize = FONT_S NL.TextXAlignment = Enum.TextXAlignment.Left

        local Badge = Instance.new("TextLabel") Badge.Parent = wrapper
        Badge.Size = UDim2.new(0,30,0,16) Badge.Position = UDim2.new(1,-100,0.5,-8)
        Badge.Text = "OFF" Badge.Font = Enum.Font.GothamBold Badge.TextSize = 9
        Badge.TextColor3 = Color3.fromRGB(100,100,140) Badge.BackgroundTransparency = 1

        local Pill = Instance.new("Frame") Pill.Parent = wrapper
        Pill.Size = UDim2.new(0,44,0,22) Pill.Position = UDim2.new(1,-52,0.5,-11)
        Pill.BackgroundColor3 = Color3.fromRGB(40,40,60) Pill.BorderSizePixel = 0 makeCornerH(Pill,99)

        local Dot = Instance.new("Frame") Dot.Parent = Pill
        Dot.Size = UDim2.new(0,16,0,16) Dot.Position = UDim2.new(0,3,0.5,-8)
        Dot.BackgroundColor3 = Color3.fromRGB(140,140,180) Dot.BorderSizePixel = 0 makeCornerH(Dot,99)

        local function setState(on)
            Settings[settingKey] = on
            if on then
                tw(Pill,{BackgroundColor3=c1},0.2) tw(Dot,{Position=UDim2.new(0,25,0.5,-8),BackgroundColor3=Color3.fromRGB(255,255,255)},0.2)
                tw(RS,{Color=c1},0.2) Badge.Text="ON" Badge.TextColor3=Color3.fromRGB(80,255,140)
            else
                tw(Pill,{BackgroundColor3=Color3.fromRGB(40,40,60)},0.2) tw(Dot,{Position=UDim2.new(0,3,0.5,-8),BackgroundColor3=Color3.fromRGB(140,140,180)},0.2)
                tw(RS,{Color=Color3.fromRGB(40,40,60)},0.2) Badge.Text="OFF" Badge.TextColor3=Color3.fromRGB(100,100,140)
            end
            if callback then callback(on) end
        end
        wrapper.InputBegan:Connect(function(inp)
            if inp.UserInputType==Enum.UserInputType.MouseButton1 or inp.UserInputType==Enum.UserInputType.Touch then
                setState(not Settings[settingKey])
            end
        end)
        return setState
    end

    local function makeSlider(parent, labelText, minV, maxV, defaultV, suffix, onChanged)
        local wrapper = Instance.new("Frame") wrapper.Parent = parent
        wrapper.Size = UDim2.new(0.94,0,0,58) wrapper.BackgroundColor3 = Color3.fromRGB(20,20,32)
        wrapper.BorderSizePixel = 0 makeCornerH(wrapper,10)
        local stroke = Instance.new("UIStroke") stroke.Parent = wrapper stroke.Color = Color3.fromRGB(40,40,60) stroke.Thickness = 1

        local NL2 = Instance.new("TextLabel") NL2.Parent = wrapper NL2.Text = labelText
        NL2.TextColor3 = Color3.fromRGB(210,210,255) NL2.Size = UDim2.new(0.65,0,0,24)
        NL2.Position = UDim2.new(0,10,0,4) NL2.BackgroundTransparency = 1
        NL2.Font = Enum.Font.GothamBold NL2.TextSize = FONT_S NL2.TextXAlignment = Enum.TextXAlignment.Left

        local VL = Instance.new("TextLabel") VL.Parent = wrapper
        VL.Text = tostring(defaultV)..(suffix or "") VL.TextColor3 = Color3.fromRGB(160,120,255)
        VL.Size = UDim2.new(0.35,-10,0,24) VL.Position = UDim2.new(0.65,0,0,4)
        VL.BackgroundTransparency = 1 VL.Font = Enum.Font.GothamBold
        VL.TextSize = FONT_S VL.TextXAlignment = Enum.TextXAlignment.Right

        local Track = Instance.new("Frame") Track.Parent = wrapper
        Track.Size = UDim2.new(1,-20,0,6) Track.Position = UDim2.new(0,10,0,40)
        Track.BackgroundColor3 = Color3.fromRGB(40,40,60) Track.BorderSizePixel = 0
        Track.ClipsDescendants = true makeCornerH(Track,99)

        local Fill = Instance.new("Frame") Fill.Parent = Track
        Fill.Size = UDim2.new((defaultV-minV)/(maxV-minV),0,1,0)
        Fill.BackgroundColor3 = Color3.fromRGB(100,0,220) Fill.BorderSizePixel = 0 makeCornerH(Fill,99)
        makeGradient(Fill,Color3.fromRGB(120,0,220),Color3.fromRGB(0,120,255),90)

        local Knob = Instance.new("Frame") Knob.Parent = Track
        Knob.Size = UDim2.new(0,isMobile and 18 or 14,0,isMobile and 18 or 14)
        Knob.Position = UDim2.new((defaultV-minV)/(maxV-minV),-7,0.5,-7)
        Knob.BackgroundColor3 = Color3.fromRGB(255,255,255) Knob.BorderSizePixel = 0 makeCornerH(Knob,99)

        local sliding = false
        local function update(ix)
            local rel = math.clamp((ix-Track.AbsolutePosition.X)/Track.AbsoluteSize.X,0,1)
            local val = math.floor(minV+rel*(maxV-minV)+0.5)
            local dr = (val-minV)/(maxV-minV)
            tw(Fill,{Size=UDim2.new(dr,0,1,0)},0.04)
            tw(Knob,{Position=UDim2.new(dr,-7,0.5,-7)},0.04)
            VL.Text = tostring(val)..(suffix or "")
            if onChanged then onChanged(val) end
        end
        Track.InputBegan:Connect(function(inp)
            if inp.UserInputType==Enum.UserInputType.MouseButton1 or inp.UserInputType==Enum.UserInputType.Touch then
                sliding=true update(inp.Position.X)
            end
        end)
        UserInputService.InputChanged:Connect(function(inp)
            if sliding and (inp.UserInputType==Enum.UserInputType.MouseMovement or inp.UserInputType==Enum.UserInputType.Touch) then
                update(inp.Position.X)
            end
        end)
        UserInputService.InputEnded:Connect(function(inp)
            if inp.UserInputType==Enum.UserInputType.MouseButton1 or inp.UserInputType==Enum.UserInputType.Touch then sliding=false end
        end)
    end

    local function makeActionBtn(parent, label, c1, c2, onClick)
        local wrapper = Instance.new("Frame") wrapper.Parent = parent
        wrapper.Size = UDim2.new(0.94,0,0,38) wrapper.BackgroundTransparency = 1
        wrapper.BorderSizePixel = 0

        local btn = Instance.new("TextButton") btn.Parent = wrapper
        btn.Size = UDim2.new(1,0,1,0) btn.Text = label
        btn.TextColor3 = Color3.fromRGB(255,255,255) btn.BorderSizePixel = 0
        btn.Font = Enum.Font.GothamBold btn.TextSize = FONT_S
        btn.BackgroundColor3 = c1 makeCornerH(btn,10) makeGradient(btn,c1,c2,45)
        btn.MouseEnter:Connect(function() tw(btn,{BackgroundTransparency=0.15},0.12) end)
        btn.MouseLeave:Connect(function() tw(btn,{BackgroundTransparency=0},0.12) end)
        btn.MouseButton1Click:Connect(function() pcall(onClick) end)
        return btn
    end

    local function makeInfoRow(parent, label, value)
        local wrapper = Instance.new("Frame") wrapper.Parent = parent
        wrapper.Size = UDim2.new(0.94,0,0,36) wrapper.BackgroundColor3 = Color3.fromRGB(20,20,32)
        wrapper.BorderSizePixel = 0 makeCornerH(wrapper,8)
        local stroke2 = Instance.new("UIStroke") stroke2.Parent = wrapper stroke2.Color = Color3.fromRGB(40,40,60)

        local lLbl = Instance.new("TextLabel") lLbl.Parent = wrapper
        lLbl.Text = label lLbl.TextColor3 = Color3.fromRGB(140,120,200)
        lLbl.Size = UDim2.new(0.45,0,1,0) lLbl.Position = UDim2.new(0,10,0,0)
        lLbl.BackgroundTransparency = 1 lLbl.Font = Enum.Font.GothamBold
        lLbl.TextSize = FONT_S lLbl.TextXAlignment = Enum.TextXAlignment.Left

        local vLbl = Instance.new("TextLabel") vLbl.Parent = wrapper
        vLbl.Text = value vLbl.TextColor3 = Color3.fromRGB(220,220,255)
        vLbl.Size = UDim2.new(0.55,-10,1,0) vLbl.Position = UDim2.new(0.45,0,0,0)
        vLbl.BackgroundTransparency = 1 vLbl.Font = Enum.Font.Gotham
        vLbl.TextSize = FONT_S vLbl.TextXAlignment = Enum.TextXAlignment.Right

        return vLbl
    end

    -- ==================
    -- TAB 1: FARM
    -- ==================
    local farmTab = tabFrames[1]
    makeSectionLabel(farmTab, "  ⚔️  AUTO FEATURES")

    local cWrapper = Instance.new("Frame") cWrapper.Parent = farmTab
    cWrapper.Size = UDim2.new(0.94,0,0,34) cWrapper.BackgroundColor3 = Color3.fromRGB(20,20,32)
    cWrapper.BorderSizePixel = 0 makeCornerH(cWrapper,10)
    local cStroke = Instance.new("UIStroke") cStroke.Parent = cWrapper cStroke.Color = Color3.fromRGB(100,60,200) cStroke.Thickness = 1
    local cLbl = Instance.new("TextLabel") cLbl.Parent = cWrapper
    cLbl.Size = UDim2.new(1,0,1,0) cLbl.BackgroundTransparency = 1
    cLbl.Font = Enum.Font.GothamBold cLbl.TextSize = FONT_S cLbl.TextColor3 = Color3.fromRGB(200,170,255)
    cLbl.Text = "🐷 Scanning morphs..."
    task.spawn(function()
        while cLbl and cLbl.Parent do
            cLbl.Text = "🐷 Morphs detected: "..#getMorphs()
            task.wait(2)
        end
    end)

    makeToggle(farmTab, "Auto Farm Morphs", "🐷", "AutoFarm",
        Color3.fromRGB(0,200,100), Color3.fromRGB(0,120,220), function(on)
            if on then
                notify("🐷 Auto Farm", "Auto Farm enabled!", Color3.fromRGB(0,200,100), 3)
            else
                notify("🐷 Auto Farm", "Auto Farm disabled.", Color3.fromRGB(150,150,150), 2)
                Humanoid.WalkSpeed = 16
            end
        end)

    makeToggle(farmTab, "Auto Interact", "🖐️", "AutoInteract",
        Color3.fromRGB(255,160,0), Color3.fromRGB(220,80,0), function(on)
            if not on then interactTimer = 0 end
            notify("🖐️ Auto Interact", on and "Enabled!" or "Disabled.", Color3.fromRGB(255,160,0), 2)
        end)

    makeSectionLabel(farmTab, "  🎚️  SPEED & TIMING")

    makeSlider(farmTab, "🏃 Farm Speed", 8, 100, 16, "", function(val)
        Settings.FarmSpeed = val
        if not Settings.AutoFarm and Humanoid then
            Humanoid.WalkSpeed = val
        end
    end)

    makeSlider(farmTab, "⏱  Interact Interval", 1, 30, 7, "s", function(val)
        Settings.InteractInterval = val
    end)

    makeSectionLabel(farmTab, "  🔧  MANUAL ACTIONS")

    makeActionBtn(farmTab, "⚡  Teleport to Nearest Morph",
        Color3.fromRGB(80,0,180), Color3.fromRGB(0,80,200), function()
            local _,_,pos = getNearestMorph()
            if pos and HumanoidRootPart then
                HumanoidRootPart.CFrame = CFrame.new(pos + Vector3.new(0,3,0))
                notify("⚡ Teleport", "Teleported to nearest morph!", Color3.fromRGB(100,0,255), 2)
            else
                notify("⚡ Teleport", "No morph found nearby.", Color3.fromRGB(255,80,80), 2)
            end
        end)

    makeActionBtn(farmTab, "🎯  Force Interact All Now",
        Color3.fromRGB(200,100,0), Color3.fromRGB(160,40,0), function()
            local count = 0
            for _, obj in pairs(getMorphs()) do tryInteractObj(obj) count=count+1 end
            notify("🎯 Interact", "Interacted with "..count.." morphs!", Color3.fromRGB(255,140,0), 3)
        end)

    -- ==================
    -- TAB 2: VISUALS
    -- ==================
    local visTab = tabFrames[2]
    makeSectionLabel(visTab, "  👁️  ESP")

    makeToggle(visTab, "ESP All Morphs", "🔴", "ESP",
        Color3.fromRGB(255,60,60), Color3.fromRGB(180,0,0), function(on)
            if not on then clearESP() else updateESP() end
            notify("👁️ ESP", on and "ESP enabled!" or "ESP disabled.", Color3.fromRGB(255,60,60), 2)
        end)

    makeSectionLabel(visTab, "  🚀  MOVEMENT")

    makeToggle(visTab, "Float Mode", "🌀", "Float",
        Color3.fromRGB(100,0,255), Color3.fromRGB(0,100,255), function(on)
            if on then enableFloat() else disableFloat() end
            notify("🌀 Float", on and "Float enabled!" or "Float disabled.", Color3.fromRGB(100,0,255), 2)
        end)

    makeToggle(visTab, "NoClip (Auto Farm)", "👻", "NoClip",
        Color3.fromRGB(0,180,255), Color3.fromRGB(0,80,200), function(on)
            if on then enableNoclip() else disableNoclip() end
            notify("👻 NoClip", on and "NoClip ON!" or "NoClip OFF.", Color3.fromRGB(0,180,255), 2)
        end)

    -- ==================
    -- TAB 3: UTILITIES
    -- ==================
    local utilTab = tabFrames[3]
    makeSectionLabel(utilTab, "  ⚡  PERFORMANCE")

    makeToggle(utilTab, "Low-End Mode", "🐢", "LowEndMode",
        Color3.fromRGB(255,200,0), Color3.fromRGB(200,100,0), function(on)
            notify("🐢 Low-End", on and "Low-End Mode ON — reduced lag!" or "Low-End Mode OFF.", Color3.fromRGB(255,200,0), 3)
        end)

    local pingWrapper = Instance.new("Frame") pingWrapper.Parent = utilTab
    pingWrapper.Size = UDim2.new(0.94,0,0,60) pingWrapper.BackgroundColor3 = Color3.fromRGB(20,20,32)
    pingWrapper.BorderSizePixel = 0 makeCornerH(pingWrapper,10)
    local pStroke = Instance.new("UIStroke") pStroke.Parent = pingWrapper pStroke.Color = Color3.fromRGB(40,40,60)

    local pingTitle = Instance.new("TextLabel") pingTitle.Parent = pingWrapper
    pingTitle.Text = "📡  Ping & Lag Prediction"
    pingTitle.TextColor3 = Color3.fromRGB(200,180,255) pingTitle.Size = UDim2.new(1,0,0,26)
    pingTitle.Position = UDim2.new(0,10,0,2) pingTitle.BackgroundTransparency = 1
    pingTitle.Font = Enum.Font.GothamBold pingTitle.TextSize = FONT_S pingTitle.TextXAlignment = Enum.TextXAlignment.Left

    local pingInfo = Instance.new("TextLabel") pingInfo.Parent = pingWrapper
    pingInfo.TextColor3 = Color3.fromRGB(150,150,200) pingInfo.Size = UDim2.new(1,-10,0,22)
    pingInfo.Position = UDim2.new(0,10,0,32) pingInfo.BackgroundTransparency = 1
    pingInfo.Font = Enum.Font.Gotham pingInfo.TextSize = 11 pingInfo.TextXAlignment = Enum.TextXAlignment.Left
    pingInfo.Text = "Current: ... | Predicted: ... | Lag x..."

    task.spawn(function()
        while pingInfo and pingInfo.Parent do
            local cur = pcall(getCurrentPing) and getCurrentPing() or 0
            pingInfo.Text = "Now: "..cur.."ms | Avg: "..math.floor(predictedPing).."ms | Lag x"..string.format("%.1f", lagMultiplier)
            task.wait(1)
        end
    end)

    makeSectionLabel(utilTab, "  🎮  GAME INFO")

    makeActionBtn(utilTab, "📋  Copy Game Link",
        Color3.fromRGB(60,60,120), Color3.fromRGB(40,40,100), function()
            pcall(function()
                setclipboard("https://www.roblox.com/games/"..game.PlaceId)
                notify("📋 Copied", "Game link copied to clipboard!", Color3.fromRGB(100,100,255), 2.5)
            end)
        end)

    makeActionBtn(utilTab, "🔄  Rejoin Server",
        Color3.fromRGB(100,40,0), Color3.fromRGB(60,20,0), function()
            local TeleportService = game:GetService("TeleportService")
            notify("🔄 Rejoining", "Rejoining in 2 seconds...", Color3.fromRGB(255,120,0), 2)
            task.wait(2)
            pcall(function() TeleportService:Teleport(game.PlaceId, LocalPlayer) end)
        end)

    makeActionBtn(utilTab, "🔑  Get Linkvertise Key",
        Color3.fromRGB(180,80,0), Color3.fromRGB(120,40,0), function()
            pcall(function()
                setclipboard("https://direct-link.net/4295026/gceI9kt62AMz")
                notify("🔑 Key", "Linkvertise link copied!", Color3.fromRGB(255,160,0), 3)
            end)
        end)

    -- ==================
    -- TAB 4: SETTINGS
    -- ==================
    local settTab = tabFrames[4]
    makeSectionLabel(settTab, "  👤  YOUR INFO")

    local avatarWrapper = Instance.new("Frame") avatarWrapper.Parent = settTab
    avatarWrapper.Size = UDim2.new(0.94,0,0,70) avatarWrapper.BackgroundColor3 = Color3.fromRGB(20,20,32)
    avatarWrapper.BorderSizePixel = 0 makeCornerH(avatarWrapper,12)
    local avStroke = Instance.new("UIStroke") avStroke.Parent = avatarWrapper avStroke.Color = Color3.fromRGB(100,60,200)

    local thumbImg = Instance.new("ImageLabel") thumbImg.Parent = avatarWrapper
    thumbImg.Size = UDim2.new(0,52,0,52) thumbImg.Position = UDim2.new(0,9,0.5,-26)
    thumbImg.BackgroundColor3 = Color3.fromRGB(30,30,45) thumbImg.BorderSizePixel = 0
    makeCornerH(thumbImg,10)
    pcall(function()
        thumbImg.Image = Players:GetUserThumbnailAsync(
            LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100)
    end)

    local playerNameLbl = Instance.new("TextLabel") playerNameLbl.Parent = avatarWrapper
    playerNameLbl.Text = "🎮  "..LocalPlayer.DisplayName
    playerNameLbl.TextColor3 = Color3.fromRGB(220,220,255) playerNameLbl.Size = UDim2.new(1,-80,0,26)
    playerNameLbl.Position = UDim2.new(0,70,0,10) playerNameLbl.BackgroundTransparency = 1
    playerNameLbl.Font = Enum.Font.GothamBold playerNameLbl.TextSize = FONT_L playerNameLbl.TextXAlignment = Enum.TextXAlignment.Left

    local playerUserLbl = Instance.new("TextLabel") playerUserLbl.Parent = avatarWrapper
    playerUserLbl.Text = "@"..LocalPlayer.Name.." • ID: "..LocalPlayer.UserId
    playerUserLbl.TextColor3 = Color3.fromRGB(120,100,180) playerUserLbl.Size = UDim2.new(1,-80,0,20)
    playerUserLbl.Position = UDim2.new(0,70,0,38) playerUserLbl.BackgroundTransparency = 1
    playerUserLbl.Font = Enum.Font.Gotham playerUserLbl.TextSize = 10 playerUserLbl.TextXAlignment = Enum.TextXAlignment.Left

    makeSectionLabel(settTab, "  💻  SYSTEM INFO")

    makeInfoRow(settTab, "Executor", executorName)
    makeInfoRow(settTab, "Device", isMobile and "📱 Mobile" or "🖥️ PC")
    makeInfoRow(settTab, "Script Version", "v1.3")
    makeInfoRow(settTab, "Hub", "Piggy Morphs Hub")
    makeInfoRow(settTab, "Made by", "Tonyfortin152")

    local livePingRow = makeInfoRow(settTab, "Live Ping", "...")
    task.spawn(function()
        while livePingRow and livePingRow.Parent do
            local p = pcall(getCurrentPing) and getCurrentPing() or 0
            livePingRow.Text = p.."ms"
            livePingRow.TextColor3 = p < 100 and Color3.fromRGB(80,255,140)
                or p < 200 and Color3.fromRGB(255,220,50)
                or Color3.fromRGB(255,80,80)
            task.wait(1)
        end
    end)

    local fpsRow = makeInfoRow(settTab, "FPS", "...")
    task.spawn(function()
        local last = tick()
        while fpsRow and fpsRow.Parent do
            RunService.RenderStepped:Wait()
            local now = tick()
            local fps = math.floor(1/(now-last))
            last = now
            fpsRow.Text = fps.." FPS"
            fpsRow.TextColor3 = fps >= 50 and Color3.fromRGB(80,255,140)
                or fps >= 25 and Color3.fromRGB(255,220,50)
                or Color3.fromRGB(255,80,80)
            task.wait(0.5)
        end
    end)

    makeSectionLabel(settTab, "  🔗  LINKS")

    makeActionBtn(settTab, "📺  YouTube: MINH'S SCRIPTS",
        Color3.fromRGB(180,0,0), Color3.fromRGB(120,0,0), function()
            pcall(function()
                setclipboard("https://youtube.com/@minhsscripts")
                notify("📺 YouTube", "Channel link copied!", Color3.fromRGB(255,0,0), 2.5)
            end)
        end)

    makeActionBtn(settTab, "💬  Discord: Minh's Community",
        Color3.fromRGB(60,0,150), Color3.fromRGB(40,0,100), function()
            pcall(function()
                setclipboard("discord.gg/wB4zGxDT")
                notify("💬 Discord", "Discord link copied!", Color3.fromRGB(80,0,200), 2.5)
            end)
        end)

    -- ==================
    -- LOADING SCREEN
    -- ==================
    local LoadScreen = Instance.new("ScreenGui")
    LoadScreen.Name = "LoadScreen" LoadScreen.ResetOnSpawn = false
    LoadScreen.IgnoreGuiInset = true LoadScreen.DisplayOrder = 999 LoadScreen.Parent = PlayerGui

    local LOverlay = Instance.new("Frame") LOverlay.Parent = LoadScreen
    LOverlay.Size = UDim2.new(1,0,1,0) LOverlay.BackgroundColor3 = Color3.fromRGB(10,10,16) LOverlay.BorderSizePixel = 0

    local LFrame = Instance.new("Frame") LFrame.Parent = LoadScreen
    LFrame.BackgroundColor3 = Color3.fromRGB(16,16,26)
    LFrame.Size = UDim2.new(0,isMobile and 290 or 340,0,180)
    LFrame.Position = UDim2.new(0.5,isMobile and -145 or -170,0.5,-90)
    LFrame.BorderSizePixel = 0 makeCornerH(LFrame,16) makeShadowH(LFrame)

    local LBorderStroke = Instance.new("UIStroke") LBorderStroke.Parent = LFrame LBorderStroke.Thickness = 2
    task.spawn(function()
        local h=0
        while LFrame and LFrame.Parent do h=(h+0.008)%1 LBorderStroke.Color=Color3.fromHSV(h,1,1) task.wait(0.03) end
    end)

    local LTop = Instance.new("Frame") LTop.Parent = LFrame
    LTop.Size = UDim2.new(1,0,0,48) LTop.BackgroundColor3 = Color3.fromRGB(100,0,220)
    LTop.BorderSizePixel = 0 makeCornerH(LTop,16)
    makeGradient(LTop,Color3.fromRGB(120,0,220),Color3.fromRGB(0,100,255),135)

    local LTitle = Instance.new("TextLabel") LTitle.Parent = LTop
    LTitle.Text = "🐷  Loading Piggy Morphs Hub..." LTitle.TextColor3 = Color3.fromRGB(255,255,255)
    LTitle.Size = UDim2.new(1,0,1,0) LTitle.BackgroundTransparency = 1
    LTitle.Font = Enum.Font.GothamBold LTitle.TextSize = isMobile and 13 or 15

    local LStatus = Instance.new("TextLabel") LStatus.Parent = LFrame
    LStatus.TextColor3 = Color3.fromRGB(160,160,200) LStatus.Size = UDim2.new(1,-20,0,24)
    LStatus.Position = UDim2.new(0,10,0,58) LStatus.BackgroundTransparency = 1
    LStatus.Font = Enum.Font.Gotham LStatus.TextSize = 11 LStatus.Text = "Starting up..."
    LStatus.TextXAlignment = Enum.TextXAlignment.Left

    local LBarBG = Instance.new("Frame") LBarBG.Parent = LFrame
    LBarBG.Size = UDim2.new(0.84,0,0,8) LBarBG.Position = UDim2.new(0.08,0,0,92)
    LBarBG.BackgroundColor3 = Color3.fromRGB(30,30,48) LBarBG.BorderSizePixel = 0
    LBarBG.ClipsDescendants = true makeCornerH(LBarBG,99)

    local LBarFill = Instance.new("Frame") LBarFill.Parent = LBarBG
    LBarFill.Size = UDim2.new(0,0,1,0) LBarFill.BackgroundColor3 = Color3.fromRGB(100,0,220)
    LBarFill.BorderSizePixel = 0 makeCornerH(LBarFill,99)
    makeGradient(LBarFill,Color3.fromRGB(120,0,220),Color3.fromRGB(0,120,255),90)

    local LPct = Instance.new("TextLabel") LPct.Parent = LFrame
    LPct.Text = "0%" LPct.TextColor3 = Color3.fromRGB(140,100,255)
    LPct.Size = UDim2.new(1,0,0,20) LPct.Position = UDim2.new(0,0,0,108)
    LPct.BackgroundTransparency = 1 LPct.Font = Enum.Font.GothamBold LPct.TextSize = 11

    local LVer = Instance.new("TextLabel") LVer.Parent = LFrame
    LVer.Text = "v1.3  •  by Tonyfortin152" LVer.TextColor3 = Color3.fromRGB(70,70,110)
    LVer.Size = UDim2.new(1,0,0,20) LVer.Position = UDim2.new(0,0,0,156)
    LVer.BackgroundTransparency = 1 LVer.Font = Enum.Font.Gotham LVer.TextSize = 10

    local loadSteps = {
        {text = "Detecting morph objects...",          pct = 0.18},
        {text = "Loading auto farm + noclip...",       pct = 0.36},
        {text = "Setting up ping prediction...",       pct = 0.52},
        {text = "Loading auto interact...",            pct = 0.64},
        {text = "Building ESP overlays...",            pct = 0.78},
        {text = "Applying low-end optimizations...",   pct = 0.88},
        {text = "Done! Welcome, "..LocalPlayer.DisplayName.." 🐷", pct = 1.00},
    }

    task.spawn(function()
        doLoadingEffect(function() end)
        for _, step in ipairs(loadSteps) do
            LStatus.Text = step.text
            LPct.Text = math.floor(step.pct*100).."%"
            tw(LBarFill,{Size=UDim2.new(step.pct,0,1,0)},0.4,Enum.EasingStyle.Quad)
            task.wait(0.4)
        end
        task.wait(0.3)
        tw(LOverlay,{BackgroundTransparency=1},0.5)
        tw(LFrame,{BackgroundTransparency=1},0.4)
        tw(LTop,{BackgroundTransparency=1},0.4)
        tw(LBarBG,{BackgroundTransparency=1},0.4)
        tw(LBarFill,{BackgroundTransparency=1},0.4)
        tw(LTitle,{TextTransparency=1},0.4)
        tw(LStatus,{TextTransparency=1},0.4)
        tw(LPct,{TextTransparency=1},0.4)
        tw(LVer,{TextTransparency=1},0.4)
        task.wait(0.5)
        LoadScreen:Destroy()

        MainFrame.Visible = true
        local startX = isMobile and UDim2.new(0.5,-HUB_W/2,1.5,0) or UDim2.new(-0.5,0,0.5,-HUB_H/2)
        local endX   = isMobile and UDim2.new(0.5,-HUB_W/2,0.5,-HUB_H/2) or UDim2.new(0,16,0.5,-HUB_H/2)
        MainFrame.Position = startX
        tw(MainFrame, {Position = endX}, 0.55, Enum.EasingStyle.Back)

        task.wait(0.8)
        notify("🐷 Piggy Morphs Hub", "Hub loaded! Welcome, "..LocalPlayer.DisplayName.."!", Color3.fromRGB(120,0,255), 4)
        task.wait(1)
        notify("📡 Ping", "Current ping: "..(pcall(getCurrentPing) and getCurrentPing() or 0).."ms | Device: "..(isMobile and "Mobile" or "PC"), Color3.fromRGB(0,180,255), 3.5)
    end)
end -- end loadMainScript
