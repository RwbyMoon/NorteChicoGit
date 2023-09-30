-- Unique cheap district that cannot be placed adjacent to the city center, used for stability and growth endeavors. It possesses 3 unique buildings (the Sunken Plaza, the Pirámide and the Huenca), buildable in any order.
-- One of these buildings can be built in each Ciudad Sagrada once the civic "Early Empire" has been researched, a second on "Theology" and the last on "Guilds".
-- +1 Faith, +2 Loyalty, +1 Population, +2 Food upon construction of this District and for every of its Buildings.
-- Great Prophets may found a religion on a Ciudad Sagrada instead of a Holy Site.
--------------------------------------------------------------


INSERT OR REPLACE INTO Types
		(Type,										Kind			)
VALUES	('TRAIT_CIVILIZATION_RWB_CIUDAD_SAGRADA',	'KIND_TRAIT'	),
		('DISTRICT_RWB_NORTECHICO_CIUDAD_SAGRADA',	'KIND_DISTRICT'		);

INSERT OR REPLACE INTO CivilizationTraits
        (TraitType,									CivilizationType			)
VALUES	('TRAIT_CIVILIZATION_RWB_CIUDAD_SAGRADA',	'CIVILIZATION_RWB_NORTECHICO'		);

INSERT OR REPLACE INTO Traits
		(TraitType,									Name,													Description												)
VALUES	('TRAIT_CIVILIZATION_RWB_CIUDAD_SAGRADA',	'LOC_DISTRICT_RWB_NORTECHICO_CIUDAD_SAGRADA_NAME',		'LOC_DISTRICT_RWB_NORTECHICO_CIUDAD_SAGRADA_DESCRIPTION'		);