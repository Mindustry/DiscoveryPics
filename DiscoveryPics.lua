local frame = CreateFrame("Frame")
local fp = "New flight path discovered!"
frame:Hide()
frame:RegisterEvent("MAP_EXPLORATION_UPDATED")
frame:RegisterEvent("UI_INFO_MESSAGE")
frame:SetScript("OnEvent", function (self, event, ...)
	if event == "UI_INFO_MESSAGE" then
		if (select(2,...) == fp) then -- take screenshot if flight path is undiscovered
			Screenshot() -- Add C_Timer.After(duration,Screenshot) with a number in seconds for duration to set a timed screenshot
		else
			return nil 
		end
	else
		Screenshot() -- take screenshot when discovering new zone
end)	
	
