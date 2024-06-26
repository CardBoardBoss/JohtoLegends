INCLUDE "data/moves/effects_pointers.asm"

MoveEffects: ; used only for BANK(MoveEffects)

NormalHit:
VitalThrow:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	endmove

DoSleep:
	checkobedience
	usedmovetext
	doturn
	checkhit
	checksafeguard
	sleeptarget
	endmove

PoisonHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	poisontarget
	endmove

LeechHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	draintarget
	kingsrock
	checkfaint
	buildopponentrage
	endmove

BurnHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	burntarget
	endmove

FreezeHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	freezetarget
	endmove

ParalyzeHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	paralyzetarget
	endmove

Selfdestruct:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	selfdestruct
	moveanimnosub
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	endmove

DreamEater:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	eatdream
	kingsrock
	checkfaint
	buildopponentrage
	endmove

MirrorMove:
	checkobedience
	usedmovetext
	doturn
	mirrormove
	endmove

AttackUp:
	checkobedience
	usedmovetext
	doturn
	attackup
	lowersub
	statupanim
	raisesub
	statupmessage
	statupfailtext
	endmove

DefenseUp:
	checkobedience
	usedmovetext
	doturn
	defenseup
	lowersub
	statupanim
	raisesub
	statupmessage
	statupfailtext
	endmove

SpeedUp:
	checkobedience
	usedmovetext
	doturn
	speedup
	lowersub
	statupanim
	raisesub
	statupmessage
	statupfailtext
	endmove

SpecialAttackUp:
	checkobedience
	usedmovetext
	doturn
	specialattackup
	lowersub
	statupanim
	raisesub
	statupmessage
	statupfailtext
	endmove

SpecialDefenseUp:
	checkobedience
	usedmovetext
	doturn
	specialdefenseup
	lowersub
	statupanim
	raisesub
	statupmessage
	statupfailtext
	endmove

AccuracyUp:
	checkobedience
	usedmovetext
	doturn
	accuracyup
	lowersub
	statupanim
	raisesub
	statupmessage
	statupfailtext
	endmove

EvasionUp:
	checkobedience
	usedmovetext
	doturn
	lowersub
	evasionup
	statupanim
	lowersubnoanim
	raisesub
	statupmessage
	statupfailtext
	endmove

AttackUp2:
	checkobedience
	usedmovetext
	doturn
	attackup2
	lowersub
	statupanim
	raisesub
	statupmessage
	statupfailtext
	endmove

DefenseUp2:
	checkobedience
	usedmovetext
	doturn
	defenseup2
	lowersub
	statupanim
	raisesub
	statupmessage
	statupfailtext
	endmove

SpeedUp2:
	checkobedience
	usedmovetext
	doturn
	speedup2
	lowersub
	statupanim
	raisesub
	statupmessage
	statupfailtext
	endmove

SpecialAttackUp2:
	checkobedience
	usedmovetext
	doturn
	specialattackup2
	lowersub
	statupanim
	raisesub
	statupmessage
	statupfailtext
	endmove

SpecialDefenseUp2:
	checkobedience
	usedmovetext
	doturn
	specialdefenseup2
	lowersub
	statupanim
	raisesub
	statupmessage
	statupfailtext
	endmove

AccuracyUp2:
	checkobedience
	usedmovetext
	doturn
	accuracyup2
	lowersub
	statupanim
	raisesub
	statupmessage
	statupfailtext
	endmove

EvasionUp2:
	checkobedience
	usedmovetext
	doturn
	evasionup2
	lowersub
	statupanim
	raisesub
	statupmessage
	statupfailtext
	endmove

AttackDown:
	checkobedience
	usedmovetext
	doturn
	checkhit
	attackdown
	lowersub
	statdownanim
	raisesub
	statdownmessage
	statdownfailtext
	endmove

DefenseDown:
	checkobedience
	usedmovetext
	doturn
	checkhit
	defensedown
	lowersub
	statdownanim
	raisesub
	statdownmessage
	statdownfailtext
	endmove

SpeedDown:
	checkobedience
	usedmovetext
	doturn
	checkhit
	speeddown
	lowersub
	statdownanim
	raisesub
	statdownmessage
	statdownfailtext
	endmove

SpecialAttackDown:
	checkobedience
	usedmovetext
	doturn
	checkhit
	specialattackdown
	lowersub
	statdownanim
	raisesub
	statdownmessage
	statdownfailtext
	endmove

SpecialDefenseDown:
	checkobedience
	usedmovetext
	doturn
	checkhit
	specialdefensedown
	lowersub
	statdownanim
	raisesub
	statdownmessage
	statdownfailtext
	endmove

AccuracyDown:
	checkobedience
	usedmovetext
	doturn
	checkhit
	accuracydown
	lowersub
	statdownanim
	raisesub
	statdownmessage
	statdownfailtext
	endmove

EvasionDown:
	checkobedience
	usedmovetext
	doturn
	checkhit
	evasiondown
	lowersub
	statdownanim
	raisesub
	statdownmessage
	statdownfailtext
	endmove

AttackDown2:
	checkobedience
	usedmovetext
	doturn
	checkhit
	attackdown2
	lowersub
	statdownanim
	raisesub
	statdownmessage
	statdownfailtext
	endmove

DefenseDown2:
	checkobedience
	usedmovetext
	doturn
	checkhit
	defensedown2
	lowersub
	statdownanim
	raisesub
	statdownmessage
	statdownfailtext
	endmove

SpeedDown2:
	checkobedience
	usedmovetext
	doturn
	checkhit
	speeddown2
	lowersub
	statdownanim
	raisesub
	statdownmessage
	statdownfailtext
	endmove

SpecialAttackDown2:
	checkobedience
	usedmovetext
	doturn
	checkhit
	specialattackdown2
	lowersub
	statdownanim
	raisesub
	statdownmessage
	statdownfailtext
	endmove

SpecialDefenseDown2:
	checkobedience
	usedmovetext
	doturn
	checkhit
	specialdefensedown2
	lowersub
	statdownanim
	raisesub
	statdownmessage
	statdownfailtext
	endmove

AccuracyDown2:
	checkobedience
	usedmovetext
	doturn
	checkhit
	accuracydown2
	lowersub
	statdownanim
	raisesub
	statdownmessage
	statdownfailtext
	endmove

EvasionDown2:
	checkobedience
	usedmovetext
	doturn
	checkhit
	evasiondown2
	lowersub
	statdownanim
	raisesub
	statdownmessage
	statdownfailtext
	endmove

AttackDownHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	attackdown
	statdownmessage
	endmove

DefenseDownHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
;	effectchance ; bug: duplicate effectchance shouldn't be here
	defensedown
	statdownmessage
	endmove

SpeedDownHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	speeddown
	statdownmessage
	endmove

SpecialAttackDownHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	specialattackdown
	statdownmessage
	endmove

SpecialDefenseDownHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	specialdefensedown
	statdownmessage
	endmove

AccuracyDownHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	accuracydown
	statdownmessage
	endmove

EvasionDownHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	evasiondown
	statdownmessage
	endmove

DefenseUpHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	defenseup
	statupmessage
	kingsrock
	checkfaint
	buildopponentrage
	endmove

AttackUpHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	attackup
	statupmessage
	kingsrock
	checkfaint
	buildopponentrage
	endmove

AllUpHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	allstatsup
	kingsrock
	checkfaint
	buildopponentrage
	endmove

PayDay:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	payday
	kingsrock
	checkfaint
	buildopponentrage
	endmove

Conversion:
	checkobedience
	usedmovetext
	doturn
	conversion
	endmove

ResetStats:
	checkobedience
	usedmovetext
	doturn
	resetstats
	endmove

Rampage:
	checkrampage
	checkobedience
	doturn
	rampage
	usedmovetext
	checkhit
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	clearmissdamage
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	endmove

ForceSwitch:
	checkobedience
	usedmovetext
	doturn
	checkhit
	forceswitch
	endmove

MultiHit:
	checkobedience
	usedmovetext
	doturn
	startloop
	lowersub
	checkhit
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	clearmissdamage
	moveanimnosub
	failuretext
	applydamage
	criticaltext
	cleartext
	supereffectivelooptext
	checkfaint
	buildopponentrage
	endloop
	kingsrock
	raisesub
	endmove

PoisonMultiHit:
	checkobedience
	usedmovetext
	doturn
	startloop
	lowersub
	checkhit
	effectchance
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	clearmissdamage
	moveanimnosub
	failuretext
	applydamage
	criticaltext
	cleartext
	supereffectivelooptext
	checkfaint
	buildopponentrage
	endloop
	raisesub
	poisontarget
	kingsrock
	endmove

FlinchHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	flinchtarget
	endmove

OHKOHit:
	checkobedience
	usedmovetext
	doturn
	stab
	ohko
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	endmove

RecoilHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	recoil
	kingsrock
	checkfaint
	buildopponentrage
	endmove

Mist:
	checkobedience
	usedmovetext
	doturn
	mist
	endmove

FocusEnergy:
	checkobedience
	usedmovetext
	doturn
	focusenergy
	endmove

DoConfuse:
	checkobedience
	usedmovetext
	doturn
	checkhit
	checksafeguard
	confuse
	endmove

ConfuseHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	confusetarget
	endmove

Heal:
	checkobedience
	usedmovetext
	doturn
	heal
	endmove

Transform:
	checkobedience
	usedmovetext
	doturn
	transform
	endmove

LightScreen:
Reflect:
	checkobedience
	usedmovetext
	doturn
	screen
	endmove

TriAttack:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	tristatuschance
	endmove

Toxic:
DoPoison:
	checkobedience
	usedmovetext
	doturn
	checkhit
	stab
	checksafeguard
	poison
	endmove

DoParalyze:
	checkobedience
	usedmovetext
	doturn
	stab
	checkhit
	checksafeguard
	paralyze
	endmove

SkyAttack:
	checkcharge
	checkobedience
	doturn
	charge
	usedmovetext
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	flinchtarget
	endmove

Substitute:
	checkobedience
	usedmovetext
	doturn
	substitute
	endmove

HyperBeam:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	rechargenextturn
	kingsrock
	checkfaint
	buildopponentrage
	endmove

Rage:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	checkhit
	ragedamage
	damagevariation
	moveanim
	failuretext
	rage
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	endmove

Mimic:
	checkobedience
	usedmovetext
	doturn
	checkhit
	mimic
	endmove

Metronome:
	checkobedience
	usedmovetext
	doturn
	metronome
	endmove

LeechSeed:
	checkobedience
	usedmovetext
	doturn
	checkhit
	leechseed
	endmove

Splash:
	checkobedience
	usedmovetext
	doturn
	splash
	endmove

Disable:
	checkobedience
	usedmovetext
	doturn
	checkhit
	disable
	endmove

RazorWind:
	checkcharge
	checkobedience
	doturn
	charge
	usedmovetext
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	endmove

Fly:
	checkcharge
	checkobedience
	doturn
	charge
	usedmovetext
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	moveanimnosub
	raisesub
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	endmove

TrapTarget:
	checkobedience
	usedmovetext
	doturn
	checkhit
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	clearmissdamage
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	traptarget
	endmove

SuperFang:
Psywave:
StaticDamage:
	checkobedience
	usedmovetext
	doturn
	constantdamage
	checkhit
	resettypematchup
	moveanim
	failuretext
	applydamage
	checkfaint
	buildopponentrage
	endmove

Reversal:
	checkobedience
	usedmovetext
	doturn
	constantdamage
	stab
	checkhit
	moveanim
	failuretext
	applydamage
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	endmove

Counter:
	checkobedience
	usedmovetext
	doturn
	counter
	moveanim
	failuretext
	applydamage
	checkfaint
	buildopponentrage
	endmove

Encore:
	checkobedience
	usedmovetext
	doturn
	checkhit
	encore
	endmove

PainSplit:
	checkobedience
	usedmovetext
	doturn
	checkhit
	painsplit
	endmove

Snore:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	snore
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	flinchtarget
	endmove

LockOn:
	checkobedience
	usedmovetext
	doturn
	checkhit
	lockon
	endmove

Sketch:
	checkobedience
	usedmovetext
	doturn
	sketch
	endmove

DefrostOpponent:
	checkobedience
	usedmovetext
	doturn
	defrostopponent
	endmove

SleepTalk:
	checkobedience
	usedmovetext
	doturn
	sleeptalk
	endmove

DestinyBond:
	checkobedience
	usedmovetext
	doturn
	destinybond
	endmove

Spite:
	checkobedience
	usedmovetext
	doturn
	checkhit
	spite
	endmove

FalseSwipe:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	falseswipe
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	endmove

HealBell:
	checkobedience
	usedmovetext
	doturn
	healbell
	endmove

TripleKick:
	checkobedience
	usedmovetext
	doturn
	startloop
	lowersub
	checkhit
	critical
	damagestats
	damagecalc
	triplekick
	stab
	damagevariation
	clearmissdamage
	moveanimnosub
	failuretext
	applydamage
	criticaltext
	cleartext
	supereffectivelooptext
	checkfaint
	buildopponentrage
	kickcounter
	endloop
	kingsrock
	raisesub
	endmove

Thief:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	thief
	kingsrock
	checkfaint
	buildopponentrage
	endmove

MeanLook:
	checkobedience
	usedmovetext
	doturn
	arenatrap
	endmove

FlameWheel:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	defrost
	kingsrock
	checkfaint
	buildopponentrage
	burntarget
	endmove

Curse:
	checkobedience
	usedmovetext
	doturn
	curse
	endmove

Protect:
	checkobedience
	usedmovetext
	doturn
	protect
	endmove

Spikes:
	checkobedience
	usedmovetext
	doturn
	spikes
	endmove

Foresight:
	checkobedience
	usedmovetext
	doturn
	checkhit
	foresight
	endmove

PerishSong:
	checkobedience
	usedmovetext
	doturn
	perishsong
	endmove

Sandstorm:
	checkobedience
	usedmovetext
	doturn
	startsandstorm
	endmove

Endure:
	checkobedience
	usedmovetext
	doturn
	endure
	endmove

Rollout:
	checkcurl
	checkobedience
	doturn
	usedmovetext
	critical
	damagestats
	damagecalc
	stab
	checkhit
	rolloutpower
	damagevariation
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	endmove

Swagger:
	checkobedience
	usedmovetext
	doturn
	checkhit
	switchturn
	attackup2
	switchturn
	lowersub
	statupanim
	raisesub
	failuretext
	switchturn
	statupmessage
	switchturn
	confusetarget
	endmove

FuryCutter:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	checkhit
	furycutter
	damagevariation
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	endmove

Attract:
	checkobedience
	usedmovetext
	doturn
	checkhit
	attract
	endmove

Return:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	happinesspower
	damagecalc
	stab
	damagevariation
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	endmove

Present:
	checkobedience
	usedmovetext
	doturn
	checkhit
	critical
	damagestats
	present
	damagecalc
	stab
	damagevariation
	clearmissdamage
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	endmove

Safeguard:
	checkobedience
	usedmovetext
	doturn
	safeguard
	endmove

SacredFire:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	defrost
	kingsrock
	checkfaint
	buildopponentrage
	burntarget
	endmove

Magnitude:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	getmagnitude
	damagecalc
	stab
	damagevariation
	checkhit
	doubleundergrounddamage
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	endmove

BatonPass:
	checkobedience
	usedmovetext
	doturn
	batonpass
	endmove

Pursuit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	pursuit
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	endmove

RapidSpin:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	clearhazards
	speedup
	statupmessage
	kingsrock
	checkfaint
	buildopponentrage
	endmove

MorningSun:
	checkobedience
	usedmovetext
	doturn
	healmorn
	endmove

Synthesis:
	checkobedience
	usedmovetext
	doturn
	healday
	endmove

Moonlight:
	checkobedience
	usedmovetext
	doturn
	healnite
	endmove

HiddenPower:
	checkobedience
	usedmovetext
	doturn
	critical
	hiddenpower
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	endmove

RainDance:
	checkobedience
	usedmovetext
	doturn
	startrain
	endmove

SunnyDay:
	checkobedience
	usedmovetext
	doturn
	startsun
	endmove

FakeOut:
	checkobedience
	usedmovetext
	doturn
	fakeout
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	checkfaint
	buildopponentrage
	flinchtarget
	endmove

BellyDrum:
	checkobedience
	usedmovetext
	doturn
	bellydrum
	endmove

PsychUp:
	checkobedience
	usedmovetext
	doturn
	psychup
	endmove

MirrorCoat:
	checkobedience
	usedmovetext
	doturn
	mirrorcoat
	moveanim
	failuretext
	applydamage
	checkfaint
	buildopponentrage
	endmove

SkullBash:
	checkcharge
	checkobedience
	doturn
	charge
	usedmovetext
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	endturn
	defenseup
	statupmessage
	endmove

Twister:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	doubleflyingdamage
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	flinchtarget
	endmove

Earthquake:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	doubleundergrounddamage
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	endmove

FutureSight:
	checkfuturesight
	checkobedience
	usedmovetext
	doturn
	damagestats
	damagecalc
	futuresight
	damagevariation ; skip here if last turn
	checkhit
	moveanimnosub
	failuretext
	applydamage
	checkfaint
	buildopponentrage
	endmove

Gust:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	doubleflyingdamage
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	endmove

Stomp:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	doubleminimizedamage
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	flinchtarget
	endmove

Solarbeam:
	checkcharge
	checkobedience
	doturn
	skipsuncharge
	charge
	usedmovetext
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	endmove

Thunder:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	thunderaccuracy
	checkhit
	effectchance
	stab
	damagevariation
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	paralyzetarget
	endmove

Teleport:
	checkobedience
	usedmovetext
	doturn
	teleport
	endmove

DefenseCurl:
	checkobedience
	usedmovetext
	doturn
	defenseup
	curl
	lowersub
	statupanim
	raisesub
	statupmessage
	statupfailtext
	endmove

Hex:
	checkobedience
	usedmovetext
	doturn
	hex
	critical
	damagestats
	damagecalc
	stab
	checkhit
	damagevariation
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	endmove

Venoshock:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	venoshock
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	endmove

Hurricane:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	thunderaccuracy
	checkhit
	effectchance
	stab
	damagevariation
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	confusetarget
	endmove

FireFang:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	burntarget
	effectchance
	flinchtarget
	endmove

IceFang:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	freezetarget
	effectchance
	flinchtarget
	endmove

ThunderFang:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	paralyzetarget
	effectchance
	flinchtarget
	endmove

DracoFang:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	confusetarget
	effectchance
	flinchtarget
	endmove

AllDownHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	allstatsdown
	endmove

SleepHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	sleephit
	endmove

FlareBlitz:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	recoil
	kingsrock
	checkfaint
	buildopponentrage
	burntarget
	endmove

Avalanche:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	avalanche
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	endmove

HammerArm:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	switchturn
	speeddown
	statdownmessage
	switchturn
	kingsrock
	checkfaint
	buildopponentrage
	endmove

CloseCombat:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	switchturn
	defensedown
	statdownmessage
	specialdefensedown
	statdownmessage
	switchturn
	kingsrock
	checkfaint
	buildopponentrage
	endmove

BulkUp:
	checkobedience
	usedmovetext
	doturn
	lowersub
	attackup
	statupanim
	statupmessage
	statupfailtext
	resetmiss
	defenseup
	statupmessage
	statupfailtext
	raisesub
	endmove

Superpower:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	switchturn
	attackdown
	statdownmessage
	defensedown
	statdownmessage
	switchturn
	kingsrock
	checkfaint
	buildopponentrage
	endmove

CalmMind:
	checkobedience
	usedmovetext
	doturn
	lowersub
	specialattackup
	statupanim
	statupmessage
	statupfailtext
	resetmiss
	specialdefenseup
	statupmessage
	statupfailtext
	raisesub
	endmove

DragonDance:
	checkobedience
	usedmovetext
	doturn
	lowersub
	attackup
	statupanim
	statupmessage
	statupfailtext
	resetmiss
	speedup
	statupmessage
	statupfailtext
	raisesub
	endmove

StrengthSap:
    checkobedience
    usedmovetext
    doturn
    checkhit
    strengthsap
    endmove

ShellSmash:
	checkobedience
	usedmovetext
	doturn
	lowersub
	statupanim
	raisesub
	shellsmash
	statupfailtext
	endmove

HoneClaws:
	checkobedience
	usedmovetext
	doturn
	lowersub
	attackup
	statupanim
	statupmessage
	statupfailtext
	resetmiss
	accuracyup
	statupmessage
	statupfailtext
	raisesub
	endmove

SpeedUpHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	speedup
	statupmessage
	kingsrock
	checkfaint
	buildopponentrage
	endmove

Hail:
	checkobedience
	usedmovetext
	doturn
	starthail
	endmove

BrickBreak:
	checkobedience
	usedmovetext
	doturn
	breakscreens
	critical
	damagestats
	damagecalc
	stab
	checkhit
	damagevariation
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	endmove

Blizzard:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	blizzardaccuracy
	checkhit
	effectchance
	stab
	damagevariation
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	freezetarget
	endmove

QuiverDance:
	checkobedience
	usedmovetext
	doturn
	lowersub
	specialattackup
	statupanim
	statupmessage
	statupfailtext
	resetmiss
	specialdefenseup
	statupmessage
	statupfailtext
	resetmiss
	speedup
	statupmessage
	statupfailtext
	raisesub
	endmove

SpecialDefenseDown2Hit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	specialdefensedown2
	statdownmessage
	endmove

VoltTackle:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	recoil
	kingsrock
	checkfaint
	buildopponentrage
	paralyzetarget
	endmove

CosmicPower:
	checkobedience
	usedmovetext
	doturn
	lowersub
	defenseup
	statupanim
	statupmessage
	statupfailtext
	resetmiss
	specialdefenseup
	statupmessage
	statupfailtext
	raisesub
	endmove

Growth:
	checkobedience
	usedmovetext
	doturn
	lowersub
	attackup
	statupanim
	statupmessage
	statupfailtext
	resetmiss
	specialattackup
	statupmessage
	statupfailtext
	raisesub
	endmove

PlayNice:
	checkobedience
	usedmovetext
	doturn
	checkhit
	attackdown
	lowersub
	statdownanim
	raisesub
	statdownmessage
	statdownfailtext
	endmove

CircleThrow:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	kingsrock
	checkfaint
	criticaltext
	supereffectivetext
	buildopponentrage
	switchhit
	endmove

SpecialAttackUpHit:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	effectchance
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	specialattackup
	statupmessage
	kingsrock
	checkfaint
	buildopponentrage
	endmove

SuckerPunch:
	checkobedience
	usedmovetext
	doturn
	suckerpunch
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	checkhit
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	endmove

GrassKnot:
	checkobedience
	usedmovetext
	doturn
	grassknot
	critical
	damagestats
	damagecalc
	stab
	checkhit
	damagevariation
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	endmove

Flatter:
	checkobedience
	usedmovetext
	doturn
	checkhit
	switchturn
	specialattackup2
	switchturn
	lowersub
	statupanim
	raisesub
	failuretext
	switchturn
	statupmessage
	switchturn
	confusetarget
	endmove

AquaRing:
	checkobedience
	usedmovetext
	doturn
	aquaring
	endmove

DoBurn:
	checkobedience
	usedmovetext
	doturn
	stab
	checkhit
	checksafeguard
	burn
	endmove

KnockOff:
	checkobedience
	usedmovetext
	doturn
	knockoff_power
	critical
	damagestats
	damagecalc
	stab
	checkhit
	damagevariation
	moveanim
	failuretext
	applydamage
	criticaltext
	supereffectivetext
	knockoff
	kingsrock
	checkfaint
	buildopponentrage
	endmove

Roost:
	checkobedience
	usedmovetext
	doturn
	roost
	endmove

Acrobatics:
	checkobedience
	usedmovetext
	doturn
	critical
	damagestats
	damagecalc
	stab
	damagevariation
	acrobatics
	checkhit
	moveanim
	failuretext
	applydamage
	supereffectivetext
	kingsrock
	checkfaint
	buildopponentrage
	endmove

UTurn:
    checkobedience
    usedmovetext
    doturn
    critical
    damagestats
    damagecalc
    stab
    damagevariation
    checkhit
    uturnanim
    failuretext
    applydamage
    criticaltext
    supereffectivetext
  	uturn
    checkfaint
    buildopponentrage
    kingsrock
    endmove

Coil:
	checkobedience
	usedmovetext
	doturn
	lowersub
	attackup
	statupanim
	statupmessage
	statupfailtext
	resetmiss
	defenseup
	statupmessage
	statupfailtext
	resetmiss
	accuracyup
	statupmessage
	statupfailtext
	raisesub
	endmove

;WakeUpSlap:
;	checkobedience
;	usedmovetext
;	doturn
;	wakeupslap
;	critical
;	damagestats
;	damagecalc
;	stab
;	damagevariation
;	checkhit
;	effectchance
;	moveanim
;	failuretext
;	applydamage
;	criticaltext
;	supereffectivetext
;	checkfaint
;	buildopponentrage
;	awakenopponent
;	endmove
