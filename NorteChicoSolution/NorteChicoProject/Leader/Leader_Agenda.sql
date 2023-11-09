--Will try to build up large and productive cities with religious infrastructure. Considers trading allies with appreciation in addition to those sharing the same amount of holy investment, but dislikes those with a large standing army and even more those warmongering with it.

/*
DO large & productive cities
DO holy sites
++ Trading allies
++ holy sites
- high standing army
- warmonger
*/

-----------------------------------------------
-- Types

-- This inserts the agenda's trait reference into the primary Data Types table as a usable trait. This is mandatory. The string listed under 'Type' must be used throughout the mod when referring to the TraitType.

-- It is customary for this to take the following format: TRAIT_AGENDA_PREFIX_LEADERNAME
-----------------------------------------------

INSERT OR REPLACE INTO Types
			(Type,							Kind			)
VALUES		('TRAIT_AGENDA_RWB_LADY_OF_THE_FOUR_TUPUS',		'KIND_TRAIT'	);

-----------------------------------------------
-- Agendas

-- This defines the AgendaType itself, such that the agenda exists as an entity alongside the other agendas. We can then reference it to associate it with our leader.

-- All leaders are assigned at least one unique, known agenda, which is a mechanism the game uses to control their personality/behaviour.
-----------------------------------------------

INSERT OR REPLACE INTO Agendas
			(AgendaType,			Name,							Description								)
VALUES 		('AGENDA_RWB_LADY_OF_THE_FOUR_TUPUS',	'LOC_AGENDA_RWB_LADY_OF_THE_FOUR_TUPUS_NAME',	'LOC_AGENDA_RWB_LADY_OF_THE_FOUR_TUPUS_DESCRIPTION'		);

-----------------------------------------------
-- Traits

-- With the TraitType defined (above), the below then inserts it into the overall Traits table. This allows it to exist in its own right, alongside other TraitType elements and ties it to the locally-referenced Name and Description text strings that name and describe the trait, respectively.
-----------------------------------------------

INSERT OR REPLACE INTO Traits				
			(TraitType,						Name,							Description								)
VALUES		('TRAIT_AGENDA_RWB_LADY_OF_THE_FOUR_TUPUS',		'LOC_AGENDA_RWB_LADY_OF_THE_FOUR_TUPUS_NAME',	'LOC_AGENDA_RWB_LADY_OF_THE_FOUR_TUPUS_DESCRIPTION'		);

-----------------------------------------------
-- AgendaTraits

-- This defines the agenda to which the TraitType is applied. This is a simple matter of referencing the custom AgendaType defined above and using the TraitType defined at the head of this document.

-- We'll use the TraitType, later in this document, to apply some modifiers that influence the leader's behaviour.
-----------------------------------------------

INSERT OR REPLACE INTO AgendaTraits
			(AgendaType,			TraitType					)
VALUES 		('AGENDA_RWB_LADY_OF_THE_FOUR_TUPUS',	'TRAIT_AGENDA_RWB_LADY_OF_THE_FOUR_TUPUS'	);

-----------------------------------------------
-- HistoricalAgendas

-- In this section, we assign our custom leader the AgendaType we've defined. This ensures that our leader's behaviour (when controlled by the AI) is influenced by the factors we'll specify (further down in this file).
-----------------------------------------------

INSERT OR REPLACE INTO HistoricalAgendas
			(LeaderType,			AgendaType				)
VALUES 		('LEADER_RWB_LADY_OF_THE_FOUR_TUPUS',	'AGENDA_RWB_LADY_OF_THE_FOUR_TUPUS'		);

-----------------------------------------------
-- ExclusiveAgendas

-- In addition to a unique, known agenda, leaders are also assigned one hidden agenda at random upon the start of a new game. The ExclusiveAgendas table allows us a degree of control over the known (HistoricalAgendas) and hidden agendas that can be paired.

-- A pair of values in AgendaOne and AgendaTwo will never be assigned to the same leader. As such, we specify a list of agendas in AgendaTwo that we do not think pair cohesively with our AgendaType.

-- The list of base-game hidden agendas can be found in Agendas.xml (lins 250-273).
-----------------------------------------------

INSERT OR REPLACE INTO ExclusiveAgendas
			(AgendaOne,				                AgendaTwo					)
VALUES 		('AGENDA_RWB_LADY_OF_THE_FOUR_TUPUS',	'AGENDA_STANDING_ARMY'		);

-----------------------------------------------
-- TraitModifiers

-- The below entries tie some specific modifiers to the TraitType. A modifier is the top-level item that instructs the game to perform a deviation away from the base ruleset in some way. In the case of Diplomacy effects, which is what Agendas are used to control, we specify two: one for UNHAPPY and one for HAPPY.

-- We'll flesh these out further in the sections below - but the general principle is that we will modify the 'happiness' value dependent on certain circumstances. This has the effect of adjusting the leader's opinion of you, over time, depending on the factors stipulated by the Requirement Sets.
-----------------------------------------------

/*
DO large & productive cities
DO holy sites
++ Trading allies
++ holy sites
- high standing army
- warmonger
*/

INSERT OR REPLACE INTO TraitModifiers
			(TraitType,						                ModifierId								)
VALUES		('TRAIT_AGENDA_RWB_LADY_OF_THE_FOUR_TUPUS',		'AGENDA_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_TRADING_ALLY'	                    ),
			('TRAIT_AGENDA_RWB_LADY_OF_THE_FOUR_TUPUS',		'AGENDA_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_HOLY_BUILDER'		                ),
			('TRAIT_AGENDA_RWB_LADY_OF_THE_FOUR_TUPUS',		'AGENDA_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_STANDING_ARMY'		                ),
			('TRAIT_AGENDA_RWB_LADY_OF_THE_FOUR_TUPUS',		'AGENDA_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_WARMONGER'		                    ),
			('TRAIT_AGENDA_RWB_LADY_OF_THE_FOUR_TUPUS',		'AGENDA_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_STANDING_ARMY_PLUS_WARMONGER'		);
		
-----------------------------------------------
-- Modifiers

-- This section defines, for each of your modifiers, the type of modifier it is and the conditions under which it is applied.

-- The ModifierType is important - it governs the sphere of application of the effect(s) in question. Again, in the case of Diplomacy interactions, we leverage existing modifiers that exist in the game - which are configured to adjust a leader's stance from a diplomacy perspective. The SubjectRequirementSetId entries will be defined by us, further down in this file.
-----------------------------------------------

INSERT OR REPLACE INTO Modifiers	
			(ModifierId,								                                ModifierType,									      OwnerRequirementSetId,      SubjectRequirementSetId			)
VALUES		('AGENDA_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_TRADING_ALLY',	                'MODIFIER_PLAYER_DIPLOMACY_TRADE_RELATIONS',	      'ON_TURN_STARTED',          'PLAYER_IS_MAJOR_CIV_KNOWN_30_TURNS'		                ),
			('AGENDA_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_HOLY_BUILDER',	                'MODIFIER_PLAYER_DIPLOMACY_AGENDA_END_TO_SUFFERING',  'ON_TURN_STARTED',          'PLAYER_IS_MAJOR_CIV_KNOWN_10_TURNS'		                ),
			('AGENDA_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_STANDING_ARMY',	            'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	      null,                       'REQSET_RWB_LADY_OF_THE_FOUR_TUPUS_STANDING_ARMY'		                ),
			('AGENDA_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_WARMONGER',	                'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	      null,                       'REQSET_RWB_LADY_OF_THE_FOUR_TUPUS_WARMONGER'		                    ),
			('AGENDA_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_STANDING_ARMY_PLUS_WARMONGER',	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	      null,                       'REQSET_RWB_LADY_OF_THE_FOUR_TUPUS_STANDING_ARMY_PLUS_WARMONGER'		);

-----------------------------------------------	
-- ModifierStrings

-- For each Modifier you have (typically, two for diplomacy - a happy and an unhappy instance), you will need an entry with the Context and Text values, as below. The 'Text' value, in particular, is a special reference that will present the diplomatic reason behind the reaction presented.

-- It is recommended not to amend these entries, except to ensure the ModifierId values match the ones you are configuring.
-----------------------------------------------	
INSERT OR REPLACE INTO ModifierStrings
			(ModifierId,								                                Context,	    Text								)
VALUES		('AGENDA_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_TRADING_ALLY',	                'Sample',	    'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	),
			('AGENDA_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_HOLY_BUILDER',	                'Sample',	    'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	),
			('AGENDA_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_STANDING_ARMY',	            'Sample',	    'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	),
			('AGENDA_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_WARMONGER',	                'Sample',	    'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	),
			('AGENDA_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_STANDING_ARMY_PLUS_WARMONGER',	'Sample',	    'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT OR REPLACE INTO ModifierArguments
			(ModifierId,							                                        Name,							            Value												)
VALUES		('AGENDA_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_TRADING_ALLY',	                    'TradeBonus',					            2													),
			('AGENDA_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_TRADING_ALLY',	                    'NoTradePenalty',				            0	),
			('AGENDA_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_TRADING_ALLY',	                    'BonusPerRoute',				            'true'	),
			('AGENDA_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_TRADING_ALLY',	                    'OnlyInboundTrade',				            'true'	),
			-- Explanation in parenthesis
			('AGENDA_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_TRADING_ALLY',	                    'StatementKey',					            'LOC_DIPLO_KUDO_LEADER_RWB_LADY_OF_THE_FOUR_TUPUS_REASON_TRADE'	),
			-- Formal description (modifier)
			('AGENDA_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_TRADING_ALLY',	                    'SimpleModifierDescription',	            'LOC_DIPLO_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_TRADE'				),
	
			('AGENDA_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_HOLY_BUILDER',	                    'TargetHolySitePercentage',					50													),
			('AGENDA_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_HOLY_BUILDER',	                    'DisappointingHolySitePercentage',			25													),
			('AGENDA_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_HOLY_BUILDER',	                    'TargetLargeCityPercentage',				100													),
			('AGENDA_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_HOLY_BUILDER',	                    'DisappointingLargeCityPercentage',			0													),
			('AGENDA_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_HOLY_BUILDER',	                    'MaxPositiveModifier',						6													),
			('AGENDA_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_HOLY_BUILDER',	                    'MaxNegativeModifier',						-6													),
			('AGENDA_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_HOLY_BUILDER',	                    'StatementKey',					            'LOC_DIPLO_KUDO_LEADER_RWB_LADY_OF_THE_FOUR_TUPUS_REASON_HOLYBUILDER'		),
			('AGENDA_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_HOLY_BUILDER',	                    'SimpleModifierDescription',	            'LOC_DIPLO_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_HOLYBUILDER'				),

            ('AGENDA_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_STANDING_ARMY',	                'InitialValue',					            7													),
            ('AGENDA_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_STANDING_ARMY',	                'IncrementValue',				            1													),
            ('AGENDA_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_STANDING_ARMY',	                'IncrementTurns',				            10													),
            ('AGENDA_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_STANDING_ARMY',	                'MaxValue',						            12													),
            ('AGENDA_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_STANDING_ARMY',	                'StatementKey',					            'LOC_DIPLO_WARNING_LEADER_RWB_LADY_OF_THE_FOUR_TUPUS_REASON_ARMY'		),
            ('AGENDA_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_STANDING_ARMY',	                'SimpleModifierDescription',	            'LOC_DIPLO_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_ARMY'				),
            
            ('AGENDA_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_WARMONGER',	                    'InitialValue',					            -10													),
            ('AGENDA_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_WARMONGER',	                    'IncrementValue',				            1													),
            ('AGENDA_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_WARMONGER',	                    'IncrementTurns',				            5													),
            ('AGENDA_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_WARMONGER',	                    'MaxValue',						            0													),
            ('AGENDA_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_WARMONGER',	                    'StatementKey',					            'LOC_DIPLO_WARNING_LEADER_RWB_LADY_OF_THE_FOUR_TUPUS_REASON_WAR'		),
            ('AGENDA_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_WARMONGER',	                    'SimpleModifierDescription',	            'LOC_DIPLO_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_WAR'				),
            
            ('AGENDA_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_STANDING_ARMY_PLUS_WARMONGER',	    'InitialValue',					            -4													),
            ('AGENDA_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_STANDING_ARMY_PLUS_WARMONGER',	    'StatementKey',					            'LOC_DIPLO_WARNING_LEADER_RWB_LADY_OF_THE_FOUR_TUPUS_REASON_WAR_PLUS_ARMY'		),
            ('AGENDA_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_STANDING_ARMY_PLUS_WARMONGER',	    'SimpleModifierDescription',	            'LOC_DIPLO_MODIFIER_RWB_LADY_OF_THE_FOUR_TUPUS_WAR_PLUS_ARMY'				);
			
-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT OR REPLACE INTO RequirementSets
			(RequirementSetId,				                                    RequirementSetType			)
VALUES		('REQSET_RWB_LADY_OF_THE_FOUR_TUPUS_STANDING_ARMY',                 'REQUIREMENTSET_TEST_ALL'	),
			('REQSET_RWB_LADY_OF_THE_FOUR_TUPUS_WARMONGER',                     'REQUIREMENTSET_TEST_ALL'	),
			('REQSET_RWB_LADY_OF_THE_FOUR_TUPUS_STANDING_ARMY_PLUS_WARMONGER',  'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT OR REPLACE INTO RequirementSetRequirements
			(RequirementSetId,				                                        RequirementId						        )
VALUES		('REQSET_RWB_LADY_OF_THE_FOUR_TUPUS_STANDING_ARMY',		                'REQUIRES_MAJOR_CIV_OPPONENT'		        ),
			('REQSET_RWB_LADY_OF_THE_FOUR_TUPUS_STANDING_ARMY',		                'REQUIRES_MET_10_TURNS_AGO'			        ),
			('REQSET_RWB_LADY_OF_THE_FOUR_TUPUS_STANDING_ARMY',		                'REQUIRES_HAS_HIGH_STANDING_ARMY'			),
			
			('REQSET_RWB_LADY_OF_THE_FOUR_TUPUS_WARMONGER',		                    'REQUIRES_MAJOR_CIV_OPPONENT'		        ),
			('REQSET_RWB_LADY_OF_THE_FOUR_TUPUS_WARMONGER',		                    'REQUIRES_MET_10_TURNS_AGO'			        ),
			('REQSET_RWB_LADY_OF_THE_FOUR_TUPUS_WARMONGER',		                    'REQUIRES_PLAYER_DECLARED_WAR'			    ),
			
			('REQSET_RWB_LADY_OF_THE_FOUR_TUPUS_STANDING_ARMY_PLUS_WARMONGER',		'REQUIRES_MAJOR_CIV_OPPONENT'		        ),
			('REQSET_RWB_LADY_OF_THE_FOUR_TUPUS_STANDING_ARMY_PLUS_WARMONGER',		'REQUIRES_MET_10_TURNS_AGO'			        ),
			('REQSET_RWB_LADY_OF_THE_FOUR_TUPUS_STANDING_ARMY_PLUS_WARMONGER',		'REQUIRES_HAS_HIGH_STANDING_ARMY'			),
			('REQSET_RWB_LADY_OF_THE_FOUR_TUPUS_STANDING_ARMY_PLUS_WARMONGER',		'REQUIRES_PLAYER_DECLARED_WAR'			    );
