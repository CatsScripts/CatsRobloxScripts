-- Script Title: NuggetUI BETA V1.4

-- Create GUI and Loading Screen
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local AutoFarmButton = Instance.new("TextButton")
local AutoFindFruitButton = Instance.new("TextButton")
local AutoQuestButton = Instance.new("TextButton")
local AutoBountyButton = Instance.new("TextButton")
local FruitGiverButton = Instance.new("TextButton")
local ESPButton = Instance.new("TextButton")
local BloxFruitsDealerButton = Instance.new("TextButton")
local TitleLabel = Instance.new("TextLabel")
local Section1Label = Instance.new("TextLabel")
local Section2Label = Instance.new("TextLabel")

local LoadingScreen = Instance.new("ScreenGui")
local LoadingFrame = Instance.new("Frame")
local LoadingLabel = Instance.new("TextLabel")

-- NuggetUI Title
local NuggetUITitle = "NuggetUI BETA V1.4"

-- Create Loading Screen
LoadingScreen.Name = "LoadingScreen"
LoadingScreen.Parent = game.CoreGui
LoadingScreen.ResetOnSpawn = false

LoadingFrame.Parent = LoadingScreen
LoadingFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
LoadingFrame.Size = UDim2.new(1, 0, 1, 0)

LoadingLabel.Parent = LoadingFrame
LoadingLabel.Text = "Loading, please wait..."
LoadingLabel.Font = Enum.Font.SourceSansBold
LoadingLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
LoadingLabel.Size = UDim2.new(1, 0, 1, 0)
LoadingLabel.TextSize = 36
LoadingLabel.TextScaled = true

-- Create Main GUI
ScreenGui.Name = "NuggetUI"
ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50) -- Grey background
Frame.Position = UDim2.new(0.3, 0, 0.3, 0)
Frame.Size = UDim2.new(0, 300, 0, 500) -- Optimized for mobile screen size

TitleLabel.Parent = Frame
TitleLabel.Text = NuggetUITitle
TitleLabel.Font = Enum.Font.SourceSansBold
TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.Size = UDim2.new(0, 300, 0, 40)
TitleLabel.Position = UDim2.new(0, 0, 0, 0)
TitleLabel.BackgroundColor3 = Color3.fromRGB(35, 35, 35) -- Light dark button
TitleLabel.TextSize = 20 -- Slightly smaller for mobile

Section1Label.Parent = Frame
Section1Label.Text = "Farming & Questing Controls"
Section1Label.Font = Enum.Font.SourceSansBold
Section1Label.TextColor3 = Color3.fromRGB(255, 255, 255)
Section1Label.Size = UDim2.new(0, 300, 0, 30)
Section1Label.Position = UDim2.new(0, 0, 0.15, 0)
Section1Label.BackgroundColor3 = Color3.fromRGB(35, 35, 35) -- Light dark button
Section1Label.TextSize = 18

AutoFarmButton.Parent = Frame
AutoFarmButton.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
AutoFarmButton.Position = UDim2.new(0.05, 0, 0.25, 0)
AutoFarmButton.Size = UDim2.new(0, 270, 0, 50)
AutoFarmButton.Font = Enum.Font.SourceSans
AutoFarmButton.Text = "Toggle Auto Farm"
AutoFarmButton.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoFarmButton.TextSize = 18

AutoQuestButton.Parent = Frame
AutoQuestButton.BackgroundColor3 = Color3.fromRGB(170, 0, 170)
AutoQuestButton.Position = UDim2.new(0.05, 0, 0.4, 0)
AutoQuestButton.Size = UDim2.new(0, 270, 0, 50)
AutoQuestButton.Font = Enum.Font.SourceSans
AutoQuestButton.Text = "Toggle Auto Quest"
AutoQuestButton.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoQuestButton.TextSize = 18

FruitGiverButton.Parent = Frame
FruitGiverButton.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
FruitGiverButton.Position = UDim2.new(0.05, 0, 0.55, 0)
FruitGiverButton.Size = UDim2.new(0, 270, 0, 50)
FruitGiverButton.Font = Enum.Font.SourceSans
FruitGiverButton.Text = "Fruit Giver"
FruitGiverButton.TextColor3 = Color3.fromRGB(255, 255, 255)
FruitGiverButton.TextSize = 18

ESPButton.Parent = Frame
ESPButton.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
ESPButton.Position = UDim2.new(0.05, 0, 0.7, 0)
ESPButton.Size = UDim2.new(0, 270, 0, 50)
ESPButton.Font = Enum.Font.SourceSans
ESPButton.Text = "Toggle ESP"
ESPButton.TextColor3 = Color3.fromRGB(0, 0, 0)
ESPButton.TextSize = 18

BloxFruitsDealerButton.Parent = Frame
BloxFruitsDealerButton.BackgroundColor3 = Color3.fromRGB(255, 165, 0)
BloxFruitsDealerButton.Position = UDim2.new(0.05, 0, 0.85, 0)
BloxFruitsDealerButton.Size = UDim2.new(0, 270, 0, 50)
BloxFruitsDealerButton.Font = Enum.Font.SourceSans
BloxFruitsDealerButton.Text = "Open Dealer Shop"
BloxFruitsDealerButton.TextColor3 = Color3.fromRGB(255, 255, 255)
BloxFruitsDealerButton.TextSize = 18

-- Variables for toggling
local autoFarmEnabled = false
local autoFindFruitEnabled = false
local autoQuestEnabled = false
local autoBountyEnabled = false
local fruitGiverEnabled = false
local espEnabled = false

-- Adjust Input Method for Mobile Compatibility
local UserInputService = game:GetService("UserInputService")

-- Detect mobile users and scale the GUI for touch
local function adjustForMobile()
    if UserInputService.TouchEnabled then
        Frame.Size = UDim2.new(0, 250, 0, 500)
        AutoFarmButton.Size = UDim2.new(0, 220, 0, 50)
        AutoFindFruitButton.Size = UDim2.new(0, 220, 0, 50)
        AutoQuestButton.Size = UDim2.new(0, 220, 0, 50)
        AutoBountyButton.Size = UDim2.new(0, 220, 0, 50)
        FruitGiverButton.Size = UDim2.new(0, 220, 0, 50)
        ESPButton.Size = UDim2.new(0, 220, 0, 50)
        BloxFruitsDealerButton.Size = UDim2.new(0, 220, 0, 50)
        TitleLabel.TextSize = 22
    end
end

adjustForMobile()

-- Utility function to tween to a position
local function tweenToPosition(targetPosition)
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local hrp = character:WaitForChild("HumanoidRootPart")

    local tweenService = game:GetService("TweenService")
    local tweenInfo = TweenInfo.new(2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut) -- Increased duration for safety
    local goal = {CFrame = targetPosition}

    local tween = tweenService:Create(hrp, tweenInfo, goal)
    tween:Play()
end

-- Function to spawn fruits
local function spawnFruit(fruitType, position)
    local fruitTemplate = Instance.new("Model") -- Placeholder, replace with actual fruit template
    local fruit = fruitTemplate:Clone()
    fruit.Parent = game.Workspace
    fruit.Position = position
end

-- Utility function to create ESP with detailed information
local function createESP(player)
    local character = player.Character
    if not character then return end

    local head = character:FindFirstChild("Head")
    if not head then return end

    local esp = Instance.new("BillboardGui")
    esp.Parent = head
    esp.Adornee = head
    esp.Size = UDim2.new(0, 200, 0, 100)
    esp.AlwaysOnTop = true
    esp.StudsOffset = Vector3.new(0, 3, 0)

    local textLabel = Instance.new("TextLabel")
    textLabel.Parent = esp
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    textLabel.TextStrokeTransparency = 0
    textLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
    textLabel.TextSize = 14
    textLabel.Text = string.format(
        "%s\nFruit: %s\nMelee: %s\nSword: %s\nGun: %s",
        player.Name,
        character:FindFirstChild("Fruit") and character.Fruit.Value or "None",
        character:FindFirstChild("Melee") and character.Melee.Value or "None",
        character:FindFirstChild("Sword") and character.Sword.Value or "None",
        character:FindFirstChild("Gun") and character.Gun.Value or "None"
    )
end

-- List of all fruits in Blox Fruits Update 27
local allFruits = {
    "Mammoth", "Dough", "Kitsune", "Trex", "Rocket", "Spike", "Quake", "Rumble", "Dark", "Dragon",
    "Phoenix", "Control", "String", "Light", "Soul", "Buddha", "Gravity", "Venom", "Spirit", "Portal",
    "Gura", "Magma", "Ice", "Flame", "Sand", "Smoke", "Lightning", "Dragon", "Dough", "Kage", 
    "Bari", "Suke", "Bari", "Hiei", "Gura", "Nero", "Hera", "Suna", "Tori"
}

-- Auto Quest Function
AutoQuestButton.MouseButton1Click:Connect(function()
    autoQuestEnabled = not autoQuestEnabled
    local player = game.Players.LocalPlayer

    local function autoQuest()
        while autoQuestEnabled do
            wait(0.5)
            -- Automatically take the quest based on player's level
            local level = player.Data.Level.Value
            local quest = getQuestForLevel(level)
            if quest then
                -- Take quest and fly to NPC
                local npc = findQuestNPC(quest)
                if npc then
                    tweenToPosition(npc.Position)
                    -- Auto attack logic
                end
            end
        end
    end

    if autoQuestEnabled then
        autoQuest()
    end
end)

-- Function to spawn fruit and allow interactions
FruitGiverButton.MouseButton1Click:Connect(function()
    fruitGiverEnabled = not fruitGiverEnabled

    local function fruitGiver()
        while fruitGiverEnabled do
            wait(0.5)
            -- Check for fruit spawns
            for _, fruit in pairs(allFruits) do
                local fruitLocation = findFruitLocation(fruit)
                if fruitLocation then
                    tweenToPosition(fruitLocation.Position)
                    -- Pick up and store fruit
                end
            end
        end
    end

    if fruitGiverEnabled then
        fruitGiver()
    end
end)

-- Auto Bounty Function
AutoBountyButton.MouseButton1Click:Connect(function()
    autoBountyEnabled = not autoBountyEnabled

    local function autoBounty()
        while autoBountyEnabled do
            wait(0.5)
            -- Click bounty poster and find target player
            local poster = findBountyPoster()
            if poster then
                poster.Click()
                local targetPlayer = findTargetPlayer()
                if targetPlayer then
                    tweenToPosition(targetPlayer.Position)
                    -- Attack player logic
                end
            end
        end
    end

    if autoBountyEnabled then
        autoBounty()
    end
end)

-- ESP Function
ESPButton.MouseButton1Click:Connect(function()
    espEnabled = not espEnabled

    local function toggleESP()
        if espEnabled then
            -- Add ESP to players with detailed info
            for _, player in pairs(game.Players:GetPlayers()) do
                createESP(player)
            end
            -- Add ESP to other items (chests, flowers, fruits)
        end
    end

    toggleESP()
end)

-- Open Blox Fruits Dealer Shop
BloxFruitsDealerButton.MouseButton1Click:Connect(function()
    local function openDealerShop()
        -- Implement logic to open and view the dealer shop
        local dealerShop = game.Workspace:FindFirstChild("DealerShop") -- Adjust based on actual game setup
        if dealerShop then
            dealerShop.Click()
            -- Display shop items and allow interactions
        end
    end

    openDealerShop()
end)

-- Hide Loading Screen and Show Main GUI
local function showMainGUI()
    LoadingScreen:Destroy()
    ScreenGui.Enabled = true
end

-- Simulate loading time and then show GUI
wait(5) -- Adjust wait time as needed
showMainGUI()
