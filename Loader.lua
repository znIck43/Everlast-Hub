-- https://discord.gg/gbETDfyS5q
repeat task.wait() until game:IsLoaded()
_G.Paid = false

local Player = game:GetService("Players").LocalPlayer
local StarterGui = game:GetService("StarterGui")
local PlaceId = game.PlaceId

local SystemUI = "https://github.com/znIck43/EverlastHub/blob/main/SystemUI.lua"
local EH_PS = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/EH-PS.lua"

local DiscordInv = "https://discord.gg/gbETDfyS5q"

local Games = {
    [6299805723] = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/Free/AnimeFightersSim.lua",
    [12886143095] = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/Free/AnimeLastStand.lua",
    [15367026228] = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/Free/AnimeSoulsX.lua",
    [2753915549] = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/Free/BloxFruits.lua",
    [4996049426] = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/Free/AllStarTD.lua",
    [606849621] = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/Free/Jailbreak.lua"
}

local function Notify(title, text, dur)
    StarterGui:SetCore("SendNotification", {
        Title = title,
        Text = text,
        Duration = dur
    })
end

local function LoadScript(name)
    loadstring(game:HttpGet(name))()
end

if _G.Paid == false and Games[PlaceId] then
    LoadScript(SystemUI)
    LoadScript(Games[PlaceId])
    Notify("Free Script Version", "🟢 = Working", 10)
elseif _G.Paid and Games[PlaceId] then
    LoadScript(EH_PS)
    Notify("Paid Script Version", "🟣 = Working", 10)
else
    setclipboard(DiscordInv)
    Player:Kick("This game is not supported, please check your clipboard.")
end
