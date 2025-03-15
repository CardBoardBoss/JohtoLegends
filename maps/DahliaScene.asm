	object_const_def ; object_event constants

DahliaScene_MapScripts:
	db 2 ; scene scripts
	scene_script .DahliaSceneMovement ; SCENE_DEFAULT
	scene_script .DahliaSceneMovement ; SCENE_FINISHED

	db 0 ; callbacks

.DahliaSceneMovement:
	prioritysjump .DahliaSceneMovementScript
	end

.DahliaSceneMovementScript:
	applymovement PLAYER, HidePlayerMovementDahliaScene
;	moveobject PLAYER, 4, 9
	pause 30
	checkflag ENGINE_PLAYER_IS_FEMALE
	iffalse .MaleDahliaScene
	pause 50
	applymovement PLAYER, PlayerMovesUpDahliaScene
	pause 50
	cry HO_OH
	pause 50
	special FadeOutPalettes
	warp TIN_TOWER_ROOF, 9, 11
	turnobject PLAYER, UP
	setmapscene TIN_TOWER_ROOF, SCENE_TIN_TOWER_AFTER_HO_OH
;	blackoutmod TIN_TOWER_ROOF
	sjump .DahliaSceneFinish

.MaleDahliaScene:
	pause 50
	pause 50
	special FadeOutPalettes
;	warp TIN_TOWER_ROOF, 9, 11
    warp DRACO_SCENE, 4, 9
	turnobject PLAYER, UP
;	blackoutmod TIN_TOWER_ROOF
;	blackoutmod DRACO_SCENE
.DahliaSceneFinish
	return

.DummyScene0:
	end

ShowPlayerMovementDahliaScene:
	show_object
	step_end

HidePlayerMovementDahliaScene:
	hide_object
	step_end

PlayerMovesUpDahliaScene:
	slow_step UP
	slow_step UP
	slow_step UP
	slow_step UP
	slow_step UP
	step_end

DahliaSceneSilenceText:
	text "<PLAYER>:…………………………"
	done

DahliaSceneRivalText:
	text "<RIVAL>:…Ho-Oh…"
	line "…The Legendary"
	line "#mon…"
	done

DahliaScene_MapEvents:
	db 0, 0 ; filler

	db 0 ; warp events

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
