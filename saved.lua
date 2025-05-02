-- Load the Luarmor library
local api = loadstring(game:HttpGet("https://sdkapi-public.luarmor.net/library.lua"))()

-- Set the script ID (you must know it; sometimes provided by the script owner)
api.script_id = "d0632c30c8af0316aae11552dcb2a21d"

-- Provide your key
local key = "wDENXIqPMcgUpPjfLVBMdAWJbeNwTIkO"

-- Check the key and load the script
local response = api["check_key"](key)

if response and response.code == "KEY_VALID" then
    print("Key is valid. Loading script...")
    api["load_script"]()
else
    warn("Invalid key: " .. (response.message or "Unknown error"))
end
