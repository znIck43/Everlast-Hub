repeat task.wait() until game:IsLoaded()
local DiscordInv = "https://discord.gg/gbETDfyS5q"

_G.Paid = false

local UI = "https://github.com/znIck43/EverlastHub/blob/main/SystemUI.lua"
local EH_PS = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/EH-PS.lua"

local PlaceId = game.PlaceId
local Games = {
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

for _, v in Games[PlaceId] do
    if _G.Paid then
        LoadScript(EH_PS)
    else
        LoadScript(UI)
        LoadScript(v)
    end
end
setclipboard(DiscordInv)
