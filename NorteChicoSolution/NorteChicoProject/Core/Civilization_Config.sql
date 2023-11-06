-----------------------------------------------
-- Types
-----------------------------------------------

INSERT OR REPLACE INTO	Types
			(Type,							Kind					)
VALUES		('CIVILIZATION_RWB_NORTECHICO',		'KIND_CIVILIZATION'		);
		
-----------------------------------------------
-- Civilizations
-----------------------------------------------

INSERT OR REPLACE INTO	Civilizations
			(
			CivilizationType,
			Name,
			Description,
			Adjective,
			StartingCivilizationLevelType,
			RandomCityNameDepth,
			Ethnicity
			)

VALUES		(
			'CIVILIZATION_RWB_NORTECHICO', --CivilizationType
			'LOC_CIVILIZATION_RWB_NORTECHICO_NAME', -- Name
			'LOC_CIVILIZATION_RWB_NORTECHICO_DESCRIPTION', -- Description
			'LOC_CIVILIZATION_RWB_NORTECHICO_ADJECTIVE', -- Adjective
			'CIVILIZATION_LEVEL_FULL_CIV', -- StartingCivilizationLevelType
			5, -- RandomCityNameDepth
			'ETHNICITY_SOUTHAM' -- Ethnicity
			);

--------
---MC---
--------

-----------------------------------------------
-- NamedRivers
-----------------------------------------------
CREATE TABLE IF NOT EXISTS NamedRivers 
    (
        NamedRiverType TEXT,
        Name TEXT
    );

REPLACE INTO NamedRivers
		(NamedRiverType,								Name											)
VALUES	('NAMED_RIVER_RWB_FORTALEZA',					'LOC_NAMED_RIVER_RWB_FORTALEZA'					),
		('NAMED_RIVER_RWB_PATIVILCA',					'LOC_NAMED_RIVER_RWB_PATIVILCA'					),
		('NAMED_RIVER_RWB_SUPE',						'LOC_NAMED_RIVER_RWB_SUPE'						),
		('NAMED_RIVER_RWB_ICA',						    'LOC_NAMED_RIVER_RWB_ICA'						),
		('NAMED_RIVER_RWB_SANTA',						'LOC_NAMED_RIVER_RWB_SANTA'						),
		('NAMED_RIVER_RWB_CHUBUT',						'LOC_NAMED_RIVER_RWB_CHUBUT'						),
		('NAMED_RIVER_RWB_HUAURA',						'LOC_NAMED_RIVER_RWB_HUAURA'					);

-----------------------------------------------
-- NamedRiverCivilizations
-----------------------------------------------
CREATE TABLE IF NOT EXISTS NamedRiverCivilizations
(
    CivilizationType TEXT,
    NamedRiverType TEXT
);

INSERT INTO NamedRiverCivilizations
		(CivilizationType,								NamedRiverType									)
VALUES	('CIVILIZATION_RWB_NORTECHICO',					'NAMED_RIVER_RWB_FORTALEZA'						),
		('CIVILIZATION_RWB_NORTECHICO',					'NAMED_RIVER_RWB_PATIVILCA'						),
		('CIVILIZATION_RWB_NORTECHICO',					'NAMED_RIVER_RWB_SUPE'							),
		('CIVILIZATION_RWB_NORTECHICO',					'NAMED_RIVER_RWB_ICA'							),
		('CIVILIZATION_RWB_NORTECHICO',					'NAMED_RIVER_RWB_SANTA'							),
		('CIVILIZATION_RWB_NORTECHICO',					'NAMED_RIVER_RWB_CHUBUT'							),
		('CIVILIZATION_RWB_NORTECHICO',					'NAMED_RIVER_RWB_HUAURA'						);

-----------------------------------------------
-- NamedLakes
-----------------------------------------------
CREATE TABLE IF NOT EXISTS NamedLakes
(
    NamedLakeType TEXT,
    Name TEXT
);

REPLACE INTO NamedLakes
		(NamedLakeType,									Name											)
VALUES	('NAMED_LAKE_RWB_WINAYMARKA',					'LOC_NAMED_LAKE_RWB_WINAYMARKA'					),
		('NAMED_LAKE_RWB_LAGO_POOPO',					'LOC_NAMED_LAKE_RWB_LAGO_POOPO'					),
		('NAMED_LAKE_RWB_LAGO_URU_URU',					'LOC_NAMED_LAKE_RWB_LAGO_URU_URU'				),
		('NAMED_LAKE_RWB_LAGO_CHINCHAYCOCHA',			'LOC_NAMED_LAKE_RWB_LAGO_CHINCHAYCOCHA'			),
		('NAMED_LAKE_RWB_LAGO_SALAR_DE_ARIZARO',		'LOC_NAMED_LAKE_RWB_LAGO_SALAR_DE_ARIZARO'		);

-----------------------------------------------
-- NamedLakeCivilizations
-----------------------------------------------
CREATE TABLE IF NOT EXISTS NamedLakeCivilizations
(
    CivilizationType TEXT,
    NamedLakeType TEXT
);

INSERT INTO NamedLakeCivilizations
		(CivilizationType,								NamedLakeType									)
VALUES	('CIVILIZATION_RWB_NORTECHICO',					'NAMED_LAKE_LAKE_TITIQAQA'						),
		('CIVILIZATION_RWB_NORTECHICO',					'NAMED_LAKE_RWB_WINAYMARKA'						),
		('CIVILIZATION_RWB_NORTECHICO',					'NAMED_LAKE_RWB_LAGO_POOPO'						),
		('CIVILIZATION_RWB_NORTECHICO',					'NAMED_LAKE_RWB_LAGO_URU_URU'					),
		('CIVILIZATION_RWB_NORTECHICO',					'NAMED_LAKE_RWB_LAGO_CHINCHAYCOCHA'				),
		('CIVILIZATION_RWB_NORTECHICO',					'NAMED_LAKE_RWB_LAGO_SALAR_DE_ARIZARO'			);
		
-----------------------------------------------
-- NamedSeas
-----------------------------------------------
CREATE TABLE IF NOT EXISTS NamedSeas
(
    NamedSeaType TEXT,
    Name TEXT
);

REPLACE INTO NamedSeas
		(NamedSeaType,									Name											)
VALUES	('NAMED_SEA_RWB_MAR_DE_GRAU',					'LOC_NAMED_SEA_RWB_MAR_DE_GRAU'					);

-----------------------------------------------
-- NamedSeaCivilizations
-----------------------------------------------
CREATE TABLE IF NOT EXISTS NamedSeaCivilizations
(
    CivilizationType TEXT,
    NamedSeaType TEXT
);

INSERT INTO NamedSeaCivilizations
		(CivilizationType,								NamedSeaType									)
VALUES	('CIVILIZATION_RWB_NORTECHICO',					'NAMED_SEA_RWB_MAR_DE_GRAU'						);

-----------------------------------------------
-- NamedDesert
-----------------------------------------------
CREATE TABLE IF NOT EXISTS NamedDeserts
(
    NamedDesertType TEXT,
    Name TEXT
);

REPLACE INTO NamedDeserts
        (NamedDesertType,								Name											)
VALUES	('NAMED_DESERT_SECHURA',		            'LOC_NAMED_DESERT_RWB_WAYRA_DE_SECHURA'		);

-----------------------------------------------
-- NamedDesertCivilizations
-----------------------------------------------
CREATE TABLE IF NOT EXISTS NamedDesertCivilizations
(
    CivilizationType TEXT,
    NamedDesertType TEXT
);

INSERT INTO NamedDesertCivilizations
		(CivilizationType,								NamedDesertType									)
VALUES	('CIVILIZATION_RWB_NORTECHICO',					'NAMED_DESERT_ATACAMA'							),
    	('CIVILIZATION_RWB_NORTECHICO',					'NAMED_DESERT_SECHURA'							);

-----------------------------------------------
-- NamedMountains
-----------------------------------------------
CREATE TABLE IF NOT EXISTS NamedMountains
(
    NamedMountainType TEXT,
    Name TEXT
);

REPLACE INTO NamedMountains
		(NamedMountainType,								Name											)
VALUES	('NAMED_MOUNTAIN_RWB_CORDILLERA_ANDES',		    'LOC_NAMED_MOUNTAIN_RWB_CORDILLERA_ANDES'		),
		('NAMED_MOUNTAIN_RWB_CERRO_BLANCO',		        'LOC_NAMED_MOUNTAIN_RWB_CERRO_BLANCO'	),
		('NAMED_MOUNTAIN_RWB_CERRO_MORRO_SOLAR',		'LOC_NAMED_MOUNTAIN_RWB_CERRO_MORRO_SOLAR'	),
		('NAMED_MOUNTAIN_RWB_CERRO_EL_TORO',	        'LOC_NAMED_MOUNTAIN_RWB_CERRO_EL_TORO'	),
		('NAMED_MOUNTAIN_RWB_CERRO_DE_PASCO',	        'LOC_NAMED_MOUNTAIN_RWB_CERRO_DE_PASCO'	);

-----------------------------------------------
-- NamedMountainCivilizations
-----------------------------------------------
CREATE TABLE IF NOT EXISTS NamedMountainCivilizations
(
    CivilizationType TEXT,
    NamedMountainType TEXT
);

INSERT INTO NamedMountainCivilizations
		(CivilizationType,								NamedMountainType								)
VALUES	('CIVILIZATION_RWB_NORTECHICO',					'NAMED_MOUNTAIN_RWB_CORDILLERA_ANDES'			),
		('CIVILIZATION_RWB_NORTECHICO',					'NAMED_MOUNTAIN_RWB_CERRO_BLANCO'		),
		('CIVILIZATION_RWB_NORTECHICO',					'NAMED_MOUNTAIN_RWB_CERRO_MORRO_SOLAR'		),
		('CIVILIZATION_RWB_NORTECHICO',					'NAMED_MOUNTAIN_RWB_CERRO_EL_TORO'		),
		('CIVILIZATION_RWB_NORTECHICO',					'NAMED_MOUNTAIN_RWB_CERRO_DE_PASCO'		);

-----------------------------------------------
-- NamedVolcanoes
-----------------------------------------------
CREATE TABLE IF NOT EXISTS NamedVolcanoes
(
    NamedVolcanoType TEXT,
    Name TEXT
);

REPLACE INTO NamedVolcanoes
		(NamedVolcanoType,								Name											)
VALUES	('NAMED_VOLCANO_RWB_BARROSO',					'LOC_NAMED_VOLCANO_RWB_BARROSO'				),
		('NAMED_VOLCANO_RWB_CHIMBOTE',					'LOC_NAMED_VOLCANO_RWB_CHIMBOTE'				),
		('NAMED_VOLCANO_RWB_SANPEDRO',					'LOC_NAMED_VOLCANO_RWB_SANPEDRO'				),
		('NAMED_VOLCANO_RWB_SABANCAYA',					'LOC_NAMED_VOLCANO_RWB_SABANCAYA'				),
		('NAMED_VOLCANO_RWB_HUARMEY',					'LOC_NAMED_VOLCANO_RWB_HUARMEY'				);

-----------------------------------------------
-- NamedVolcanoCivilizations
-----------------------------------------------
CREATE TABLE IF NOT EXISTS NamedVolcanoCivilizations
(
    CivilizationType TEXT,
    NamedVolcanoType TEXT
);

INSERT INTO NamedVolcanoCivilizations
		(CivilizationType,								NamedVolcanoType							)
VALUES	('CIVILIZATION_RWB_NORTECHICO',					'NAMED_VOLCANO_RWB_BARROSO'				),
		('CIVILIZATION_RWB_NORTECHICO',					'NAMED_VOLCANO_RWB_CHIMBOTE'			),
		('CIVILIZATION_RWB_NORTECHICO',					'NAMED_VOLCANO_RWB_SANPEDRO'			),
		('CIVILIZATION_RWB_NORTECHICO',					'NAMED_VOLCANO_RWB_SABANCAYA'			),
		('CIVILIZATION_RWB_NORTECHICO',					'NAMED_VOLCANO_RWB_HUARMEY'				);

--------
---MC---
--------

-----------------------------------------------
-- NamedMountains

-- This list of locally-referenced values ensures that flavour text is displayed wherever a named mountain range has been linked to your custom civilization.

-- All Name references have a corresponding entry in Civilization_Localisation.sql.

-- This is an optional section and only required if there are new, custom mountain range names defined in the NamedMountainCivilizations, below.

-- Compatibility: NamedMountains were introduced in the Gathering Storm expansion (Expansion2). This section should only be used where there is an intention to develop a mod with a dependency on Gathering Storm (Expansion2).
-----------------------------------------------



-- GS NAMED ZONES ARE CURRENTLY BROKEN, EVEN WITHOUT THE TABLE CREATION IT'S WEIRD AF !





/*

CREATE TABLE IF NOT EXISTS NamedMountains
(
    NamedMountainType TEXT not null
        primary key,
    Name           TEXT not null
);
INSERT OR IGNORE INTO NamedMountains
		(NamedMountainType,							Name											)
VALUES	('NAMED_MOUNTAIN_CORDILLERA_NEOVOLCANICA',	'LOC_NAMED_MOUNTAIN_CORDILLERA_NEOVOLCANICA'	),
		('NAMED_MOUNTAIN_MEXICAN_PLATEAU',			'LOC_NAMED_MOUNTAIN_MEXICAN_PLATEAU'			),
		('NAMED_MOUNTAIN_SIERRA_MADRE_OCCIDENTAL',	'LOC_NAMED_MOUNTAIN_SIERRA_MADRE_OCCIDENTAL'	),
		('NAMED_MOUNTAIN_SIERRA_MADRE_DEL_SUR',		'LOC_NAMED_MOUNTAIN_SIERRA_MADRE_DEL_SUR'		),
		('NAMED_MOUNTAIN_SIERRA_MADRE_ORIENTAL',	'LOC_NAMED_MOUNTAIN_SIERRA_MADRE_ORIENTAL'		),
		('NAMED_MOUNTAIN_CHIAPAS',					'LOC_NAMED_MOUNTAIN_CHIAPAS'					),
		('NAMED_MOUNTAIN_MONTANAS_GUATEMALA',		'LOC_NAMED_MOUNTAIN_MONTANAS_GUATEMALA'			);

-----------------------------------------------
-- NamedMountainCivilizations

-- This ties named mountain ranges to your custom civilization. This is optional. The entries for NamedMountainType can either be new, custom mountain ranges or those that exist in the Gathering Storm (Expansion2) files.

-- Compatibility: NamedMountainCivilizations were introduced in the Gathering Storm expansion (Expansion2). This section should only be used where there is an intention to develop a mod with a dependency on Gathering Storm (Expansion2).
-----------------------------------------------

CREATE TABLE IF NOT EXISTS NamedMountainCivilizations
(
    NamedMountainType TEXT not null
        references NamedMountains
            on update cascade on delete cascade,
    CivilizationType  TEXT not null
        references Civilizations
            on update cascade on delete cascade,
    primary key (NamedMountainType, CivilizationType)
);
INSERT OR IGNORE INTO NamedMountainCivilizations
		(CivilizationType,			NamedMountainType							)
VALUES	('CIVILIZATION_RWB_NORTECHICO',	'NAMED_MOUNTAIN_CORDILLERA_NEOVOLCANICA'	),
		('CIVILIZATION_RWB_NORTECHICO',	'NAMED_MOUNTAIN_MEXICAN_PLATEAU'			),
		('CIVILIZATION_RWB_NORTECHICO',	'NAMED_MOUNTAIN_SIERRA_MADRE_OCCIDENTAL'	),
		('CIVILIZATION_RWB_NORTECHICO',	'NAMED_MOUNTAIN_SIERRA_MADRE_DEL_SUR'		),
		('CIVILIZATION_RWB_NORTECHICO',	'NAMED_MOUNTAIN_SIERRA_MADRE_ORIENTAL'		),
		('CIVILIZATION_RWB_NORTECHICO',	'NAMED_MOUNTAIN_CHIAPAS'					),
		('CIVILIZATION_RWB_NORTECHICO',	'NAMED_MOUNTAIN_MONTANAS_GUATEMALA'			);

-----------------------------------------------
-- NamedRivers

-- This list of locally-referenced values ensures that flavour text is displayed wherever a named river has been linked to your custom civilization.

-- All Name references have a corresponding entry in Civilization_Localisation.sql.

-- This is an optional section and only required if there are new, custom river names defined in the NamedRiverCivilizations, below.

-- Compatibility: NamedRivers were introduced in the Gathering Storm expansion (Expansion2). This section should only be used where there is an intention to develop a mod with a dependency on Gathering Storm (Expansion2).
-----------------------------------------------

CREATE TABLE IF NOT EXISTS NamedRivers
(
    NamedRiverType TEXT not null
        primary key,
    Name           TEXT not null
);
INSERT OR IGNORE INTO NamedRivers
		(NamedRiverType,					Name									)
VALUES	('NAMED_RIVER_GRANDE',				'LOC_NAMED_RIVER_GRANDE'				),
		('NAMED_RIVER_USUMACINTA',			'LOC_NAMED_RIVER_USUMACINTA'			),
		('NAMED_RIVER_NAZAS',				'LOC_NAMED_RIVER_NAZAS'					),
		('NAMED_RIVER_AGUANAVAL',			'LOC_NAMED_RIVER_AGUANAVAL'				),
		('NAMED_RIVER_BALSAS',				'LOC_NAMED_RIVER_BALSAS'				),
		('NAMED_RIVER_CULIACAN',			'LOC_NAMED_RIVER_CULIACAN'				),
		('NAMED_RIVER_LERMA',				'LOC_NAMED_RIVER_LERMA'					),
		('NAMED_RIVER_GRANDE_DE_SANTIAGO',	'LOC_NAMED_RIVER_GRANDE_DE_SANTIAGO'	),
		('NAMED_RIVER_FUERTE',				'LOC_NAMED_RIVER_FUERTE'				),
		('NAMED_RIVER_CONCHOS',				'LOC_NAMED_RIVER_CONCHOS'				);

-----------------------------------------------
-- NamedRiverCivilizations

-- This ties named rivers to your custom civilization. This is optional. The entries for NamedRiverType can either be new, custom rivers or those that exist in the Gathering Storm (Expansion2) files.

-- Compatibility: NamedRiverCivilizations were introduced in the Gathering Storm expansion (Expansion2). This section should only be used where there is an intention to develop a mod with a dependency on Gathering Storm (Expansion2).
-----------------------------------------------
CREATE TABLE IF NOT EXISTS NamedRiverCivilizations
(
    NamedMountainType TEXT not null
        references NamedRivers
            on update cascade on delete cascade,
    CivilizationType  TEXT not null
        references Civilizations
            on update cascade on delete cascade,
    primary key (NamedMountainType, CivilizationType)
);
INSERT OR IGNORE INTO NamedRiverCivilizations
		(CivilizationType,			    NamedRiverType					)
VALUES	('CIVILIZATION_RWB_NORTECHICO',	'NAMED_RIVER_GRANDE'			),
		('CIVILIZATION_RWB_NORTECHICO',	'NAMED_RIVER_USUMACINTA'		),
		('CIVILIZATION_RWB_NORTECHICO',	'NAMED_RIVER_NAZAS'				),
		('CIVILIZATION_RWB_NORTECHICO',	'NAMED_RIVER_AGUANAVAL'			),
		('CIVILIZATION_RWB_NORTECHICO',	'NAMED_RIVER_BALSAS'			),
		('CIVILIZATION_RWB_NORTECHICO',	'NAMED_RIVER_CULIACAN'			),
		('CIVILIZATION_RWB_NORTECHICO',	'NAMED_RIVER_LERMA'				),
		('CIVILIZATION_RWB_NORTECHICO',	'NAMED_RIVER_GRANDE_DE_SANTIAGO'),
		('CIVILIZATION_RWB_NORTECHICO',	'NAMED_RIVER_FUERTE'			),
		('CIVILIZATION_RWB_NORTECHICO',	'NAMED_RIVER_CONCHOS'			);

-----------------------------------------------
-- NamedLakes

-- This list of locally-referenced values ensures that flavour text is displayed wherever a named lake has been linked to your custom civilization.

-- All Name references have a corresponding entry in Civilization_Localisation.sql.

-- This is an optional section and only required if there are new, custom lake names defined in the NamedLakeCivilizations, below.

-- Compatibility: NamedLakes were introduced in the Gathering Storm expansion (Expansion2). This section should only be used where there is an intention to develop a mod with a dependency on Gathering Storm (Expansion2).
-----------------------------------------------
CREATE TABLE IF NOT EXISTS NamedLakes
(
    NamedLakeType TEXT not null
        primary key,
    Name           TEXT not null
);
INSERT OR IGNORE INTO NamedLakes
		(NamedLakeType,						Name								)
VALUES	('NAMED_LAKE_CHAPALA',				'LOC_NAMED_LAKE_CHAPALA'			),
		('NAMED_LAKE_PATZCUARO',			'LOC_NAMED_LAKE_PATZCUARO'			),
		('NAMED_LAKE_BACALAR',				'LOC_NAMED_LAKE_BACALAR'			),
		('NAMED_LAKE_LAGUNA_CATEMACO',		'LOC_NAMED_LAKE_LAGUNA_CATEMACO'	),
		('NAMED_LAKE_EL_CARACOL',			'LOC_NAMED_LAKE_EL_CARACOL'			);

-----------------------------------------------
-- NamedLakeCivilizations

-- This ties named lakes to your custom civilization. This is optional. The entries for NamedLakeType can either be new, custom lakes or those that exist in the Gathering Storm (Expansion2) files. In the below example, the first entry exists already in the game - all of the others we have created ourselves.

-- Compatibility: NamedLakeCivilizations were introduced in the Gathering Storm expansion (Expansion2). This section should only be used where there is an intention to develop a mod with a dependency on Gathering Storm (Expansion2).
-----------------------------------------------
CREATE TABLE IF NOT EXISTS NamedLakeCivilizations
(
    NamedMountainType TEXT not null
        references NamedLakes
            on update cascade on delete cascade,
    CivilizationType  TEXT not null
        references Civilizations
            on update cascade on delete cascade,
    primary key (NamedMountainType, CivilizationType)
);
INSERT OR IGNORE INTO NamedLakeCivilizations
		(CivilizationType,			NamedLakeType					)
VALUES	('CIVILIZATION_RWB_NORTECHICO',	'NAMED_LAKE_LAKE_TEXCOCO'		),
		('CIVILIZATION_RWB_NORTECHICO',	'NAMED_LAKE_CHAPALA'			),
		('CIVILIZATION_RWB_NORTECHICO',	'NAMED_LAKE_PATZCUARO'			),
		('CIVILIZATION_RWB_NORTECHICO',	'NAMED_LAKE_BACALAR'			),
		('CIVILIZATION_RWB_NORTECHICO',	'NAMED_LAKE_LAGUNA_CATEMACO'	),
		('CIVILIZATION_RWB_NORTECHICO',	'NAMED_LAKE_EL_CARACOL'			);

-----------------------------------------------
-- NamedSeas

-- This list of locally-referenced values ensures that flavour text is displayed wherever a named sea has been linked to your custom civilization.

-- All Name references have a corresponding entry in Civilization_Localisation.sql.

-- This is an optional section and only required if there are new, custom sea names defined in the NamedSeaCivilizations, below.

-- In order to present the code required for NamedSeas, but also to showcase the use of another SQL command - INSERT OR IGNORE - I have chosen, for this example, to only stipulate two NamedSeas, both of which already exist in the game files. Using 'INSERT OR IGNORE', our attempts to create duplicate entries will be ignored. As all of our entries already exist, the four lines of code are not actually needed at all - they are here to provide a representative code example only.

-- Compatibility: NamedSeas were introduced in the Gathering Storm expansion (Expansion2). This section should only be used where there is an intention to develop a mod with a dependency on Gathering Storm (Expansion2).
-----------------------------------------------
CREATE TABLE IF NOT EXISTS NamedSeas
(
    NamedSeaType TEXT not null
        primary key,
    Name           TEXT not null
);
INSERT OR IGNORE INTO NamedSeas
		(NamedSeaType,						Name										)
VALUES	('NAMED_SEA_GULF_OF_CALIFORNIA',	'LOC_NAMED_SEA_GULF_OF_CALIFORNIA_NAME'		),
		('NAMED_SEA_GULF_OF_MEXICO',		'LOC_NAMED_SEA_GULF_OF_MEXICO_NAME'			);

-----------------------------------------------
-- NamedSeaCivilizations

-- This ties named seas to your custom civilization. This is optional. The entries for NamedSeaType can either be new, custom seas or those that exist in the Gathering Storm (Expansion2) files. In the below example, both of the entries already exist in the Gathering Storm game files.

-- Compatibility: NamedSeaCivilizations were introduced in the Gathering Storm expansion (Expansion2). This section should only be used where there is an intention to develop a mod with a dependency on Gathering Storm (Expansion2).
-----------------------------------------------
CREATE TABLE IF NOT EXISTS NamedSeaCivilizations
(
    NamedMountainType TEXT not null
        references NamedSeas
            on update cascade on delete cascade,
    CivilizationType  TEXT not null
        references Civilizations
            on update cascade on delete cascade,
    primary key (NamedMountainType, CivilizationType)
);
INSERT OR IGNORE INTO NamedSeaCivilizations
		(CivilizationType,			NamedSeaType					)
VALUES	('CIVILIZATION_RWB_NORTECHICO',	'NAMED_SEA_GULF_OF_CALIFORNIA'	),
		('CIVILIZATION_RWB_NORTECHICO',	'NAMED_SEA_GULF_OF_MEXICO'		);

-----------------------------------------------
-- NamedDeserts

-- This list of locally-referenced values ensures that flavour text is displayed wherever a named desert has been linked to your custom civilization.

-- All Name references have a corresponding entry in Civilization_Localisation.sql.

-- This is an optional section and only required if there are new, custom desert names defined in the NamedDesertCivilizations, below.

-- Learning Point: In this example, we're configuring three named deserts. Two of these deserts do not exist in the game's NamedDeserts table. However, NAMED_DESERT_SONORAN does. This example illustrates the usefulness of the REPLACE command. It will replace the Name value for NAMED_DESERT_SONORAN with the one we specify. For the other entries - which we're creating - it will add them to the table.

-- The LOC_NAMED_DESERT_SONORA will allow us to give the NAMED_DESERT_SONORAN a new display name, whilst still maintaining the link between NAMED_DESERT_SONORAN and CIVILIZATION_AMERICA. It's a small amendment, but it allows us to adjust the display/flavour text and implement a link to our custom civilization, in one go. If we did not want to adjust the display/flavour text, we could just exclude the entry from the NamedDeserts table, directly below, and include it only in the NamedDesertCivilizations table (in the section after the one below).

-- Compatibility: NamedDeserts were introduced in the Gathering Storm expansion (Expansion2). This section should only be used where there is an intention to develop a mod with a dependency on Gathering Storm (Expansion2).
-----------------------------------------------
CREATE TABLE IF NOT EXISTS NamedDeserts
(
    NamedDesertType TEXT not null
        primary key,
    Name           TEXT not null
);
INSERT OR IGNORE INTO NamedDeserts
		(NamedDesertType,			Name							)
VALUES	('NAMED_DESERT_SONORAN',	'LOC_NAMED_DESERT_SONORA'		),
		('NAMED_DESERT_LA_GUAJIRA',	'LOC_NAMED_DESERT_LA_GUAJIRA'	),
		('NAMED_DESERT_SECHURA',	'LOC_NAMED_DESERT_SECHURA'		);

-----------------------------------------------
-- NamedDesertCivilizations

-- This ties named deserts to your custom civilization. This is optional. The entries for NamedDesertType can either be new, custom deserts (those defined above) or those that exist in the Gathering Storm (Expansion2) files.

-- Compatibility: NamedDeserts were introduced in the Gathering Storm expansion (Expansion2). This section should only be used where there is an intention to develop a mod with a dependency on Gathering Storm (Expansion2).
-----------------------------------------------
CREATE TABLE IF NOT EXISTS NamedDesertCivilizations
(
    NamedMountainType TEXT not null
        references NamedDeserts
            on update cascade on delete cascade,
    CivilizationType  TEXT not null
        references Civilizations
            on update cascade on delete cascade,
    primary key (NamedMountainType, CivilizationType)
);
INSERT OR IGNORE INTO NamedDesertCivilizations
		(CivilizationType,			NamedDesertType				)
VALUES	('CIVILIZATION_RWB_NORTECHICO',	'NAMED_DESERT_SONORAN'		),
		('CIVILIZATION_RWB_NORTECHICO',	'NAMED_DESERT_LA_GUAJIRA'	),
		('CIVILIZATION_RWB_NORTECHICO',	'NAMED_DESERT_SECHURA'		);

-----------------------------------------------
-- NamedVolcanoes

-- This list of locally-referenced values ensures that flavour text is displayed wherever a named volcano has been linked to your custom civilization.

-- All Name references have a corresponding entry in Civilization_Localisation.sql.

-- This is an optional section and only required if there are new, custom desert names defined in the NamedVolcanoCivilizations, below.

-- Compatibility: Volcanoes were introduced in the Gathering Storm expansion (Expansion2). This section should only be used where there is an intention to develop a mod with a dependency on Gathering Storm (Expansion2).
-----------------------------------------------
CREATE TABLE IF NOT EXISTS NamedVolcanoes
(
    NamedVolcanoType TEXT not null
        primary key,
    Name           TEXT not null
);
INSERT OR IGNORE INTO NamedVolcanoes
		(NamedVolcanoType,					Name								)
VALUES	('NAMED_VOLCANO_PICO_DE_ORIZABA',	'LOC_NAMED_VOLCANO_PICO_DE_ORIZABA'	),
		('NAMED_VOLCANO_TAJUMULCO',			'LOC_NAMED_VOLCANO_TAJUMULCO'		),
		('NAMED_VOLCANO_TACANA',			'LOC_NAMED_VOLCANO_TACANA'			),
		('NAMED_VOLCANO_SANTIAGUITO',		'LOC_NAMED_VOLCANO_SANTIAGUITO'		),
		('NAMED_VOLCANO_CHAPARRASTIQUE',	'LOC_NAMED_VOLCANO_CHAPARRASTIQUE'	);

-----------------------------------------------
-- NamedVolcanoCivilizations

-- This ties named volcanoes to your custom civilization. This is optional. The entries for NamedVolcanoType can either be new, custom volcanoes or those that exist in the Gathering Storm (Expansion2) files.

-- Compatibility: Volcanoes were introduced in the Gathering Storm expansion (Expansion2). This section should only be used where there is an intention to develop a mod with a dependency on Gathering Storm (Expansion2).
-----------------------------------------------
CREATE TABLE IF NOT EXISTS NamedVolcanoCivilizations
(
    NamedVolcanoType TEXT not null
        references NamedLakes
            on update cascade on delete cascade,
    CivilizationType  TEXT not null
        references Civilizations
            on update cascade on delete cascade,
    primary key (NamedVolcanoType, CivilizationType)
);
INSERT OR IGNORE INTO NamedVolcanoCivilizations
		(CivilizationType,			NamedVolcanoType				)
VALUES	('CIVILIZATION_RWB_NORTECHICO',	'NAMED_VOLCANO_PICO_DE_ORIZABA'	),
		('CIVILIZATION_RWB_NORTECHICO',	'NAMED_VOLCANO_TAJUMULCO'		),
		('CIVILIZATION_RWB_NORTECHICO',	'NAMED_VOLCANO_TACANA'			),
		('CIVILIZATION_RWB_NORTECHICO',	'NAMED_VOLCANO_SANTIAGUITO'		),
		('CIVILIZATION_RWB_NORTECHICO',	'NAMED_VOLCANO_CHAPARRASTIQUE'	);
*/

-----------------------------------------------
-- CityNames

-- This list of locally-referenced values ensures provides the list of city names used by the custom civilization. It is extendable, but is recommended to be at least 15 entries long. The entries in the list below interact with the RandomCityNameDepth value that is set in the Civilizations table near the head of this document.

-- All CityName references have a corresponding entry in Civilization_Localisation.sql. I have named them using a simple, sequential numbering system - however, it is generally accepted/common to give them more descriptive names (e.g. LOC_CITY_NAME_MC_SAN_LORENZO).
-----------------------------------------------

INSERT OR REPLACE INTO	CityNames
		(CivilizationType,			CityName						)
VALUES	('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITY_NAME_RWB_NORTECHICO_1'		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITY_NAME_RWB_NORTECHICO_2'		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITY_NAME_RWB_NORTECHICO_3'		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITY_NAME_RWB_NORTECHICO_4'		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITY_NAME_RWB_NORTECHICO_5'		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITY_NAME_RWB_NORTECHICO_6'		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITY_NAME_RWB_NORTECHICO_7'		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITY_NAME_RWB_NORTECHICO_8'		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITY_NAME_RWB_NORTECHICO_9'		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITY_NAME_RWB_NORTECHICO_10'		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITY_NAME_RWB_NORTECHICO_11'		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITY_NAME_RWB_NORTECHICO_12'		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITY_NAME_RWB_NORTECHICO_13'		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITY_NAME_RWB_NORTECHICO_14'		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITY_NAME_RWB_NORTECHICO_15'		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITY_NAME_RWB_NORTECHICO_16'		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITY_NAME_RWB_NORTECHICO_17'		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITY_NAME_RWB_NORTECHICO_18'		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITY_NAME_RWB_NORTECHICO_19'		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITY_NAME_RWB_NORTECHICO_20'		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITY_NAME_RWB_NORTECHICO_21'		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITY_NAME_RWB_NORTECHICO_22'		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITY_NAME_RWB_NORTECHICO_23'		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITY_NAME_RWB_NORTECHICO_24'		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITY_NAME_RWB_NORTECHICO_25'		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITY_NAME_RWB_NORTECHICO_26'		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITY_NAME_RWB_NORTECHICO_27'		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITY_NAME_RWB_NORTECHICO_28'		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITY_NAME_RWB_NORTECHICO_29'		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITY_NAME_RWB_NORTECHICO_30'		);
		
-----------------------------------------------
-- CivilizationCitizenNames

-- The below locally-referenced values provide yet further flavour to the game. These names are used to populate the 'Gossip' items that appear from time-to-time within the game.

-- Further flavour can be achieved by including referenced CitizenName values with equivalent 'MODERN' entries, in the format: LOC_CITIZEN_RWB_NORTECHICO_MODERN_MALE_1

-- If using the MODERN CitizenName entries in addition, you must also specify a fourth column (Boolean) to the table below, named Modern. This operates as a true/false (0,1) flag, in the same way as the Female entry.

-- All CitizenName references have a corresponding entry in Civilization_Localisation.sql.
-----------------------------------------------

INSERT OR REPLACE INTO	CivilizationCitizenNames
		(CivilizationType,			CitizenName,						Female	)
VALUES	('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITIZEN_RWB_NORTECHICO_MALE_1',		0 		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITIZEN_RWB_NORTECHICO_MALE_2',		0 		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITIZEN_RWB_NORTECHICO_MALE_3',		0 		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITIZEN_RWB_NORTECHICO_MALE_4',		0 		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITIZEN_RWB_NORTECHICO_MALE_5',		0 		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITIZEN_RWB_NORTECHICO_MALE_6',		0 		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITIZEN_RWB_NORTECHICO_MALE_7',		0 		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITIZEN_RWB_NORTECHICO_MALE_8',		0 		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITIZEN_RWB_NORTECHICO_MALE_9',		0 		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITIZEN_RWB_NORTECHICO_MALE_10',		0 		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITIZEN_RWB_NORTECHICO_FEMALE_1',	    1 		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITIZEN_RWB_NORTECHICO_FEMALE_2',	    1 		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITIZEN_RWB_NORTECHICO_FEMALE_3',	    1 		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITIZEN_RWB_NORTECHICO_FEMALE_4',	    1 		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITIZEN_RWB_NORTECHICO_FEMALE_5',	    1 		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITIZEN_RWB_NORTECHICO_FEMALE_6',	    1 		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITIZEN_RWB_NORTECHICO_FEMALE_7',	    1 		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITIZEN_RWB_NORTECHICO_FEMALE_8',	    1 		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITIZEN_RWB_NORTECHICO_FEMALE_9',	    1 		),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CITIZEN_RWB_NORTECHICO_FEMALE_10',	    1 		);

-----------------------------------------------
-- CivilizationInfo

-- The below entries are primarily used in the Civilopedia - specifically in the side-bar that describes some further flavour information about your custom civilization.

-- Please note: the entries here are for flavour only. The values do not affect gameplay in any way - specifically, the LOC_CIVINFO_PREFIX_CIVNAME_CAPITAL value does not dictate the capital in-game.

-- All Header and Caption references have a corresponding entry in Civilization_Localisation.sql.
-----------------------------------------------

INSERT OR REPLACE INTO	CivilizationInfo
		(CivilizationType,			Header,						Caption,								SortIndex	)
VALUES	('CIVILIZATION_RWB_NORTECHICO',	'LOC_CIVINFO_LOCATION',		'LOC_CIVINFO_RWB_NORTECHICO_LOCATION',		10			),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CIVINFO_SIZE',			'LOC_CIVINFO_RWB_NORTECHICO_SIZE',			20			),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CIVINFO_POPULATION',	'LOC_CIVINFO_RWB_NORTECHICO_POPULATION',		30			),
		('CIVILIZATION_RWB_NORTECHICO',	'LOC_CIVINFO_CAPITAL',		'LOC_CIVINFO_RWB_NORTECHICO_CAPITAL',			40			);
		
-----------------------------------------------
-- Start Bias

-- The below game-referenced values dictate the influence on your custom civilization's starting location by the terrain, features, resources and rivers that are generated on the map. The use of the below are optional.

-- The tiered system works on a scale from 1-5, with 1 providing the strongest bias towards the named TerrainType, FeatureType, ResourceType or indeed bias towards rivers as defined in StartBiasRivers.

-- TerrainType: This must be an explicit value from the list defined within the Terrains.xml in the base game.
-- FeatureType: This must be an explicit value from the list defined in a combination of Features.xml (base game), Expansion1_Features.xml (Rise & Fall) and/or Expansion2_Features.xml (Gathering Storm). Naturally, the use of FeatureType entries from either Expansion1 or Expansion2 will dictate compatibility for your mod.
-- ResourceType: This must be an explicit value from the list defined in Resrouces.xml (base game) and Expansion1_Resources.xml (Rise & Fall). The use of a resource from Expansion1 will dictate compatibility for your mod.
-----------------------------------------------

/* no bias civ

INSERT OR REPLACE INTO	StartBiasTerrains
		(CivilizationType,			TerrainType,			Tier	)
VALUES	('CIVILIZATION_RWB_NORTECHICO',	'TERRAIN_PLAINS',		1		),
		('CIVILIZATION_RWB_NORTECHICO',	'TERRAIN_GRASS',		5		);

INSERT OR REPLACE INTO	StartBiasFeatures
		(CivilizationType,			FeatureType,			Tier	)
VALUES	('CIVILIZATION_RWB_NORTECHICO',	'FEATURE_FLOODPLAINS',	4		);

INSERT OR REPLACE INTO	StartBiasResources
		(CivilizationType,			ResourceType,			Tier	)
VALUES	('CIVILIZATION_RWB_NORTECHICO',	'RESOURCE_JADE',		3		);

INSERT OR REPLACE INTO	StartBiasRivers
		(CivilizationType,				Tier	)
VALUES	('CIVILIZATION_RWB_NORTECHICO',		2		);*/
