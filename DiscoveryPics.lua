local frame = CreateFrame("Frame")
local fp = "New flight path discovered!"
frame:Hide()
frame:RegisterEvent("MAP_EXPLORATION_UPDATED")
frame:RegisterEvent("UI_INFO_MESSAGE")
frame:SetScript("OnEvent", function (self, event, ...)
	if event == "UI_INFO_MESSAGE" then
		if (select(2,...) == fp) then
			Screenshot()
		else
			return nil
		end
	else
		Screenshot()
	end

end)	
	
