-- AdiBags_Keystones
-- M+ keystone section for AdiBags
--
-- Copyright (C) 2022 ZelionGG

local AdiBags = LibStub("AceAddon-3.0"):GetAddon("AdiBags")
local mythicKeystoneFilter = AdiBags:RegisterFilter("Keystones", 95)
mythicKeystoneFilter.uiName = "|cff7997dbKeystone|r";
mythicKeystoneFilter.uiDesc = "Put Mythic+ keystones in a dedicated section."

function mythicKeystoneFilter:Filter(slotData)
	local itemLink = GetContainerItemID(slotData.bag, slotData.slot)
	if (itemLink) then
		local isKeystone = C_Item.IsItemKeystoneByID(itemLink);
		if (isKeystone) then 
			return "|cff7997dbKeystone|r";
		end
	end
	return
end