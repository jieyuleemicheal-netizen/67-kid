-- Teleport Menu UI
local Players = game:GetService("Players")
local PlayerGui = Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create ScreenGui
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "MyTeleportUI"
ScreenGui.Parent = PlayerGui

-- Wait for teleport module to load
repeat task.wait(0.05) until _G.GoToMoosewood

-- Main Frame
local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 250, 0, 150)
MainFrame.Position = UDim2.new(0.05, 0, 0.5, -75)
MainFrame.BackgroundColor3 = Color3.fromRGB(40, 45, 60)
MainFrame.BorderSizePixel = 0
MainFrame.Parent = ScreenGui

-- Title
local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 45)
Title.BackgroundColor3 = Color3.fromRGB(60, 90, 150)
Title.Text = "Teleport Menu"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 20
Title.Parent = MainFrame

-- Moosewood Button
local MoosewoodBtn = Instance.new("TextButton")
MoosewoodBtn.Size = UDim2.new(0.8, 0, 0, 50)
MoosewoodBtn.Position = UDim2.new(0.1, 0, 0, 65)
MoosewoodBtn.BackgroundColor3 = Color3.fromRGB(50, 140, 90)
MoosewoodBtn.Text = "Moosewood"
MoosewoodBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
MoosewoodBtn.Font = Enum.Font.GothamBold
MoosewoodBtn.TextSize = 18
MoosewoodBtn.Parent = MainFrame

-- Button Click Action
MoosewoodBtn.MouseButton1Click:Connect(function()
    _G.GoToMoosewood()
    MoosewoodBtn.Text = "✅ Teleported!"
    task.wait(1.5)
    MoosewoodBtn.Text = "Moosewood"
end)
