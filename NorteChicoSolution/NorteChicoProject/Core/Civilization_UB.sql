-- Huenca : +3 Faith, +3 Great Prophet Points per Turn.
-- Sunken Plaza : +3 Culture. +1 Culture +1 Tourism for every Great Works in this city, doubled for Great Works of Music.
-- Pirámide : +3 Housing. +1 Gold +1 Production per Citizen in this city.

INSERT OR REPLACE INTO Types
            (Type,											Kind			)
VALUES	    ('TRAIT_CIVILIZATION_RWB_CIUDAD_SAGRADA',		'KIND_TRAIT'	),
            ('BUILDING_RWB_NORTECHICO_HUENCA',			    'KIND_BUILDING'		),
            ('BUILDING_RWB_NORTECHICO_SUNKEN_PLAZA',		'KIND_BUILDING'		),
            ('BUILDING_RWB_NORTECHICO_PIRAMIDE',			'KIND_BUILDING'		);