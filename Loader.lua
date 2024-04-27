repeat task.wait() until game:IsLoaded()

_G.Premium = false

local DiscordInv = "https://discord.gg/gbETDfyS5q"

local UI = "https://github.com/znIck43/EverlastHub/blob/main/SystemUI.lua"
local EH_PS = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/EH-PS.lua"

local Player = game:GetService("Players").LocalPlayer
local Id = game.PlaceId
local Scripts = {
    [6299805723] = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/Free/AnimeFightersSim.lua",
    [12886143095] = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/Free/AnimeLastStand.lua",
    [15367026228] = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/Free/AnimeSoulsX.lua",
    [2753915549] = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/Free/BloxFruits.lua",
    [4996049426] = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/Free/AllStarTD.lua",
    [606849621] = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/Free/Jailbreak.lua"
}

local function LoadScript(name)
    loadstring(game:HttpGet(name))()
end

if Scripts[Id] then
    if _G.Premium then
        LoadScript(EH_PS)
    else
        LoadScript(UI)
        LoadScript(Scripts[Id])
    end
else
    Player:Kick("Unsupported game, check your clipboard.")
end

setclipboard(DiscordInv)
