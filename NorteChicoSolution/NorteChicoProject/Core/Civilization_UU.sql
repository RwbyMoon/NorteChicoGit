-----------------------------------------------
-- Types
-----------------------------------------------	
	
INSERT OR REPLACE INTO Types
		(Type,									Kind			)
VALUES	('TRAIT_CIVILIZATION_RWB_APAQALLINM',	'KIND_TRAIT'	),
		('UNIT_RWB_APAQALLINM',					'KIND_UNIT'		);

-----------------------------------------------
-- Tags
-----------------------------------------------	
	
INSERT OR REPLACE INTO Tags
		(Tag,						Vocabulary		)
VALUES	('CLASS_RWB_APAQALLINM',		'ABILITY_CLASS'	);

-----------------------------------------------
-- TypeTags
-----------------------------------------------		

INSERT OR REPLACE INTO TypeTags
		(Type,						Tag						)
VALUES	('UNIT_RWB_APAQALLINM',		'CLASS_RWB_APAQALLINM'	);

INSERT OR REPLACE INTO TypeTags (Type,		Tag)
SELECT 	'UNIT_RWB_APAQALLINM',	Tag
FROM 	TypeTags
WHERE 	Type = 'UNIT_APOSTLE';

-----------------------------------------------
-- Traits
-----------------------------------------------
		
INSERT OR REPLACE INTO Traits
		(TraitType,								Name,								Description								)
VALUES	('TRAIT_CIVILIZATION_RWB_APAQALLINM',	'LOC_UNIT_RWB_APAQALLINM_NAME',		'LOC_UNIT_RWB_APAQALLINM_DESCRIPTION'	);

-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------
		
INSERT OR REPLACE INTO CivilizationTraits
		(CivilizationType,				TraitType								)
VALUES	('CIVILIZATION_RWB_NORTECHICO',		'TRAIT_CIVILIZATION_RWB_APAQALLINM'		);

-----------------------------------------------
-- Units
-----------------------------------------------	
	
INSERT OR REPLACE INTO Units	(
		UnitType,
		Name,
		Description,
		TraitType,
		BaseMoves,
		Cost,
		PurchaseYield,
        MustPurchase,
		AdvisorType,
		Range,
		BaseSightRange,
		ZoneOfControl,
		Domain,
		FormationClass,
		PromotionClass,
		MandatoryObsoleteTech,
        BuildCharges,
        EvangelizeBelief,
        LaunchInquisition,
        ReligiousStrength,
        ReligionEvictPercent,
        CostProgressionModel,
        CostProgressionParam1,
        InitialLevel,
        NumRandomChoices,
        CanTrain,
        PseudoYieldType,
        TrackReligion
		)
SELECT	'UNIT_RWB_APAQALLINM',	-- UnitType
		'LOC_UNIT_RWB_APAQALLINM_NAME',	-- Name
		'LOC_UNIT_RWB_APAQALLINM_DESCRIPTION', -- Description
		'TRAIT_CIVILIZATION_RWB_APAQALLINM', -- TraitType
		BaseMoves,
		Cost,
		PurchaseYield,
		MustPurchase,
		AdvisorType,
		Range,
		BaseSightRange+1,
		ZoneOfControl,
		Domain,
		FormationClass,
		PromotionClass,
		MandatoryObsoleteTech,
		1,
        EvangelizeBelief,
        LaunchInquisition,
        ReligiousStrength,
        ReligionEvictPercent,
        CostProgressionModel,
        CostProgressionParam1,
        InitialLevel,
        NumRandomChoices,
        CanTrain,
        PseudoYieldType,
        TrackReligion
FROM	Units
WHERE	UnitType = 'UNIT_APOSTLE';

-----------------------------------------------
-- UnitUpgrades
-----------------------------------------------
		
INSERT OR REPLACE INTO UnitUpgrades (Unit,	UpgradeUnit)
SELECT 	'UNIT_RWB_APAQALLINM',	UpgradeUnit
FROM 	UnitUpgrades
WHERE	Unit = 'UNIT_APOSTLE';

-----------------------------------------------
-- UnitAiInfos
-----------------------------------------------
		
INSERT OR REPLACE INTO UnitAiInfos (UnitType,	AiType)
SELECT 	'UNIT_RWB_APAQALLINM',		AiType
FROM 	UnitAiInfos
WHERE 	UnitType = 'UNIT_APOSTLE';
		
-----------------------------------------------
-- UnitReplaces
-----------------------------------------------
		
INSERT OR REPLACE INTO UnitReplaces
		(CivUniqueUnitType,		ReplacesUnitType	)
VALUES	('UNIT_RWB_APAQALLINM',	'UNIT_APOSTLE'		);

INSERT OR REPLACE INTO Improvement_ValidBuildUnits
        (ImprovementType,					UnitType		)
SELECT 	ImprovementType,				    'UNIT_RWB_APAQALLINM'
FROM Improvement_ValidBuildUnits WHERE UnitType IS 'UNIT_BUILDER';