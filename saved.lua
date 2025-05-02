-- Ni gg Er!
local oldLoadstring = loadstring
_G.loadstring = function(source, ...)
    print("----- Luarmor Script Start -----\n")
    print(source)
    print("\n----- Luarmor Script End -----")
    return function() end
end

-- key n id
local key = "wDENXIqPMcgUpPjfLVBMdAWJbeNwTIkO"
local script_id = "d0632c30c8af0316aae11552dcb2a21d"

-- Load LuarmorLib
local api = loadstring(game:HttpGet("https://sdkapi-public.luarmor.net/library.lua"))()
api.script_id = script_id

api.check_key(key)
api.load_script()
