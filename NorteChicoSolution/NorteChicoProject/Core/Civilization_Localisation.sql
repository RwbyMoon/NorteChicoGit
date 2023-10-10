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
	'Unique district of Norte Chico that cannot be placed adjacent to the city center, used for stability and growth endeavors. It possesses 3 unique buildings (the Sunken Plaza, the Pirámide and the Huenca), buildable in any order.[NEWLINE][NEWLINE]One of these buildings can be built in each Ciudad Sagrada once the civic "Early Empire" has been researched, a second on "Theology" and the last on "Guilds".[NEWLINE][NEWLINE]+1 [ICON_Citizen] Population upon construction of this District and for every of its Buildings.[NEWLINE][NEWLINE]Great Prophets may found a religion on a Ciudad Sagrada instead of a Holy Site.'	),
	('fr_FR',	'LOC_DISTRICT_RWB_NORTECHICO_CIUDAD_SAGRADA_DESCRIPTION',
	'Destiné à des fins de stabilisation de ville et de croissance, ce quartier exclusif du peuple de Norte Chico dispose de 3 bâtiments uniques (la Place Submergée, la Pirámide et le Huenca), constructible dans n''importe quel ordre.[NEWLINE][NEWLINE]Un seul de ces bâtiments peut être construit dans chaque Ciudad Sagrada une fois le dogme "Premier Empire" a été recherché, le second à "Théologie" et le dernier à "Guildes".[NEWLINE][NEWLINE]+1 [ICON_Citizen] Population lors de la construction du Quartier et de chacun de ses bâtiments.[NEWLINE][NEWLINE]Les Prophètes Illustres peuvent fonder une religion sur une Ciudad Sagrada au lieu d''un Lieu Saint.'	),

    -- Huenca
    ('en_US',	'LOC_BUILDING_RWB_NORTECHICO_HUENCA_NAME',				'Huenca'								),
    ('en_US',	'LOC_BUILDING_RWB_NORTECHICO_HUENCA_DESCRIPTION',
     'Unique building of the Ciudad Sagrada district, useful for religious endeavors. [NEWLINE][NEWLINE]Only one of these buildings can be built in each Ciudad Sagrada once the civic "Early Empire" has been researched, a second on "Theology" and the last on "Guilds". This building do not grant Era Score for first completion.'	),
    ('fr_FR',	'LOC_BUILDING_RWB_NORTECHICO_HUENCA_DESCRIPTION',
     'Bâtiment unique de la Ciudad Sagrada, utile à des fonctions religieuses. [NEWLINE][NEWLINE]Un seul bâtiment de la Ciudad Sagrada peut être construit dans chaque Ciudad Sagrada une fois le dogme "Premier Empire" a été recherché, le second à "Théologie" et le dernier à "Guildes". Ce bâtiment unique ne confère pas de Score d''Ère à la première construction.'	),

    -- Sunken Plaza
    ('en_US',	'LOC_BUILDING_RWB_NORTECHICO_SUNKEN_PLAZA_NAME',		'Sunken Plaza'								),
    ('fr_FR',	'LOC_BUILDING_RWB_NORTECHICO_SUNKEN_PLAZA_NAME',		'Place Submergée'								),
    ('en_US',	'LOC_BUILDING_RWB_NORTECHICO_SUNKEN_PLAZA_DESCRIPTION',
     'Unique building of the Ciudad Sagrada district, useful for cultural and touristic endeavors. [NEWLINE][NEWLINE]Only one of these buildings can be built in each Ciudad Sagrada once the civic "Early Empire" has been researched, a second on "Theology" and the last on "Guilds". This building do not grant Era Score for first completion.[NEWLINE][NEWLINE]+1 [ICON_Culture] Culture, +1 [ICON_Tourism] Tourism for every [ICON_GreatWork_Landscape] Great Works in this city, doubled for [ICON_GreatWork_Music] Great Works of Music.'	),
    ('fr_FR',	'LOC_BUILDING_RWB_NORTECHICO_SUNKEN_PLAZA_DESCRIPTION',
     'Bâtiment unique de la Ciudad Sagrada, clé pour un apport culturel et touristique. [NEWLINE][NEWLINE]Un seul bâtiment de la Ciudad Sagrada peut être construit dans chaque Ciudad Sagrada une fois le dogme "Premier Empire" a été recherché, le second à "Théologie" et le dernier à "Guildes". Ce bâtiment unique ne confère pas de Score d''Ère à la première construction.[NEWLINE][NEWLINE]+1 [ICON_Culture] Culture, +1 [ICON_Tourism] Tourisme pour chaque [ICON_GreatWork_Landscape] Chefs-d''Oeuvres dans la ville, doublé pour les [ICON_GreatWork_Music] Chefs-d''Oeuvres de Musique.'	),

    -- Pirámide
    ('en_US',	'LOC_BUILDING_RWB_NORTECHICO_PIRAMIDE_NAME',			'Pirámide'								),
    ('en_US',	'LOC_BUILDING_RWB_NORTECHICO_PIRAMIDE_DESCRIPTION',
     'Unique building of the Ciudad Sagrada district, useful for housing large productive and richer cities. [NEWLINE][NEWLINE]Only one of these buildings can be built in each Ciudad Sagrada once the civic "Early Empire" has been researched, a second on "Theology" and the last on "Guilds". This building do not grant Era Score for first completion.[NEWLINE][NEWLINE]+0.5 [ICON_Gold] Gold, +0.5 [ICON_Production] Production per [ICON_Citizen] Citizen in this city.'	),
    ('fr_FR',	'LOC_BUILDING_RWB_NORTECHICO_PIRAMIDE_DESCRIPTION',
     'Bâtiment unique de la Ciudad Sagrada, permettant l''hébergement de villes peuplées productives et plus riches.[NEWLINE][NEWLINE]Un seul bâtiment de la Ciudad Sagrada peut être construit dans chaque Ciudad Sagrada une fois le dogme "Premier Empire" a été recherché, le second à "Théologie" et le dernier à "Guildes". Ce bâtiment unique ne confère pas de Score d''Ère à la première construction.[NEWLINE][NEWLINE]+0.5 [ICON_Gold] Or +0.5 [ICON_Production] Production par [ICON_Citizen] Citoyen dans la ville.'	),

-----------------------------------------------
-- Civilization Unique Unit
-----------------------------------------------

	('en_US',	'LOC_UNIT_RWB_APAQALLINM_NAME',	'Apaq Allinm'	),
	('en_US',	'LOC_UNIT_RWB_APAQALLINM_DESCRIPTION',	 
	'Unique religious craftsman of Norte Chico, which is a more expensive replacement of the Apostle with +1 Sight having 1 [ICON_Charges] Build Charge, allowing it to build improvements identical to Builders.'	),
	('en_US',	'LOC_UNIT_RWB_APAQALLINM_DESCRIPTION',	 
	'Artisan religieux exclusif au peuple de Norte Chico remplaçant l''Apôtre, disposant de +1 Vision et d''1 [ICON_Charges] Charge de Construction, lui permettant de construire des aménagements identiques aux Bâtisseurs.'	),

-----------------------------------------------
-- Rivers
-----------------------------------------------

	('en_US',	'LOC_NAMED_RIVER_RWB_FORTALEZA',	'Fortaleza'		),
	('en_US',	'LOC_NAMED_RIVER_RWB_PATIVILCA',	'Río Pativilca'	),
	('en_US',	'LOC_NAMED_RIVER_RWB_SUPE',			'Supe'			),
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
-- Seas
-----------------------------------------------

	('en_US',	'LOC_NAMED_SEA_RWB_MAR_DE_GRAU',			'Mar de Grau'			),

-----------------------------------------------
-- Mountains
-----------------------------------------------

	('en_US',	'LOC_NAMED_MOUNTAIN_RWB_CORDILLERA_BLANCA',		 'Cordillera Blanca'		),
	('en_US',	'LOC_NAMED_MOUNTAIN_RWB_CORDILLERA_HUAYHUASH',	 'Cordillera Huayhuash'		),
	('en_US',	'LOC_NAMED_MOUNTAIN_RWB_CORDILLERA_VILCANOTA',	 'Cordillera Vilcanota'		),
	('en_US',	'LOC_NAMED_MOUNTAIN_RWB_CORDILLERA_VILCABAMBA',	 'Cordillera Vilcabamba'	),
	('en_US',	'LOC_NAMED_MOUNTAIN_RWB_CORDILLERA_APOLOBAMBA',	 'Cordillera Apolobamba'	),

-----------------------------------------------
-- Volcanoes
-----------------------------------------------

	('en_US',	'LOC_NAMED_VOLCANO_RWB_HUAYNAPUTINA',	'Huaynaputina'		),
	('en_US',	'LOC_NAMED_VOLCANO_RWB_YUCAMANE',		'Yucamane'			),
	('en_US',	'LOC_NAMED_VOLCANO_RWB_TUTUPACA',		'Tutupaca'			),
	('en_US',	'LOC_NAMED_VOLCANO_RWB_AMPATO',			'Ampato'			),
	('en_US',	'LOC_NAMED_VOLCANO_RWB_COROPUNA',		'Coropuna'			),
	('en_US',	'LOC_NAMED_VOLCANO_RWB_SOLIMANA',		'Solimana'			),
	('en_US',	'LOC_NAMED_VOLCANO_RWB_AUQUIHUATO',		'Auquihuato'		),
	('en_US',	'LOC_NAMED_VOLCANO_RWB_SABANCAYA',		'Sabancaya'			),
	('en_US',	'LOC_NAMED_VOLCANO_RWB_SARASARA',		'Sara Sara'			),
	('en_US',	'LOC_NAMED_VOLCANO_RWB_PURUPURUNI',		'Purupuruni'		),
	('en_US',	'LOC_NAMED_VOLCANO_RWB_TICSANI',		'Ticsani'			),
	('en_US',	'LOC_NAMED_VOLCANO_RWB_UBINAS',			'Ubinas'			),
	('en_US',	'LOC_NAMED_VOLCANO_RWB_MISTI',			'Misti'				),

-----------------------------------------------
-- Cities
-----------------------------------------------

	('en_US',	'LOC_CITY_NAME_RWB_NORTECHICO_1',  'San Lorenzo'),
	('en_US',	'LOC_CITY_NAME_RWB_NORTECHICO_2',  'La Velta'),
	('en_US',	'LOC_CITY_NAME_RWB_NORTECHICO_3',  'Potrero Nuevo'),
	('en_US',	'LOC_CITY_NAME_RWB_NORTECHICO_4',  'San Andrés'),
	('en_US',	'LOC_CITY_NAME_RWB_NORTECHICO_5',  'Cobata'),
	('en_US',	'LOC_CITY_NAME_RWB_NORTECHICO_6',  'Llano del Jicaro'),
	('en_US',	'LOC_CITY_NAME_RWB_NORTECHICO_7',  'San Martin Pajapan'),
	('en_US',	'LOC_CITY_NAME_RWB_NORTECHICO_8',  'Arroyo Sonso'),
	('en_US',	'LOC_CITY_NAME_RWB_NORTECHICO_9',  'Las Limas'),
	('en_US',	'LOC_CITY_NAME_RWB_NORTECHICO_10',  'El Manati'),
	('en_US',	'LOC_CITY_NAME_RWB_NORTECHICO_11',  'Cascajal'),
	('en_US',	'LOC_CITY_NAME_RWB_NORTECHICO_12',  'Jilotepeque'),
	('en_US',	'LOC_CITY_NAME_RWB_NORTECHICO_13',  'Pequeno Lorenzo'),
	('en_US',	'LOC_CITY_NAME_RWB_NORTECHICO_14',  'Jicaro Nuevo'),
	('en_US',	'LOC_CITY_NAME_RWB_NORTECHICO_15',  'Limas del Nuevo'),
	
-----------------------------------------------
-- Citizens

-- Defines the text strings to be used for the names of citizens by the custom civilization, that were defined in Civilization_Config.sql.
-----------------------------------------------
	
	('en_US',	'LOC_CITIZEN_RWB_NORTECHICO_MALE_1',		'Ikal'		),
	('en_US',	'LOC_CITIZEN_RWB_NORTECHICO_MALE_2',		'Tanok'		),
	('en_US',	'LOC_CITIZEN_RWB_NORTECHICO_MALE_3',		'Kabil'		),
	('en_US',	'LOC_CITIZEN_RWB_NORTECHICO_MALE_4',		'Kasakir'	),
	('en_US',	'LOC_CITIZEN_RWB_NORTECHICO_MALE_5',		'Irepani'	),
	('en_US',	'LOC_CITIZEN_RWB_NORTECHICO_MALE_6',		'Iktan'		),
	('en_US',	'LOC_CITIZEN_RWB_NORTECHICO_MALE_7',		'Seneca'	),
	('en_US',	'LOC_CITIZEN_RWB_NORTECHICO_MALE_8',		'Tlayolotl'	),
	('en_US',	'LOC_CITIZEN_RWB_NORTECHICO_MALE_9',		'Rahui'		),
	('en_US',	'LOC_CITIZEN_RWB_NORTECHICO_MALE_10',		'Tsijiari'	),
	('en_US',	'LOC_CITIZEN_RWB_NORTECHICO_FEMALE_1',	'Ajaniame'	),
	('en_US',	'LOC_CITIZEN_RWB_NORTECHICO_FEMALE_2',	'Taiyari'	),
	('en_US',	'LOC_CITIZEN_RWB_NORTECHICO_FEMALE_3',	'Shanarani'	),
	('en_US',	'LOC_CITIZEN_RWB_NORTECHICO_FEMALE_4',	'Erendirani'),
	('en_US',	'LOC_CITIZEN_RWB_NORTECHICO_FEMALE_5',	'Soona'		),
	('en_US',	'LOC_CITIZEN_RWB_NORTECHICO_FEMALE_6',	'Yatzil'	),
	('en_US',	'LOC_CITIZEN_RWB_NORTECHICO_FEMALE_7',	'Nakawe'	),
	('en_US',	'LOC_CITIZEN_RWB_NORTECHICO_FEMALE_8',	'Inda Jani'	),
	('en_US',	'LOC_CITIZEN_RWB_NORTECHICO_FEMALE_9',	'Axochitl'	),
	('en_US',	'LOC_CITIZEN_RWB_NORTECHICO_FEMALE_10',	'Sesasi'	),
	
-----------------------------------------------
-- Info

-- These define the text strings that primarily appear in the Civilopedia - specifically in the side-bar that describes some further flavour information about your custom civilization.

-- Please note: the entries here are for flavour only. The values do not affect gameplay in any way - specifically, the LOC_CIVINFO_PREFIX_CIVNAME_CAPITAL value does not dictate the capital in-game.
-----------------------------------------------

	('en_US',	'LOC_CIVINFO_RWB_NORTECHICO_LOCATION',		'Mesoamerica'		),
	('en_US',	'LOC_CIVINFO_RWB_NORTECHICO_SIZE',			'2.3 million km²'	),
	('en_US',	'LOC_CIVINFO_RWB_NORTECHICO_POPULATION',		'c. 14 million'		),
	('en_US',	'LOC_CIVINFO_RWB_NORTECHICO_CAPITAL',			'San Lorenzo'		),

-----------------------------------------------
-- Civilopedia

-- The content of the below entries represents the detailed entry for your custom civilization in the Civilopedia.

-- The format for the element references must follow: LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_PREFIX_CIVNAME_CHAPTER_HISTORY_PARA_X (where X is the ascending paragraph number).

-- These elements are inserted through this mod, but are not referenced in other parts of it - the game logic understands that when the elements follow this naming convention, they are to be used to populate the Civilopedia.

-- The total number of paragraphs defined is entirely optional - this can be extended/shortened as required.
-----------------------------------------------

	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_RWB_NORTECHICO_CHAPTER_HISTORY_PARA_1',		
	'The Olmecs were the earliest known major Mesoamerican civilization. Following a progressive development in Soconusco, they occupied the tropical lowlands of the modern-day Mexican states of Veracruz and Tabasco. It has been speculated that the Olmecs derived in part from the neighboring Mokaya or Mixe–Zoque cultures.'),	
	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_RWB_NORTECHICO_CHAPTER_HISTORY_PARA_2',		
	'The Olmecs flourished during the Mesoamerican formative period, dating roughly from as early as 1500 BCE to about 400 BCE. Pre-Olmec cultures had flourished since about 2500 BCE, but by 1600–1500 BCE, early Olmec culture had emerged, centered on the San Lorenzo Tenochtitlan site near the coast in southeast Veracruz. They were the first Mesoamerican civilization, and laid many of the foundations for the civilizations that followed. Among other "firsts", the Olmec appeared to practice ritual bloodletting and played the Mesoamerican ballgame, hallmarks of nearly all subsequent Mesoamerican societies. The aspect of the Olmecs most familiar now is their artwork, particularly the aptly named "colossal heads". The Olmec civilization was first defined through artifacts which collectors purchased on the pre-Columbian art market in the late 19th century and early 20th century. Olmec artworks are considered among ancient America`s most striking.'),	
	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_RWB_NORTECHICO_CHAPTER_HISTORY_PARA_3',	
	'The Olmec heartland is the area in the Gulf lowlands where it expanded after early development in Soconusco, Veracruz. This area is characterized by swampy lowlands punctuated by low hills, ridges, and volcanoes. The Tuxtlas Mountains rise sharply in the north, along the Bay of Campeche. Here, the Olmec constructed permanent city-temple complexes at San Lorenzo Tenochtitlan, La Venta, Tres Zapotes, and Laguna de los Cerros. In this region, the first Mesoamerican civilization emerged and reigned from c. 1400–400 BCE.'),
	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_RWB_NORTECHICO_CHAPTER_HISTORY_PARA_4',	
	'Origins'),
	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_RWB_NORTECHICO_CHAPTER_HISTORY_PARA_5',	
	'The beginnings of Olmec civilization have traditionally been placed between 1400 and 1200 BCE. Past finds of Olmec remains ritually deposited at El Manati shrine (near San Lorenzo) moved this back to at least 1600–1500 BCE. It seems that the Olmec had their roots in early farming cultures of Tabasco, which began between 5100 BCE and 4600 BCE. These shared the same basic food crops and technologies of the later Olmec civilization.'),
	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_RWB_NORTECHICO_CHAPTER_HISTORY_PARA_6',	
	'What is today called Olmec first appeared fully within the city of San Lorenzo Tenochtitlan, where distinctive Olmec features occurred around 1400 BCE. The rise of civilization was assisted by the local ecology of well-watered alluvial soil, as well as by the transportation network provided by the Coatzacoalcos River basin. This environment may be compared to that of other ancient centers of civilization: the Nile, Indus, and Yellow River valleys, and Mesopotamia. This highly productive environment encouraged a densely concentrated population, which in turn triggered the rise of an elite class. The elite class created the demand for the production of the symbolic and sophisticated luxury artifacts that define Olmec culture. Many of these luxury artifacts were made from materials such as jade, obsidian, and magnetite, which came from distant locations and suggest that early Olmec elites had access to an extensive trading network in Mesoamerica. The source of the most valued jade was the Motagua River valley in eastern Guatemala, and Olmec obsidian has been traced to sources in the Guatemala highlands, such as El Chayal and San Martin Jilotepeque, or in Puebla, distances ranging from 200 to 400 km (120–250 miles) away, respectively.'),
	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_RWB_NORTECHICO_CHAPTER_HISTORY_PARA_7',	
	'The state of Guerrero, and in particular its early Mezcala culture, seem to have played an important role in the early history of Olmec culture. Olmec-style artifacts tend to appear earlier in some parts of Guerrero than in the Veracruz-Tabasco area. In particular, the relevant objects from the Amuco-Abelino site in Guerrero reveal dates as early as 1530 BCE. The city of Teopantecuanitlan in Guerrero is also relevant in this regard.'),
	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_RWB_NORTECHICO_CHAPTER_HISTORY_PARA_8',	
	'La Venta'),
	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_RWB_NORTECHICO_CHAPTER_HISTORY_PARA_9',	
	'The first Olmec center, San Lorenzo, was all but abandoned around 900 BCE at about the same time that La Venta rose to prominence. A wholesale destruction of many San Lorenzo monuments also occurred circa 950 BCE, which may indicate an internal uprising or, less likely, an invasion. The latest thinking, however, is that environmental changes may have been responsible for this shift in Olmec centers, with certain important rivers changing course.'),
	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_RWB_NORTECHICO_CHAPTER_HISTORY_PARA_10',	
	'In any case, following the decline of San Lorenzo, La Venta became the most prominent Olmec center, lasting from 900 BCE until its abandonment around 400 BCE. La Venta sustained the Olmec cultural traditions with spectacular displays of power and wealth. The Great Pyramid was the largest Mesoamerican structure of its time. Even today, after 2500 years of erosion, it rises 34 m (112 ft) above the naturally flat landscape. Buried deep within La Venta lay opulent, labor-intensive "offerings" – 1000 tons of smooth serpentine blocks, large mosaic pavements, and at least 48 separate deposits of polished jade celts, pottery, figurines, and hematite mirrors.'),
	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_RWB_NORTECHICO_CHAPTER_HISTORY_PARA_11',	
	'Decline'),
	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_RWB_NORTECHICO_CHAPTER_HISTORY_PARA_12',	
	'Scholars have yet to determine the cause of the eventual extinction of the Olmec culture. Between 400 and 350 BCE, the population in the eastern half of the Olmec heartland dropped precipitously, and the area was sparsely inhabited until the 19th century. According to archaeologists, this depopulation was probably the result of "very serious environmental changes that rendered the region unsuited for large groups of farmers", in particular changes to the riverine environment that the Olmec depended upon for agriculture, hunting and gathering, and transportation. These changes may have been triggered by tectonic upheavals or subsidence, or the silting up of rivers due to agricultural practices.'),
	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_RWB_NORTECHICO_CHAPTER_HISTORY_PARA_13',	
	'One theory for the considerable population drop during the Terminal Formative period is that the Olmec relocated their settlements due to volcanism, instead of suffering from extinction. Volcanic eruptions during the Early, Late and Terminal Formative periods would have blanketed the lands and forced the Olmec to move their settlements.'),
	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_RWB_NORTECHICO_CHAPTER_HISTORY_PARA_14',	
	'Whatever the cause, within a few hundred years of the abandonment of the last Olmec cities, successor cultures became firmly established. The Tres Zapotes site, on the western edge of the Olmec heartland, continued to be occupied well past 400 BCE, but without the hallmarks of the Olmec culture. This post-Olmec culture, often labeled Epi-Olmec, has features similar to those found at Izapa, some 550 km (330 miles) to the southeast.'),

	-----------------------------------------------
-- Unique Unit Civilopedia Entry

-- The content of the below entry represents the detailed entry for your custom civilization's unique unit in the Civilopedia.

-- The format for the element references must follow: LOC_PEDIA_UNITS_PAGE_UNIT_PREFIX_CIVNAME_UU_CHAPTER_HISTORY_PARA_X (where X is the ascending paragraph number). Other entries are possible for different unique element-types - such as BUILDINGS or IMPROVEMENTS. These require replacing UNITS, UNIT and UU respectively in the below example with the appropriate strings.

-- Unique Building example:			LOC_PEDIA_BUILDINGS_PAGE_BUILDING_PREFIX_CIVNAME_UI_CHAPTER_HISTORY_PARA_X
-- Unique Improvement example:		LOC_PEDIA_IMPROVEMENTS_PAGE_IMPROVEMENT_PREFIX_CIVNAME_UI_CHAPTER_HISTORY_PARA_X

-- These elements are inserted through this mod, but are not referenced in other parts of it - the game logic understands that when the elements follow this naming convention, they are to be used to populate the Civilopedia.

-- The total number of paragraphs defined is entirely optional - this can be extended/shortened as required.
-----------------------------------------------

	('en_US',	'LOC_PEDIA_UNITS_PAGE_UNIT_RWB_NORTECHICO_UU_CHAPTER_HISTORY_PARA_1',  	
	'The Olmecs first used warfare to expand trade and access to resources. Fighters from the Olmec city of San Lorenzo utilized obsidian-edged weapons. Sleight of hand and nimble of foot, they wore carved masks to intimidate their foes.'	);

