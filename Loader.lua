setfpscap(240)

local DiscordInv = "https://discord.gg/gbETDfyS5q"
setclipboard(DiscordInv)

_G.Premium = false

local Player = game:GetService("Players").LocalPlayer
local Id = game.PlaceId

local GamesId = {
    6299805723,    -- Anime Fighters Simulator
    12886143095,   -- Anime Last Stand
    15367026228,   -- Anime Souls Simulator X
    4996049426,    -- All Star Tower Defense
    2753915549,    -- Blox Fruits
    606849621      -- Jailbreak
}

if table.find(GamesId, Id) then 
    if _G.Premium then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/znIck43/EverlastHub/main/EH-PS.lua"))()
    else
        loadstring(game:HttpGet("https://raw.githubusercontent.com/znIck43/EverlastHub/main/SystemUI.lua"))()
    end
else
    Player:Kick("Unsupported game, check your clipboard")
end
