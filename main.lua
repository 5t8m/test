local Script_key = _G.Script_key or "NONE"

-- Fetch whitelist keys
local success, response = pcall(function()
    return game:HttpGet("https://raw.githubusercontent.com/5t8m/storage/refs/heads/main/keys")
end)

if not success then
    game.Players.LocalPlayer:Kick("❌ Failed to load key list.")
    return
end

local keys = {}
for key in string.gmatch(response, "[^\r\n]+") do
    keys[key] = true
end

-- Validate key
if Script_key == "NONE" or Script_key == "" then
    game.Players.LocalPlayer:Kick("⚠️ No key entered.")
    return
end

if not keys[Script_key] then
    game.Players.LocalPlayer:Kick("⛔ Invalid key.")
    return
end

-- ✅ Key is valid, continue loading full script:
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/drillygzzly/Roblox-UI-Libs/main/Yun%20V2%20Lib/Yun%20V2%20Lib%20Source.lua"))()


local Library = initLibrary()
local Window = Library:Load({name = "cruxware", sizeX = 500, sizeY = 500, color = Color3.fromRGB(255, 255, 255)})

local LegitTab = Window:Tab("Legit")
local PlrTab = Window:Tab("Player")
local VisualTab = Window:Tab("Visuals")

local Aimingsec1 = LegitTab:Section{name = "SilentAim", column = 1}
local Aimingsec2 = LegitTab:Section{name = "Camera Aimbot [C]", column = 2}
local Visualssec1 = VisualTab:Section{name = "Wallhacks", column = 1}

Aimingsec1:Toggle {Name = "Enable", flag = "ooolol", callback = function(bool) end}
Aimingsec1:Toggle {Name = "Smoothing", flag = "ooolol", callback = function(bool) end}
Aimingsec1:Toggle {Name = "No Sleep Aimbot", flag = "ooolol", callback = function(bool) end}

local Aimingsec1 = LegitTab:Section{name = "Smootness", column = 1}
Aimingsec1:Slider {
    Name = "Smoothing", Default = 0, Min = 0, Max = 30, Decimals = 1,
    Flag = "moooooo", callback = function(bool) end
}
Aimingsec1:dropdown {
    name = "HitPart", content = {"Head", "Torso", "HumanoidRootPart", "Right Arm", "Left Arm"},
    multichoice = false, callback = function(bool) end
}

Aimingsec2:Toggle {Name = "Enable", flag = "ooolol", callback = function(bool) end}
Aimingsec2:Toggle {Name = "Smoothing", flag = "ooolol", callback = function(bool) end}
Aimingsec2:Toggle {Name = "Shake", flag = "ooolol", callback = function(bool) end}
Aimingsec2:Toggle {Name = "Sticky", flag = "ooolol", callback = function(bool) end}
Aimingsec2:dropdown {
    name = "Cam Lock type", content = {"Toggle", "Hold"},
    multichoice = false, callback = function(bool) end
}
Aimingsec2:dropdown {
    name = "Hitpart", content = {"Head", "Torso", "HumanoidRootPart", "Right Arm", "Left Arm"},
    multichoice = false, callback = function(bool) end
}

Aimingsec2 = LegitTab:Section{name = "Anti Lock", column = 2}
Aimingsec2:Toggle {Name = "Enable", flag = "ooolol", callback = function(bool) end}
Aimingsec2:dropdown {
    name = "AntiLock Type", content = {"Sky", "Ground", "Prediction Changer"},
    multichoice = false, callback = function(bool) end
}

Aimingsec2 = LegitTab:Section{name = "AntiLock Resolver", column = 2}
Aimingsec2:Toggle {Name = "Enable", flag = "ooolol", callback = function(bool) end}
Aimingsec2:dropdown {
    name = "Resolver Type", content = {"Reconise", "MoveDirection", "Follow"},
    multichoice = false, callback = function(bool) end
}

Aimingsec1 = LegitTab:Section{name = "TriggerBot", column = 1}
Aimingsec1:Toggle {Name = "Enable", flag = "ooolol", callback = function(bool) end}
Aimingsec1:dropdown {
    name = "TriggerBot Type", content = {"Toggle", "Hold"},
    multichoice = false, callback = function(bool) end
}

Aimingsec1 = LegitTab:Section{name = "Target Player [F]", column = 1}
Aimingsec1:Toggle {Name = "Enable", flag = "ooolol", callback = function(bool) end}
Aimingsec1:dropdown {
    name = "Target Type", content = {"Spin", "Random", "Destroy Cheaters"},
    multichoice = false, callback = function(bool) end
}
