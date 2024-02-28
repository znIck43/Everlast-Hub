repeat task.wait() until game:IsLoaded()

_G.Premium = false
_G.AntiAFK = false

local EH_PS = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/CL/EH-PS.lua"
local EH_GUI = game:GetService("CoreGui").CFAHubPremium2022
local Players = game:GetService("Players").LocalPlayer
local Id = game.PlaceId
local Games = {
    [6299805723] = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/Games/AnimeFightersSim.lua",
    [12886143095] = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/Games/AnimeLastStand.lua",
    [7449423635] = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/Games/BloxFruitsSEA3.lua",
    [4442272183] = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/Games/BloxFruitsSEA2.lua",
    [15367026228] = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/Games/AnimeSoulsX.lua",
    [2753915549] = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/Games/BloxFruits.lua",
    [4996049426] = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/Games/AllStarTD.lua",
    [606849621] = "https://raw.githubusercontent.com/znIck43/EverlastHub/main/Games/Jailbreak.lua",
}

-- Functions: Notify, MakeFolder and LoadScript
local function notify(title, text, dur)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = title,
        Text = text,
        Duration = dur
    })
end

local function makefolder(name)
    local foldername = name
    local path = "C:\\Documents\\" .. foldername

    local command = 'mkdir ' .. path
    local success = os.execute(command)

    if success then
        print("Created EH folder!")
    else
        Players:Kick("Failed to create EH folder, please rejoin.")
    end
end

local function loadscript(name)
    loadstring(game:HttpGet(name))()
end

setfpscap(240)
makefolder("EverlastHub")

if _G.Premium == false and Games[Id] then
    loadscript(Games[Id])
    notify("Free Script Version", "🟢 = Working", 10)
elseif _G.Premium then
    loadscript(EH_PS)    
    notify("Paid Script Version", "🟣 = Paid working", 10)
else
    setclipboard("https://discord.gg/gbETDfyS5q")
    Players:Kick("Game not supported. Copied Discord server invite to your clipboard.")
end

-- Check if EH loaded correctly
if game.Loaded then
    if EH_GUI then
        notify("Everlast Hub", "🟢", 7)
    else
        Players:Kick("Everlast Hub did not load correctly. Please rejoin the game.")
    end
end

-- Anti AFK Mode
if _G.AntiAFK then
    notify("Anti AFK = 🟢", "Copied Discord server invite to your clipboard", 7)
    setclipboard("https://discord.gg/gbETDfyS5q")

    Players.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    wait(10)
else
    Players.Character.Humanoid:ChangeState(Enum.HumanoidStateType.None)
end
