
-- Unique religious craftsman of Norte Chico, which is an expensive replacement of the Apostle with +1 Sight and +5 Religious Strength, which also heals at the end of every turn.
-- It is unable to spread religion, but it has 1 [ICON_Charges] Build Charge, allowing it to build improvements identical to Builders.

-----------------------------------------------
-- Types
-----------------------------------------------	
	
INSERT OR REPLACE INTO Types
		    (Type,									                                Kind			)
VALUES	    ('TRAIT_CIVILIZATION_RWB_APAQALLINMI',	                                'KIND_TRAIT'	),
		    ('MODIFIER_SINGLE_UNIT_CHANGE_OPERATION_AVAILABILITY',	                'KIND_MODIFIER'		),
		    ('UNIT_RWB_NORTECHICO_APAQALLINMI',					                    'KIND_UNIT'		);

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
            (Type,		                                        Tag)
VALUES 	    ('UNIT_RWB_NORTECHICO_APAQALLINMI',	                'CLASS_RWB_APAQALLINMI'),
     	    ('UNIT_RWB_NORTECHICO_APAQALLINMI',	                'CLASS_LANDCIVILIAN'),
     	    ('UNIT_RWB_NORTECHICO_APAQALLINMI',	                'CLASS_RELIGIOUS'),
     	    ('UNIT_RWB_NORTECHICO_APAQALLINMI',	                'CLASS_RELIGIOUS_SPREAD'),
     	    ('UNIT_RWB_NORTECHICO_APAQALLINMI',	                'CLASS_RELIGIOUS_ALL'),
     	    ('ABILITY_RWB_NORTE_CHICO_APAQALLINMI_NO_SPREAD',	'CLASS_RWB_APAQALLINMI');

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
        SpreadCharges,
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
		Cost+50,
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
        ReligiousStrength+5,
        ReligionEvictPercent,
        4,
        CostProgressionModel,
        CostProgressionParam1,
        InitialLevel,
        3,
        CanTrain,
        PseudoYieldType,
        TrackReligion
FROM	Units
WHERE	UnitType = 'UNIT_APOSTLE';

UPDATE Units SET SpreadCharges = 1, ReligiousStrength = ReligiousStrength-5 WHERE UnitType LIKE 'UNIT_RWB_NORTECHICO_APAQALLINMI'
AND NOT EXISTS (SELECT ModifierType FROM DynamicModifiers WHERE EffectType = 'EFFECT_CHANGE_UNIT_OPERATION_AVAILABILITY');

UPDATE Traits SET Description = 'LOC_UNIT_RWB_NORTECHICO_APAQALLINMI_DESCRIPTION_VANILLA'
WHERE TraitType LIKE 'TRAIT_CIVILIZATION_RWB_APAQALLINMI'
  AND NOT EXISTS (SELECT ModifierType FROM DynamicModifiers WHERE EffectType = 'EFFECT_CHANGE_UNIT_OPERATION_AVAILABILITY');

UPDATE Units SET Description = 'LOC_UNIT_RWB_NORTECHICO_APAQALLINMI_DESCRIPTION_VANILLA'
WHERE UnitType LIKE 'UNIT_RWB_NORTECHICO_APAQALLINMI'
  AND NOT EXISTS (SELECT ModifierType FROM DynamicModifiers WHERE EffectType = 'EFFECT_CHANGE_UNIT_OPERATION_AVAILABILITY');


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

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------
INSERT OR REPLACE INTO DynamicModifiers
            (ModifierType,                                          CollectionType,     EffectType)
SELECT      'MODIFIER_SINGLE_UNIT_CHANGE_OPERATION_AVAILABILITY',  'COLLECTION_OWNER', 'EFFECT_CHANGE_UNIT_OPERATION_AVAILABILITY'
WHERE EXISTS (SELECT ModifierType FROM DynamicModifiers WHERE EffectType = 'EFFECT_CHANGE_UNIT_OPERATION_AVAILABILITY');

-----------------------------------------------
-- Modifiers
-----------------------------------------------
INSERT OR REPLACE INTO Modifiers
            (ModifierId,                        ModifierType) 
SELECT       'RWB_APAQ_NO_SPREAD',              'MODIFIER_SINGLE_UNIT_CHANGE_OPERATION_AVAILABILITY'
WHERE EXISTS (SELECT ModifierType FROM DynamicModifiers WHERE EffectType = 'EFFECT_CHANGE_UNIT_OPERATION_AVAILABILITY');

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------
INSERT OR REPLACE INTO ModifierArguments
            (ModifierId,                    Name,               Value) 
SELECT      'RWB_APAQ_NO_SPREAD',          'Available',        'false'
WHERE EXISTS (SELECT ModifierType FROM DynamicModifiers WHERE EffectType = 'EFFECT_CHANGE_UNIT_OPERATION_AVAILABILITY');

INSERT OR REPLACE INTO ModifierArguments
(ModifierId,                    Name,               Value)
SELECT      'RWB_APAQ_NO_SPREAD',          'OperationType',    'UNITOPERATION_SPREAD_RELIGION'
WHERE EXISTS (SELECT ModifierType FROM DynamicModifiers WHERE EffectType = 'EFFECT_CHANGE_UNIT_OPERATION_AVAILABILITY');

-----------------------------------------------
-- Types
-----------------------------------------------
INSERT INTO Types
            (Type,										                Kind)
SELECT	     'ABILITY_RWB_NORTE_CHICO_APAQALLINMI_NO_SPREAD',			'KIND_ABILITY'
WHERE EXISTS (SELECT ModifierType FROM DynamicModifiers WHERE EffectType = 'EFFECT_CHANGE_UNIT_OPERATION_AVAILABILITY');

-----------------------------------------------
-- UnitAbilities
-----------------------------------------------
INSERT INTO UnitAbilities
            (UnitAbilityType,							                Name,										Description)
SELECT	    'ABILITY_RWB_NORTE_CHICO_APAQALLINMI_NO_SPREAD',			'LOC_ABILITY_RWB_NORTE_CHICO_APAQALLINMI_NO_SPREAD_NAME',	'LOC_ABILITY_RWB_NORTE_CHICO_APAQALLINMI_NO_SPREAD_DESCRIPTION'
WHERE EXISTS (SELECT ModifierType FROM DynamicModifiers WHERE EffectType = 'EFFECT_CHANGE_UNIT_OPERATION_AVAILABILITY');
-----------------------------------------------
--  UnitAbilityModifiers
-----------------------------------------------
INSERT INTO UnitAbilityModifiers
            (UnitAbilityType,							                ModifierId)
SELECT	    'ABILITY_RWB_NORTE_CHICO_APAQALLINMI_NO_SPREAD',			'RWB_APAQ_NO_SPREAD'
WHERE EXISTS (SELECT ModifierType FROM DynamicModifiers WHERE EffectType = 'EFFECT_CHANGE_UNIT_OPERATION_AVAILABILITY');