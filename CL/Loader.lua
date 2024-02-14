repeat task.wait() until game:IsLoaded()

local Players = game:GetService("Players").LocalPlayer
local Id = game.PlaceId
local URLs = {
    [6299805723] = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/AnimeFightersSim.lua",
    [12886143095] = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/AnimeLastStand.lua",
    [7449423635] = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/BloxFruitsSEA3.lua",
    [4442272183] = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/BloxFruitsSEA2.lua",
    [15367026228] = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/AnimeSoulsX.lua",
    [2753915549] = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/BloxFruits.lua",
    [4996049426] = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/AllStarTD.lua",
    [606849621] = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/Jailbreak.lua",
}

local URL = URLs[Id]

local function LoadScript(name)
    loadstring(game:HttpGet(name))()
end

if URL then
    LoadScript(URL)
else
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Game not supported",
        Text = "Copied Discord server link to your clipboard",
        Icon = "rbxassetid://1234567890"
    })

    setclipboard("discord.gg/EverlastHub")
    wait(1.5)
    Players:Kick("This game is not supported, discord.gg/EverlastHub.")
end
