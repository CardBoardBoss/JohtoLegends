	object_const_def ; object_event constants
	const FOSSILHOUSE_SCIENTIST
	const FOSSILHOUSE_KID1
	const FOSSILHOUSE_KID2
	const FOSSILHOUSE_KID3

FossilHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

ScientistScript:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .YouNoPatient
	checkevent EVENT_GAVE_OLD_AMBER
	iftrue .Aerodactyl
	checkevent EVENT_GAVE_HELIX_FOSSIL
	iftrue .Omanyte
	checkevent EVENT_GAVE_DOME_FOSSIL
	iftrue .Kabuto
	checkitem OLD_AMBER
	iftrue .AlreadySpokeToScientist
	checkitem HELIX_FOSSIL
	iftrue .AlreadySpokeToScientist
	checkitem DOME_FOSSIL
	iftrue .AlreadySpokeToScientist
	writetext FossilHouseScientistText
	waitbutton
	closetext
	end

.AlreadySpokeToScientist:
	writetext YouHaveFossilText
	yesorno
	iffalse .Refused
	writetext WhichFossil
	loadmenu .FossilMenu
	verticalmenu
	closewindow
	ifequal 1, .OldAmber
	ifequal 2, .HelixFossil
	ifequal 3, .DomeFossil
	sjump .Refused

.Refused:
	writetext FineNoFossilText
	waitbutton
	closetext
	end

.FossilMenu:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 15, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "Old Amber@"
	db "Helix Fossil@"
	db "Dome Fossil@"
	db "Cancel@"

.OldAmber:
	checkitem OLD_AMBER
	iffalse .DontHaveFossil
	takeitem OLD_AMBER
	setevent EVENT_GAVE_OLD_AMBER
	sjump .GaveFossil

.HelixFossil:
	checkitem HELIX_FOSSIL
	iffalse .DontHaveFossil
	takeitem HELIX_FOSSIL
	setevent EVENT_GAVE_HELIX_FOSSIL
	sjump .GaveFossil

.DomeFossil:
	checkitem DOME_FOSSIL
	iffalse .DontHaveFossil
	takeitem DOME_FOSSIL
	setevent EVENT_GAVE_DOME_FOSSIL
	sjump .GaveFossil

.DontHaveFossil:
	opentext
	writetext YouNoHaveFossil
	waitbutton
	closetext
	end

.GaveFossil:
	opentext
	writetext YouGoNow
	waitbutton
	closetext
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	end

.YouNoPatient:
	writetext YouNoPatientText
	waitbutton
	closetext
	end

.Aerodactyl:
	writetext AerodactylText
	buttonsound
	waitsfx
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	writetext GotAerodactylText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke AERODACTYL, 20
	clearevent EVENT_GAVE_OLD_AMBER
	writetext TakeGoodCareText
	waitbutton
	closetext
	end

.Omanyte:
	writetext OmanyteText
	buttonsound
	waitsfx
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	writetext GotOmanyteText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke OMANYTE, 20
	clearevent EVENT_GAVE_HELIX_FOSSIL
	writetext TakeGoodCareText
	waitbutton
	closetext
	end

.Kabuto:
	writetext KabutoText
	buttonsound
	waitsfx
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	writetext GotKabutoText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke KABUTO, 20
	clearevent EVENT_GAVE_DOME_FOSSIL
	writetext TakeGoodCareText
	waitbutton
	closetext
	end

.NoRoom:
	writetext FossilNoRoomText
	waitbutton
	closetext
	end

KimScript:
	faceplayer
	opentext
	trade NPC_TRADE_KIM
	waitbutton
	closetext
	end

RockyScript:
	faceplayer
	opentext
	trade NPC_TRADE_ROCKY
	waitbutton
	closetext
	end

SheldonScript:
	faceplayer
	opentext
	trade NPC_TRADE_SHELDON
	waitbutton
	closetext
	end

FossilHouse_ScienceMagazines:
	jumptext FossilHouse_ScienceMagazinesText

FossilHouse_BrokenComputer:
	jumptext FossilHouse_BrokenComputerText

FossilHouse_ComputerScreen:
	jumptext FossilHouse_ComputerScreenText

FossilHouseScientistText:
	text "Hi, hi!"
	line "A scientist, I am!"

	para "Discovered how to"
	line "revive fossils, I"
	cont "did!"

	para "Got a grant for a"
	line "lab on Cinnabar"
	cont "for it!"

	para "Will move when it"
	line "is done, we will!"

	para "Children of mine"
	line "don't care for"
	cont "the scientific"
	cont "process, it seems."

	para "Find any fossils,"
	line "and I can revive"
	cont "them for you, I"
	cont "can!"
	done

YouHaveFossilText:
	text "You! You have"
	line "fossil for me?"

	para "Can revive it, I"
	line "can!"

	para "Give me fossil,"
	line "will you?"
	done

WhichFossil:
	text "Which fossil?"
	done

FineNoFossilText:
	text "Fine!"

	para "No fossil for you!"
	done

YouGoNow:
	text "Great!"

	para "I take fossil,"
	line "you come back"
	cont "later, yes?"

	para "Will have a"
	line "#mon for you!"
	done

YouNoHaveFossil:
	text "You no have"
	line "that fossil!"
	done

YouNoPatientText:
	text "You're not very"
	line "patient, yes?"

	para "Come back later!"
	done

AerodactylText:
	text "Where were you?"

	para "Your fossil is"
	line "back to life!"

	para "It was Aerodactyl-"
	line "like, I think!"
	done

OmanyteText:
	text "Where were you?"

	para "Your fossil is"
	line "back to life!"

	para "It was Omanyte-"
	line "like, I think!"
	done

KabutoText:
	text "Where were you?"

	para "Your fossil is"
	line "back to life!"

	para "It was Kabuto-"
	line "like, I think!"
	done

TakeGoodCareText:
	text "Take good care"
	line "of your #mon!"
	done

GotAerodactylText:
	text "<PLAYER> received"
	line "an Aerodactyl!"
	done

GotOmanyteText:
	text "<PLAYER> received"
	line "an Omanyte!"
	done

GotKabutoText:
	text "<PLAYER> received"
	line "a Kabuto!"
	done

FossilNoRoomText:
	text "You have no room!"
	done

FossilHouse_ScienceMagazinesText:
	text "It's packed with"
	line "science magazines."

	para "Couldn't begin to"
	line "understand them…"
	done

FossilHouse_BrokenComputerText:
	text "It's a big com-"
	line "puter. No idea"
	cont "what it's for."
	done

FossilHouse_ComputerScreenText:
	text "There are photos"
	line "of fossils on"

	para "the computer"
	line "screen…"
	done

FossilHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, ROUTE_42, 6
	warp_event  3,  7, ROUTE_42, 6

	db 0 ; coord events

	db 5 ; bg events
	bg_event  0,  1, BGEVENT_READ, FossilHouse_ScienceMagazines
	bg_event  1,  1, BGEVENT_READ, FossilHouse_ScienceMagazines
	bg_event  6,  1, BGEVENT_READ, MrPokemonsHouse_BrokenComputer
	bg_event  7,  1, BGEVENT_READ, MrPokemonsHouse_BrokenComputer
	bg_event  6,  4, BGEVENT_READ, FossilHouse_ComputerScreen

	db 4 ; object events
	object_event  7,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ScientistScript, -1
	object_event  5,  2, SPRITE_TWIN, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, KimScript, -1
	object_event  3,  1, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, RockyScript, -1
	object_event  2,  1, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SheldonScript, -1
