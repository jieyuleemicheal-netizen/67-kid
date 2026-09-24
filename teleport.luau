local Teleport = {}

function Teleport.GoToMoosewood()
    local Players = game:GetService("Players")
    local player = Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()

    character:PivotTo(CFrame.new(472.0, 150.9, 257.1))
end

return Teleport
