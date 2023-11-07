-----------------------------------------------
-- Types

-- This inserts the leader reference into the primary Data Types table as a playable Leader. This is mandatory. The string listed under 'Type' must be used throughout the mod when referring to the LeaderType.

-- It is customary for this to take the following format: LEADER_PREFIX_LEADERNAME

-- PREFIX: A 'unique', brief string of characters - often derived from the modder's initials, name or other alias (e.g. MC, MATT or MYALIAS). This is used to differentiate from other mods, primarily.
-- LEADERNAME: The name of the leader themselves (e.g. CLEOPATRA, GANDHI or VICTORIA).
-----------------------------------------------

INSERT OR REPLACE INTO	Types
			(Type,					Kind			)
VALUES		('LEADER_RWB_LADY_OF_THE_FOUR_TUPUS',	'KIND_LEADER'	);
		
-----------------------------------------------
-- Leaders

-- This defines the LeaderType itself, such that the leader exists as an entity alongside the other leaders.

-- LeaderType: Must match the string defined above for Type.
-- Name: This locally-defined value appears in Leader_Localisation.sql and will be used as the display string for the leader's name.
-- InheritFrom: All base-game leaders have this value set. You can leave this unchanged.
-- SceneLayers: Similar to the above, this matches the other base-game leaders. This can be left unchanged.
-----------------------------------------------

INSERT OR REPLACE INTO	Leaders
			(LeaderType,			Name,							InheritFrom,		SceneLayers		)
VALUES		('LEADER_RWB_LADY_OF_THE_FOUR_TUPUS',	'LOC_LEADER_RWB_LADY_OF_THE_FOUR_TUPUS_NAME',	'LEADER_DEFAULT', 	4				);

-----------------------------------------------
-- CivilizationLeaders

-- This ties the LeaderType (defined above) to the CivilizationType (defined in Civilization_Config.sql). In this example, we're using our new, custom civilization - but any valid civilization is accepted here.

-- The CapitalName field can have a different value - but typically for the first leader you are creating (alongside your custom civilization), you can reference the first CityName reference, defined in Civilization_Config.sql (specifically, the CityNames table).
-----------------------------------------------

INSERT OR REPLACE INTO	CivilizationLeaders
			(CivilizationType,				    LeaderType,				CapitalName					)
VALUES		('CIVILIZATION_RWB_NORTECHICO',		'LEADER_RWB_LADY_OF_THE_FOUR_TUPUS',	'LOC_CITY_NAME_RWB_NORTECHICO_1'	);
		
-----------------------------------------------
-- LeaderQuotes

-- This 'flavour' item ties the Quote - which appears in the Civilopedia on the Leader page - to the custom leader. As with all text entries, the LOC_PEDIA_LEADERS_PAGE_RWB_LADY_OF_THE_FOUR_TUPUS_QUOTE string is defined in Leader_Localisation.sql.
-----------------------------------------------

INSERT OR REPLACE INTO	LeaderQuotes
			(LeaderType,			Quote										)
VALUES		('LEADER_RWB_LADY_OF_THE_FOUR_TUPUS',	'LOC_PEDIA_LEADERS_PAGE_RWB_LADY_OF_THE_FOUR_TUPUS_QUOTE'	);

-----------------------------------------------
-- CityNames

-- The below section associates our locally-defined custom civilization's CityNames to the specific leader we are configuring.

-- If this will be the only leader of this civilization, this isn't strictly necessary - as it will inherit from the list configured in Civilization_Config.sql.

-- However, I have left this here to illustrate how variations can be achieved on a per-leader basis within a civilization.
-----------------------------------------------

INSERT OR REPLACE INTO	CityNames
			(CivilizationType,				    LeaderType,				                SortIndex,	CityName						)
VALUES		('CIVILIZATION_RWB_NORTECHICO',		'LEADER_RWB_LADY_OF_THE_FOUR_TUPUS',	-1,			'LOC_CITY_NAME_RWB_NORTECHICO_1'		),
			('CIVILIZATION_RWB_NORTECHICO',		'LEADER_RWB_LADY_OF_THE_FOUR_TUPUS',	-1,			'LOC_CITY_NAME_RWB_NORTECHICO_2'		),
			('CIVILIZATION_RWB_NORTECHICO',		'LEADER_RWB_LADY_OF_THE_FOUR_TUPUS',	-1,			'LOC_CITY_NAME_RWB_NORTECHICO_3'		),
			('CIVILIZATION_RWB_NORTECHICO',		'LEADER_RWB_LADY_OF_THE_FOUR_TUPUS',	-1,			'LOC_CITY_NAME_RWB_NORTECHICO_4'		),
			('CIVILIZATION_RWB_NORTECHICO',		'LEADER_RWB_LADY_OF_THE_FOUR_TUPUS',	-1,			'LOC_CITY_NAME_RWB_NORTECHICO_5'		),
			('CIVILIZATION_RWB_NORTECHICO',		'LEADER_RWB_LADY_OF_THE_FOUR_TUPUS',	-1,			'LOC_CITY_NAME_RWB_NORTECHICO_6'		),
			('CIVILIZATION_RWB_NORTECHICO',		'LEADER_RWB_LADY_OF_THE_FOUR_TUPUS',	-1,			'LOC_CITY_NAME_RWB_NORTECHICO_7'		),
			('CIVILIZATION_RWB_NORTECHICO',		'LEADER_RWB_LADY_OF_THE_FOUR_TUPUS',	-1,			'LOC_CITY_NAME_RWB_NORTECHICO_8'		),
			('CIVILIZATION_RWB_NORTECHICO',		'LEADER_RWB_LADY_OF_THE_FOUR_TUPUS',	-1,			'LOC_CITY_NAME_RWB_NORTECHICO_9'		),
			('CIVILIZATION_RWB_NORTECHICO',		'LEADER_RWB_LADY_OF_THE_FOUR_TUPUS',	-1,			'LOC_CITY_NAME_RWB_NORTECHICO_10'		),
			('CIVILIZATION_RWB_NORTECHICO',		'LEADER_RWB_LADY_OF_THE_FOUR_TUPUS',	-1,			'LOC_CITY_NAME_RWB_NORTECHICO_11'		),
			('CIVILIZATION_RWB_NORTECHICO',		'LEADER_RWB_LADY_OF_THE_FOUR_TUPUS',	-1,			'LOC_CITY_NAME_RWB_NORTECHICO_12'		),
			('CIVILIZATION_RWB_NORTECHICO',		'LEADER_RWB_LADY_OF_THE_FOUR_TUPUS',	-1,			'LOC_CITY_NAME_RWB_NORTECHICO_13'		),
			('CIVILIZATION_RWB_NORTECHICO',		'LEADER_RWB_LADY_OF_THE_FOUR_TUPUS',	-1,			'LOC_CITY_NAME_RWB_NORTECHICO_14'		),
			('CIVILIZATION_RWB_NORTECHICO',		'LEADER_RWB_LADY_OF_THE_FOUR_TUPUS',	-1,			'LOC_CITY_NAME_RWB_NORTECHICO_15'		);

-----------------------------------------------	
-- AiListTypes
-----------------------------------------------	
INSERT INTO AiListTypes
            (ListType)
VALUES	    ('RWB_LADY_OF_THE_FOUR_TUPUS_Civics'),
            ('RWB_LADY_OF_THE_FOUR_TUPUS_Techs'),
            ('RWB_LADY_OF_THE_FOUR_TUPUS_Buildings'),
            ('RWB_LADY_OF_THE_FOUR_TUPUS_Districts'),
            ('RWB_LADY_OF_THE_FOUR_TUPUS_PseudoYields'),
            ('RWB_LADY_OF_THE_FOUR_TUPUS_Yields'),
            ('RWB_LADY_OF_THE_FOUR_TUPUS_Units'),
            ('RWB_LADY_OF_THE_FOUR_TUPUS_FavorCultureVictory'),
            ('RWB_LADY_OF_THE_FOUR_TUPUS_Diplomacy'),
            ('RWB_LADY_OF_THE_FOUR_TUPUS_PlotEvaluation');

-----------------------------------------------	
-- AiLists
-----------------------------------------------	
INSERT INTO AiLists
            (ListType,								                AgendaType,								        System)
VALUES	    ('RWB_LADY_OF_THE_FOUR_TUPUS_Civics',					'TRAIT_AGENDA_RWB_LADY_OF_THE_FOUR_TUPUS',		'Civics'),
            ('RWB_LADY_OF_THE_FOUR_TUPUS_Techs',					'TRAIT_AGENDA_RWB_LADY_OF_THE_FOUR_TUPUS',		'Technologies'),
            ('RWB_LADY_OF_THE_FOUR_TUPUS_Buildings',				'TRAIT_AGENDA_RWB_LADY_OF_THE_FOUR_TUPUS',		'Buildings'),
            ('RWB_LADY_OF_THE_FOUR_TUPUS_Districts',				'TRAIT_AGENDA_RWB_LADY_OF_THE_FOUR_TUPUS',		'Districts'),
            ('RWB_LADY_OF_THE_FOUR_TUPUS_PseudoYields',			    'TRAIT_AGENDA_RWB_LADY_OF_THE_FOUR_TUPUS',		'PseudoYields'),
            ('RWB_LADY_OF_THE_FOUR_TUPUS_Yields',					'TRAIT_AGENDA_RWB_LADY_OF_THE_FOUR_TUPUS',		'Yields'),
            ('RWB_LADY_OF_THE_FOUR_TUPUS_Units',					'TRAIT_AGENDA_RWB_LADY_OF_THE_FOUR_TUPUS',		'Units'),
            ('RWB_LADY_OF_THE_FOUR_TUPUS_FavorCultureVictory',	    'TRAIT_AGENDA_RWB_LADY_OF_THE_FOUR_TUPUS',		'Strategies'),
            ('RWB_LADY_OF_THE_FOUR_TUPUS_Diplomacy',				'TRAIT_AGENDA_RWB_LADY_OF_THE_FOUR_TUPUS',		'DiplomaticActions');
-----------------------------------------------	
-- AiFavoredItems
-----------------------------------------------
-- YIELDS
INSERT INTO AiFavoredItems
            (ListType,							                Favored,	    Item)
VALUES	    ('RWB_LADY_OF_THE_FOUR_TUPUS_Yields',				1,			    'YIELD_FAITH'),						        -- Civilization
            ('RWB_LADY_OF_THE_FOUR_TUPUS_Yields',				1,			    'YIELD_FOOD'),				                -- Civilization
            ('RWB_LADY_OF_THE_FOUR_TUPUS_Yields',				1,			    'YIELD_CULTURE'),				            -- Leader
            ('RWB_LADY_OF_THE_FOUR_TUPUS_PseudoYields',		    1,			    'PSEUDOYIELD_GPP_PROPHET'),			        -- Civilization
            ('RWB_LADY_OF_THE_FOUR_TUPUS_PseudoYields',		    1,			    'PSEUDOYIELD_UNIT_TRADE'),			        -- Civilization
            ('RWB_LADY_OF_THE_FOUR_TUPUS_PseudoYields',		    1,			    'PSEUDOYIELD_UNIT_RELIGIOUS'),			    -- Leader
            ('RWB_LADY_OF_THE_FOUR_TUPUS_PseudoYields',		    1,			    'PSEUDOYIELD_CITY_POPULATION'),             -- Civilization
            ('RWB_LADY_OF_THE_FOUR_TUPUS_PseudoYields',		    1,			    'PSEUDOYIELD_CIVIC');			            -- Leader

-- UNITS
INSERT INTO AiFavoredItems
            (ListType,							                Favored,	Item)
VALUES	    ('RWB_LADY_OF_THE_FOUR_TUPUS_Units',				1,			'UNIT_GREAT_PROPHET'),		                -- Leader
            ('RWB_LADY_OF_THE_FOUR_TUPUS_Units',				1,			'UNIT_TRADER'),	                            -- Leader
            ('RWB_LADY_OF_THE_FOUR_TUPUS_Units',				1,			'UNIT_RWB_NORTECHICO_APAQALLINMI');			-- Civilization

-- BUILDINGS & DISTRICTS
INSERT INTO AiFavoredItems
            (ListType,							                Favored,	Item)
VALUES	    ('RWB_LADY_OF_THE_FOUR_TUPUS_Buildings',			1,			'BUILDING_RWB_NORTECHICO_SUNKEN_PLAZA'),	-- Civilization
            ('RWB_LADY_OF_THE_FOUR_TUPUS_Buildings',			1,			'BUILDING_RWB_NORTECHICO_HUANCA'),			-- Civilization
            ('RWB_LADY_OF_THE_FOUR_TUPUS_Buildings',			1,			'BUILDING_RWB_NORTECHICO_PIRAMIDE'),		-- Civilization
            ('RWB_LADY_OF_THE_FOUR_TUPUS_Buildings',			1,			'BUILDING_MONUMENT'),			            -- Leader
            ('RWB_LADY_OF_THE_FOUR_TUPUS_Districts',			1,			'DISTRICT_THEATER'),			            -- Leader
            ('RWB_LADY_OF_THE_FOUR_TUPUS_Districts',			1,			'DISTRICT_HOLY_SITE'),			            -- Civilization
            ('RWB_LADY_OF_THE_FOUR_TUPUS_Districts',			1,			'DISTRICT_RWB_NORTECHICO_CIUDAD_SAGRADA'),	-- Civilization
            ('RWB_LADY_OF_THE_FOUR_TUPUS_Districts',			0,			'DISTRICT_ENCAMPMENT');			            -- Civilization

-- WONDERS
INSERT INTO AiFavoredItems
            (ListType,							                Favored,	Item)
VALUES	    ('RWB_LADY_OF_THE_FOUR_TUPUS_Buildings',			1,			'BUILDING_GREAT_ZIMBABWE'),	                -- Leader
            ('RWB_LADY_OF_THE_FOUR_TUPUS_Buildings',			1,			'BUILDING_PYRAMIDS'),			            -- Civilization
            ('RWB_LADY_OF_THE_FOUR_TUPUS_Buildings',			1,			'BUILDING_COLOSSUS'),	                    -- Leader
            ('RWB_LADY_OF_THE_FOUR_TUPUS_Buildings',			1,			'BUILDING_BIG_BEN');	                    -- Civilization
INSERT INTO AiFavoredItems
            (ListType,							                Favored,	Item)
SELECT       'RWB_LADY_OF_THE_FOUR_TUPUS_Buildings',			1,			'BUILDING_UNIVERSITY_SANKORE'               -- Leader
WHERE EXISTS (SELECT ModifierType FROM DynamicModifiers WHERE ModifierType = 'MODIFIER_SINGLE_CITY_ADJUST_IDENTITY_PER_TURN');	            

-- CIVICS & TECHS
INSERT INTO AiFavoredItems
            (ListType,						                Item,							    Favored)
VALUES	    ('RWB_LADY_OF_THE_FOUR_TUPUS_Civics',			'CIVIC_CRAFTSMANSHIP',		        1), -- Civilization
            ('RWB_LADY_OF_THE_FOUR_TUPUS_Civics',			'CIVIC_POLITICAL_PHILOSOPHY',	    1), -- Leader
            ('RWB_LADY_OF_THE_FOUR_TUPUS_Civics',			'CIVIC_THEOLOGY',			        1), -- Leader
            ('RWB_LADY_OF_THE_FOUR_TUPUS_Civics',			'CIVIC_DRAMA_AND_POETRY',			1), -- Civilization
            ('RWB_LADY_OF_THE_FOUR_TUPUS_Civics',			'CIVIC_ASTROLOGY',			        1), -- Leader
            ('RWB_LADY_OF_THE_FOUR_TUPUS_Civics',			'CIVIC_HUMANISM',			        1), -- Leader
            ('RWB_LADY_OF_THE_FOUR_TUPUS_Civics',			'CIVIC_CRAFTSMANSHIP',		        1), -- Civilization
            ('RWB_LADY_OF_THE_FOUR_TUPUS_Civics',			'CIVIC_FEUDALISM',				    1), -- Civilization
            ('RWB_LADY_OF_THE_FOUR_TUPUS_Civics',			'CIVIC_EXPLORATION',			    1), -- Civilization
            ('RWB_LADY_OF_THE_FOUR_TUPUS_Techs',			'TECH_CURRENCY',			        1), -- Leader
            ('RWB_LADY_OF_THE_FOUR_TUPUS_Techs',			'TECH_ASTROLOGY',				    1), -- Civilization
            ('RWB_LADY_OF_THE_FOUR_TUPUS_Techs',			'TECH_BANKING',		                1), -- Leader
            ('RWB_LADY_OF_THE_FOUR_TUPUS_Techs',			'TECH_RADIO',			            1), -- Civilization
            ('RWB_LADY_OF_THE_FOUR_TUPUS_Techs',			'TECH_ECONOMICS',		            1); -- Leader

-- VICTORIES
INSERT INTO AiFavoredItems
            (ListType,									                Item,									Value)
VALUES	    ('RWB_LADY_OF_THE_FOUR_TUPUS_FavorCultureVictory',		    'VICTORY_STRATEGY_CULTURAL_VICTORY',	-2);

-- DIPLO ACTIONS
INSERT INTO AiFavoredItems
            (ListType,									                Item,									Favored)
VALUES	    ('RWB_LADY_OF_THE_FOUR_TUPUS_Diplomacy',					'DIPLOACTION_MAKE_PEACE',		        1),
            ('RWB_LADY_OF_THE_FOUR_TUPUS_Diplomacy',					'DIPLOACTION_OPEN_BORDERS',	            1),
            ('RWB_LADY_OF_THE_FOUR_TUPUS_Diplomacy',					'DIPLOACTION_DECLARE_TERRITORIAL_WAR',	1);