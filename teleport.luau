local Players = game:GetService("Players")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

character:PivotTo(CFrame.new(31.7,-1049.8,00.0))