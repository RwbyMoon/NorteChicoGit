-- [LUA] When you research the civic of a new era for the first time, you gain access to all Economic Policy Cards of this era.
-- Builders, Military Engineers but also Religious and Anti-Cavalry units starting their turn within two tiles of Holy Sites receive +1 [ICON_Movement] Movement.

--==============--
-- Unit Ability Giver
--==============--
-----------------------------------------------
-- Types
-----------------------------------------------
INSERT OR REPLACE INTO	Types
		(Type,												    Kind			)
VALUES	('TRAIT_LEADER_RWB_ECONOMIA_TEOCRATICA_NISQA',			'KIND_TRAIT'	),
        ('ABILITY_RWB_ECONOMIA_TEOCRATICA_NISQA_MOVEMENT',      'KIND_ABILITY');

-----------------------------------------------
-- Traits
-----------------------------------------------
INSERT OR REPLACE INTO	Traits
		(TraitType,									Name,												Description												)
VALUES	('TRAIT_LEADER_RWB_ECONOMIA_TEOCRATICA_NISQA',	'LOC_TRAIT_LEADER_RWB_ECONOMIA_TEOCRATICA_NISQA_NAME',	'LOC_TRAIT_LEADER_RWB_ECONOMIA_TEOCRATICA_NISQA_DESCRIPTION'	);

-----------------------------------------------
-- Tags
-----------------------------------------------
INSERT OR REPLACE INTO Tags
        (Tag,						                        Vocabulary		)
VALUES	('CLASS_RWB_ECONOMIA_TEOCRATICA_NISQA_UNITS',		'ABILITY_CLASS'	);

-----------------------------------------------
-- LeaderTraits
-----------------------------------------------
INSERT OR REPLACE INTO	LeaderTraits
		(LeaderType,			                TraitType								)
VALUES	('LEADER_RWB_LADY_OF_THE_FOUR_TUPUS',	'TRAIT_LEADER_RWB_ECONOMIA_TEOCRATICA_NISQA'	);

---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO Modifiers
            (ModifierId,                                               ModifierType,                            SubjectRequirementSetId)
VALUES      ('RWB_ECONOMIA_TEOCRATICA_NISQA_MOVEMENT_GIVE_MODIFIER',   'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',   'REQSET_RWB_PLOT_WITHIN_RANGE_OF_HOLY_SITE');

---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO ModifierArguments
            (ModifierId,                                                                    Name,                   Value)
VALUES      ('RWB_ECONOMIA_TEOCRATICA_NISQA_MOVEMENT_GIVE_MODIFIER',    'AbilityType',          'ABILITY_RWB_ECONOMIA_TEOCRATICA_NISQA_MOVEMENT');

---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO TraitModifiers
(TraitType, ModifierId)
VALUES      ('TRAIT_LEADER_RWB_ECONOMIA_TEOCRATICA_NISQA', 'RWB_ECONOMIA_TEOCRATICA_NISQA_MOVEMENT_GIVE_MODIFIER');


---------------------------------------------------------------------------------------------------------------
-- TypeTags
---------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO TypeTags
(Type, Tag)
VALUES      ('ABILITY_RWB_ECONOMIA_TEOCRATICA_NISQA_MOVEMENT',      'CLASS_RWB_ECONOMIA_TEOCRATICA_NISQA_UNITS'),
            ('UNIT_BUILDER',                                        'CLASS_RWB_ECONOMIA_TEOCRATICA_NISQA_UNITS'),
            ('UNIT_MILITARY_ENGINEER',                              'CLASS_RWB_ECONOMIA_TEOCRATICA_NISQA_UNITS') UNION
SELECT      Type,                                                   'CLASS_RWB_ECONOMIA_TEOCRATICA_NISQA_UNITS'
FROM TypeTags WHERE Tag LIKE 'CLASS_ANTI_CAVALRY' AND Type LIKE '%UNIT_%' UNION
SELECT      Type,                                                   'CLASS_RWB_ECONOMIA_TEOCRATICA_NISQA_UNITS'
FROM TypeTags WHERE Tag LIKE 'CLASS_RELIGIOUS_ALL' AND Type LIKE '%UNIT_%';


--==============--
-- Unit Ability
--==============--
-----------------------------------------------
-- UnitAbilities
-----------------------------------------------
INSERT OR REPLACE INTO UnitAbilities
(UnitAbilityType,
 Name,
 Description,
 Inactive)
VALUES      ('ABILITY_RWB_ECONOMIA_TEOCRATICA_NISQA_MOVEMENT',
             'LOC_ABILITY_RWB_ECONOMIA_TEOCRATICA_NISQA_MOVEMENT_NAME',
             'LOC_ABILITY_RWB_ECONOMIA_TEOCRATICA_NISQA_MOVEMENT_DESCRIPTION',
             '1');

-----------------------------------------------
-- Modifiers
-----------------------------------------------
INSERT OR REPLACE INTO Modifiers
            (ModifierId,                                                        ModifierType)
VALUES      ('RWB_MODIFIER_ECONOMIA_TEOCRATICA_NISQA_MOVEMENT',                 'MODIFIER_PLAYER_UNIT_ADJUST_MOVEMENT');

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------
INSERT OR REPLACE INTO ModifierArguments
            (ModifierId,                                                Name,                   Value)
VALUES      ('RWB_MODIFIER_ECONOMIA_TEOCRATICA_NISQA_MOVEMENT',         'Amount',               '1');

-----------------------------------------------
-- ModifierStrings
-----------------------------------------------
INSERT OR REPLACE INTO ModifierStrings
            (ModifierId,                                                Context,           Text)
VALUES      ('RWB_MODIFIER_ECONOMIA_TEOCRATICA_NISQA_MOVEMENT',         'Preview',          'LOC_ABILITY_RWB_ECONOMIA_TEOCRATICA_NISQA_MOVEMENT_DESCRIPTION');

-----------------------------------------------
-- UnitAbilityModifiers
-----------------------------------------------
INSERT OR REPLACE INTO UnitAbilityModifiers
(UnitAbilityType,                                                   ModifierId)
VALUES      ('ABILITY_RWB_ECONOMIA_TEOCRATICA_NISQA_MOVEMENT',            'RWB_MODIFIER_ECONOMIA_TEOCRATICA_NISQA_MOVEMENT');

-----------------------------------------------
-- RequirementSets
-----------------------------------------------
INSERT OR REPLACE INTO RequirementSets
(RequirementSetId,                                                   RequirementSetType)
VALUES      ('REQSET_RWB_PLOT_WITHIN_RANGE_OF_HOLY_SITE',          'REQUIREMENTSET_TEST_ANY');

-----------------------------------------------
-- PrepTables
-----------------------------------------------
CREATE TABLE IF NOT EXISTS RwbHolySiteLikes_ULA
(
    DistrictName TEXT
);
INSERT OR REPLACE INTO RwbHolySiteLikes_ULA
        (DistrictName)
VALUES  ('DISTRICT_HOLY_SITE') UNION
SELECT  CivUniqueDistrictType FROM
DistrictReplaces WHERE ReplacesDistrictType IS 'DISTRICT_HOLY_SITE';

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------
INSERT OR REPLACE INTO RequirementSetRequirements
(RequirementSetId,                                             RequirementId)
SELECT      'REQSET_RWB_PLOT_WITHIN_RANGE_OF_HOLY_SITE',    'RWB_REQUIRES_PLOT_WITHIN_RANGE_OF_'||DistrictName
FROM RwbHolySiteLikes_ULA;

-----------------------------------------------
-- Requirements
-----------------------------------------------
INSERT OR REPLACE INTO Requirements
(RequirementId,                                                         RequirementType)
SELECT      'RWB_REQUIRES_PLOT_WITHIN_RANGE_OF_'||DistrictName,    'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES'
FROM RwbHolySiteLikes_ULA;

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------
INSERT OR REPLACE INTO RequirementArguments
            (RequirementId,                                    Name,               Value)
SELECT      'RWB_REQUIRES_PLOT_WITHIN_RANGE_OF_'||DistrictName,  'DistrictType',     DistrictName
FROM RwbHolySiteLikes_ULA UNION
SELECT      'RWB_REQUIRES_PLOT_WITHIN_RANGE_OF_'||DistrictName,  'MinRange',         '0'
FROM RwbHolySiteLikes_ULA UNION
SELECT      'RWB_REQUIRES_PLOT_WITHIN_RANGE_OF_'||DistrictName,  'MaxRange',         '2'
FROM RwbHolySiteLikes_ULA;
DROP TABLE IF EXISTS RwbHolySiteLikes_ULA;