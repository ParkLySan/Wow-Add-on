local MoneyFrame = CreateFrame("Frame")
MoneyFrame:RegisterEvent("PLAYER_ENTERING_WORLD")

MoneyFrame:SetScript("OnEvent", function(...)
	GetGoldPerSecond()
	print("Vous possedez "..GetMoney().."pieces de cuivre.")
end)

local function GoldCountFromCopperCount (CopperCount)
	return math.floor(CopperCount / 100 / 100)

local function GetGoldPerSecond()
	local CurrentTime, CurrentCount = time(), GetMoney()
	CurrentCount = GoldCountFromCopperCount (CurrentCount)
	if StartTime
		then print((CurrentCount - StartCount) / (CurrentTime - StartTime).."gagne par secondes")
	else
		StartTime = CurrentTime
		StartCount = CurrentCount
	end
end
