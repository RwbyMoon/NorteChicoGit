INSERT OR REPLACE INTO LocalizedText
			(Language, Tag, Text)
VALUES

-----------------------------------------------
-- Civilization
-----------------------------------------------

	('en_US',	'LOC_CIVILIZATION_RWB_NORTECHICO_NAME',			'Norte Chico'			),
	('en_US',	'LOC_CIVILIZATION_RWB_NORTECHICO_DESCRIPTION',	'Norte Chico people'	),
	('en_US',	'LOC_CIVILIZATION_RWB_NORTECHICO_ADJECTIVE',  	'Norte Chican'			),
    
	('fr_FR',	'LOC_CIVILIZATION_RWB_NORTECHICO_NAME',			'Norte Chico'			),
	('fr_FR',	'LOC_CIVILIZATION_RWB_NORTECHICO_DESCRIPTION',	'Peuple de Norte Chico'	),
	('fr_FR',	'LOC_CIVILIZATION_RWB_NORTECHICO_ADJECTIVE',  	'Norte Chican'			),
	
-----------------------------------------------
-- Civilization Unique Ability
-----------------------------------------------

	('en_US',	'LOC_TRAIT_CIVILIZATION_RWB_KAMACHIQ_VARA_DIOSKUNA_NAME',				'Kamachiq Vara Dioskuna'				),
	('en_US',	'LOC_TRAIT_CIVILIZATION_RWB_KAMACHIQ_VARA_DIOSKUNA_DESCRIPTION',	
	'+1 [ICON_Charges] Build Charge to Builders, Military Engineers and Apaq Allinms when you change policies for every slotted Economic Policy Card in your Government that they haven''t already benefited from. Builders and Military Engineers do not gain bonus Builder Charges anymore from other methods and start at 1 Charge. -90% [ICON_Production] Production toward Builders, which are also 200% more expensive to purchase.'),
	('fr_FR',	'LOC_TRAIT_CIVILIZATION_RWB_KAMACHIQ_VARA_DIOSKUNA_DESCRIPTION',	
	'+1 [ICON_Charges] Charge de Construction aux Bâtisseurs, Ingénieurs Militaires et Apaq Allinms lorsque vous changez de doctrines pour chaque Carte de Doctrine Économique dans votre gouvernement de laquelle ils n''ont pas déjà bénéficiés. Les Bâtisseurs et Ingénieurs Militaires ne gagnent pas de Charge de Construction supplémentaires d''aucune autre méthode et commencent à 1 Charge. -90% [ICON_Production] Production envers les Bâtisseurs, qui sont aussi 200% plus chers à acheter.'),

-----------------------------------------------
-- Civilization Unique Infrastructure
-----------------------------------------------

    -- Ciudad Sagrada
	('en_US',	'LOC_DISTRICT_RWB_NORTECHICO_CIUDAD_SAGRADA_NAME',				'Ciudad Sagrada'								),
	('en_US',	'LOC_DISTRICT_RWB_NORTECHICO_CIUDAD_SAGRADA_DESCRIPTION',
	'Unique district of Norte Chico used for population growth and generating [Icon_FAITH] Faith from adjacent improvements. It possesses 3 powerful specialized unique buildings (the Sunken Plaza, the Pirámide and the Huanca), buildable in any order. These buildings do not grant Era Score for their first completion.[NEWLINE][NEWLINE]+1 [ICON_Citizen] Population upon construction of this District and for every of its Buildings.[NEWLINE][NEWLINE]Great Prophets may found a religion on a Ciudad Sagrada instead of a Holy Site.'	),
	('fr_FR',	'LOC_DISTRICT_RWB_NORTECHICO_CIUDAD_SAGRADA_DESCRIPTION',
	'Destiné à des fins de croissance et de génération de [Icon_FAITH] Foi grâce aux aménagements adjacents, ce quartier exclusif du peuple de Norte Chico dispose de 3 puissants bâtiments uniques spécialisés (la Place Submergée, la Pirámide et le Huanca), constructible dans n''importe quel ordre.[NEWLINE][NEWLINE]+1 [ICON_Citizen] Population lors de la construction du Quartier et de chacun de ses bâtiments.[NEWLINE][NEWLINE]Les Prophètes Illustres peuvent fonder une religion sur une Ciudad Sagrada au lieu d''un Lieu Saint.'	),
    -- Improvement Adjacency
    ('en_US',	'LOC_CIUDAD_SAGRADA_IMPROVEMENT_ADJACENCY_DESCRIPTION',  '+{1_num} [Icon_FAITH] Faith from adjacent improvements'),
    ('fr_FR',	'LOC_CIUDAD_SAGRADA_IMPROVEMENT_ADJACENCY_DESCRIPTION',  '+{1_num} [Icon_FAITH] Foi grâce aux aménagements à proximité'),
    
    -- Huanca
    ('en_US',	'LOC_BUILDING_RWB_NORTECHICO_HUANCA_NAME',				'Huanca'								),
    ('en_US',	'LOC_BUILDING_RWB_NORTECHICO_HUANCA_DESCRIPTION',
     'Unique building of the Ciudad Sagrada district, useful for religious endeavors. [NEWLINE][NEWLINE]For each finished building of the Ciudad Sagrada in a city, -45% [ICON_Production] Production toward those remaining. This building do not grant Era Score for first completion.[NEWLINE][NEWLINE]This city gains +35% [ICON_Production] Production towards city projects.'	),
    ('fr_FR',	'LOC_BUILDING_RWB_NORTECHICO_HUANCA_DESCRIPTION',
     'Bâtiment unique de la Ciudad Sagrada, utile à des fonctions religieuses. [NEWLINE][NEWLINE]Pour chaque bâtiment de la Ciudad Sagrada construit dans une ville, -45% [ICON_Production] Production envers ceux restants. Ce bâtiment unique ne confère pas de Score d''Ère à la première construction.[NEWLINE][NEWLINE]Cette ville gagne +35% [ICON_Production] Production envers les projets de ville.'	),

    -- Sunken Plaza
    ('en_US',	'LOC_BUILDING_RWB_NORTECHICO_SUNKEN_PLAZA_NAME',		'Sunken Plaza'								),
    ('fr_FR',	'LOC_BUILDING_RWB_NORTECHICO_SUNKEN_PLAZA_NAME',		'Place Submergée'								),
    ('en_US',	'LOC_BUILDING_RWB_NORTECHICO_SUNKEN_PLAZA_DESCRIPTION',
     'Unique building of the Ciudad Sagrada district, useful for cultural and touristic endeavors. [NEWLINE][NEWLINE]For each finished building of the Ciudad Sagrada in a city, -45% [ICON_Production] Production toward those remaining. This building do not grant Era Score for first completion.[NEWLINE][NEWLINE]+1 [ICON_Culture] Culture and +15% [ICON_Tourism] Tourism for every [ICON_GreatWork_Landscape] Great Works in this city, doubled for [ICON_GreatWork_Music] Great Works of Music.'	),
    ('fr_FR',	'LOC_BUILDING_RWB_NORTECHICO_SUNKEN_PLAZA_DESCRIPTION',
     'Bâtiment unique de la Ciudad Sagrada, clé pour un apport culturel et touristique. [NEWLINE][NEWLINE]Pour chaque bâtiment de la Ciudad Sagrada construit dans une ville, -45% [ICON_Production] Production envers ceux restants. Ce bâtiment unique ne confère pas de Score d''Ère à la première construction.[NEWLINE][NEWLINE]+1 [ICON_Culture] Culture et +15% [ICON_Tourism] Tourisme pour les [ICON_GreatWork_Landscape] Chefs-d''Oeuvres dans la ville, doublé pour les [ICON_GreatWork_Music] Chefs-d''Oeuvres de Musique.'	),

    -- Pirámide
    ('en_US',	'LOC_BUILDING_RWB_NORTECHICO_PIRAMIDE_NAME',			'Pirámide'								),
    ('en_US',	'LOC_BUILDING_RWB_NORTECHICO_PIRAMIDE_DESCRIPTION',
     'Unique building of the Ciudad Sagrada district, useful for housing large productive and richer cities. [NEWLINE][NEWLINE]For each finished building of the Ciudad Sagrada in a city, -45% [ICON_Production] Production toward those remaining. This building do not grant Era Score for first completion.[NEWLINE][NEWLINE]+1.5 [ICON_Gold] Gold and +0.75 [ICON_Production] Production per [ICON_Citizen] Citizen in this city.'	),
    ('fr_FR',	'LOC_BUILDING_RWB_NORTECHICO_PIRAMIDE_DESCRIPTION',
     'Bâtiment unique de la Ciudad Sagrada, permettant l''hébergement de villes peuplées productives et plus riches.[NEWLINE][NEWLINE]Pour chaque bâtiment de la Ciudad Sagrada construit dans une ville, -45% [ICON_Production] Production envers ceux restants. Ce bâtiment unique ne confère pas de Score d''Ère à la première construction.[NEWLINE][NEWLINE]+1.5 [ICON_Gold] Or et +0.75 [ICON_Production] Production par [ICON_Citizen] Citoyen dans la ville.'	),

-----------------------------------------------
-- Civilization Unique Unit
-----------------------------------------------

	('en_US',	'LOC_UNIT_RWB_NORTECHICO_APAQALLINMI_NAME',	'Apaq Allinmi'	),
	('en_US',	'LOC_UNIT_RWB_NORTECHICO_APAQALLINMI_DESCRIPTION',	 
	'Unique religious craftsman of Norte Chico, which is a more expensive replacement of the Apostle with +1 Sight. It has 1 [ICON_Charges] Build Charge, allowing it to build improvements identical to Builders.'	),
	('fr_FR',	'LOC_UNIT_RWB_NORTECHICO_APAQALLINMI_DESCRIPTION',	 
	'Artisan religieux exclusif au peuple de Norte Chico remplaçant l''Apôtre mais plus cher à acheter, disposant de +1 Vision. Il dispose d''1 [ICON_Charges] Charge de Construction, lui permettant de construire des aménagements identiques aux Bâtisseurs.'	),

-----------------------------------------------
-- Rivers
-----------------------------------------------

	('en_US',	'LOC_NAMED_RIVER_RWB_FORTALEZA',	'Fortaleza'		),
	('en_US',	'LOC_NAMED_RIVER_RWB_PATIVILCA',	'Río Pativilca'	),
	('en_US',	'LOC_NAMED_RIVER_RWB_SUPE',			'Río Supe'			),
	('en_US',	'LOC_NAMED_RIVER_RWB_ICA',			'Ica'			),
	('en_US',	'LOC_NAMED_RIVER_RWB_SANTA',		'Río Santa'			),
	('en_US',	'LOC_NAMED_RIVER_RWB_CHUBUT',		'Río Chubut'			),
	('en_US',	'LOC_NAMED_RIVER_RWB_HUAURA',		'Río Huaura'	),


-----------------------------------------------
-- Lakes
-----------------------------------------------

	('en_US',	'LOC_NAMED_LAKE_RWB_WINAYMARKA',				'Wiñaymarka'			),
	('en_US',	'LOC_NAMED_LAKE_RWB_LAGO_POOPO',				'Lago Poopó'			),
	('en_US',	'LOC_NAMED_LAKE_RWB_LAGO_URU_URU',				'Lago Uru Uru'			),
	('en_US',	'LOC_NAMED_LAKE_RWB_LAGO_CHINCHAYCOCHA',		'Lago Chinchaycocha'	),
	('en_US',	'LOC_NAMED_LAKE_RWB_LAGO_SALAR_DE_ARIZARO',		'Lago Salar de Arizaro'	),

-----------------------------------------------
-- Desert
-----------------------------------------------

	('en_US',	'LOC_NAMED_DESERT_RWB_WAYRA_DE_SECHURA',			'Wayra de Sechura'			),

-----------------------------------------------
-- Seas
-----------------------------------------------

    ('en_US',	'LOC_NAMED_SEA_RWB_MAR_DE_GRAU',			'Mar de Grau'			),

-----------------------------------------------
-- Mountains
-----------------------------------------------

	('en_US',	'LOC_NAMED_MOUNTAIN_RWB_CORDILLERA_ANDES',		    'Cordillera Andes'		),
	('en_US',	'LOC_NAMED_MOUNTAIN_RWB_CERRO_BLANCO',	            'Cerro Blanco'		),
	('en_US',	'LOC_NAMED_MOUNTAIN_RWB_CERRO_MORRO_SOLAR',	        'Cerro Morro Solar'		),
	('en_US',	'LOC_NAMED_MOUNTAIN_RWB_CERRO_EL_TORO',	            'Cerro el Toro'	),
	('en_US',	'LOC_NAMED_MOUNTAIN_RWB_CERRO_DE_PASCO',	        'Cerro de Pasco'	),

-----------------------------------------------
-- Volcanoes
-----------------------------------------------

	('en_US',	'LOC_NAMED_VOLCANO_RWB_BARROSO',	'Volcán Barroso'		),
	('en_US',	'LOC_NAMED_VOLCANO_RWB_CHIMBOTE',	'Volcán Chimbote'			),
	('en_US',	'LOC_NAMED_VOLCANO_RWB_SANPEDRO',	'Volcán San Pedro'			),
	('en_US',	'LOC_NAMED_VOLCANO_RWB_SABANCAYA',	'Volcán Sabancaya'			),
	('en_US',	'LOC_NAMED_VOLCANO_RWB_HUARMEY',	'Volcán Huarmey'			),

-----------------------------------------------
-- Cities
-----------------------------------------------

	('en_US',	'LOC_CITY_NAME_RWB_NORTECHICO_1',  'Caral'),
	('en_US',	'LOC_CITY_NAME_RWB_NORTECHICO_2',  'Huaricanga'),
	('en_US',	'LOC_CITY_NAME_RWB_NORTECHICO_3',  'Áspero'),
	('en_US',	'LOC_CITY_NAME_RWB_NORTECHICO_4',  'Vichama'),
	('en_US',	'LOC_CITY_NAME_RWB_NORTECHICO_5',  'Chupacigarro'),
	('en_US',	'LOC_CITY_NAME_RWB_NORTECHICO_6',  'Miraya'),
	('en_US',	'LOC_CITY_NAME_RWB_NORTECHICO_7',  'Lurihuasi'),
	('en_US',	'LOC_CITY_NAME_RWB_NORTECHICO_8',  'Bandurria'),
	('en_US',	'LOC_CITY_NAME_RWB_NORTECHICO_9',  'Sechín'),
	('en_US',	'LOC_CITY_NAME_RWB_NORTECHICO_10',  'Vinto Alto'),
	('en_US',	'LOC_CITY_NAME_RWB_NORTECHICO_11',  'Allpacoto'),
	('en_US',	'LOC_CITY_NAME_RWB_NORTECHICO_12',  'Pueblo Nuevo'),
	('en_US',	'LOC_CITY_NAME_RWB_NORTECHICO_13',  'Cerro Colorado'),
	('en_US',	'LOC_CITY_NAME_RWB_NORTECHICO_14',  'La Yerba'),
	('en_US',	'LOC_CITY_NAME_RWB_NORTECHICO_15',  'Huaural'),
	('en_US',	'LOC_CITY_NAME_RWB_NORTECHICO_16',  'Llapta'),
	('en_US',	'LOC_CITY_NAME_RWB_NORTECHICO_17',  'Era de Pando'),
	('en_US',	'LOC_CITY_NAME_RWB_NORTECHICO_18',  'Peñico'),
	('en_US',	'LOC_CITY_NAME_RWB_NORTECHICO_19',  'Piedra Parada'),
	('en_US',	'LOC_CITY_NAME_RWB_NORTECHICO_20',  'Huacache'),
	('en_US',	'LOC_CITY_NAME_RWB_NORTECHICO_21',  'El Molino'),
	('en_US',	'LOC_CITY_NAME_RWB_NORTECHICO_22',  'Huayto'),
	('en_US',	'LOC_CITY_NAME_RWB_NORTECHICO_23',  'Upaca'),
	('en_US',	'LOC_CITY_NAME_RWB_NORTECHICO_24',  'Cerro Blanco'),
	('en_US',	'LOC_CITY_NAME_RWB_NORTECHICO_25',  'Cerro Colorado'),
	('en_US',	'LOC_CITY_NAME_RWB_NORTECHICO_26',  'Jaiva'),
	('en_US',	'LOC_CITY_NAME_RWB_NORTECHICO_27',  'Pando'),
	('en_US',	'LOC_CITY_NAME_RWB_NORTECHICO_28',  'Liman'),
	('en_US',	'LOC_CITY_NAME_RWB_NORTECHICO_29',  'Capilla'),
	('en_US',	'LOC_CITY_NAME_RWB_NORTECHICO_30',  'Quebrada Viña'),
	
-----------------------------------------------
-- Citizens

-- Defines the text strings to be used for the names of citizens by the custom civilization, that were defined in Civilization_Config.sql.
-----------------------------------------------
	
	('en_US',	'LOC_CITIZEN_RWB_NORTECHICO_MALE_1',	'Asiri'		),
	('en_US',	'LOC_CITIZEN_RWB_NORTECHICO_MALE_2',	'Achiq'		),
	('en_US',	'LOC_CITIZEN_RWB_NORTECHICO_MALE_3',	'Chawpi'		),
	('en_US',	'LOC_CITIZEN_RWB_NORTECHICO_MALE_4',	'Inkill'	),
	('en_US',	'LOC_CITIZEN_RWB_NORTECHICO_MALE_5',	'Kallpa'	),
	('en_US',	'LOC_CITIZEN_RWB_NORTECHICO_MALE_6',	'Pacha'		),
	('en_US',	'LOC_CITIZEN_RWB_NORTECHICO_MALE_7',	'Qoyllor'	),
	('en_US',	'LOC_CITIZEN_RWB_NORTECHICO_MALE_8',	'Sumaq'	),
	('en_US',	'LOC_CITIZEN_RWB_NORTECHICO_MALE_9',	'Tinku'		),
	('en_US',	'LOC_CITIZEN_RWB_NORTECHICO_MALE_10',	'Yachay'	),
	('en_US',	'LOC_CITIZEN_RWB_NORTECHICO_FEMALE_1',	'Urpi '	),
	('en_US',	'LOC_CITIZEN_RWB_NORTECHICO_FEMALE_2',	'Illary '	),
	('en_US',	'LOC_CITIZEN_RWB_NORTECHICO_FEMALE_3',	'Killa'	),
	('en_US',	'LOC_CITIZEN_RWB_NORTECHICO_FEMALE_4',	'Mayu'),
	('en_US',	'LOC_CITIZEN_RWB_NORTECHICO_FEMALE_5',	'Nayaraq'		),
	('en_US',	'LOC_CITIZEN_RWB_NORTECHICO_FEMALE_6',	'Saywa'	),
	('en_US',	'LOC_CITIZEN_RWB_NORTECHICO_FEMALE_7',	'Chaska'	),
	('en_US',	'LOC_CITIZEN_RWB_NORTECHICO_FEMALE_8',	'Kayara'	),
	('en_US',	'LOC_CITIZEN_RWB_NORTECHICO_FEMALE_9',	'Llaksa'	),
	('en_US',	'LOC_CITIZEN_RWB_NORTECHICO_FEMALE_10',	'Phallcha'	),
	
-----------------------------------------------
-- Info

-- These define the text strings that primarily appear in the Civilopedia - specifically in the side-bar that describes some further flavour information about your custom civilization.

-- Please note: the entries here are for flavour only. The values do not affect gameplay in any way - specifically, the LOC_CIVINFO_PREFIX_CIVNAME_CAPITAL value does not dictate the capital in-game.
-----------------------------------------------

	('en_US',	'LOC_CIVINFO_RWB_NORTECHICO_LOCATION',		'Mesoamerica'		),
	('en_US',	'LOC_CIVINFO_RWB_NORTECHICO_SIZE',			'c 2.000 km²'	),
	('en_US',	'LOC_CIVINFO_RWB_NORTECHICO_POPULATION',	'c. 88 thousands'		),
	('en_US',	'LOC_CIVINFO_RWB_NORTECHICO_CAPITAL',		'Caral'		),

-----------------------------------------------
-- Civilopedia

-- The content of the below entries represents the detailed entry for your custom civilization in the Civilopedia.

-- The format for the element references must follow: LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_PREFIX_CIVNAME_CHAPTER_HISTORY_PARA_X (where X is the ascending paragraph number).

-- These elements are inserted through this mod, but are not referenced in other parts of it - the game logic understands that when the elements follow this naming convention, they are to be used to populate the Civilopedia.

-- The total number of paragraphs defined is entirely optional - this can be extended/shortened as required.
-----------------------------------------------

	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_RWB_NORTECHICO_CHAPTER_HISTORY_PARA_1',		
	'The Norte Chico civilization, also known as Caral, was one of the oldest civilizations in the Americas, flourishing on the coast of Peru between approximately 3500 BC and 1800 BC. It developed in the Supe Valley, characterized by its arid landscape. Norte Chico is renowned for its pioneering role in the emergence of complex societies in South America, especially from a technical, architectural and societal standpoint.'),	
	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_RWB_NORTECHICO_CHAPTER_HISTORY_PARA_2',		
	'It had cotton as a crucial element of their economy and craftsmanship. Archaeological excavations at various sites, particularly at Caral (the site), have unearthed evidence of cotton cultivation, weaving, and textile production. Cotton textiles were essential for their daily life and were likely traded with neighboring cultures. More largely, agriculture played a foundational role, serving both as a source of sustenance and as the linchpin of their trade networks.'),	
	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_RWB_NORTECHICO_CHAPTER_HISTORY_PARA_3',	
	'Craftsmanship was central to the prosperity of the Norte Chico civilization, which exhibited technological advancements that are remarkable. Their creations and technological elements, such as the Chicras building technique, Quipus, and Huancas, represent their ingenuity and adaptability. This is especially surprising since it is a Preceramic culture.'),
	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_RWB_NORTECHICO_CHAPTER_HISTORY_PARA_4',	
	'The chicras (or shicras) building technique was a unique method employed by the Norte Chico people. They used plant-fiber sacks filled with stone blocks (of adobe, for example) to construct major structures, particularly temple platforms. This technique provided stability and resilience against natural disasters, creating anti-seismic infrastructures.'),
	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_RWB_NORTECHICO_CHAPTER_HISTORY_PARA_5',	
	'However, the culture’s data and numerary consignment was peculiar, as they (as far as we know) created the Quipu system of knots and ropes to do so. It served multiple purposes, including communication, language, finances, mathematics, and data management. This innovative approach exploited agriculture and plants to record and manage information effectively – as the predecessors of their most known users : the  Incas, and not shy of thousands of years before them.'),
	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_RWB_NORTECHICO_CHAPTER_HISTORY_PARA_6',	
	'Massive monoliths known as Huancas were used in Norte Chico for astronomical and belief purposes. They took on various morphologies and functions, serving as representations of sacrality and reflecting animistic beliefs prevalent in the culture. One of the most known of them is the one at Caral, at the top of one of its pyramids, even though they are spread out around most Andean civilizations.'),
	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_RWB_NORTECHICO_CHAPTER_HISTORY_PARA_7',	
	'Caral, a major site of the Norte Chico civilization, is considered a sacred city due to the numerous religious artifacts discovered within it. Religion played a central role in this civilization, exerting cohesion and coercive power. The state established control over its people by focusing on the production and circulation of goods for religious constructions, such as temples, pyramids, atriums, and altars.'),
	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_RWB_NORTECHICO_CHAPTER_HISTORY_PARA_8',	
	'This theoretical theocracy also makes sense with the maintenance of a ceremonial calendar that facilitated temple construction and renovation. In comparison to other preceramic Andean cultures, Caral stood out with its massive architecture, especially in its temples, and its high population density, which were defining features of this ancient civilization.'),
	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_RWB_NORTECHICO_CHAPTER_HISTORY_PARA_9',	
	'The Norte Chico civilization engaged in trade between craftsmanship and agricultural products. The archetypal example of the city of Caral traded cotton and fishing nets made of it, contributing to their sustenance. This exchange extended to cultural elements as well, like music instruments made from foreign shells or bones, indicating a thriving culture of trade and cultural exchange.'),
	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_RWB_NORTECHICO_CHAPTER_HISTORY_PARA_10',	
	'For instance, music held a significant cultural position in Norte Chico. The abundance of foreign materials used in crafting musical instruments suggests both the presence and influence of music. It was not just an art form but also a medium for cultural exchange.'),

	('fr_FR',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_RWB_NORTECHICO_CHAPTER_HISTORY_PARA_1',		
	'La civilisation du Norte Chico, également connue sous le nom de Caral, est l''une des plus anciennes civilisations des Amériques. Elle s''est épanouie sur la côte du Pérou entre environ 3500 et 1800 av. Elle s''est développée dans la vallée de Supe, caractérisée par un paysage aride. Le Norte Chico est réputé pour son rôle de pionnier dans l''émergence de sociétés complexes en Amérique du Sud, notamment d''un point de vue technique, architectural et sociétal.'),	
	('fr_FR',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_RWB_NORTECHICO_CHAPTER_HISTORY_PARA_2',		
	'Le coton était un élément essentiel de leur économie et de leur artisanat. Les fouilles archéologiques menées sur différents sites, notamment à Caral (le site), ont mis au jour des traces de culture du coton, de tissage et de production textile. Les textiles de coton étaient essentiels à leur vie quotidienne et faisaient probablement l''objet d''échanges avec les cultures voisines. Plus largement, l''agriculture a joué un rôle fondamental, servant à la fois de source de subsistance et de pivot de leurs réseaux commerciaux.'),	
	('fr_FR',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_RWB_NORTECHICO_CHAPTER_HISTORY_PARA_3',	
	'L''artisanat était au cœur de la prospérité de la civilisation de Norte Chico, qui a fait preuve d''avancées technologiques remarquables. Leurs créations et approches de conception, tels que la technique de construction des Chicras, les Quipus et les Huancas, témoignent de leur ingéniosité et de leur capacité d''adaptation.Ceci est d''autant plus surprenant qu''il s''agit d''une culture précéramique.'),
	('fr_FR',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_RWB_NORTECHICO_CHAPTER_HISTORY_PARA_4',	
	'La technique de construction des chicras (ou shicras) était une méthode unique employée par les habitants de Norte Chico. Ils utilisaient des sacs de fibres végétales remplis de blocs de pierre (d''adobe, par exemple) pour construire des structures importantes, en particulier des plates-formes de temples.'),
	('fr_FR',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_RWB_NORTECHICO_CHAPTER_HISTORY_PARA_5',	
	'Cependant, les données et la consignation numérique de cette culture étaient particulières, puisqu''ils ont (pour autant que nous le sachions) créé le système de nœuds et de cordes Quipu pour ce faire. Ce système avait de multiples fonctions, notamment la communication, le langage, les finances, les mathématiques et la gestion des données.'),
	('fr_FR',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_RWB_NORTECHICO_CHAPTER_HISTORY_PARA_6',	
	'Cette approche innovante a exploité l''agriculture et les plantes pour enregistrer et gérer efficacement les informations, comme l''ont fait les prédécesseurs de leurs utilisateurs les plus connus : les Incas, et non moins de milliers d''années avant eux. Les monolithes massifs connus sous le nom de Huancas étaient utilisés dans le Norte Chico à des fins astronomiques et de croyance. Ils ont pris diverses morphologies et fonctions, servant de représentations de la sacralité et reflétant les croyances animistes qui prévalaient dans la culture.'),
	('fr_FR',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_RWB_NORTECHICO_CHAPTER_HISTORY_PARA_7',	
	'Caral, site majeur de la civilisation du Norte Chico, est considérée comme une ville sacrée en raison des nombreux artefacts religieux qui y ont été découverts. La religion a joué un rôle central dans cette civilisation, exerçant un pouvoir de cohésion et de coercition.'),
	('fr_FR',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_RWB_NORTECHICO_CHAPTER_HISTORY_PARA_8',	
	'Cette théocratie théorique se justifie également par le maintien d''un calendrier cérémoniel qui facilite la construction et la rénovation des temples. Par rapport aux autres cultures précéramiques andines, Caral se distingue par son architecture massive, en particulier dans ses temples, et par sa forte densité de population, qui sont des caractéristiques déterminantes de cette ancienne civilisation.'),
	('fr_FR',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_RWB_NORTECHICO_CHAPTER_HISTORY_PARA_9',	
	'La civilisation du Norte Chico pratiquait le commerce entre l''artisanat et les produits agricoles. L''archétype de la ville de Caral échangeait du coton et des filets de pêche en coton, contribuant ainsi à leur subsistance. Cet échange s''étendait également aux éléments culturels, comme les instruments de musique fabriqués à partir de coquillages ou d''os étrangers, ce qui témoigne d''une culture florissante en matière de commerce et d''échanges culturels.'),
	('fr_FR',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_RWB_NORTECHICO_CHAPTER_HISTORY_PARA_10',	
	'La musique, par exemple, occupait une place importante dans la culture du Norte Chico. L''abondance de matériaux étrangers utilisés dans la fabrication d''instruments de musique suggère à la fois la présence et l''influence de la musique. Elle n''était pas seulement une forme d''art, mais aussi un moyen d''échange culturel.'),

-----------------------------------------------
-- Unique Unit Civilopedia Entry

-- The content of the below entry represents the detailed entry for your custom civilization's unique unit in the Civilopedia.

-- The format for the element references must follow: LOC_PEDIA_UNITS_PAGE_UNIT_PREFIX_CIVNAME_UU_CHAPTER_HISTORY_PARA_X (where X is the ascending paragraph number). Other entries are possible for different unique element-types - such as BUILDINGS or IMPROVEMENTS. These require replacing UNITS, UNIT and UU respectively in the below example with the appropriate strings.

-- Unique Building example:			LOC_PEDIA_BUILDINGS_PAGE_BUILDING_PREFIX_CIVNAME_UI_CHAPTER_HISTORY_PARA_X
-- Unique Improvement example:		LOC_PEDIA_IMPROVEMENTS_PAGE_IMPROVEMENT_PREFIX_CIVNAME_UI_CHAPTER_HISTORY_PARA_X

-- These elements are inserted through this mod, but are not referenced in other parts of it - the game logic understands that when the elements follow this naming convention, they are to be used to populate the Civilopedia.

-- The total number of paragraphs defined is entirely optional - this can be extended/shortened as required.
-----------------------------------------------

	('en_US',	'LOC_PEDIA_UNITS_PAGE_UNIT_RWB_NORTECHICO_APAQALLINMI_CHAPTER_HISTORY_PARA_1',
	 'Norte Chico sites held no trace of warmongering nor weaponry -- probably meaning that either war wasn''t something they practiced or there are no traces of it. Whatever the truth is, the civilization of Norte Chico is marked by its two-headed people : Religious and Craftsmen. Apaq Allinmis can be translated as "Bearers of Success", as faith-fueled craftsmen whose presence preaches and spreads good word while helping the common effort toward infrastructures.'	),
    ('fr_FR',	'LOC_PEDIA_UNITS_PAGE_UNIT_RWB_NORTECHICO_APAQALLINMI_CHAPTER_HISTORY_PARA_1',
    'Les sites de Norte Chico ne présentent aucune trace de guerre ni d''armement, ce qui signifie probablement que la guerre n''était pas pratiquée ou qu''il n''y a plus aucune trace de celle-ci de traces de guerre. Quoi qu''il en soit, la civilisation du Norte Chico se caractérise par un peuple bicéphale : Les religieux et les artisans. Apaq Allinmis peut se traduire par "Porteurs de Succès", des artisans animés par la foi dont la présence prêche et répand la bonne parole tout en participant à l''effort commun vers les infrastructures locales.'	),
	
	('en_US',	'LOC_PEDIA_DISTRICTS_PAGE_RWB_NORTECHICO_CIUDAD_SAGRADA_CHAPTER_HISTORY_PARA_1',
	 'ddd'	),
	('en_US',	'LOC_PEDIA_DISTRICTS_PAGE_RWB_NORTECHICO_CIUDAD_SAGRADA_CHAPTER_HISTORY_PARA_2',
	 'ddd'	),
    ('fr_FR',	'LOC_PEDIA_DISTRICTS_PAGE_RWB_NORTECHICO_CIUDAD_SAGRADA_CHAPTER_HISTORY_PARA_1',
    'ddd'	),
    ('fr_FR',	'LOC_PEDIA_DISTRICTS_PAGE_RWB_NORTECHICO_CIUDAD_SAGRADA_CHAPTER_HISTORY_PARA_2',
    'ddd'	),
	
	('en_US',	'LOC_PEDIA_BUILDINGS_PAGE_UNIT_RWB_NORTECHICO_SUNKEN_PLAZA_CHAPTER_HISTORY_PARA_1',
	 'ddd'	),
    ('fr_FR',	'LOC_PEDIA_BUILDINGS_PAGE_UNIT_RWB_NORTECHICO_SUNKEN_PLAZA_CHAPTER_HISTORY_PARA_1',
    'ddd'	),
	
	('en_US',	'LOC_PEDIA_BUILDINGS_PAGE_UNIT_RWB_NORTECHICO_PIRAMIDE_CHAPTER_HISTORY_PARA_1',
	 'ddd'	),
    ('fr_FR',	'LOC_PEDIA_BUILDINGS_PAGE_UNIT_RWB_NORTECHICO_PIRAMIDE_CHAPTER_HISTORY_PARA_1',
    'ddd'	),
	
	('en_US',	'LOC_PEDIA_BUILDINGS_PAGE_UNIT_RWB_NORTECHICO_HUANCA_CHAPTER_HISTORY_PARA_1',
	 'ddd'	),
    ('fr_FR',	'LOC_PEDIA_BUILDINGS_PAGE_UNIT_RWB_NORTECHICO_HUANCA_CHAPTER_HISTORY_PARA_1',
    'ddd'	);

