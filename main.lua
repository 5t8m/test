-

-- 🔐 Key Verification
local HttpService = game:GetService("HttpService")
local success, response = pcall(function()
    return game:HttpGet("https://raw.githubusercontent.com/5t8m/storage/refs/heads/main/keys")
end)

if not success then
    game.Players.LocalPlayer:Kick("❌ Failed to fetch whitelist keys")
    return
end

local keys = {}
for key in string.gmatch(response, "[^\r\n]+") do
    keys[key] = true
end

if not Script_key or Script_key == "" then
    game.Players.LocalPlayer:Kick("⚠️ No key entered")
    return
end

if not keys[Script_key] then
    game.Players.LocalPlayer:Kick("⛔ Invalid key. Whitelist error.")
    return
end

-- ✅ Load the actual script
loadstring(game:HttpGet("https://raw.githubusercontent.com/Actyrn/Scripts/main/AzureModded"))() 
