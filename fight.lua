local CombatStart
local function StartCombatProcedure ()
	CombatStart = time()
end

local function EndCombatProcedure ()
	local CombatDurationTime = time() - CombatStart
	local sec = CombatDurationTime % 60
	local min = (CombatDurationTime - sec) / 60
		if min > 1
			then print("Duree du combat : "..min.." minutes "..sec.." secondes.")
		else
			print("Duree du combat : "..sec.." secondes.")
		end
	end

local CombatFrame = CreateFrame("Frame")
CombatFrame:RegisterEvent("PLAYER_REGEN_ENABLED")
CombatFrame:RegisterEvent("PLAYER_REGEN_DISABLED")
CombatFrame:SetScript("OnEvent", function(self, event, ...)
	if event == "PLAYER_REGEN_DISABLED"
		then StartCombatProcedure ()
	if event == "PLAYER_REGEN_ENABLED"
		then EndCombatProcedure ()
	end
end )
