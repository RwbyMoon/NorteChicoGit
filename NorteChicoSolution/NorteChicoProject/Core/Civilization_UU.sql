-- Unique religious craftsman of Norte Chico, which is a more expensive replacement of the Apostle with +1 Sight. 
-- It has 1 [ICON_Charges] Build Charge, allowing it to build improvements identical to Builders.

-----------------------------------------------
-- Types
-----------------------------------------------	
	
INSERT OR REPLACE INTO Types
		    (Type,									            Kind			)
VALUES	    ('TRAIT_CIVILIZATION_RWB_APAQALLINMI',	            'KIND_TRAIT'	),
		    ('UNIT_RWB_NORTECHICO_APAQALLINMI',					'KIND_UNIT'		);

-----------------------------------------------
-- Tags
-----------------------------------------------	
	
INSERT OR REPLACE INTO Tags
		    (Tag,						    Vocabulary		)
VALUES	    ('CLASS_RWB_APAQALLINMI',		'ABILITY_CLASS'	);

-----------------------------------------------
-- TypeTags
-----------------------------------------------		

INSERT OR REPLACE INTO TypeTags
		    (Type,						            Tag						)
VALUES	    ('UNIT_RWB_NORTECHICO_APAQALLINMI',		'CLASS_RWB_APAQALLINMI'	);

INSERT OR REPLACE INTO TypeTags 
            (Type,		                        Tag)
VALUES 	    ('UNIT_RWB_NORTECHICO_APAQALLINMI',	'CLASS_RWB_APAQALLINMI'),
     	    ('UNIT_RWB_NORTECHICO_APAQALLINMI',	'CLASS_LANDCIVILIAN'),
     	    ('UNIT_RWB_NORTECHICO_APAQALLINMI',	'CLASS_RELIGIOUS'),
     	    ('UNIT_RWB_NORTECHICO_APAQALLINMI',	'CLASS_RELIGIOUS_ALL');

-----------------------------------------------
-- Traits
-----------------------------------------------
		
INSERT OR REPLACE INTO Traits
		(TraitType,								Name,								Description								)
VALUES	('TRAIT_CIVILIZATION_RWB_APAQALLINMI',	'LOC_UNIT_RWB_NORTECHICO_APAQALLINMI_NAME',		'LOC_UNIT_RWB_NORTECHICO_APAQALLINMI_DESCRIPTION'	);

-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------
		
INSERT OR REPLACE INTO CivilizationTraits
		(CivilizationType,				TraitType								)
VALUES	('CIVILIZATION_RWB_NORTECHICO',		'TRAIT_CIVILIZATION_RWB_APAQALLINMI'		);

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
SELECT	'UNIT_RWB_NORTECHICO_APAQALLINMI',	-- UnitType
		'LOC_UNIT_RWB_NORTECHICO_APAQALLINMI_NAME',	-- Name
		'LOC_UNIT_RWB_NORTECHICO_APAQALLINMI_DESCRIPTION', -- Description
		'TRAIT_CIVILIZATION_RWB_APAQALLINMI', -- TraitType
		BaseMoves,
		Cost+100,
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
        3,
        CanTrain,
        PseudoYieldType,
        TrackReligion
FROM	Units
WHERE	UnitType = 'UNIT_APOSTLE';

-----------------------------------------------
-- UnitAiInfos
-----------------------------------------------
		
INSERT OR REPLACE INTO UnitAiInfos (UnitType,	AiType)
SELECT 	'UNIT_RWB_NORTECHICO_APAQALLINMI',		AiType
FROM 	UnitAiInfos
WHERE 	UnitType = 'UNIT_APOSTLE';

INSERT OR REPLACE INTO UnitAiInfos (UnitType, AiType) 
VALUES ('UNIT_RWB_NORTECHICO_APAQALLINMI','UNITAI_BUILD');
-----------------------------------------------
-- UnitReplaces
-----------------------------------------------
		
INSERT OR REPLACE INTO UnitReplaces
		(CivUniqueUnitType,		ReplacesUnitType	)
VALUES	('UNIT_RWB_NORTECHICO_APAQALLINMI',	'UNIT_APOSTLE'		);

INSERT OR REPLACE INTO Improvement_ValidBuildUnits
        (ImprovementType,					UnitType		)
SELECT 	ImprovementType,				    'UNIT_RWB_NORTECHICO_APAQALLINMI'
FROM Improvement_ValidBuildUnits WHERE UnitType IS 'UNIT_BUILDER';