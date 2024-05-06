setfpscap(240)
setclipboard("https://discord.gg/gbETDfyS5q")

local Player = game:GetService("Players").LocalPlayer
local Id = game.PlaceId

local Games = {
    [15367026228] = "Anime Souls Simulator X",
    [6299805723] = "Anime Fighters Simulator",
    [4996049426] = "All Star Tower Defense",
    [12886143095] = "Anime Last Stand",
    [2753915549] = "Blox Fruits",
    [606849621] = "Jailbreak"
}

if Games[Id] then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/znIck43/EverlastHub/main/SystemUI.lua"))()
else
    Player:Kick("Unsupported game, check your clipboard")
end
