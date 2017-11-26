-- Store Paths
ModPath = GetModPath()
Resources = ModPath .. "/Resources"
hudtype = GetSetting("HUDType")

-- Load MFK Functions
dofile(Resources .. "/lib/mfk.lua")
dofile(Resources .. "/scripts/classes/mode.lua")
