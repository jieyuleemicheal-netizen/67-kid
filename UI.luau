local PlayerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Wait with timeout — stops hanging
local timeout = 5
local waited = 0
while not _G.GoToMoosewood and waited < timeout do
    task.wait(0.1)
    waited += 0.1
end

if not _G.GoToMoosewood then
    warn("GoToMoosewood not loaded!")
    return
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "TeleportUI"
ScreenGui.Parent = PlayerGui

local Main = Instance.new("Frame")
Main.Size = UDim2.new(0, 250, 0, 150)
Main.Position = UDim2.new(0.05, 0, 0.5, -75)
Main.BackgroundColor3 = Color3.fromRGB(40, 45, 60)
Main.Parent = ScreenGui

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 45)
Title.BackgroundColor3 = Color3.fromRGB(60, 90, 150)
Title.Text = "Teleport Menu"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.GothamBold
Title.Parent = Main

local Btn = Instance.new("TextButton")
Btn.Size = UDim2.new(0.8, 0, 0, 50)
Btn.Position = UDim2.new(0.1, 0, 0, 65)
Btn.BackgroundColor3 = Color3.fromRGB(50, 140, 90)
Btn.Text = "Moosewood"
Btn.TextColor3 = Color3.fromRGB(255, 255, 255)
Btn.Font = Enum.Font.GothamBold
Btn.Parent = Main

Btn.MouseButton1Click:Connect(function()
    _G.GoToMoosewood()
    Btn.Text = "✅ Teleported"
    task.wait(1.5)
    Btn.Text = "Moosewood"
end)
