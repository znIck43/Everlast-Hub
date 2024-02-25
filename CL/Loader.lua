-- EH Loader
repeat task.wait() until game:IsLoaded()

_G.Premium = false
_G.AntiAFK = false

local EH_PS = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/CL/EH-PS.lua"
local EH_GUI = game:GetService("CoreGui").CFAHubPremium2022
local Players = game:GetService("Players").LocalPlayer
local Id = game.PlaceId
local Games = {
    [6299805723] = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/AnimeFightersSim.lua",
    [12886143095] = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/AnimeLastStand.lua",
    [7449423635] = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/BloxFruitsSEA3.lua",
    [4442272183] = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/BloxFruitsSEA2.lua",
    [15367026228] = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/AnimeSoulsX.lua",
    [2753915549] = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/BloxFruits.lua",
    [4996049426] = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/AllStarTD.lua",
    [606849621] = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/Jailbreak.lua",
}

-- Functions, Notify and LoadScript
local function notify(title, text)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = title,
        Text = text,
        Icon = "rbxassetid://1234567890"
    })
end

local function loadscript(name)
    loadstring(game:HttpGet(name))()
end

if _G.Premium == false and Games[Id] then
    loadscript(Games[Id])
elseif _G.Premium == true then
    loadscript(EH_PS)
else
    setclipboard("https://discord.gg/gbETDfyS5q")
    Players:Kick("Game not supported. Copied Discord server invite to your clipboard.")
end

-- Check if EH loaded correctly
if game.Loaded then
    if EH_GUI then
        notify("Everlast Hub", "🟢")
    else
        Players:Kick("Everlast Hub did not load correctly. Please rejoin the game.")
    end
end

-- Anti AFK Mode

while _G.AntiAFK do
    notify("Anti AFK = 🟢", "Copied Discord server invite to your clipboard")
    setclipboard("https://discord.gg/gbETDfyS5q")
    
    Players.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    wait(10)
end
