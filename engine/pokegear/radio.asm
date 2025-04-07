PlayRadioShow:
; If we're already in the radio program proper, we don't need to be here.
	ld a, [wCurRadioLine]
	cp POKE_FLUTE_RADIO
	jr nc, .ok
; If Team Rocket is not occupying the radio tower, we don't need to be here.
;	ld a, [wStatusFlags2]
;	bit STATUSFLAGS2_ROCKETS_IN_RADIO_TOWER_F, a
;	jr z, .ok
; If we're in Kanto, we don't need to be here.
;	call IsInJohto
;	and a
;	jr nz, .ok
; Team Rocket broadcasts on all stations.
;	ld a, ROCKET_RADIO
;	ld [wCurRadioLine], a
.ok
; Jump to the currently loaded station.  The index to which we need to jump is in wCurRadioLine.
	ld a, [wCurRadioLine]
	ld e, a
	ld d, 0
	ld hl, RadioJumptable
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

RadioJumptable:
; entries correspond to constants/radio_constants.asm
	dw OaksPKMNTalk1  ; $00
	dw PokedexShow1 ; $01
	dw BenMonMusic1  ; $02
	dw LuckyNumberShow1 ; $03
	dw BuenasPassword1 ; $04
	dw PeoplePlaces1 ; $05
	dw FernMonMusic1 ; $06
	dw RocketRadio1 ; $07
	dw PokeFluteRadio ; $08
	dw UnownRadio ; $09
	dw EvolutionRadio ; $0a
; OaksPKMNTalk
	dw OaksPKMNTalk2  ; $0b
	dw OaksPKMNTalk3  ; $0c
	dw OaksPKMNTalk4  ; $0d
	dw OaksPKMNTalk5  ; $0e
	dw OaksPKMNTalk6  ; $0f
	dw OaksPKMNTalk7  ; $10
	dw OaksPKMNTalk8  ; $11
	dw OaksPKMNTalk9  ; $12
	dw PokedexShow2 ; $13
	dw PokedexShow3 ; $14
	dw PokedexShow4 ; $15
	dw PokedexShow5 ; $16
; Ben Music
	dw BenMonMusic2  ; $17
	dw BenMonMusic3  ; $18
	dw BenFernMusic4 ; $19
	dw BenFernMusic5 ; $1a
	dw BenFernMusic6 ; $1b
	dw BenFernMusic7 ; $1c
	dw FernMonMusic2 ; $1d
; Lucky Number Show
	dw LuckyNumberShow2 ; $1e
	dw LuckyNumberShow3 ; $1f
	dw LuckyNumberShow4 ; $20
	dw LuckyNumberShow5 ; $21
	dw LuckyNumberShow6 ; $22
	dw LuckyNumberShow7 ; $23
	dw LuckyNumberShow8 ; $24
	dw LuckyNumberShow9 ; $25
	dw LuckyNumberShow10 ; $26
	dw LuckyNumberShow11 ; $27
	dw LuckyNumberShow12 ; $28
	dw LuckyNumberShow13 ; $29
	dw LuckyNumberShow14 ; $2a
	dw LuckyNumberShow15 ; $2b
; People & Places
	dw PeoplePlaces2 ; $2c
	dw PeoplePlaces3 ; $2d
	dw PeoplePlaces4 ; $2e
	dw PeoplePlaces5 ; $2f
	dw PeoplePlaces6 ; $30
	dw PeoplePlaces7 ; $31
; Rocket Radio
	dw RocketRadio2 ; $32
	dw RocketRadio3 ; $33
	dw RocketRadio4 ; $34
	dw RocketRadio5 ; $35
	dw RocketRadio6 ; $36
	dw RocketRadio7 ; $37
	dw RocketRadio8 ; $38
	dw RocketRadio9 ; $39
	dw RocketRadio10 ; $3a
; More Pokemon Channel stuff
	dw OaksPKMNTalk10 ; $3b
	dw OaksPKMNTalk11 ; $3c
	dw OaksPKMNTalk12 ; $3d
	dw OaksPKMNTalk13 ; $3e
	dw OaksPKMNTalk14 ; $3f
; Buenas Password
	dw BuenasPassword2 ; $40
	dw BuenasPassword3 ; $41
	dw BuenasPassword4 ; $42
	dw BuenasPassword5 ; $43
	dw BuenasPassword6 ; $44
	dw BuenasPassword7 ; $45
	dw BuenasPassword8 ; $46
	dw BuenasPassword9 ; $47
	dw BuenasPassword10 ; $48
	dw BuenasPassword11 ; $49
	dw BuenasPassword12 ; $4a
	dw BuenasPassword13 ; $4b
	dw BuenasPassword14 ; $4c
	dw BuenasPassword15 ; $4d
	dw BuenasPassword16 ; $4e
	dw BuenasPassword17 ; $4f
	dw BuenasPassword18 ; $50
	dw BuenasPassword19 ; $51
	dw BuenasPassword20 ; $52
	dw BuenasPassword21 ; $53
	dw RadioScroll ; $54
; More Pokemon Channel stuff
	dw PokedexShow6 ; $55
	dw PokedexShow7 ; $56
	dw PokedexShow8 ; $57

PrintRadioLine:
	ld [wNextRadioLine], a
	ld hl, wRadioText
	ld a, [wNumRadioLinesPrinted]
	cp 2
	jr nc, .print
	inc hl
	ld [hl], TX_START
	inc a
	ld [wNumRadioLinesPrinted], a
	cp 2
	jr nz, .print
	bccoord 1, 16
	call PlaceHLTextAtBC
	jr .skip
.print
	call PrintTextboxText
.skip
	ld a, RADIO_SCROLL
	ld [wCurRadioLine], a
	ld a, 100
	ld [wRadioTextDelay], a
	ret

ReplacePeriodsWithSpaces:
	push hl
	ld b, SCREEN_WIDTH * 2
.loop
	ld a, [hl]
	cp "."
	jr nz, .next
	ld [hl], " "

.next
	inc hl
	dec b
	jr nz, .loop
	pop hl
	ret

RadioScroll:
	ld hl, wRadioTextDelay
	ld a, [hl]
	and a
	jr z, .proceed
	dec [hl]
	ret
.proceed
	ld a, [wNextRadioLine]
	ld [wCurRadioLine], a
	ld a, [wNumRadioLinesPrinted]
	cp 1
	call nz, CopyBottomLineToTopLine
	jp ClearBottomLine

OaksPKMNTalk1:
	call StartPokemonMusicChannel
	ld hl, JunichiMasudaSoloText
	ld a, OAKS_POKEMON_TALK_2
	jp NextRadioLine
	ret

OaksPKMNTalk2:
	ld hl, GoIchinoseText
	ld a, OAKS_POKEMON_TALK_3
	jp NextRadioLine

OaksPKMNTalk3:
	ld hl, JunichiMasudaSoloText
	ld a, OAKS_POKEMON_TALK_2
	jp NextRadioLine

OaksPKMNTalk4:
	call StartPokemonMusicChannel
	ld hl, GoIchinoseText
	ld a, OAKS_POKEMON_TALK_5
	jp NextRadioLine

INCLUDE "data/radio/oaks_pkmn_talk_routes.asm"

OaksPKMNTalk5:
	ld hl, OPT_OakText2
	ld a, OAKS_POKEMON_TALK_4
	jp NextRadioLine

OaksPKMNTalk6:
	ld hl, GoIchinoseText
	ld a, OAKS_POKEMON_TALK_5
	jp PrintRadioLine

JunichiMasudaSoloText:
	; MARY: PROF.OAK'S
	text_far _JunichiMasudaSoloText
	text_end

GoIchinoseText:
	; #MON TALK!
	text_far _GoIchinoseText
	text_end

OPT_OakText2:
	; may be seen around
	text_far _OPT_OakText2
	text_end

OaksPKMNTalk7:
	call StartPokemonMusicChannel
	ld hl, OPT_MaryText1
	ld a, OAKS_POKEMON_TALK_8
	jp NextRadioLine

OPT_MaryText1:
	; MARY: @ 's
	text_far _OPT_MaryText1
	text_end

OaksPKMNTalk8:
	ld hl, TriteHexagonText
	ld a, OAKS_POKEMON_TALK_9
	jp NextRadioLine

TriteHexagonText:
	text_far _TriteHexagonText
	text_end

OaksPKMNTalk9:
	ld hl, OPT_MaryText1
	ld a, OAKS_POKEMON_TALK_8
	jp NextRadioLine

OaksPKMNTalk10:
	ret

OaksPKMNTalk11:
	ret

OaksPKMNTalk12:
	ret

OaksPKMNTalk13:
	ret

OaksPKMNTalk14:
	ret

PlaceRadioString:
	ld [wCurRadioLine], a
	ld a, 100
	ld [wRadioTextDelay], a
	jp PlaceString

CopyBottomLineToTopLine:
	hlcoord 0, 15
	decoord 0, 13
	ld bc, SCREEN_WIDTH * 2
	jp CopyBytes

ClearBottomLine:
	hlcoord 1, 15
	ld bc, SCREEN_WIDTH - 2
	ld a, " "
	call ByteFill
	hlcoord 1, 16
	ld bc, SCREEN_WIDTH - 2
	ld a, " "
	jp ByteFill

PokedexShow1:
	call StartPokemonMusicChannel
	ld hl, JunichiMasudaSoloText
	ld a, POKEDEX_SHOW_2
	jp NextRadioLine

PokedexShow2:
	ret

PokedexShow3:
	ret

PokedexShow4:
	ret

PokedexShow5:
	ret

PokedexShow6:
	ret

PokedexShow7:
	ret

PokedexShow8:
	ret

CopyDexEntry:
	ld a, [wPokedexShowPointerAddr]
	ld l, a
	ld a, [wPokedexShowPointerAddr + 1]
	ld h, a
	ld a, [wPokedexShowPointerBank]
	push af
	push hl
	call CopyDexEntryPart1
	dec hl
	ld [hl], "<DONE>"
	ld hl, wPokedexShowPointerAddr
	call CopyRadioTextToRAM
	pop hl
	pop af
	call CopyDexEntryPart2
	ret

CopyDexEntryPart1:
	ld de, wPokedexShowPointerBank
	ld bc, SCREEN_WIDTH - 1
	call FarCopyBytes
	ld hl, wPokedexShowPointerAddr
	ld [hl], TX_START
	inc hl
	ld [hl], "<LINE>"
	inc hl
.loop
	ld a, [hli]
	cp "@"
	ret z
	cp "<NEXT>"
	ret z
	cp "<DEXEND>"
	ret z
	jr .loop

CopyDexEntryPart2:
	ld d, a
.loop
	ld a, d
	call GetFarByte
	inc hl
	cp "@"
	jr z, .okay
	cp "<NEXT>"
	jr z, .okay
	cp "<DEXEND>"
	jr nz, .loop
.okay
	ld a, l
	ld [wPokedexShowPointerAddr], a
	ld a, h
	ld [wPokedexShowPointerAddr + 1], a
	ld a, d
	ld [wPokedexShowPointerBank], a
	ret

BenMonMusic1:
	call StartPokemonMusicChannel
	ld hl, BenIntroText1
	ld a, POKEMON_MUSIC_2
	jp NextRadioLine

BenMonMusic2:
	ld hl, BenIntroText2
	ld a, POKEMON_MUSIC_3
	jp NextRadioLine

BenMonMusic3:
	ld hl, BenIntroText1
	ld a, POKEMON_MUSIC_2
	jp NextRadioLine

FernMonMusic1:
	call StartPokemonMusicChannel
	ld hl, FernIntroText1
	ld a, LETS_ALL_SING_2
	jp NextRadioLine

FernMonMusic2:
	ld hl, FernIntroMusic2
	ld a, POKEMON_MUSIC_4
	jp NextRadioLine

BenFernMusic4:
	ld hl, FernIntroText1
	ld a, LETS_ALL_SING_2
	jp NextRadioLine

BenFernMusic5:
	ret

BenFernMusic6:
	ret

BenFernMusic7:
	ret

StartPokemonMusicChannel:
	call RadioTerminator
	call PrintText
;	ld de, MUSIC_NONE
;	call GetWeekday
;	and 1
;	jr z, .SunTueThurSun
;	ld de, MUSIC_POKEMON_LULLABY
;.SunTueThurSun:
;	callfar RadioMusicRestartDE
	ret

BenIntroText1:
	; BEN: #MON MUSIC
	text_far _BenIntroText1
	text_end

BenIntroText2:
	; CHANNEL!
	text_far _BenIntroText2
	text_end

BenIntroText3:
	; It's me, DJ BEN!
	text_far _BenIntroText3
	text_end

FernIntroText1:
	; FERN: #MUSIC!
	text_far _FernIntroText1
	text_end

FernIntroMusic2:
	; With DJ FERN!
	text_far _FernIntroText2
	text_end

LuckyNumberShow1:
	call StartPokemonMusicChannel
	ld hl, GoIchinoseText
	ld a, LUCKY_NUMBER_SHOW_2
	jp NextRadioLine

LuckyNumberShow2:
	ret

LuckyNumberShow3:
	ret

LuckyNumberShow4:
	ret

LuckyNumberShow5:
	ret

LuckyNumberShow6:
	ret

LuckyNumberShow7:
	ret

LuckyNumberShow8:
	ret

LuckyNumberShow9:
	ret

LuckyNumberShow10:
	ret

LuckyNumberShow11:
	ret

LuckyNumberShow12:
	ret

LuckyNumberShow13:
	ret

LuckyNumberShow14:
	ret

LuckyNumberShow15:
	ret

PeoplePlaces1:
	call StartPokemonMusicChannel
	ld hl, PnP_Text1
	ld a, PLACES_AND_PEOPLE_2
	jp NextRadioLine

PeoplePlaces2:
	ld hl, PnP_Text2
	ld a, PLACES_AND_PEOPLE_3
	jp NextRadioLine

PeoplePlaces3:
	ld hl, PnP_Text1
	ld a, PLACES_AND_PEOPLE_2
	jp NextRadioLine

PnP_Text1:
	; PLACES AND PEOPLE!
	text_far _PnP_Text1
	text_end

PnP_Text2:
	; Brought to you by
	text_far _PnP_Text2
	text_end

PeoplePlaces4: ; People
	ret

INCLUDE "data/radio/pnp_hidden_people.asm"

PeoplePlaces5:
	ret

PeoplePlaces6: ; Places
	ret

INCLUDE "data/radio/pnp_hidden_places.asm"

PeoplePlaces7:
	ret

RocketRadio1:
	call StartPokemonMusicChannel
	ld hl, RocketRadioText1
	ld a, ROCKET_RADIO_2
	jp NextRadioLine

RocketRadio2:
	ld hl, RocketRadioText2
	ld a, ROCKET_RADIO_3
	jp NextRadioLine

RocketRadio3:
	ld hl, RocketRadioText1
	ld a, ROCKET_RADIO_2
	jp NextRadioLine

RocketRadio4:
	call StartPokemonMusicChannel
	ld hl, RocketRadioText4
	ld a, ROCKET_RADIO_5
	jp NextRadioLine

RocketRadio5:
	ld hl, RocketRadioText5
	ld a, ROCKET_RADIO_6
	jp NextRadioLine

RocketRadio6:
	ld hl, RocketRadioText6
	ld a, ROCKET_RADIO_7
	jp NextRadioLine

RocketRadio7:
	ld hl, RocketRadioText4
	ld a, ROCKET_RADIO_5
	jp NextRadioLine

RocketRadio8:
	call StartPokemonMusicChannel
	ld hl, RocketRadioText8
	ld a, ROCKET_RADIO_9
	jp NextRadioLine

RocketRadio9:
	ld hl, RocketRadioText9
	ld a, ROCKET_RADIO_10
	jp NextRadioLine

RocketRadio10:
	ld hl, RocketRadioText8
	ld a, ROCKET_RADIO_9
	jp NextRadioLine

RocketRadioText1:
	; … …Ahem, we are
	text_far _RocketRadioText1
	text_end

RocketRadioText2:
	; TEAM ROCKET!
	text_far _RocketRadioText2
	text_end

RocketRadioText4:
	; of preparation, we
	text_far _RocketRadioText4
	text_end

RocketRadioText5:
	; have risen again
	text_far _RocketRadioText5
	text_end

RocketRadioText6:
	; from the ashes!
	text_far _RocketRadioText6
	text_end

RocketRadioText8:
	; hear?@  We did it!
	text_far _RocketRadioText8
	text_end

RocketRadioText9:
	; @ Where is our boss?
	text_far _RocketRadioText9
	text_end

PokeFluteRadio:
	call StartRadioStation
	ld a, 1
	ld [wNumRadioLinesPrinted], a
	ret

UnownRadio:
	call StartRadioStation
	ld a, 1
	ld [wNumRadioLinesPrinted], a
	ret

EvolutionRadio:
	call StartRadioStation
	ld a, 1
	ld [wNumRadioLinesPrinted], a
	ret

BuenasPassword1:
; Determine if we need to be here
	call StartPokemonMusicChannel
	ld hl, BuenaRadioText1
	ld a, BUENAS_PASSWORD_2
	jp NextRadioLine

BuenasPassword2:
	ret

BuenasPassword3:
	call StartPokemonMusicChannel
	ld hl, BuenaRadioText3
	ld a, BUENAS_PASSWORD_4
	jp NextRadioLine

BuenasPassword4:
	ld hl, BuenaRadioText4
	ld a, BUENAS_PASSWORD_5
	jp NextRadioLine

GetBuenasPassword:
; The password indices are held in c.  High nybble contains the group index, low nybble contains the word index.
; Load the password group pointer in hl.
	ld a, c
	swap a
	and $f
	ld hl, BuenasPasswordTable
	ld d, 0
	ld e, a
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
; Get the password type and store it in b.
	ld a, [hli]
	ld b, a
	push hl
	inc hl
; Get the password index.
	ld a, c
	and $f
	ld c, a
	push hl
	ld hl, .StringFunctionJumpTable
	ld e, b
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	pop de ; de now contains the pointer to the value of this week's password, in Blue Card Points.
	call _hl_
	pop hl
	ld c, [hl]
	ret

.StringFunctionJumpTable:
; entries correspond to BUENA_* constants
	dw .Mon       ; BUENA_MON
	dw .Item      ; BUENA_ITEM
	dw .Move      ; BUENA_MOVE
	dw .RawString ; BUENA_STRING

.Mon:
	ld h, 0
	ld l, c
	add hl, hl
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call GetPokemonIDFromIndex
	call GetPokemonName
	ret

.Item:
	ld h, 0
	ld l, c
	add hl, de
	ld a, [hl]
	ld [wNamedObjectIndexBuffer], a
	call GetItemName
	ret

.Move:
	ld h, 0
	ld l, c
	add hl, hl
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call GetMoveIDFromIndex
	call GetMoveName
	ret

.RawString:
; Get the string from the table...
	ld a, c
	and a
	jr z, .skip
.read_loop
	ld a, [de]
	inc de
	cp "@"
	jr nz, .read_loop
	dec c
	jr nz, .read_loop
; ... and copy it into wStringBuffer1.
.skip
	ld hl, wStringBuffer1
.copy_loop
	ld a, [de]
	inc de
	ld [hli], a
	cp "@"
	jr nz, .copy_loop
	ld de, wStringBuffer1
	ret

INCLUDE "data/radio/buenas_passwords.asm"

BuenasPassword5:
	ld hl, BuenaRadioText3
	ld a, BUENAS_PASSWORD_4
	jp NextRadioLine

BuenasPassword6:
	call StartPokemonMusicChannel
	ld hl, BuenaRadioText6
	ld a, BUENAS_PASSWORD_7
	jp NextRadioLine

BuenasPassword7:
	ld hl, BuenaRadioText7
	ld a, BUENAS_PASSWORD_8
	jp NextRadioLine

BuenasPasswordAfterMidnight:
	push hl
	ld hl, wDailyFlags2
	res DAILYFLAGS2_BUENAS_PASSWORD_F, [hl]
	pop hl
	ld a, BUENAS_PASSWORD_8
	jp NextRadioLine

BuenasPassword8:
	ld hl, BuenaRadioMidnightText10
	ld a, BUENAS_PASSWORD_9
	jp NextRadioLine

BuenasPassword9:
	ld hl, BuenaRadioText6
	ld a, BUENAS_PASSWORD_7
	jp NextRadioLine

BuenasPassword10:
	call StartPokemonMusicChannel
	ld hl, BuenaRadioMidnightText2
	ld a, BUENAS_PASSWORD_11
	jp NextRadioLine

BuenasPassword11:
	ld hl, BuenaRadioMidnightText3
	ld a, BUENAS_PASSWORD_12
	jp NextRadioLine

BuenasPassword12:
	ld hl, BuenaRadioMidnightText4
	ld a, BUENAS_PASSWORD_13
	jp NextRadioLine

BuenasPassword13:
	ld hl, BuenaRadioMidnightText5
	ld a, BUENAS_PASSWORD_14
	jp NextRadioLine

BuenasPassword14:
	ld hl, BuenaRadioMidnightText2
	ld a, BUENAS_PASSWORD_11
	jp NextRadioLine

BuenasPassword15:
	call StartPokemonMusicChannel
	ld hl, BuenaRadioMidnightText7
	ld a, BUENAS_PASSWORD_16
	jp NextRadioLine

BuenasPassword16:
	ld hl, BuenaRadioMidnightText8
	ld a, BUENAS_PASSWORD_17
	jp NextRadioLine

BuenasPassword17:
	ld hl, BuenaRadioMidnightText7
	ld a, BUENAS_PASSWORD_16
	jp NextRadioLine

BuenasPassword18:
	ret

BuenasPassword19:
	call StartPokemonMusicChannel
	ld hl, BuenaRadioText6
	ld a, BUENAS_PASSWORD_20
	jp NextRadioLine

BuenasPassword20:
	ld hl, BuenaRadioText5
	ld a, BUENAS_PASSWORD_21
	jp NextRadioLine

BuenasPassword21:
	ld hl, BuenaRadioText6
	ld a, BUENAS_PASSWORD_20
	jp NextRadioLine

BuenasPasswordChannelName:
	db "BUENA'S PASSWORD@"

BuenaRadioText1:
	; BUENA: BUENA here!
	text_far _BuenaRadioText1
	text_end

BuenaRadioText3:
	; Let me think… It's
	text_far _BuenaRadioText3
	text_end

BuenaRadioText4:
	; @ !
	text_far _BuenaRadioText4
	text_end

BuenaRadioText5:
	; Don't forget it!
	text_far _BuenaRadioText5
	text_end

BuenaRadioText6:
	; I'm in GOLDENROD's
	text_far _BuenaRadioText6
	text_end

BuenaRadioText7:
	; RADIO TOWER!
	text_far _BuenaRadioText7
	text_end

BuenaRadioMidnightText2:
	; It's midnight! I
	text_far _BuenaRadioMidnightText2
	text_end

BuenaRadioMidnightText3:
	; have to shut down!
	text_far _BuenaRadioMidnightText3
	text_end

BuenaRadioMidnightText4:
	; Thanks for tuning
	text_far _BuenaRadioMidnightText4
	text_end

BuenaRadioMidnightText5:
	; in to the end! But
	text_far _BuenaRadioMidnightText5
	text_end

BuenaRadioMidnightText7:
	; late! Presented to
	text_far _BuenaRadioMidnightText7
	text_end

BuenaRadioMidnightText8:
	; you by DJ BUENA!
	text_far _BuenaRadioMidnightText8
	text_end

BuenaRadioMidnightText10:
	; …
	text_far _BuenaRadioMidnightText10
	text_end

CopyRadioTextToRAM:
	ld a, [hl]
	cp TX_FAR
	jp z, FarCopyRadioText
	ld de, wRadioText
	ld bc, SCREEN_WIDTH * 2
	jp CopyBytes

StartRadioStation:
	ld a, [wNumRadioLinesPrinted]
	and a
	ret nz
	call RadioTerminator
	call PrintText
	ld hl, RadioChannelSongs
	ld a, [wCurRadioLine]
	ld c, a
	ld b, 0
	add hl, bc
	add hl, bc
	ld e, [hl]
	inc hl
	ld d, [hl]
	callfar RadioMusicRestartDE
	ret

INCLUDE "data/radio/channel_music.asm"

NextRadioLine:
	push af
	call CopyRadioTextToRAM
	pop af
	jp PrintRadioLine
