--------------------------------------------------------------
--==========================================================================================================================
-- INCLUDES
--==========================================================================================================================
-- include("Civ6Common.lua")



-----------------------------------------------
-- UTILITIES
-----------------------------------------------


--Chrisy's Valid Trait getter
function C15_GetValidTraitPlayersNew(sTrait)
    local tValid = {}
    for k, v in ipairs(PlayerManager.GetWasEverAliveIDs()) do
        local leaderType = PlayerConfigurations[v]:GetLeaderTypeName()
        for trait in GameInfo.LeaderTraits() do
            if trait.LeaderType == leaderType and trait.TraitType == sTrait then 
                tValid[v] = true 
            end;
        end
        if not tValid[v] then
            local civType = PlayerConfigurations[v]:GetCivilizationTypeName()
            for trait in GameInfo.CivilizationTraits() do
                if trait.CivilizationType == civType and trait.TraitType == sTrait then 
                    tValid[v] = true 
                end;
            end
        end
    end
    return tValid
end


-----------------------------------------------
-- VARIABLES
-----------------------------------------------

local iCivTrait = "TRAIT_CIVILIZATION_RWB_KAMACHIQ_VARA_DIOSKUNA"
	--table for every eras
local tValidCiv = C15_GetValidTraitPlayersNew(iCivTrait)

-----------------------------------------------
-- CORE FUNCTIONS
-----------------------------------------------
---
tCivicEras = {}
for row in GameInfo.Civics() do
    local iCivicType = row.CivicType
    local iEraType = row.EraType
    tCivicEras[iCivicType] = iEraType
end

tTechEras = {}
for row in GameInfo.Technologies() do
    local iTechType = row.TechnologyType
    local iEraType = row.EraType
    tTechEras[iTechType] = iEraType
end

tPolicyEras = {}
tNumPolicies = 0
for row in GameInfo.Policies() do
    if row.PrereqCivic then
        if row.GovernmentSlotType == "SLOT_ECONOMIC" then
            tNumPolicies = tNumPolicies + 1
            local iPrereq = row.PrereqCivic
            local iType = row.PolicyType
            tPolicyEras[tNumPolicies] = {iPolicyType = iType, iPolicyEraType = tCivicEras[iPrereq]}
        end
    end
    if row.PrereqTech then
        if row.GovernmentSlotType == "SLOT_ECONOMIC" then
            tNumPolicies = tNumPolicies + 1
            local iPrereq = row.PrereqTech
            local iType = row.PolicyType
            tPolicyEras[tNumPolicies] = {iPolicyType = iType, iPolicyEraType = tTechEras[iPrereq]}
        end
    end
end

print("Total Eco Policies in all Eras = " .. tNumPolicies .. "")

tEraCheckList = {}
tNumEras = 0
for row in GameInfo.Eras() do
    tNumEras = tNumEras + 1
    local iEraType = row.EraType
    tEraCheckList[tNumEras] = {iEraName = iEraType}
end


function OnCivicCompletedEraCheck(playerID,civicIndex,isCancelled)
	if isCancelled then return end
	local player = Players[playerID]
	if not tValidCiv[playerID] then return end
    
    iCivicEra = GameInfo.Civics[civicIndex].EraType
    print("Researched Civic for Norte Chico : " .. GameInfo.Civics[civicIndex].CivicType)

    for k, v in pairs(tPolicyEras) do
        local iPolicy = v.iPolicyType
        print("Checking for " .. iPolicy .. "'s Era Appropriateness since it's from the " .. v.iPolicyEraType .. " Era")
        if v.iPolicyEraType == iCivicEra then
			print(iPolicy .. " is valid !")
        
			if not player:GetCulture():IsPolicyUnlocked(GameInfo.Policies[iPolicy].Index) then
				player:GetCulture():UnlockPolicy(GameInfo.Policies[iPolicy].Index)
				print("Granted the free policy (" .. iPolicy .. ")")
			end
        end
        
    end
	print("We are here")
end


--        
--
--[[
tNCPlayers = {}
tNumNCPlayers = 0
for row in GameInfo.Players() do
    if not tValidCiv[playerID] then return end
    tNumNCPlayers = tNumNCPlayers + 1
    local iPlayer = row.Player -- what's here ?
    tNCPlayers[tNumNCPlayers] = {iPlayerId = iPlayer}
end]]

Events.CivicCompleted.Add(OnCivicCompletedEraCheck)