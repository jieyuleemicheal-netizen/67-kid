-- Teleport Module
local Teleport = {}

function Teleport.GoToMoosewood()
    local Players = game:GetService("Players")
    local player = Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    -- Moosewood coordinates
    character:PivotTo(CFrame.new(472.0, 150.9, 257.1))
end

-- Expose to global so UI can access it
_G.Teleport = Teleport
_G.GoToMoosewood = function()
    Teleport.GoToMoosewood()
end

return Teleport
