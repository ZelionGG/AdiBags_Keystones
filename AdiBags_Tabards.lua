-- AdiBags_Tabards
-- Tabards section for AdiBags
--
-- Copyright (C) 2022 ZelionGG

local AdiBags = LibStub("AceAddon-3.0"):GetAddon("AdiBags")
local tabardsFilter = AdiBags:RegisterFilter("Tabards", 95)
tabardsFilter.uiName = "|cffffffffTabard|r";
tabardsFilter.uiDesc = "Put Tabards in a dedicated section."

function tabardsFilter:Filter(slotData)
	local itemLink = GetContainerItemID(slotData.bag, slotData.slot)
	if (itemLink) then
		local isTabard = C_Item.GetItemInventoryTypeByID(itemLink);
		if (isTabard == 19) then 
			return "|cffffffffTabard|r";
		end
	end
	return
end