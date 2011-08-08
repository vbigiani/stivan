/* Variables:

tb#ShadowsThievesJobs: tracks the quests.
    1: had the banter about hopes for the future.
    2: Initial talk with to Mitsu.
    3: Trying to steal Missy's pin.
    4: Stole (and reported) Missy's pin.
    5: Sent to Vulova's.
    6: Saved Vulova.
    7: Reported about Vulova.
    8: Sent to Mitsu in CH6.
    9: 'get snoopers out'
   10: Sent to Most Holy Radiant Heart.
   11: Killed MHRP.
   20: Refused to kill the MHRH.
   21: Sent to Rosalina.
   22: Rosalina created.
   23: Rosalina fleed.
  100: quest failed, Stivan is angry.
  101: quest failed, Stivan is understanding.
  102: quest finished.
*/

BEGIN tb#sros
BEGIN tb#scar
BEGIN tb#sros1
BEGIN tb#sros2
BEGIN tb#sros3
BEGIN tb#sros4

CHAIN IF WEIGHT #-1 ~IsValidForPartyDialog("tb#stiv") Global("tb#ShadowsThievesJobs","GLOBAL",1)~ THEN arnman04 stivanMitsu1
@0
== arnman03 @1
== arnman04 @2
== tb#stivj @3
== arnman04 @4
== tb#stivj @5
== arnman03 @6
== arnman04 @7
DO ~SetGlobal("tb#ShadowsThievesJobs","GLOBAL",2)~
EXIT

CHAIN IF WEIGHT #-1 ~IsGabber("tb#stiv") Global("tb#ShadowsThievesJobs","GLOBAL",2) GlobalGT("aranjob","GLOBAL",0)~ THEN arnman04 stivanMitsu2
@8
== arnman03 @9
== arnman04 @10
== tb#stivj @11
== arnman03 @12
== arnman04 @13
== arnman03 @14
== arnman04 @15
= @16
== arnman03 @17
== tb#stivj @18
= @19
END
IF ~~ THEN DO ~SetGlobal("tb#ShadowsThievesJobs","GLOBAL",100) SetGlobalTimer("tb#StivanAngry","GLOBAL",ONE_DAY)~ REPLY @20 EXTERN tb#stivj FirstJob1-1
IF ~~ THEN DO ~SetGlobal("tb#ShadowsThievesJobs","GLOBAL",3)~ REPLY @21 EXTERN tb#stivj FirstJob1-2
IF ~~ THEN DO ~SetGlobal("tb#ShadowsThievesJobs","GLOBAL",3)~ REPLY @22 EXTERN tb#stivj FirstJob1-2
IF ~~ THEN DO ~SetGlobal("tb#ShadowsThievesJobs","GLOBAL",3)~ REPLY @23 EXTERN tb#stivj FirstJob1-2

CHAIN IF ~~ THEN tb#stivj FirstJob1-1
@24
== arnman04 @25
== arnman03 @26
== arnman04 @27
EXIT

CHAIN IF ~~ THEN tb#stivj FirstJob1-2
@28
BRANCH ~IsValidForPartyDialog("Mazzy")~ BEGIN
  == MAZZYJ @29
  == tb#stivj @30
END
BRANCH ~IsValidForPartyDialog("Minsc")~ BEGIN
  == MINSCJ @31
  == tb#stivj @32
  == MINSCJ IF ~Global("WWBooGone","GLOBAL",0)~ THEN @33
  == MINSCJ IF ~!Global("WWBooGone","GLOBAL",0)~ THEN @34
END
END
IF ~~ THEN UNSOLVED_JOURNAL @35 EXIT

CHAIN IF WEIGHT #-1 ~NumTimesTalkedToGT(2) Global("tb#ShadowsThievesJobs","GLOBAL",3) !PartyHasItem("tb#spin") IsGabber("tb#stiv")~ THEN ARNGRL01 firstjob
@36
== tb#stivj @37
== ARNGRL01 @38
== tb#stivj @39
== ARNGRL01 @40
== tb#stivj @41
== ARNGRL01 @42
== tb#stivj @43
== ARNGRL01 @44
== tb#stivj @45
END
IF ~~ THEN DO ~CreateItem("tb#spin",1,0,0)~ EXIT

APPEND arnman04
  IF WEIGHT #-1 ~IsGabber("tb#stiv") Global("tb#ShadowsThievesJobs","GLOBAL",3)~ THEN firstjob2
    SAY @46
    IF ~PartyHasItem("tb#spin")~ THEN DO %SetGlobal("tb#shadowsThievesJobs","GLOBAL",4) TakePartyItem("tb#spin") DestroyItem("tb#spin") EraseJournalEntry(@35)% EXTERN tb#stivj firstjob2-1
    IF ~!PartyHasItem("tb#spin")~ THEN EXTERN tb#stivj firstjob2-2
  END
END

CHAIN IF ~~ THEN tb#stivj firstjob2-2
@47
== arnman03 @48
== arnman04 @49
== arnman03 @50
== arnman04 @51
EXIT

CHAIN IF ~~ THEN tb#stivj firstjob2-1
@52
== arnman03 @53
== arnman04 @54
== arnman04 IF ~!Dead("mook")~ @55
END
IF ~Dead("mook")~ THEN EXTERN arnman04 secondJob1-1
IF ~!Dead("mook")~ THEN EXIT

CHAIN IF WEIGHT #-1 ~IsGabber("tb#stiv") Dead("mook") Global("tb#shadowsThievesJobs","GLOBAL",4)~ THEN arnman04 secondJob
@56
== arnman03 @57
== arnman04 @58
EXTERN arnman04 secondJob1-1

CHAIN IF ~~ THEN arnman04 secondJob1-1
@59
== tb#stivj @60
== arnman03 @61
== arnman04 @62
== tb#stivj @63
END
IF ~~ THEN REPLY @64 GOTO SecondJob1-2
IF ~~ THEN REPLY @65 GOTO SecondJob1-2
IF ~~ THEN REPLY @66 GOTO SecondJob1-3

CHAIN IF ~~ THEN arnman04 SecondJob1-2
@67
== NALIAJ IF ~IsValidForPartyDialog("Nalia")~ THEN @68
== JAHEIRAJ IF ~IsValidForPartyDialog("Jaheira")~ THEN @69
END IF ~~ THEN DO ~SetGlobal("tb#shadowsThievesJobs","GLOBAL",5)~ UNSOLVED_JOURNAL @70 EXIT

CHAIN IF ~~ THEN arnman04 SecondJob1-3
@71
== tb#stivj @72
== arnman04 @73
== tb#stivj @74
END
IF ~~ THEN SOLVED_JOURNAL @75 DO ~SetGlobal("tb#shadowsThievesJobs","GLOBAL",101)~ EXIT

CHAIN IF WEIGHT #-1 ~InParty("tb#stiv") InMyArea("tb#stiv") Global("tb#shadowsThievesJobs","GLOBAL",5) !Dead("tb#svam1")~ THEN VULOVA vulova-1
@76
== tb#stivj @77
== VULOVA @78
== tb#stivj @79
== VULOVA @80
= @81
END
IF ~~ THEN DO ~CreateCreatureObject("vamflf01","Vulova",1,0,0) CreateCreatureObject("tb#svam1","Vulova",1,0,0) CreateCreatureObject("vamflm01","Vulova",1,0,0)~ EXIT

APPEND Vulova
  IF WEIGHT #-1 ~Dead("tb#svam1") CombatCounter(0)~ THEN vulova-2
  SAY @82
  IF ~~ THEN REPLY @83 GOTO vulova-3
  END
  
  IF ~~ THEN vulova-3
  SAY @84
  = @85
  = @86
  IF ~~ THEN DO ~SetGlobal("tb#ShadowsThievesJobs","GLOBAL",6) EscapeArea()~ EXIT
  END
END

CHAIN IF WEIGHT #-1 ~IsGabber("tb#stiv") Global("tb#ShadowsThievesJobs","GLOBAL",6)~ THEN arnman04 SecondJob4
@87
== tb#stivj @88
== arnman03 @89
== arnman04 @90
== tb#stivj @91
== arnman04 @92
== arnman03 @93
== arnman04 @94
== tb#stivj @95
== arnman04 @96
== tb#stivj @97
== arnman04 @98
== tb#stivj @99
== arnman04 @100
== arnman03 @101
END IF ~~ THEN SOLVED_JOURNAL @102 DO %SetGlobal("tb#ShadowsThievesJobs","GLOBAL",7) EraseJournalEntry(@70)% EXIT

APPEND tb#stivj
IF WEIGHT #-1 ~Global("tb#ShadowsThievesJobs","GLOBAL",7) Dead("c6Bodhi")~ THEN bodhidead
SAY @103
IF ~~ THEN REPLY @104 GOTO AfterBodhiDeath1-1
IF ~~ THEN REPLY @105 GOTO AfterBodhiDeath1-2
IF ~~ THEN REPLY @106 GOTO AfterBodhiDeath1-3
END

IF ~~ THEN AfterBodhiDeath1-1
SAY @107
IF ~~ THEN  GOTO AfterBodhiDeath1-3
END

IF ~~ THEN AfterBodhiDeath1-2
SAY @108
IF ~~ THEN  GOTO AfterBodhiDeath1-3
END

IF ~~ THEN AfterBodhiDeath1-3
SAY @109
IF ~~ THEN REPLY @110 GOTO AfterBodhiDeath1-4
IF ~~ THEN REPLY @111 GOTO AfterBodhiDeath1-5
IF ~~ THEN REPLY @112 GOTO AfterBodhiDeath1-6
END

IF ~~ THEN AfterBodhiDeath1-4
SAY @113
IF ~~ THEN GOTO AfterBodhiDeath1-7
END

IF ~~ THEN AfterBodhiDeath1-5
SAY @114
IF ~~ THEN  GOTO AfterBodhiDeath1-7
END

IF ~~ THEN AfterBodhiDeath1-6
SAY @115
IF ~~ THEN  GOTO AfterBodhiDeath1-7
END

IF ~~ THEN AfterBodhiDeath1-7
SAY @116
= @117
IF ~~ THEN DO ~SetGlobal("tb#ShadowsThievesJobs","GLOBAL",8)~ UNSOLVED_JOURNAL @118 EXIT
END
END

CHAIN IF WEIGHT #-2 ~IsGabber("tb#stiv") Global("tb#ShadowsThievesJobs","GLOBAL",8)~ THEN arnman03 ThirdJob
@119
== arnman04 @120
== tb#stivj @121
== arnman04 @122
== arnman03 @123
== arnman04 @124
== arnman03 @125
== arnman04 @126
== arnman03 @127
== arnman04 @128
DO ~SetGlobal("tb#ShadowsThievesJobs","GLOBAL",9)~
BRANCH ~IsValidForPartyDialog("Yoshimo")~ BEGIN
== arnman04 @129
== YOSHJ @130
== arnman03 @131
== arnman04 @132
== YOSHJ @133
== arnman03 @134
== arnman04 @135
== tb#stivj @136
== arnman04 @137
END
EXIT

CHAIN IF WEIGHT #-1 ~IsGabber("tb#stiv") Global("tb#ShadowsThievesJobs","GLOBAL",9)
OR(3) !IsValidForPartyDialog(Player2) Name("Yoshimo",Player2) Name("tb#stiv",Player2)
OR(3) !IsValidForPartyDialog(Player3) Name("Yoshimo",Player3) Name("tb#stiv",Player3)
OR(3) !IsValidForPartyDialog(Player4) Name("Yoshimo",Player4) Name("tb#stiv",Player4)
OR(3) !IsValidForPartyDialog(Player5) Name("Yoshimo",Player5) Name("tb#stiv",Player5)
OR(3) !IsValidForPartyDialog(Player6) Name("Yoshimo",Player6) Name("tb#stiv",Player6)
~ THEN arnman04 ThirdJob1
@138
== tb#stivj @139
== arnman03 @140
== arnman04 @141
== tb#stivj @142
== arnman04 @143
== arnman03 @144
== arnman04 IF ~!IsValidForPartyDialog("Yoshimo")~ THEN @145
== arnman04 IF ~IsValidForPartyDialog("Yoshimo")~ THEN @146
== arnman04 @147
== arnman03 @148
== arnman04 @149
== tb#stivj @150
BRANCH ~IsValidForPartyDialog("Yoshimo")~ BEGIN
== YOSHJ @151
== arnman03 @152
== arnman04 @153
== arnman03 @154
== arnman04 @155
END
== arnman04 @156
== tb#stivj @157
== arnman03 @158
== arnman04 @159
== arnman03 @160
== arnman04 @161
== arnman03 @162
END IF ~~ THEN UNSOLVED_JOURNAL @163 DO ~SetGlobal("tb#ShadowsThievesJobs","GLOBAL",10)~
EXIT

CHAIN IF WEIGHT #-1 ~AreaCheck("ar0903") Global("tb#stivanar0903","GLOBAL",0) Global("tb#ShadowsThievesJobs","GLOBAL",10)~ THEN tb#stivj inar0901
@164
DO ~SetGlobal("tb#stivanar0903","GLOBAL",1)~
BRANCH ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ BEGIN
== KELDORJ @165
== TB#STIVJ @166
== KELDORJ @167
== TB#STIVJ @168
== KELDORJ @169
== TB#STIVJ @170
END
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenIsNotKnight","GLOBAL",1)~ THEN @171
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenIsNotKnight","GLOBAL",1)~ THEN @172
END
IF ~!Alignment(Player1,MASK_GOOD)~ THEN REPLY @173 EXTERN tb#stivj inAr0903-1
IF ~!Alignment(Player1,MASK_GOOD)~ THEN REPLY @174 EXTERN tb#stivj inAr0903-1
IF ~!Alignment(Player1,MASK_GOOD)~ THEN REPLY @175 EXTERN tb#stivj inAr0903-1
IF ~!Alignment(Player1,MASK_GOOD)~ THEN REPLY @176 EXTERN tb#stivj inAr0903-2
IF ~!Alignment(Player1,MASK_EVIL)~ THEN REPLY @177 EXTERN tb#stivj inAr0903-2
IF ~!Alignment(Player1,MASK_EVIL)~ THEN REPLY @178 EXTERN tb#stivj inAr0903-2
IF ~!Alignment(Player1,MASK_EVIL)~ THEN REPLY @179 EXTERN tb#stivj inAr0903-2

CHAIN IF ~~ THEN tb#stivj inAr0903-1
@180 DO ~SetGlobal("TempleShout0903","GLOBAL",1)~
== KELDORJ IF ~InParty("Keldorn") !StateCheck("keldorn",CD_STATE_NOTVALID)~ THEN @181 DO ~LeaveParty() Enemy()~
== ANOMENJ IF ~InParty("anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenIsNotKnight","GLOBAL",1)~ THEN @182 DO ~LeaveParty() Enemy()~
EXIT

APPEND tb#stivj
IF ~~ THEN inAr0903-2
SAY @183
IF ~~ THEN REPLY @184 EXTERN tb#stivj inAr0903-3
IF ~~ THEN REPLY @185 EXTERN tb#stivj inAr0903-3
IF ~~ THEN REPLY @186 EXTERN tb#stivj inAr0903-1
END

IF ~~ THEN inAr0903-3
SAY @187
IF ~~ THEN REPLY @188 EXTERN tb#stivj inAr0903-4 
IF ~~ THEN REPLY @189 EXTERN tb#stivj inAr0903-4
IF ~Class(Player1,PALADIN)~ THEN REPLY @190 EXTERN tb#stivj inAr0903-4 
IF ~~ THEN REPLY @191 EXTERN tb#stivj inAr0903-1
END

IF ~~ THEN inAr0903-4
SAY @192
IF ~~ THEN REPLY @193 EXTERN tb#stivj inAr0903-5
IF ~~ THEN REPLY @194 EXTERN tb#stivj inAr0903-5
IF ~~ THEN REPLY @195 EXTERN tb#stivj inAr0903-6
IF ~~ THEN REPLY @196 EXTERN tb#stivj inAr0903-1
END

IF ~~ THEN inAr0903-5
SAY @197
IF ~~ THEN UNSOLVED_JOURNAL @198
DO %SetGlobal("tb#ShadowsThievesJobs","GLOBAL",20) EraseJournalEntry(@163)%
EXIT
END

IF ~~ THEN inAr0903-6
SAY @199
IF ~~ THEN 
DO %EraseJournalEntry(@163) SetGlobal("tb#ShadowsThievesJobs","GLOBAL",100) SetGlobalTimer("tb#StivanAngry","GLOBAL",ONE_DAY)% EXIT
END
END

CHAIN IF WEIGHT #-1 ~AreaCheck("ar0903") Dead("Heartg1")
Dead("Heartg2")
Dead("Heartg3")
Dead("Heartg4")
Dead("Heartg5")
Global("tb#stivanClearedAR0903","GLOBAL",0)~ THEN tb#stivj ClearedAr0903
@200
DO ~SetGlobal("tb#stivanClearedAR0903","GLOBAL",1) SetGlobal("tb#ShadowsThievesJobs","GLOBAL",11)~
BRANCH ~IsValidForPartyDialog("Korgan")~ BEGIN
== KORGANJ @201
== TB#STIVJ @202
== KORGANJ @203
== TB#STIVJ @204
END
EXIT

CHAIN IF WEIGHT #-1 ~Global("tb#ShadowsThievesJobs","GLOBAL",20)~ THEN arnman04 FourthJob
@205
== tb#stivj @206
END
IF ~~ THEN REPLY @207 EXTERN arnman04 FourthJob1-5
IF ~~ THEN REPLY @208 EXTERN arnman04 FourthJob1-5
IF ~~ THEN REPLY @209 GOTO FourthJob1-5
IF ~Class(Player1,PALADIN)~ THEN REPLY @210 EXTERN arnman04 FourthJob1-5


CHAIN IF ~~ THEN arnman04 FourthJob1-5
@211
== tb#stivj @212
END
IF ~~ THEN REPLY @213 EXTERN tb#stivj FourthJob1-6
IF ~~ THEN REPLY @214 EXTERN tb#stivj FourthJob1-6
IF ~~ THEN REPLY @215 EXTERN arnman03 FourthJob1-7
IF ~~ THEN REPLY @216 EXTERN arnman04 FourthJob1-8

CHAIN IF ~~ THEN tb#stivj FourthJob1-6
@217
= @218
== arnman03 @219
== tb#stivj @220
END IF ~~ THEN
SOLVED_JOURNAL @221
DO %EraseJournalEntry(@163) SetGlobal("tb#ShadowsThievesJobs","GLOBAL",100) SetGlobalTimer("tb#StivanAngry","GLOBAL",ONE_DAY)%
EXIT

APPEND arnman03
IF ~~ THEN FourthJob1-7
SAY @222
IF ~~ THEN EXTERN arnman04 FourthJob1-9
END
END

APPEND arnman04
IF ~~ THEN FourthJob1-8
SAY @223
IF ~~ THEN GOTO FourthJob1-9
END

IF ~~ THEN FourthJob1-9
SAY @224
IF ~Global("PlayerThiefGuild","GLOBAL",1) Global("PGFailed","GLOBAL",1) CheckStatLT(Player1,13,CHR)~ THEN REPLY @225 EXTERN arnman03 FourthJob1-10
IF ~Global("PlayerThiefGuild","GLOBAL",1) Global("PGFailed","GLOBAL",1) CheckStatGT(Player1,12,CHR)~ THEN REPLY @225 GOTO FourthJob1-11
IF ~~ THEN REPLY @226 GOTO FourthJob1-11
IF ~~ THEN REPLY @227 GOTO FourthJob1-11
IF ~CheckStatLT(Player1,13,CHR)~ THEN REPLY @228 EXTERN arnman03 FourthJob1-10
IF ~CheckStatGT(Player1,12,CHR)~ THEN REPLY @228 GOTO FourthJob1-11
IF ~Class(Player1,MAGE_ALL)~ THEN REPLY @229 GOTO FourthJob1-11
IF ~~ THEN REPLY @230 EXTERN tb#stivj FourthJob1-6
END
END

CHAIN IF ~~ THEN arnman03 FourthJob1-10
@231
== arnman04 @232
EXTERN tb#stivj FourthJob1-6

CHAIN IF ~~ THEN arnman04 FourthJob1-11
@233
= @234
== arnman03 @235
== arnman04 @236
== arnman03 @237
== arnman04 @238
== arnman03 @239
== arnman04 @240
END
IF ~~ THEN REPLY @241 EXTERN arnman03 FourthJob1-12
IF ~~ THEN REPLY @242 EXTERN arnman03 FourthJob1-13
IF ~PartyGoldGT(499)~ THEN DO ~TakePartyGold(500) DestroyGold(500)~ REPLY @243 GOTO FourthJob1-14
IF ~PartyGoldLT(500)~ THEN REPLY @244 GOTO FourthJob1-15

APPEND arnman03
IF ~~ THEN FourthJob1-12
SAY @245
IF ~~ THEN REPLY @242 GOTO FourthJob1-13
IF ~PartyGoldGT(499)~ THEN DO ~TakePartyGold(500) DestroyGold(500)~ REPLY @243 EXTERN arnman04 FourthJob1-14
IF ~PartyGoldLT(500)~ THEN REPLY @244 EXTERN arnman04 FourthJob1-15
END

IF ~~ THEN FourthJob1-13
SAY @246
IF ~~ THEN REPLY @241 GOTO FourthJob1-12
IF ~PartyGoldGT(499)~ THEN DO ~TakePartyGold(500) DestroyGold(500)~ REPLY @243 EXTERN arnman04 FourthJob1-14
IF ~PartyGoldLT(500)~ THEN REPLY @244 EXTERN arnman04 FourthJob1-15
END
END

APPEND arnman04
IF ~~ THEN FourthJob1-14
SAY @247
IF ~~ THEN DO ~SetGlobal("tb#ShadowThiefFinePaid","GLOBAL",1)~ GOTO FourthJob1-16
END

IF ~~ THEN FourthJob1-15
SAY @248
IF ~~ THEN GOTO FourthJob1-16
END

IF ~~ THEN FourthJob1-16
SAY @249
IF ~~ THEN UNSOLVED_JOURNAL @250 DO ~SetGlobal("tb#shadowsthievesJobs","GLOBAL",21)~
EXIT
END
END

CHAIN IF ~NumTimesTalkedTo(0)~ THEN TB#sros Rosalina
@251
= @252
= @253
= @254
== tb#sros1 @255
== tb#sros @256
= @257
== tb#sros3 @258
== tb#sros4 @259
== tb#sros @260
= @261
== TB#SCAR @262
== tb#sros @263
= @264
== tb#sros2 @265
== tb#sros @266
== tb#sros2 @217
== tb#sros @267
DO ~ActionOverride("tb#sros1",EscapeArea()) ActionOverride("tb#sros2",EscapeArea()) ActionOverride("tb#sros3",EscapeArea()) ActionOverride("tb#sros4",EscapeArea()) ~
EXIT

CHAIN IF ~IsValidForPartyDialog("tb#stiv") !Allegiance(Myself,ENEMY)~ THEN tb#sros rosalina2
@268
== tb#stivj @269
BRANCH ~IsValidForPartyDialog("Mazzy")~ BEGIN
== tb#sros @270
== MAZZYJ @271
END
== tb#sros @272
END
IF ~~ THEN REPLY @273 GOTO MonetaSonante1-1
IF ~~ THEN REPLY @274 GOTO MonetaSonante1-2

APPEND TB#sros
IF ~~ THEN MonetaSonante1-1
SAY @275
IF ~~ THEN REPLY @276 GOTO MonetaSonante1-3
END

IF ~~ THEN MonetaSonante1-2
SAY @277
IF ~~ THEN REPLY @278 GOTO MonetaSonante1-3
END

IF ~~ THEN MonetaSonante1-3
SAY @279
IF ~~ THEN REPLY @280 GOTO MonetaSonante1-4
END

IF ~Dead("tb#scar") HPLT(Myself,2)~ THEN flee
SAY @281
IF ~~ THEN DO ~SetGlobal("tb#ShadowsThievesJobs","GLOBAL",23) EscapeArea()~ EXIT
END
END

CHAIN IF ~~ THEN tb#sros MonetaSonante1-4
@282
== TB#SCAR @283
== tb#sros  @284
== TB#SCAR @285
== tb#sros  @286
== TB#SCAR @287
== tb#sros  @288
= @289
== tb#stivj @290
== tb#sros  @291
== tb#stivj @292
== tb#sros  @293
== TB#SCAR @294
END
IF ~~ THEN DO ~ActionOverride("tb#scar",Enemy()) ActionOverride("tb#sros",Enemy())~ EXIT

CHAIN IF WEIGHT #-1 ~OR(2) Global("tb#ShadowsThievesJobs","GLOBAL",23) PartyHasItem("tb#sshi")~ THEN arnman04 final
@295
== arnman03 @296
== arnman04 @297
BRANCH ~Global("tb#ShadowsThievesJobs","GLOBAL",23)~ BEGIN
== arnman04 @298
== tb#stivj @299
== arnman03 @300
== tb#stivj @301
== arnman04 @302
== arnman03 @303
== arnman04 @304
== tb#stivj @305
END
BRANCH ~PartyHasItem("tb#sshi")~ BEGIN
== arnman04 @306
== tb#stivj @307
== arnman03 @308
== arnman04 @309
== tb#stivj @310
== arnman04 @311
DO ~TakePartyItem("tb#sshi") DestroyItem("tb#sshi")~
END
== arnman04 @312
== arnman03 @313
== tb#stivj @314
== arnman03 @315
== tb#stivj @316
== arnman04 @317
== tb#stivj @318
= @319
= @320
== arnman03 @321
END
IF ~~ THEN SOLVED_JOURNAL @322 DO ~SetGlobal("tb#ShadowsThievesJobs","GLOBAL",102)~
EXIT

