	db 0 ; species ID placeholder

	db  60,  55,  50,  45,  40,  55
	;   hp  atk  def  spd  sat  sdf

	db BUG, PSYCHIC ; type
	db 190 ; catch rate
	db 75 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/venonat/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm CURSE, HEX, TOXIC, HIDDEN_POWER, SUNNY_DAY, DAZZLINGLEAM, PROTECT, GIGA_DRAIN, SOLARBEAM, RETURN, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, REFLECT, SLUDGE_BOMB, SUBSTITUTE, REST, ATTRACT, THIEF, ENERGY_BALL, CALM_MIND, NASTY_PLOT, DREAM_EATER, SLEEP_TALK, X_SCISSOR, DARK_PULSE, VENOSHOCK, MOONBLAST, HYPNOSIS
	; end
