-- Store Paths
ModPath = GetModPath()
Resources = ModPath .. "/Resources"
hudtype = GetSetting("HUDType")
--radio = GetSetting("Radio")
--difficulty = GetSetting("Difficulty") + 1

-- Load MFK Functions
dofile(Resources .. "/lib/mfk.lua")
--dofile(Resources .. "/hudtype.lua")
dofile(Resources .. "/scripts/classes/mode.lua")
dofile(Resources .. "/radio.lua")