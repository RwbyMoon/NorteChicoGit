-- HUANCA : +3 Faith, +5 Great Prophet Points per Turn, +35% production towards projects.
-- Sunken Plaza : +3 Culture. +1 Culture +15% Tourism for every Great Works in this city, doubled for Great Works of Music.
-- Pirámide : +3 Housing. +1.5 Gold +0.75 Production per Citizen in this city.


---------------------------------------------------------------------------------------------------------------
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO Types
            (Type,											Kind			)
VALUES	    ('BUILDING_RWB_NORTECHICO_HUANCA',			    'KIND_BUILDING'		),
            ('BUILDING_RWB_NORTECHICO_SUNKEN_PLAZA',		'KIND_BUILDING'		),
            ('BUILDING_RWB_NORTECHICO_PIRAMIDE',			'KIND_BUILDING'		);

---------------------------------------------------------------------------------------------------------------
-- Buildings
---------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO Buildings
        (BuildingType,
         Name,
         Cost,
         --PrereqCivic,
         PrereqDistrict,
         Description,
         Housing,
         Maintenance,
         --TraitType,
         AdvisorType)

-- HUANCA
VALUES	('BUILDING_RWB_NORTECHICO_HUANCA',						-- BuildingType
          'LOC_BUILDING_RWB_NORTECHICO_HUANCA_NAME',			-- BuildingType
          100,
          --'CIVIC_CODE_OF_LAWS',
          'DISTRICT_RWB_NORTECHICO_CIUDAD_SAGRADA',
          'LOC_BUILDING_RWB_NORTECHICO_HUANCA_DESCRIPTION',		-- Description
          0,
          3,										-- Maintenance
          --'TRAIT_CIVILIZATION_NO_PLAYER',	-- TraitType
          'ADVISOR_RELIGIOUS'),
-- Sunken Plaza
          ('BUILDING_RWB_NORTECHICO_SUNKEN_PLAZA',						-- BuildingType
           'LOC_BUILDING_RWB_NORTECHICO_SUNKEN_PLAZA_NAME',			-- BuildingType
           150,
           --'CIVIC_CODE_OF_LAWS',
           'DISTRICT_RWB_NORTECHICO_CIUDAD_SAGRADA',
           'LOC_BUILDING_RWB_NORTECHICO_SUNKEN_PLAZA_DESCRIPTION',		-- Description
           0,
           3,										-- Maintenance
           --'TRAIT_CIVILIZATION_NO_PLAYER',	-- TraitType
           'ADVISOR_CULTURE'),

-- Piramide
          ('BUILDING_RWB_NORTECHICO_PIRAMIDE',						-- BuildingType
           'LOC_BUILDING_RWB_NORTECHICO_PIRAMIDE_NAME',			-- BuildingType
           200,
           --'CIVIC_CODE_OF_LAWS',
           'DISTRICT_RWB_NORTECHICO_CIUDAD_SAGRADA',
           'LOC_BUILDING_RWB_NORTECHICO_PIRAMIDE_DESCRIPTION',		-- Description
           3,
           3,										-- Maintenance
           --'TRAIT_CIVILIZATION_NO_PLAYER',	-- TraitType
           'ADVISOR_GENERIC');

---------------------------------------------------------------------------------------------------------------
-- Building_YieldChanges
---------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO Building_YieldChanges
(BuildingType,				                        YieldType,			YieldChange)
VALUES	('BUILDING_RWB_NORTECHICO_HUANCA',	        'YIELD_FAITH',		3),
        ('BUILDING_RWB_NORTECHICO_SUNKEN_PLAZA',	'YIELD_CULTURE',	3);

---------------------------------------------------------------------------------------------------------------
-- Building_GreatPersonPoints
---------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO Building_GreatPersonPoints
                (BuildingType,				        GreatPersonClassType,	        PointsPerTurn)
VALUES	        ('BUILDING_RWB_NORTECHICO_HUANCA',	'GREAT_PERSON_CLASS_PROPHET',	5);

---------------------------------------------------------------------------------------------------------------
-- DynamicModifiers
---------------------------------------------------------------------------------------------------------------
/*INSERT OR REPLACE INTO DynamicModifiers
(ModifierType, CollectionType, EffectType)
VALUES      ('MODIFIER_PLAYER_ADJUST_VALID_BUILDING','COLLECTION_OWNER','EFFECT_ADJUST_PLAYER_VALID_BUILDING');*/

---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
-- +1 Culture per GW
INSERT OR REPLACE INTO Modifiers
        (ModifierId,                                                ModifierType                                                    )
SELECT   'RWB_NORTECHICO_BONUS_CULTURE_'||a.GreatWorkObjectType,    'MODIFIER_SINGLE_CITY_ADJUST_GREATWORK_YIELD'              
FROM GreatWorkObjectTypes a;
-- +1 Additionnal Culture per GW of Music
INSERT OR REPLACE INTO Modifiers
(ModifierId,                                        ModifierType)
VALUES             ('RWB_NORTECHICO_BONUS_ADDITIONNAL_CULTURE_GREATWORKOBJECT_MUSIC',  'MODIFIER_PLAYER_CITIES_ADJUST_GREATWORK_YIELD');
-- arguments : GreatWorkObjectType (ex : GREATWORKOBJECT_WRITING) | YieldType (ex : YIELD_GOLD) | YieldChange (ex : 4)

-- +25% production towards city project
INSERT OR REPLACE INTO Modifiers
(ModifierId,										ModifierType)
SELECT	'RWB_NORTECHICO_HUANCA_PROJECT_PRODUCTION_'||ProjectType,	'MODIFIER_SINGLE_CITY_ADJUST_PROJECT_PRODUCTION'
FROM Projects;

-- +1.5 Gold & & .75 Prod per Pop
INSERT OR REPLACE INTO Modifiers
                    (ModifierId,                                        ModifierType)                                           
VALUES              ('RWB_NORTECHICO_GOLD_PER_POPULATION',              'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_PER_POPULATION'),
                    ('RWB_NORTECHICO_PRODUCTION_PER_POPULATION',        'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_PER_POPULATION');

-- -45%Prod per building already present
INSERT OR REPLACE INTO Modifiers
                    (ModifierId,                                                                    ModifierType)
SELECT              'RWB_NORTECHICO_CIUDAD_'||BuildingType||'_MALUS_PER_CIUDAD_BUILDING',        'MODIFIER_SINGLE_CITY_ADJUST_BUILDING_PRODUCTION'
FROM Buildings WHERE PrereqDistrict IS 'DISTRICT_RWB_NORTECHICO_CIUDAD_SAGRADA';

---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
-- +1 Culture per GW
INSERT OR REPLACE INTO ModifierArguments
                   (ModifierId,                                                 Name,                       Value)
SELECT   'RWB_NORTECHICO_BONUS_CULTURE_'||a.GreatWorkObjectType,'GreatWorkObjectType',      a.GreatWorkObjectType
FROM GreatWorkObjectTypes a UNION
SELECT   'RWB_NORTECHICO_BONUS_CULTURE_'||a.GreatWorkObjectType,'YieldType',                'YIELD_CULTURE'
FROM GreatWorkObjectTypes a UNION
SELECT   'RWB_NORTECHICO_BONUS_CULTURE_'||a.GreatWorkObjectType,'YieldChange',              1
FROM GreatWorkObjectTypes a;

-- +1 Additionnal Culture per GW of Music
INSERT OR REPLACE INTO ModifierArguments
            (ModifierId,                                                        Name,                           Value)
VALUES      ('RWB_NORTECHICO_BONUS_ADDITIONNAL_CULTURE_GREATWORKOBJECT_MUSIC',  'GreatWorkObjectType',          'GREATWORKOBJECT_MUSIC'),
            ('RWB_NORTECHICO_BONUS_ADDITIONNAL_CULTURE_GREATWORKOBJECT_MUSIC',  'YieldType',                    'YIELD_CULTURE'),
            ('RWB_NORTECHICO_BONUS_ADDITIONNAL_CULTURE_GREATWORKOBJECT_MUSIC',  'YieldChange',                  2);

-- +35% production towards city project
INSERT OR REPLACE INTO ModifierArguments
(ModifierId,										Name,			Value)
SELECT	'RWB_NORTECHICO_HUANCA_PROJECT_PRODUCTION_'||ProjectType,	'ProjectType',	ProjectType
FROM Projects;
INSERT OR REPLACE INTO ModifierArguments
(ModifierId,										Name,			Value)
SELECT	'RWB_NORTECHICO_HUANCA_PROJECT_PRODUCTION_'||ProjectType,	'Amount',		35
FROM Projects;

-- -45%Prod per building already present
INSERT OR REPLACE INTO ModifierArguments
(ModifierId,                                                                                Name,                           Value)
SELECT      'RWB_NORTECHICO_CIUDAD_'||BuildingType||'_MALUS_PER_CIUDAD_BUILDING',             'Amount',                       '-45'
FROM Buildings WHERE PrereqDistrict IS 'DISTRICT_RWB_NORTECHICO_CIUDAD_SAGRADA' UNION
SELECT      'RWB_NORTECHICO_CIUDAD_'||BuildingType||'_MALUS_PER_CIUDAD_BUILDING',             'BuildingType',                 BuildingType
FROM Buildings WHERE PrereqDistrict IS 'DISTRICT_RWB_NORTECHICO_CIUDAD_SAGRADA';

-- +1.5 Gold & & .75 Prod per Pop
INSERT OR REPLACE INTO ModifierArguments
            (ModifierId,                                                        Name,               Value)
VALUES      ('RWB_NORTECHICO_GOLD_PER_POPULATION',                              'YieldType',        1.5),
            ('RWB_NORTECHICO_PRODUCTION_PER_POPULATION',                        'YieldType',        'YIELD_PRODUCTION'),
            ('RWB_NORTECHICO_PRODUCTION_PER_POPULATION',                        'Amount',           0.75);

---------------------------------------------------------------------------------------------------------------
-- BuildingModifiers
---------------------------------------------------------------------------------------------------------------
-- +1.5 Gold & & .75 Prod per Pop
INSERT OR REPLACE INTO BuildingModifiers
            (BuildingType,                                  ModifierId) 
VALUES      ('BUILDING_RWB_NORTECHICO_PIRAMIDE',            'RWB_NORTECHICO_GOLD_PER_POPULATION'),
            ('BUILDING_RWB_NORTECHICO_PIRAMIDE',            'RWB_NORTECHICO_PRODUCTION_PER_POPULATION'),
-- +1 Additionnal Culture per GW of Music
            ('BUILDING_RWB_NORTECHICO_SUNKEN_PLAZA',        'RWB_NORTECHICO_BONUS_ADDITIONNAL_CULTURE_GREATWORKOBJECT_MUSIC');

-- +1 Culture per GW
INSERT OR REPLACE INTO BuildingModifiers
            (BuildingType,                                  ModifierId)
SELECT      'BUILDING_RWB_NORTECHICO_SUNKEN_PLAZA',         'RWB_NORTECHICO_BONUS_CULTURE_'||a.GreatWorkObjectType
FROM GreatWorkObjectTypes a;

-- -45%Prod per building already present
INSERT OR REPLACE INTO BuildingModifiers
                    (BuildingType,                                  ModifierId)
SELECT              'BUILDING_RWB_NORTECHICO_PIRAMIDE',             'RWB_NORTECHICO_CIUDAD_PIRAMIDE'||BuildingType||'_MALUS_PER_CIUDAD_BUILDING'
FROM Buildings WHERE PrereqDistrict IS 'DISTRICT_RWB_NORTECHICO_CIUDAD_SAGRADA' UNION
SELECT              'BUILDING_RWB_NORTECHICO_SUNKEN_PLAZA',         'RWB_NORTECHICO_CIUDAD_'||BuildingType||'_MALUS_PER_CIUDAD_BUILDING'
FROM Buildings WHERE PrereqDistrict IS 'DISTRICT_RWB_NORTECHICO_CIUDAD_SAGRADA' UNION
SELECT              'BUILDING_RWB_NORTECHICO_HUANCA',               'RWB_NORTECHICO_CIUDAD_'||BuildingType||'_MALUS_PER_CIUDAD_BUILDING'
FROM Buildings WHERE PrereqDistrict IS 'DISTRICT_RWB_NORTECHICO_CIUDAD_SAGRADA';

INSERT OR REPLACE INTO BuildingModifiers
(BuildingType,                                  ModifierId)
SELECT  BuildingType,                                   'RWB_NORTE_CHICO_UD_GIVE_POPULATION'
FROM Buildings WHERE PrereqDistrict IS 'DISTRICT_RWB_NORTECHICO_CIUDAD_SAGRADA';

INSERT OR REPLACE INTO BuildingModifiers
(BuildingType,									ModifierId)
SELECT	'BUILDING_RWB_NORTECHICO_HUANCA',					'RWB_NORTECHICO_HUANCA_PROJECT_PRODUCTION_'||ProjectType
FROM Projects;

/*INSERT OR REPLACE INTO BuildingModifiers
(BuildingType,                                  ModifierId)
SELECT  BuildingType,                                   'RWB_NORTE_CHICO_UD_GIVE_POPULATION'
FROM Buildings WHERE PrereqDistrict IS 'DISTRICT_RWB_NORTECHICO_CIUDAD_SAGRADA';*/


---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO RequirementSets
(RequirementSetId,							    RequirementSetType)
VALUES	('REQSET_RWB_CITY_HAS_SUNKEN_PLAZA',    'REQUIREMENTSET_TEST_ALL'),
        ('REQSET_RWB_CITY_HAS_PIRAMIDE',	    'REQUIREMENTSET_TEST_ALL');

---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO RequirementSetRequirements
        (RequirementSetId,		                RequirementId)
VALUES	('REQSET_RWB_CITY_HAS_SUNKEN_PLAZA',	'REQUIRES_CITY_HAS_SUNKEN_PLAZA'),
        ('REQSET_RWB_CITY_HAS_PIRAMIDE',	    'REQUIRES_CITY_HAS_PIRAMIDE');

---------------------------------------------------------------------------------------------------------------
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO Requirements
        (RequirementId,                             RequirementType) 
VALUES  ('REQUIRES_CITY_HAS_SUNKEN_PLAZA',          'REQUIREMENT_CITY_HAS_BUILDING'),
        ('REQUIRES_CITY_HAS_PIRAMIDE',              'REQUIREMENT_CITY_HAS_BUILDING');

---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO RequirementArguments
        (RequirementId,                             Name,                       Value)
VALUES  ('REQUIRES_CITY_HAS_SUNKEN_PLAZA',          'BuildingType',             'BUILDING_RWB_NORTECHICO_SUNKEN_PLAZA'),
        ('REQUIRES_CITY_HAS_PIRAMIDE',              'BuildingType',             'BUILDING_RWB_NORTECHICO_PIRAMIDE');