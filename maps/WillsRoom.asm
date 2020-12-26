	object_const_def ; object_event constants
	const WILLSROOM_FLORINA

WillsRoom_MapScripts:
	db 2 ; scene scripts
	scene_script .LockDoor ; SCENE_DEFAULT
	scene_script .DummyScene ; SCENE_FINISHED

	db 1 ; callbacks
	callback MAPCALLBACK_TILES, .FlorinasRoomDoors

.LockDoor:
	prioritysjump .FlorinasDoorLocksBehindYou
	end

.DummyScene:
	end

.FlorinasRoomDoors:
	checkevent EVENT_FLORINAS_ROOM_ENTRANCE_CLOSED
	iffalse .KeepEntranceOpen
	changeblock 4, 14, $2a ; wall
.KeepEntranceOpen:
	checkevent EVENT_FLORINAS_ROOM_EXIT_OPEN
	iffalse .KeepExitClosed
	changeblock 4, 2, $16 ; open door
.KeepExitClosed:
	return

.FlorinasDoorLocksBehindYou:
	applymovement PLAYER, FlorinasRoom_EnterMovement
	refreshscreen $86
	playsound SFX_STRENGTH
	earthquake 80
	changeblock 4, 14, $2a ; wall
	reloadmappart
	closetext
	setscene SCENE_FINISHED
	setevent EVENT_FLORINAS_ROOM_ENTRANCE_CLOSED
	waitsfx
	end

FlorinaScript_Battle:
	faceplayer
	opentext
	checkevent EVENT_BEAT_ELITE_4_FLORINA
	iftrue FlorinaScript_AfterBattle
	writetext FlorinaScript_FlorinaBeforeText
	waitbutton
	closetext
	winlosstext FlorinaScript_FlorinaBeatenText, 0
	loadtrainer FLORINA, FLORINA1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ELITE_4_FLORINA
	opentext
	writetext FlorinaScript_FlorinaDefeatText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	changeblock 4, 2, $16 ; open door
	reloadmappart
	closetext
	setevent EVENT_FLORINAS_ROOM_EXIT_OPEN
	waitsfx
	end

FlorinaScript_AfterBattle:
	writetext FlorinaScript_FlorinaDefeatText
	waitbutton
	closetext
	end

FlorinasRoom_EnterMovement:
	step UP
	step UP
	step UP
	step UP
	step_end

FlorinaScript_FlorinaBeforeText:
	text "Welcome to #mon"
	line "League, <PLAYER>."

	para "I am Florina, and"
	line "I am your first"
	cont "battle."

	para "I love flowers,"
	line "and someday I hope"
	cont "to set up my own"
	cont "flower shop."

	para "But for now, I"
	line "will continue to"
	cont "serve as a member"
	cont "of the Elite Four."

	para "My Grass-Types are"
	line "beautiful and"
	cont "dangerous."

	para "Let us begin."
	done

FlorinaScript_FlorinaBeatenText:
	text "That battle was"
	line "beautiful."
	done

FlorinaScript_FlorinaDefeatText:
	text "Someday, I will"
	line "fulfill my dream,"
	cont "and open a flower"
	cont "shop in Goldenrod,"

	para "but my obligation"
	line "to the League will"
	cont "come first. The"

	para "next member will"
	line "be even more"

	para "challenging, so"
	line "go on."
	done

WillsRoom_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  5, 17, INDIGO_PLATEAU_POKECENTER_1F, 4
	warp_event  4,  2, KOGAS_ROOM, 1
	warp_event  5,  2, KOGAS_ROOM, 2

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  5,  7, SPRITE_FLORINA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FlorinaScript_Battle, -1
