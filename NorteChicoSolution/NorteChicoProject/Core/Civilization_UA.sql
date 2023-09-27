-- For every Economic Policy Cards in your Government, Builders and Apaq Allinms gain +1 Charges when built. 
-- Builders do not gain bonus Builder Charges anymore from other methods.
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

INSERT INTO	Types
		(Type,												    Kind			)
VALUES	('TRAIT_CIVILIZATION_RWB_KAMACHIQ_VARA_DIOSKUNA',		'KIND_TRAIT'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO	Traits	
		(TraitType,											    Name,														    Description														)
VALUES	('TRAIT_CIVILIZATION_RWB_KAMACHIQ_VARA_DIOSKUNA',		'LOC_TRAIT_CIVILIZATION_RWB_KAMACHIQ_VARA_DIOSKUNA_NAME',		'LOC_TRAIT_CIVILIZATION_RWB_KAMACHIQ_VARA_DIOSKUNA_DESCRIPTION'	);
		
-----------------------------------------------
-- CivilizationTraits

-- This defines the civilization to which the TraitType is applied (i.e. which civilization gets the Unique Ability). This is a simple matter of referencing the custom CivilizationType defined in Civilization_Config.sql and using the TraitType defined at the head of this document.
-----------------------------------------------

INSERT INTO	CivilizationTraits
		(CivilizationType,				    TraitType										)
VALUES	('CIVILIZATION_RWB_NORTECHICO',		'TRAIT_CIVILIZATION_RWB_KAMACHIQ_VARA_DIOSKUNA'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers	
		(TraitType,											ModifierId											)
VALUES	('TRAIT_CIVILIZATION_RWB_KAMACHIQ_VARA_DIOSKUNA',		'MODIFIER_RWB_KAMACHIQ_VARA_DIOSKUNA_SHRINE_YIELD'		),
		('TRAIT_CIVILIZATION_RWB_KAMACHIQ_VARA_DIOSKUNA',		'MODIFIER_RWB_KAMACHIQ_VARA_DIOSKUNA_TEMPLE_YIELD'		);

-----------------------------------------------
-- Modifiers
-----------------------------------------------
-- BONUS CHARGES (these 3 are the core ones I've seen and anticipated)
INSERT OR REPLACE INTO Modifiers
            (ModifierId,
             ModifierType,
             OwnerRequirementSetId,
             SubjectRequirementSetId)
SELECT      'RWB_BUILDER_CHARGE_FROM_ECO_POLICY_AMOUNT_'||a.PolicyType,
            'MODIFIER_PLAYER_UNITS_ADJUST_BUILDER_CHARGES',
            'REQSET_PLAYER_IS_LADY_OF_THE_FOUR_TUPUS',
            'UNIT_IS_BUILDER_OR_APAQALLINM'
FROM Policies a WHERE GovernmentSlotType = 'SLOT_ECONOMIC';

-- CANCEL CHARGES
INSERT OR REPLACE INTO Modifiers
(ModifierId,
 ModifierType,
 OwnerRequirementSetId,
 SubjectRequirementSetId)
SELECT 'RWB_NORTECHICO_NEGATIVE_'||ModifierId,
       ModifierType,
       OwnerRequirementSetId,
       SubjectRequirementSetId
FROM Rwb_Builder_ChargeSources_UA;

-----------------------------------------------
-- X-Modifiers
-----------------------------------------------
-- EcoPolicy BuildCharge Scaling
INSERT OR REPLACE INTO PolicyModifiers
(PolicyType,
 ModifierId)
SELECT      a.PolicyType,
            'RWB_BUILDER_CHARGE_FROM_ECO_POLICY_AMOUNT_'||a.PolicyType
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

INSERT INTO	ModifierArguments
		(ModifierId,												        Name,							Value)
SELECT  'RWB_BUILDER_CHARGE_FROM_ECO_POLICY_AMOUNT_'||a.PolicyType,			'Amount',						1										
FROM Policies a WHERE GovernmentSlotType = 'SLOT_ECONOMIC';

-- it's broken, mhhhh
INSERT INTO	ModifierArguments
        (ModifierId,										Name,		    Value)
SELECT 'RWB_NORTECHICO_NEGATIVE_'||a.ModifierId,           'Amount',	    Value-Value*2
FROM Rwb_Builder_ChargeSources_UA a, ModifierArguments b WHERE b.ModifierId LIKE a.ModifierId;

-------------------------------------
-- RequirementSets
-------------------------------------
INSERT INTO RequirementSets
        (RequirementSetId,						                RequirementSetType				)
VALUES	('REQSET_PLAYER_IS_LADY_OF_THE_FOUR_TUPUS',				'REQUIREMENTSET_TEST_ALL'		);

-------------------------------------
-- RequirementSetRequirements
-------------------------------------
INSERT INTO RequirementSetRequirements
        (RequirementSetId,						    RequirementId									)
VALUES	('REQSET_PLAYER_IS_LADY_OF_THE_FOUR_TUPUS',	'RWB_NORTECHICO_IS_LADY_OF_THE_FOUR_TUPUS_REQUIREMENT'				);

-------------------------------------
-- Requirements
-------------------------------------
INSERT INTO Requirements
        (RequirementId, 									            RequirementType									)
VALUES	('RWB_NORTECHICO_IS_LADY_OF_THE_FOUR_TUPUS_REQUIREMENT',		'REQUIREMENT_PLAYER_TYPE_MATCHES'		);

-------------------------------------
-- RequirementArguments
-------------------------------------
INSERT INTO RequirementArguments
(RequirementId, 								                            Name,						Value							)
VALUES	('RWB_NORTECHICO_IS_LADY_OF_THE_FOUR_TUPUS_REQUIREMENT', 			'LeaderType',			    'LEADER_RWB_LADY_OF_THE_FOUR_TUPUS'	);

-------------------------------------
-- Table Dropping (Trashcan)
-------------------------------------

/*DROP TABLE Rwb_EcoPolicyAmountReference_UA;*/
DROP TABLE Rwb_Builder_ChargeSources_UA;
