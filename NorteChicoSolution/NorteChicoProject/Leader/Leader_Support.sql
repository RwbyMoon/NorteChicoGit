--==========================================================================================================================
-- DELIVERATOR MOAR UNITS (8342b98d-80c7-4002-87bb-419646bd9b54)
-- DELIVERATOR MOAR UNITS (CORE ONLY) (860265f1-73df-47d9-b5dc-c9cdc6b1489a)
--==========================================================================================================================
--==========================================================================================================================
-- GEDEMON YNAEMP (36e88483-48fe-4545-b85f-bafc50dde315)
--==========================================================================================================================
-- StartPosition 
------------------------------------------------------------	

CREATE TABLE IF NOT EXISTS StartPosition (MapName TEXT, Civilization TEXT, Leader TEXT, X INT default 0, Y INT default 0);

INSERT OR REPLACE INTO StartPosition
                (Civilization,                          Leader,                                     MapName,                            X,          Y)
VALUES          ('CIVILIZATION_RWB_NORTECHICO',         'LEADER_RWB_LADY_OF_THE_FOUR_TUPUS',        'GiantEarth',                       153,        26),
                ('CIVILIZATION_RWB_NORTECHICO',         'LEADER_RWB_LADY_OF_THE_FOUR_TUPUS',        'FiraxisTSL',                       20,         21),
                ('CIVILIZATION_RWB_NORTECHICO',         'LEADER_RWB_LADY_OF_THE_FOUR_TUPUS',        'GreatestEarthMap',                 22,         16),
                ('CIVILIZATION_RWB_NORTECHICO',         'LEADER_RWB_LADY_OF_THE_FOUR_TUPUS',        'PlayEuropeAgain',                  61,         65),
                ('CIVILIZATION_RWB_NORTECHICO',         'LEADER_RWB_LADY_OF_THE_FOUR_TUPUS',        'LargestEarthCustom',               202,        32),
                ('CIVILIZATION_RWB_NORTECHICO',         'LEADER_RWB_LADY_OF_THE_FOUR_TUPUS',        'Zobstzler_TheAmericas_Map',        67,        17),

                ('CIVILIZATION_RWB_NORTECHICO',         'LEADER_RWB_LADY_OF_THE_FOUR_TUPUS',        'Earth128x80',                      39,         20),
                ('CIVILIZATION_RWB_NORTECHICO',         'LEADER_RWB_LADY_OF_THE_FOUR_TUPUS',        'Earth128x80_Alt',                  75,         67), --todo
                ('CIVILIZATION_RWB_NORTECHICO',         'LEADER_RWB_LADY_OF_THE_FOUR_TUPUS',        'Earth128x80_Alt',                  75,         67), --todo faut trouver cékoa le 4e
                ('CIVILIZATION_RWB_NORTECHICO',         'LEADER_RWB_LADY_OF_THE_FOUR_TUPUS',        'EqualAreaEarth',                   74,         72); --todo

CREATE TABLE IF NOT EXISTS MapStartPositions (Map TEXT, Plot INT default 0, Type TEXT, Value TEXT);

INSERT OR REPLACE INTO MapStartPositions
        (Map,                                                                                   Plot,   Type,               Value)
VALUES  ('{0ffac96e-140c-4389-8ae8-6c0cd6391c40}Maps/Giant Earth/PTW_GiantEarth_WB.Civ6Map',    9681,   'LEADER',          'LEADER_RWB_LADY_OF_THE_FOUR_TUPUS'),
        ('{0ffac96e-140c-4389-8ae8-6c0cd6391c40}Maps/Giant Earth/PTW_GiantEarth_WB.Civ6Map',    9681,   'CIVILIZATION',    'CIVILIZATION_RWB_NORTECHICO');