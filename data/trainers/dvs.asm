TrainerClassDVs:
; entries correspond to trainer classes (see constants/trainer_constants.asm)
	;  atk,def,spd,spc
	; Don't make the atk DV 2, 3, 6, 7, 10, 11, 14 or 15 when all others are 10.
if DEF(_CHALLENGE)
	dn 13, 13, 13, 13 ; WALKER
	dn 12, 12, 12, 12 ; MILTON
	dn 12, 10, 10, 10 ; KURT
	dn 12, 10, 10, 10 ; ENOKI
	dn 12, 10, 10, 10 ; PRYCE
	dn 15, 15, 10, 10 ; BYRON
	dn 12, 10, 10, 10 ; CHUCK
	dn 12, 10, 10, 10 ; CLAIR
	dn 15, 15, 15, 15 ; RIVAL1
	dn 15, 15, 15, 15 ; POKEMON_PROF
	dn 13, 12, 13, 13 ; FLORINA
	dn 13, 12, 13, 13 ; CAL
	dn 13, 12, 13, 13 ; MARTHA
	dn 10, 15, 15, 15 ; AGATHA
	dn 15, 14, 15, 15 ; KOGA
	dn 15, 14, 15, 15 ; CHAMPION
	dn 12, 10, 10, 10 ; FLINT
	dn 12, 10, 10, 10 ; MISTY
	dn 12, 10, 10, 10 ; LT_SURGE
	dn 12, 10, 10, 10 ; SCIENTIST
	dn 10, 10, 10, 10 ; ERIKA
	dn 12, 10, 10, 10 ; YOUNGSTER
	dn 12, 10, 10, 10 ; SCHOOLBOY
	dn 12, 10, 10, 10 ; BIRD_KEEPER
	dn  8, 10, 10, 10 ; LASS
	dn 12, 10, 10, 10 ; JANINE
	dn 13,  8, 12,  8 ; COOLTRAINERM
	dn  9, 14, 14, 10 ; COOLTRAINERF
	dn  8, 11, 14, 10 ; BEAUTY
	dn 12, 10, 10, 10 ; POKEMANIAC
	dn 15, 10, 12, 10 ; GRUNTM
	dn 12, 10, 10, 10 ; GENTLEMAN
	dn 12, 10, 10, 10 ; SKIER
	dn  9, 10, 10, 10 ; TEACHER
	dn  9, 15, 15, 15 ; SABRINA
	dn 12, 10, 10, 10 ; BUG_CATCHER
	dn 12, 10, 10, 10 ; FISHER
	dn 12, 10, 10, 10 ; SWIMMERM
	dn 12, 10, 10, 10 ; SWIMMERF
	dn 12, 10, 10, 10 ; SAILOR
	dn 12, 10, 10, 10 ; SUPER_NERD
	dn 15, 15, 15, 15 ; RIVAL2
	dn 12, 10, 10, 10 ; GUITARIST
	dn 12, 10, 10, 10 ; HIKER
	dn 12, 10, 10, 10 ; BIKER
	dn 14, 14, 14, 14 ; BLAINE
	dn 12, 10, 10, 10 ; BURGLAR
	dn 12, 10, 10, 10 ; FIREBREATHER
	dn 12, 10, 10, 10 ; JUGGLER
	dn 12, 10, 10, 10 ; BLACKBELT_T
	dn 15, 10, 12, 10 ; ARCHER
	dn 12, 10, 10, 10 ; PSYCHIC_T
	dn  9, 12, 12, 10 ; PICNICKER
	dn 12, 10, 10, 10 ; CAMPER
	dn 10, 15, 12, 10 ; ARIANA
	dn 12, 10, 10, 10 ; SAGE
	dn 12, 10, 10, 10 ; MEDIUM
	dn 12, 10, 10, 10 ; BOARDER
	dn 12, 10, 10, 10 ; POKEFANM
	dn  9, 10, 10, 12 ; KIMONO_GIRL
	dn  9, 10, 12, 10 ; TWINS
	dn  8, 15, 10, 10 ; POKEFANF
	dn 15, 13, 13, 14 ; RED
	dn 15, 15, 15, 15 ; GIOVANNI
	dn 12, 10, 10, 10 ; OFFICER
	dn  9, 15, 12, 10 ; GRUNTF
	dn 12, 10, 10, 10 ; MYSTICALMAN
	dn 15, 15, 15, 15 ; RIVAL3
	dn 15, 15, 15, 15 ; RIVAL4
	dn 11, 11, 14, 10 ; BREEDER
	dn  9, 10, 10, 10 ; HEX_MANIAC
	dn 12, 10, 10, 10 ; CHIGUSA
	dn 14, 14, 15, 15 ; MASTER
	dn 15, 14, 15, 15 ; GEN_SURGE
	dn 12, 10, 10, 10 ; LANCE
	dn 12, 10, 10, 10 ; PASSERBY
	dn 12, 10, 10, 10 ; MIYAMOTO
	dn 15, 14, 15, 15 ; TOURIST
	dn 12, 10, 10, 10 ; ENGINEER
	dn 12, 10, 13, 10 ; MNINJA_M
	dn 10, 12, 13, 10 ; MNINJA_F
	dn 15, 15, 15, 15 ; DEPRESSED_DAHLIA
	dn 15, 15, 15, 15 ; DEPRESSED_DRACO
	dn 15, 10, 12, 10 ; EIN
	dn  9, 14, 14, 10 ; DRAGON_TAMER_F
	dn 15, 10, 14, 10 ; DRAGON_TAMER_M
	dn 15, 15, 15, 15 ; MADAME_BOSS
	dn 15, 14, 15, 15 ; CYNTHIA
	dn 12, 10, 10, 10 ; FLORINA_2
	dn 12, 10, 10, 10 ; PRYCE2
	dn 12, 10, 10, 10 ; PRYCE3
	dn 12, 10, 10, 10 ; ENOKI2
	dn 12, 10, 10, 10 ; ENOKI3
	dn 12, 10, 10, 10 ; CHIGUSA2
	dn 14, 14, 10, 10 ; BYRON2
	dn 15, 15, 15, 15 ; LINK_TRAINER
	dn 15, 15, 15, 15 ; FED_LEADER
	dn 15, 14, 15, 15 ; CHAMPION
	dn 15, 14, 15, 15 ; CHALLENGER
	dn 15, 14, 15, 15 ; CHALLENGER
	dn 15, 14, 15, 15 ; TOURIST
	dn 12, 11, 11, 11 ; DELINQUENT
	dn 12, 10, 10, 10 ; DAISY
	dn 12, 10, 10, 10 ; LILY
	dn 12, 10, 10, 10 ; ROUGHNECK
	dn 12, 10, 10, 10 ; SOLDIER
	dn 15, 14, 13, 13 ; KARATE_KING
	dn 12, 10, 13, 10 ; FNINJA_M
	dn 10, 12, 13, 10 ; FNINJA_F
else
	dn  9, 10,  7,  7 ; WALKER
	dn  8,  8,  8,  8 ; MILTON
	dn  9,  8,  8,  8 ; KURT
	dn  9,  8,  8,  8 ; ENOKI
	dn  9,  8,  8,  8 ; PRYCE
	dn  12, 12, 8,  8 ; BYRON
	dn  9,  8,  8,  8 ; CHUCK
	dn  7,  8,  8,  8 ; CLAIR
	dn 13, 13, 13, 13 ; RIVAL1
	dn 15, 15, 15, 15 ; POKEMON_PROF
	dn 13, 12, 13, 13 ; FLORINA
	dn 13, 12, 13, 13 ; CAL
	dn 13, 12, 13, 13 ; MARTHA
	dn  7, 15, 13, 15 ; AGATHA
	dn 13, 12, 13, 13 ; KOGA
	dn 13, 12, 13, 13 ; CHAMPION
	dn  9,  8,  8,  8 ; FLINT
	dn  7,  8,  8,  8 ; MISTY
	dn  9,  8,  8,  8 ; LT_SURGE
	dn  9,  8,  8,  8 ; SCIENTIST
	dn  7,  8,  8,  8 ; ERIKA
	dn  9,  8,  8,  8 ; YOUNGSTER
	dn  9,  8,  8,  8 ; SCHOOLBOY
	dn  9,  8,  8,  8 ; BIRD_KEEPER
	dn  5,  8,  8,  8 ; LASS
	dn  9,  8,  8,  8 ; JANINE
	dn 13,  8, 12,  8 ; COOLTRAINERM
	dn  7, 12, 12,  8 ; COOLTRAINERF
	dn  6,  9, 12,  8 ; BEAUTY
	dn  9,  8,  8,  8 ; POKEMANIAC
	dn 13,  8, 10,  8 ; GRUNTM
	dn  9,  8,  8,  8 ; GENTLEMAN
	dn  9,  8,  8,  8 ; SKIER
	dn  6,  8,  8,  8 ; TEACHER
	dn  7, 13,  8,  7 ; SABRINA
	dn  9,  8,  8,  8 ; BUG_CATCHER
	dn  9,  8,  8,  8 ; FISHER
	dn  9,  8,  8,  8 ; SWIMMERM
	dn  7,  8,  8,  8 ; SWIMMERF
	dn  9,  8,  8,  8 ; SAILOR
	dn  9,  8,  8,  8 ; SUPER_NERD
	dn  9,  8,  8,  8 ; RIVAL2
	dn  9,  8,  8,  8 ; GUITARIST
	dn 10,  8,  8,  8 ; HIKER
	dn  9,  8,  8,  8 ; BIKER
	dn  9,  8,  8,  8 ; BLAINE
	dn  9,  8,  8,  8 ; BURGLAR
	dn  9,  8,  8,  8 ; FIREBREATHER
	dn  9,  8,  8,  8 ; JUGGLER
	dn  9,  8,  8,  8 ; BLACKBELT_T
	dn 13,  8, 10,  8 ; ARCHER
	dn  9,  8,  8,  8 ; PSYCHIC_T
	dn  6, 10, 10,  8 ; PICNICKER
	dn  9,  8,  8,  8 ; CAMPER
	dn  7, 14, 10,  8 ; ARIANA
	dn  9,  8,  8,  8 ; SAGE
	dn  7,  8,  8,  8 ; MEDIUM
	dn  9,  8,  8,  8 ; BOARDER
	dn  9,  8,  8,  8 ; POKEFANM
	dn  6,  8,  8, 10 ; KIMONO_GIRL
	dn  6,  8, 10,  8 ; TWINS
	dn  6, 13,  8,  8 ; POKEFANF
	dn 15, 13, 13, 14 ; RED
	dn 15, 13, 13, 13 ; GIOVANNI
	dn  9,  8,  8,  8 ; OFFICER
	dn  7, 14, 10,  8 ; GRUNTF
	dn  9,  8,  8,  8 ; MYSTICALMAN
	dn 13, 13, 13, 13 ; RIVAL3
	dn 13, 13, 13, 13 ; RIVAL4
	dn  9,  9, 12,  8 ; BREEDER
	dn  7,  8,  8,  8 ; HEX_MANIAC
	dn  9,  8,  8,  8 ; CHIGUSA
	dn 12, 12, 13, 13 ; MASTER
	dn 13, 12, 13, 13 ; GEN_SURGE
	dn  9,  8,  8,  8 ; LANCE
	dn  7,  8,  8,  8 ; PASSERBY
	dn  7,  8,  8,  8 ; MIYAMOTO
	dn 13, 12, 13, 13 ; TOURIST
	dn  9,  8,  8,  8 ; ENGINEER
	dn 10,  8, 11,  8 ; MNINJA_M
	dn  8, 10, 11,  8 ; MNINJA_F
	dn 13, 13, 13, 13 ; DEPRESSED_DAHLIA
	dn 13, 13, 13, 13 ; DEPRESSED_DRACO
	dn 13,  8, 10,  8 ; EIN
	dn  7, 12, 12,  8 ; DRAGON_TAMER_F
	dn 13,  8, 12,  8 ; DRAGON_TAMER_M
	dn 14, 14, 14, 14 ; MADAME_BOSS
	dn 13, 12, 13, 13 ; CYNTHIA
	dn  7,  8,  8,  8 ; FLORINA_2
	dn  9,  8,  8,  8 ; PRYCE2
	dn  9,  8,  8,  8 ; PRYCE3
	dn  9,  8,  8,  8 ; ENOKI2
	dn  9,  8,  8,  8 ; ENOKI3
	dn  9,  8,  8,  8 ; CHIGUSA2
	dn 12, 12,  8,  8 ; BYRON2
	dn 15, 15, 15, 15 ; LINK_TRAINER
	dn 15, 15, 15, 15 ; FED_LEADER
	dn 13, 12, 13, 13 ; CHAMPION
	dn 13, 12, 13, 13 ; CHALLENGER
	dn 13, 12, 13, 13 ; CHALLENGER
	dn 13, 12, 13, 13 ; TOURIST
	dn 10,  9,  9,  9 ; DELINQUENT
	dn  7,  8,  8,  8 ; DAISY
	dn  7,  8,  8,  8 ; LILY
	dn  9,  8,  8,  8 ; ROUGHNECK
	dn  9,  8,  8,  8 ; SOLDIER
	dn 15, 12, 11, 11 ; KARATE_KING
	dn 10,  8, 11,  8 ; FNINJA_M
	dn  8, 10, 11,  8 ; FNINJA_F
endc
