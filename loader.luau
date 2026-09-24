-- loader.luau - Loads everything automatically
local BaseURL = "https://raw.githubusercontent.com/jieyuleemicheal-netizen/67-kid/main/"

-- Load teleport FIRST
loadstring(game:HttpGet(BaseURL .. "teleport.luau"))()
task.wait(0.1) -- Short delay to ensure it loads

-- Then load UI
loadstring(game:HttpGet(BaseURL .. "UI.luau"))()
