/*
	Leader Unique Ability
	Authors: MC
*/

-----------------------------------------------
-- Types

-- This inserts the Unique Ability reference into the primary Data Types table as a recognised trait. This is mandatory, if configuring a custom trait for your leader. The string listed under 'Type' must be used throughout the mod when referring to the TraitType.

-- The standard naming convention follows: TRAIT_LEADER_PREFIX_TRAITNAME

-- Configuring a Unique Ability for your custom leader is entirely optional, but it is typically considered appropriate for balance to configure one, such that your custom leader matches those from the base games in terms of complexity, both for flavour and gameplay balance.

-- In this example, we also define a new ability, which this particular Unique Ability will leverage. You'll note this is denoted under KIND_ABILITY, which ensures the game is acknowledging this item in the right way.
-----------------------------------------------

INSERT OR REPLACE INTO	Types
		(Type,												Kind			)
VALUES	('TRAIT_LEADER_RWB_ECONOMIA_TEOCRATICA_NISQA',			'KIND_TRAIT'	),
		('ABILITY_MC_BUILDER_SETTLER_IGNORE_TERRAIN_COST',	'KIND_ABILITY'	);

-----------------------------------------------
-- Tags

-- The Unique Ability this example creates will be applied to two specific UnitType entities - the Builder and the Settler. As such, because these two - and no others - do not exist as their own class of unit, we need to ring-fence them accordingly. The below section does this for us, by inserting our new CLASS_MC_BUILDER_SETTLER class as an ABILITY_CLASS - such that we can tie the new Ability to them.
-----------------------------------------------

INSERT OR REPLACE INTO Tags
		(Tag,							Vocabulary		)
VALUES	('CLASS_MC_BUILDER_SETTLER',	'ABILITY_CLASS'	);

-----------------------------------------------
-- TypeTags

-- The below section ties together some of the new items we defined above.

-- Firstly, it associates the UNIT_BUILDER and the UNIT_SETTLER to our new class - CLASS_MC_BUILDER_SETTLER.

-- Secondly, we link the UnitAbilityType to that same class. By doing this, we ensure the UnitAbilityType is only applied to the two units in question - which make up all of the members of the new class.
-----------------------------------------------

INSERT OR REPLACE INTO TypeTags
		(Type,												Tag								)
VALUES	('UNIT_BUILDER',									'CLASS_MC_BUILDER_SETTLER'		),
		('UNIT_SETTLER',									'CLASS_MC_BUILDER_SETTLER'		),
		('ABILITY_MC_BUILDER_SETTLER_IGNORE_TERRAIN_COST',	'CLASS_MC_BUILDER_SETTLER'		);

-----------------------------------------------
-- UnitAbilities

-- With the UnitAbilityType defined (above), the below then inserts it into the overall UnitAbilities table. This allows it to exist in its own right, alongside other UnitAbilityType elements and ties it to the locally-referenced Name and Description text strings that name and describe the ability, respectively.

-- We also assign the Inactive boolean, here - though with 100% confidence I cannot explain why, in this case, this is the right value. An 'Inactive' ability is one that is considered 'not in use' normally; though this particular ability is always applied. As there are only two values, I personally just try to toggle these as part of troubleshooting when I am certain all other mod-parts are configured correctly.
-----------------------------------------------

INSERT OR REPLACE INTO UnitAbilities
		(UnitAbilityType,									Name,												Description,												Inactive	)
VALUES	('ABILITY_MC_BUILDER_SETTLER_IGNORE_TERRAIN_COST',	'LOC_TRAIT_LEADER_OLMEC_ABILITY_NAME',	'LOC_TRAIT_LEADER_OLMEC_ABILITY_DESCRIPTION',		1			);

-----------------------------------------------
-- UnitAbilityModifiers

-- The below entry ties the effective modifiers to the UnitAbilityType. A modifier is the top-level item that instructs the game to perform a deviation away from the base ruleset in some way. The possibilities are endless, so these notes make no attempt to cover what can be done - only to instruct against the logic, step by step.

-- This template will walk you through a typical example, nonetheless; though I highly recommend spending some time familiarising yourself with the base-game files and/or the database to get a general appreciation of how things work.

-- In this example, we are applying an existing Modifier that implements the described UnitAbilityType - specifically, the ALTITUDE_TRAINING_IGNORE_HILLS promotion. This will give that ability to any unit that is correctly 'awarded' the UnitAbilityType. Some of the code earlier restricts the types of units that this will be applied to - whilst code further down instructs the game to apply it.

-- Learning point: There are numerous ways to unfurl the logic that follows below. For me, the most effective way was a combination of following the base game data, trial and error and (admittedly) a healthy dose of asking for help.
-----------------------------------------------

INSERT OR REPLACE INTO UnitAbilityModifiers
		(UnitAbilityType,									ModifierId							)
VALUES	('ABILITY_MC_BUILDER_SETTLER_IGNORE_TERRAIN_COST',	'ALTITUDE_TRAINING_IGNORE_HILLS'	);

-----------------------------------------------
-- Traits

-- With the TraitType defined (above), the below then inserts it into the overall Traits table. This allows it to exist in its own right, alongside other TraitType elements and ties it to the locally-referenced Name and Description text strings that name and describe the trait, respectively.
-----------------------------------------------

INSERT OR REPLACE INTO	Traits
		(TraitType,									Name,												Description												)
VALUES	('TRAIT_LEADER_RWB_ECONOMIA_TEOCRATICA_NISQA',	'LOC_TRAIT_LEADER_RWB_ECONOMIA_TEOCRATICA_NISQA_NAME',	'LOC_TRAIT_LEADER_RWB_ECONOMIA_TEOCRATICA_NISQA_DESCRIPTION'	);
		
-----------------------------------------------
-- LeaderTraits

-- This defines the leader to which the TraitType is applied (i.e. which leader gets the Unique Ability). This is a simple matter of referencing the custom LeaderType defined in Leader_Config.sql and using the TraitType defined at the head of this document.
-----------------------------------------------

INSERT OR REPLACE INTO	LeaderTraits
		(LeaderType,			TraitType								)
VALUES	('LEADER_RWB_LADY_OF_THE_FOUR_TUPUS',	'TRAIT_LEADER_RWB_ECONOMIA_TEOCRATICA_NISQA'	);

-----------------------------------------------
-- Modifiers

-- In this section, we apply the Ability we defined earlier via the use of another Modifier. In this case, our ModifierId is defined and it is defined with the ModifierType that allows us to grant an ability. We set it as Permanent, as we want this application of the Ability to happen once (at the very start of the game when our custom leader is in-play).
-----------------------------------------------

INSERT OR REPLACE INTO Modifiers
		(ModifierId,											ModifierType,								Permanent	)
VALUES	('TRAIT_GRANT_SETTLERS_BUILDERS_ALTITUDE_TRAINING',		'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',		1			);

-----------------------------------------------
-- TraitModifiers

-- This section applies the Modifier (defined directly above), that grants our custom civilization's units an ability. It's tied to the TraitType, which in turn belongs to our custom LeaderType.

-- Without this, there's no mechanism for us to apply the UnitAbilityType to anything - so this is required to get the ability to the units we specified earlier.
-----------------------------------------------

INSERT OR REPLACE INTO TraitModifiers 
		(TraitType,									ModifierId											)
VALUES	('TRAIT_LEADER_RWB_ECONOMIA_TEOCRATICA_NISQA',	'TRAIT_GRANT_SETTLERS_BUILDERS_ALTITUDE_TRAINING'	);

-----------------------------------------------
-- ModifierArguments

-- This final section stitches the last pieces together. It instructs the game which AbilityType to grant as part of the TRAIT_GRANT_SETTLERS_BUILDERS_ALTITUDE_TRAINING Modifier.

-- In our case, this is the new ability we defined earlier.

-- So, as a brief recap:

-- The LeaderType receives a TraitType
-- The TraitType has a Modifier attached to it, which does 'something'
-- That 'something' is the granting of our custom unit ability
-- The unit ability is restricted only to the custom unit class we created - which contains only Builders and Settlers
-- The applied unit ability has a (different) Modifier attached to it, which changes the way those units (individually) behave
-----------------------------------------------

INSERT OR REPLACE INTO ModifierArguments 
		(ModifierId,										Name,				Value												)
VALUES	('TRAIT_GRANT_SETTLERS_BUILDERS_ALTITUDE_TRAINING',	'AbilityType',		'ABILITY_MC_BUILDER_SETTLER_IGNORE_TERRAIN_COST'	);






---------------------------------------------------------------------------------------------------------------
-- DistrictModifiers
---------------------------------------------------------------------------------------------------------------

/*
INSERT OR REPLACE INTO Modifiers
(ModifierId,                                                            ModifierType,                               SubjectRequirementSetId)
VALUES      ('TRAIT_CIVILIZATION_RWB_PILIAKALNIS_COMBAT_STRENGTH_GIVE_MODIFIER',         'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',      'REQSET_RWB_PLOT_WITHIN_RANGE_OF_PILIAKALNIS'),
            ('TRAIT_CIVILIZATION_RWB_PILIAKALNIS_RELIGIOUS_STRENGTH_GIVE_MODIFIER',      'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',      'REQSET_RWB_PLOT_WITHIN_RANGE_OF_PILIAKALNIS');

INSERT OR REPLACE INTO ModifierArguments
(ModifierId,                                                            Name,                   Value)
VALUES      ('TRAIT_CIVILIZATION_RWB_PILIAKALNIS_COMBAT_STRENGTH_GIVE_MODIFIER',    'AbilityType',          'ABILITY_RWB_PILIAKALNIS_COMBAT_STRENGTH'),
            ('TRAIT_CIVILIZATION_RWB_PILIAKALNIS_RELIGIOUS_STRENGTH_GIVE_MODIFIER', 'AbilityType',          'ABILITY_RWB_PILIAKALNIS_RELIGIOUS_STRENGTH');

INSERT OR REPLACE INTO TraitModifiers
(TraitType, ModifierId)
VALUES      ('TRAIT_CIVILIZATION_DISTRICT_RWB_PILIAKALNIS', 'TRAIT_CIVILIZATION_RWB_PILIAKALNIS_COMBAT_STRENGTH_GIVE_MODIFIER') ,
            ('TRAIT_CIVILIZATION_DISTRICT_RWB_PILIAKALNIS', 'TRAIT_CIVILIZATION_RWB_PILIAKALNIS_RELIGIOUS_STRENGTH_GIVE_MODIFIER') ;

INSERT OR REPLACE INTO Types
(Type, Kind)
VALUES      ('ABILITY_RWB_PILIAKALNIS_COMBAT_STRENGTH',       'KIND_ABILITY'),
            ('ABILITY_RWB_PILIAKALNIS_RELIGIOUS_STRENGTH',    'KIND_ABILITY');

INSERT OR REPLACE INTO TypeTags
(Type, Tag)
VALUES      ('ABILITY_RWB_PILIAKALNIS_COMBAT_STRENGTH',       'CLASS_ALL_COMBAT_UNITS'),
            ('ABILITY_RWB_PILIAKALNIS_RELIGIOUS_STRENGTH',    'CLASS_RELIGIOUS_ALL');

INSERT OR REPLACE INTO UnitAbilities
(UnitAbilityType,
 Name,
 Description,
 Inactive)
VALUES      ('ABILITY_RWB_PILIAKALNIS_COMBAT_STRENGTH',
             'LOC_ABILITY_RWB_PILIAKALNIS_COMBAT_STRENGTH_NAME',
             'LOC_ABILITY_RWB_PILIAKALNIS_COMBAT_STRENGTH_DESCRIPTION',
             '1'),
            ('ABILITY_RWB_PILIAKALNIS_RELIGIOUS_STRENGTH',
             'LOC_ABILITY_RWB_PILIAKALNIS_RELIGIOUS_STRENGTH_NAME',
             'LOC_ABILITY_RWB_PILIAKALNIS_RELIGIOUS_STRENGTH_DESCRIPTION',
             '1');

INSERT OR REPLACE INTO Modifiers
(ModifierId,                                                        ModifierType)
VALUES      ('RWB_MODIFIER_PILIAKALNIS_COMBAT_STRENGTH',               'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH'),
            ('RWB_MODIFIER_PILIAKALNIS_RELIGIOUS_STRENGTH',            'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH');

INSERT OR REPLACE INTO ModifierArguments
(ModifierId,                                                Name,                   Value)
VALUES      ('RWB_MODIFIER_PILIAKALNIS_COMBAT_STRENGTH',       'Amount',               '3'),
            ('RWB_MODIFIER_PILIAKALNIS_RELIGIOUS_STRENGTH',    'Amount',               '3');

INSERT OR REPLACE INTO UnitAbilityModifiers
(UnitAbilityType,                                                   ModifierId)
VALUES      ('ABILITY_RWB_PILIAKALNIS_COMBAT_STRENGTH',            'RWB_MODIFIER_PILIAKALNIS_COMBAT_STRENGTH'),
            ('ABILITY_RWB_PILIAKALNIS_RELIGIOUS_STRENGTH',         'RWB_MODIFIER_PILIAKALNIS_RELIGIOUS_STRENGTH');

INSERT OR REPLACE INTO ModifierStrings
(ModifierId,                                       Context,           Text)
VALUES      ('RWB_MODIFIER_PILIAKALNIS_COMBAT_STRENGTH',       'Preview',          'LOC_ABILITY_RWB_PILIAKALNIS_COMBAT_STRENGTH_BONUS_DESCRIPTION'),
            ('RWB_MODIFIER_PILIAKALNIS_RELIGIOUS_STRENGTH',    'Preview',          'LOC_ABILITY_RWB_PILIAKALNIS_RELIGIOUS_STRENGTH_BONUS_DESCRIPTION');

INSERT OR REPLACE INTO RequirementSets
(RequirementSetId,                                                   RequirementSetType)
VALUES      ('REQSET_RWB_PLOT_WITHIN_RANGE_OF_PILIAKALNIS',          'REQUIREMENTSET_TEST_ALL');

INSERT OR REPLACE INTO RequirementSetRequirements
(RequirementSetId,                                             RequirementId)
VALUES      ('REQSET_RWB_PLOT_WITHIN_RANGE_OF_PILIAKALNIS',    'RWB_REQUIRES_PLOT_WITHIN_RANGE_OF_PILIAKALNIS');

INSERT OR REPLACE INTO Requirements
(RequirementId,                                                         RequirementType)
VALUES      ('RWB_REQUIRES_PLOT_WITHIN_RANGE_OF_PILIAKALNIS',    'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES');

INSERT OR REPLACE INTO RequirementArguments
(RequirementId,                                    Name,               Value)
VALUES      ('RWB_REQUIRES_PLOT_WITHIN_RANGE_OF_PILIAKALNIS',  'DistrictType',     'DISTRICT_RWB_PILIAKALNIS'),
            ('RWB_REQUIRES_PLOT_WITHIN_RANGE_OF_PILIAKALNIS',  'MinRange',         '0'),
            ('RWB_REQUIRES_PLOT_WITHIN_RANGE_OF_PILIAKALNIS',  'MaxRange',         '4');*/
