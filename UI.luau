local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "MyTeleportUI"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local Main = Instance.new("Frame")
Main.Size = UDim2.new(0, 250, 0, 150)
Main.Position = UDim2.new(0.05, 0, 0.5, -75)
Main.Parent = ScreenGui

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 40)
Title.Text = "Teleport Menu"
Title.Parent = Main

local MoosewoodButton = Instance.new("TextButton")
MoosewoodButton.Size = UDim2.new(0.8, 0, 0, 50)
MoosewoodButton.Position = UDim2.new(0.1, 0, 0, 60)
MoosewoodButton.Text = "Moosewood"
MoosewoodButton.Parent = Main

MoosewoodButton.Activated:Connect(function()
    print("Moosewood button clicked!")
end)