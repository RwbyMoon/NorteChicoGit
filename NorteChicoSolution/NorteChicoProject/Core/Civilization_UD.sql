-- Unique cheap district that cannot be placed adjacent to the city center, used for stability and growth endeavors. It possesses 3 unique buildings (the Sunken Plaza, the Pirámide and the Huenca), buildable in any order.
-- One of these buildings can be built in each Ciudad Sagrada once the civic "Early Empire" has been researched, a second on "Theology" and the last on "Guilds".
-- +1 Faith, +2 Loyalty, +1 Population upon construction of this District and for every of its Buildings.
-- Great Prophets may found a religion on a Ciudad Sagrada instead of a Holy Site.
--------------------------------------------------------------

---------------------------------------------------------------------------------------------------------------
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO Types
		(Type,										Kind			)
VALUES	('TRAIT_CIVILIZATION_RWB_CIUDAD_SAGRADA',	'KIND_TRAIT'	),
		('DISTRICT_RWB_NORTECHICO_CIUDAD_SAGRADA',	'KIND_DISTRICT'		);

---------------------------------------------------------------------------------------------------------------
-- Traits
---------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO Traits
		(TraitType,									Name,													Description												)
VALUES	('TRAIT_CIVILIZATION_RWB_CIUDAD_SAGRADA',	'LOC_DISTRICT_RWB_NORTECHICO_CIUDAD_SAGRADA_NAME',		'LOC_DISTRICT_RWB_NORTECHICO_CIUDAD_SAGRADA_DESCRIPTION'		);

---------------------------------------------------------------------------------------------------------------
-- CivilizationTraits
---------------------------------------------------------------------------------------------------------------	
INSERT OR REPLACE INTO CivilizationTraits
        (TraitType,									CivilizationType			)
VALUES	('TRAIT_CIVILIZATION_RWB_CIUDAD_SAGRADA',	'CIVILIZATION_RWB_NORTECHICO'		);

---------------------------------------------------------------------------------------------------------------
-- Districts
---------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO Districts
        (DistrictType,
         Name,
         PrereqTech,
         PrereqCivic,
         Coast,
         Description,
         Cost,
         RequiresPlacement,
         RequiresPopulation,
         NoAdjacentCity,
         CityCenter,
         Aqueduct,
         InternalOnly,
         ZOC,
         FreeEmbark,
         HitPoints,
         CaptureRemovesBuildings,
         CaptureRemovesCityDefenses,
         PlunderType,
         PlunderAmount,
         TradeEmbark,
         MilitaryDomain,
         CostProgressionModel,
         CostProgressionParam1,
         TraitType,
         Appeal,
         Housing,
         Entertainment,
         OnePerCity,
         AllowsHolyCity,
         Maintenance,
         AirSlots,
         CitizenSlots,
         TravelTime,
         CityStrengthModifier,
         AdjacentToLand,
         CanAttack,
         AdvisorType,
         CaptureRemovesDistrict,
         MaxPerPlayer)
VALUES	('DISTRICT_RWB_NORTECHICO_CIUDAD_SAGRADA',						-- DistrictType
          'LOC_DISTRICT_RWB_NORTECHICO_CIUDAD_SAGRADA_NAME',				-- Name
          null,
          null,
          0,
          'LOC_DISTRICT_RWB_NORTECHICO_CIUDAD_SAGRADA_DESCRIPTION',		-- Description
          27,										-- Cost
          1,
          1,
          0,
          0,
          0,
          0,
          0,
          0,
          0,
          1,
          0,
          'PLUNDER_GOLD',
          50,
          0,
          'NO_DOMAIN',
          'COST_PROGRESSION_NUM_UNDER_AVG_PLUS_TECH',
          40,
          'TRAIT_CIVILIZATION_RWB_CIUDAD_SAGRADA',	-- TraitType
          1,
          0,
          0,
          1,
          1,
          3,
          0,
          null,
          -1,
          2,
          0,
          0,
          'ADVISOR_RELIGIOUS',
          1,
          -1);

---------------------------------------------------------------------------------------------------------------
-- District_TradeRouteYields
---------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO District_TradeRouteYields
        (DistrictType,			                    YieldType,	        YieldChangeAsOrigin,	YieldChangeAsDomesticDestination,	YieldChangeAsInternationalDestination)
VALUES	('DISTRICT_RWB_NORTECHICO_CIUDAD_SAGRADA',	'YIELD_FOOD',	    0,	                    1,	                                0),
    	('DISTRICT_RWB_NORTECHICO_CIUDAD_SAGRADA',	'YIELD_PRODUCTION',	0,	                    1,	                                0),
    	('DISTRICT_RWB_NORTECHICO_CIUDAD_SAGRADA',	'YIELD_GOLD',	    0,	                    0,	                                4);