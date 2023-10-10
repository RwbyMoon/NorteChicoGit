-- For every Economic Policy Cards in your Government, Builders, Military Engineers and Apaq Allinms gain +1 [ICON_Charges] Build Charges when built
-- Builders and Military Engineers do not gain bonus Builder Charges anymore from other methods and start at 1 Charge.
-- Civilian, Religious and Anti-Cavalry units starting their turn within two tiles of Holy Sites receive +1 Movement.


-----------------------------------------------
-- Preparatory Tables
-----------------------------------------------

CREATE TABLE IF NOT EXISTS Rwb_Builder_ChargeSources_UA
(
    ModifierId TEXT,
    ModifierType TEXT,
    OwnerRequirementSetId TEXT,
    SubjectRequirementSetId TEXT
);

INSERT OR REPLACE INTO Rwb_Builder_ChargeSources_UA
SELECT ModifierId,
       ModifierType,
       OwnerRequirementSetId,
       SubjectRequirementSetId
FROM Modifiers WHERE ModifierType LIKE '%BUILDER_CHARGE%' UNION
SELECT ModifierId,
       ModifierType,
       OwnerRequirementSetId,
       SubjectRequirementSetId
FROM Modifiers WHERE ModifierId LIKE '%BUILDER_CHARGE%';

/*CREATE TABLE IF NOT EXISTS Rwb_EcoPolicyAmountReference_UA
(
    Size INT
);

WITH RECURSIVE t(val) AS (SELECT 1 UNION ALL SELECT val + 1 FROM t LIMIT 20)
INSERT OR REPLACE INTO Rwb_EcoPolicyAmountReference_UA (Size) SELECT val FROM t;*/

-----------------------------------------------

INSERT OR REPLACE INTO	Types
		(Type,												    Kind			)
VALUES	('TRAIT_CIVILIZATION_RWB_KAMACHIQ_VARA_DIOSKUNA',		'KIND_TRAIT'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT OR REPLACE INTO	Traits	
		(TraitType,											    Name,														    Description														)
VALUES	('TRAIT_CIVILIZATION_RWB_KAMACHIQ_VARA_DIOSKUNA',		'LOC_TRAIT_CIVILIZATION_RWB_KAMACHIQ_VARA_DIOSKUNA_NAME',		'LOC_TRAIT_CIVILIZATION_RWB_KAMACHIQ_VARA_DIOSKUNA_DESCRIPTION'	);
		
-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------

INSERT OR REPLACE INTO	CivilizationTraits
		(CivilizationType,				    TraitType										)
VALUES	('CIVILIZATION_RWB_NORTECHICO',		'TRAIT_CIVILIZATION_RWB_KAMACHIQ_VARA_DIOSKUNA'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT OR REPLACE INTO	TraitModifiers	
		(TraitType,											ModifierId											)
VALUES	('TRAIT_CIVILIZATION_RWB_KAMACHIQ_VARA_DIOSKUNA',    'RWB_NORTECHICO_NEGATIVE_BUILDER_MALUS_CHARGE_MALUS'),    
        ('TRAIT_CIVILIZATION_RWB_KAMACHIQ_VARA_DIOSKUNA',    'RWB_NORTECHICO_NEGATIVE_MIL_ENGINEER_CHARGE_MALUS'),
        ('TRAIT_CIVILIZATION_RWB_KAMACHIQ_VARA_DIOSKUNA',    'RWB_NORTECHICO_BUILDER_PRODUCTION_COST_MALUS'),
        ('TRAIT_CIVILIZATION_RWB_KAMACHIQ_VARA_DIOSKUNA',    'RWB_NORTECHICO_BUILDER_PURCHASE_COST_MALUS');

-----------------------------------------------
-- Modifiers
-----------------------------------------------
-- BONUS CHARGES (these 3 are the core ones I've seen and anticipated)
INSERT OR REPLACE INTO Modifiers
            (ModifierId,
             ModifierType,
             OwnerRequirementSetId,
             SubjectRequirementSetId,
             Permanent,
			 RunOnce,
             SubjectStackLimit)
SELECT      'RWB_BUILD_CHARGE_FROM_ECO_POLICY_AMOUNT_'||a.PolicyType,
            'MODIFIER_PLAYER_UNITS_ADJUST_BUILDER_CHARGES',
            'REQSET_PLAYER_IS_LADY_OF_THE_FOUR_TUPUS',
            'REQSET_UNIT_IS_BUILDER_MIL_ENGINEER_OR_APAQALLINM',
            1,
			1,
			1
            FROM Policies a WHERE GovernmentSlotType = 'SLOT_ECONOMIC';



-- +100% cost to Builders
INSERT OR REPLACE INTO Modifiers
        (ModifierId,                                        ModifierType,                                           SubjectRequirementSetId)
VALUES  ('RWB_NORTECHICO_BUILDER_PRODUCTION_COST_MALUS',    'MODIFIER_PLAYER_UNITS_ADJUST_UNIT_PRODUCTION',         null),
        ('RWB_NORTECHICO_BUILDER_PURCHASE_COST_MALUS',      'MODIFIER_PLAYER_CITIES_ADJUST_UNIT_PURCHASE_COST',     null);

-- CANCEL CHARGES
INSERT OR REPLACE INTO Modifiers
(ModifierId,
 ModifierType,
 OwnerRequirementSetId,
 SubjectRequirementSetId)
SELECT 'RWB_NORTECHICO_NEGATIVE_'||ModifierId,
       ModifierType,
       'REQSET_PLAYER_IS_NORTECHICO',
       SubjectRequirementSetId
FROM Rwb_Builder_ChargeSources_UA;

-- CHARGE MALUSES
INSERT OR REPLACE INTO Modifiers
          (ModifierId,                                              ModifierType,                                              OwnerRequirementSetId,      SubjectRequirementSetId)
VALUES    ('RWB_NORTECHICO_NEGATIVE_BUILDER_MALUS_CHARGE_MALUS',    'MODIFIER_PLAYER_TRAINED_UNITS_ADJUST_BUILDER_CHARGES',    null,                       'REQSET_RWB_UNIT_IS_BUILDER'),
          ('RWB_NORTECHICO_NEGATIVE_MIL_ENGINEER_CHARGE_MALUS',     'MODIFIER_PLAYER_TRAINED_UNITS_ADJUST_BUILDER_CHARGES',    null,                       'REQSET_RWB_UNIT_IS_MIL_ENGINEER');

-----------------------------------------------
-- X-Modifiers
-----------------------------------------------
-- EcoPolicy BuildCharge Scaling
INSERT OR REPLACE INTO PolicyModifiers
(PolicyType,
 ModifierId)
SELECT      a.PolicyType,
            'RWB_BUILD_CHARGE_FROM_ECO_POLICY_AMOUNT_'||a.PolicyType
FROM Policies a WHERE GovernmentSlotType = 'SLOT_ECONOMIC';


-- Governors (these 3 are the core ones I've seen and anticipated for the cancel)
INSERT OR REPLACE INTO GovernorPromotionModifiers
SELECT a.GovernorPromotionType, 'RWB_NORTECHICO_NEGATIVE_'||b.ModifierId
FROM GovernorPromotionModifiers a, Rwb_Builder_ChargeSources_UA b WHERE a.ModifierId LIKE b.ModifierId;
-- Policies
INSERT OR REPLACE INTO PolicyModifiers
SELECT a.PolicyType, 'RWB_NORTECHICO_NEGATIVE_'||b.ModifierId
FROM PolicyModifiers a, Rwb_Builder_ChargeSources_UA b WHERE a.ModifierId LIKE b.ModifierId;
-- Traits
INSERT OR REPLACE INTO TraitModifiers
SELECT a.TraitType, 'RWB_NORTECHICO_NEGATIVE_'||b.ModifierId
FROM TraitModifiers a, Rwb_Builder_ChargeSources_UA b WHERE a.ModifierId LIKE b.ModifierId;

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT OR REPLACE INTO	ModifierArguments
		(ModifierId,												        Name,							Value)
SELECT  'RWB_BUILD_CHARGE_FROM_ECO_POLICY_AMOUNT_'||a.PolicyType,			'Amount',						1										
FROM Policies a WHERE GovernmentSlotType = 'SLOT_ECONOMIC';

-- CANCEL CHARGES
INSERT OR REPLACE INTO ModifierArguments
        (ModifierId,										Name,		    Value)
SELECT 'RWB_NORTECHICO_NEGATIVE_'||a.ModifierId,           'Amount',	    Value-Value*2
FROM Rwb_Builder_ChargeSources_UA a, ModifierArguments b WHERE b.ModifierId LIKE a.ModifierId AND b.Value IS NOT 0;

-- CHARGE MALUSES
INSERT OR REPLACE INTO ModifierArguments
		(ModifierId,										        Name,		    Value)
VALUES	('RWB_NORTECHICO_NEGATIVE_MIL_ENGINEER_CHARGE_MALUS',       'Amount',		'-1'),
		('RWB_NORTECHICO_NEGATIVE_BUILDER_MALUS_CHARGE_MALUS',	    'Amount',		'-2'),
		('RWB_NORTECHICO_BUILDER_PRODUCTION_COST_MALUS',	        'UnitType',		'UNIT_BUILDER'),
		('RWB_NORTECHICO_BUILDER_PRODUCTION_COST_MALUS',	        'Amount',		'-90'),
		('RWB_NORTECHICO_BUILDER_PURCHASE_COST_MALUS',	            'UnitType',		'UNIT_BUILDER'),
		('RWB_NORTECHICO_BUILDER_PURCHASE_COST_MALUS',	            'Amount',		'-200');

-------------------------------------
-- RequirementSets
-------------------------------------
INSERT OR REPLACE INTO RequirementSets
        (RequirementSetId,						                        RequirementSetType				)
VALUES	('REQSET_PLAYER_IS_LADY_OF_THE_FOUR_TUPUS',				        'REQUIREMENTSET_TEST_ALL'		),
    	('REQSET_PLAYER_IS_NORTECHICO',				                    'REQUIREMENTSET_TEST_ALL'		),
    	('REQSET_RWB_UNIT_IS_BUILDER',				                    'REQUIREMENTSET_TEST_ALL'		),
    	('REQSET_RWB_UNIT_IS_MIL_ENGINEER',				                'REQUIREMENTSET_TEST_ALL'		),
    	('REQSET_UNIT_IS_BUILDER_MIL_ENGINEER_OR_APAQALLINM',			'REQUIREMENTSET_TEST_ANY'		);

-------------------------------------
-- RequirementSetRequirements
-------------------------------------
INSERT OR REPLACE INTO RequirementSetRequirements
        (RequirementSetId,						                        RequirementId									)
VALUES	('REQSET_PLAYER_IS_LADY_OF_THE_FOUR_TUPUS',	                    'RWB_NORTECHICO_IS_LADY_OF_THE_FOUR_TUPUS_REQUIREMENT'				),
    	('REQSET_PLAYER_IS_NORTECHICO',	                                'RWB_NORTECHICO_IS_NORTECHICO_REQUIREMENT'				),
    	('REQSET_RWB_UNIT_IS_BUILDER',	                                'RWB_NORTECHICO_UNIT_IS_BUILDER'				),
    	('REQSET_RWB_UNIT_IS_MIL_ENGINEER',                             'RWB_NORTECHICO_UNIT_IS_MILITARY_ENGINEER'				),
    	('REQSET_UNIT_IS_BUILDER_MIL_ENGINEER_OR_APAQALLINM',	        'RWB_NORTECHICO_UNIT_IS_BUILDER'				),
    	('REQSET_UNIT_IS_BUILDER_MIL_ENGINEER_OR_APAQALLINM',	        'RWB_NORTECHICO_UNIT_IS_MILITARY_ENGINEER'				),
    	('REQSET_UNIT_IS_BUILDER_MIL_ENGINEER_OR_APAQALLINM',	        'RWB_NORTECHICO_UNIT_IS_APAQALLINM'				);

-------------------------------------
-- Requirements
-------------------------------------
INSERT OR REPLACE INTO Requirements
        (RequirementId, 									            RequirementType									)
VALUES	('RWB_NORTECHICO_IS_LADY_OF_THE_FOUR_TUPUS_REQUIREMENT',		'REQUIREMENT_PLAYER_TYPE_MATCHES'		),
    	('RWB_NORTECHICO_IS_NORTECHICO_REQUIREMENT',		            'REQUIREMENT_PLAYER_TYPE_MATCHES'		),
    	('RWB_NORTECHICO_UNIT_IS_BUILDER',			                    'REQUIREMENT_UNIT_TYPE_MATCHES'		),
    	('RWB_NORTECHICO_UNIT_IS_MILITARY_ENGINEER',	                'REQUIREMENT_UNIT_TYPE_MATCHES'		),
    	('RWB_NORTECHICO_UNIT_IS_APAQALLINM',			                'REQUIREMENT_UNIT_TYPE_MATCHES'		);

-------------------------------------
-- RequirementArguments
-------------------------------------
INSERT OR REPLACE INTO RequirementArguments
(RequirementId, 								                            Name,						Value							)
VALUES	('RWB_NORTECHICO_IS_NORTECHICO_REQUIREMENT', 			            'CivilizationType',			'CIVILIZATION_RWB_NORTECHICO'	),
    	('RWB_NORTECHICO_IS_LADY_OF_THE_FOUR_TUPUS_REQUIREMENT', 			'LeaderType',			    'LEADER_RWB_LADY_OF_THE_FOUR_TUPUS'	),
    	('RWB_NORTECHICO_UNIT_IS_BUILDER',			 			            'UnitType',			        'UNIT_BUILDER'	),
    	('RWB_NORTECHICO_UNIT_IS_MILITARY_ENGINEER', 			            'UnitType',			        'UNIT_MILITARY_ENGINEER'	),
    	('RWB_NORTECHICO_UNIT_IS_APAQALLINM',		 			            'UnitType',			        'UNIT_RWB_APAQALLINM'	);

-------------------------------------
-- Table Dropping (Trashcan)
-------------------------------------

/*DROP TABLE Rwb_EcoPolicyAmountReference_UA;*/
DROP TABLE Rwb_Builder_ChargeSources_UA;
