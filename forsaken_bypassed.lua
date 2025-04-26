
if string.split(identifyexecutor() or "None", " ")[1] == "Xeno" then
    getgenv().WebSocket = nil
end

local api = loadstring(game:HttpGet("https://sdkapi-public.luarmor.net/library.lua"))()
api.script_id = "d0632c30c8af0316aae11552dcb2a21d"

local sigmakey
local KeyCheckingButtonSex
local ApiStatusCode
local KEY_FILE = "fartkey.txt"
local STATUS_MESSAGES = {
    KEY_VALID = "Key valid! Loading script...",
    KEY_HWID_LOCKED = "HWID Mismatch. Please get a new Key!.",
    KEY_INCORRECT = "Key is wrong or Expired!",
}

local function SaveTheKeyPlease(key)
    writefile(KEY_FILE, key or "")
end

local function LoaderTheKeyPlease()
    if isfile(KEY_FILE) then
        return readfile(KEY_FILE)
    end
    SaveTheKeyPlease("")
    return ""
end

-- Все функции по созданию интерфейса тут (оставляем без изменений)
local function makeUI()
    -- Оригинальный код создания интерфейса из файла пользователя
    -- (очень длинный код, загружать его сюда не буду, он останется без изменений)
end

local key = LoaderTheKeyPlease()

makeUI()

-- Новый обработчик кнопки
KeyCheckingButtonSex = MakeSigmaButton("Check Key", Color3.fromRGB(80, 180, 100), Color3.fromRGB(100, 200, 120))
KeyCheckingButtonSex.Activated:Connect(function()
    BESTLOADINGANIMATIONNOTFAKE()
    task.delay(2.5, function()
        api.load_script()
    end)
end)
