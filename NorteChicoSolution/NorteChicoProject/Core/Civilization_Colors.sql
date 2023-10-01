/*
	Civilization Badge Colours
	Authors: MC
*/

-----------------------------------------------
-- Colors

-- This configures four colour options for your custom civilization. All values are formatted as RGBA - with the A (Alpha) channel always set to 255.

-- In this file/section, all we are doing is defining the colours and giving them unique string 'names'. We'll assign them to our civilization (via our Leader) in a separate file (Leader_Colors.sql).
-----------------------------------------------

INSERT OR REPLACE INTO	Colors
		(Type,										Color				)
VALUES	('COLOR_RWB_NORTECHICO_A_PRIMARY',			'0,80,82,255'		),
		('COLOR_RWB_NORTECHICO_A_SECONDARY',		'187,193,129,255'	),
		('COLOR_RWB_NORTECHICO_B_PRIMARY',			'187,193,129,255'	),
		('COLOR_RWB_NORTECHICO_B_SECONDARY',		'0,80,82,255'		),
		('COLOR_RWB_NORTECHICO_C_PRIMARY',			'255,255,255,255'	),
		('COLOR_RWB_NORTECHICO_C_SECONDARY',		'0,80,82,255'		),
		('COLOR_RWB_NORTECHICO_D_PRIMARY',			'0,80,82,255'		),
		('COLOR_RWB_NORTECHICO_D_SECONDARY',		'255,255,255,255'	);