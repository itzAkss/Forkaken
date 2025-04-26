if string.split(identifyexecutor() or "None", " ")[1] == "Xeno" then
    getgenv().WebSocket = nil
end

local api = loadstring(game:HttpGet("https://sdkapi-public.luarmor.net/library.lua"))()
api.script_id = "d0632c30c8af0316aae11552dcb2a21d"

api.load_script()
