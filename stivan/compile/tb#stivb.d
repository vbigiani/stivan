BEGIN TB#STIVB

IF ~InParty("tb#stiv")
InParty(Player1)
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0)
GlobalGT("Chapter","GLOBAL",2)
Global("tb#StivanPCTalk","GLOBAL",3)~ THEN stivanPC3
SAY @0
IF ~~ THEN DO ~SetGlobal("tb#StivanPCTalk","GLOBAL",4)~ REPLY @1 GOTO StivanPC3-1
IF ~~ THEN DO ~SetGlobal("tb#StivanPCTalk","GLOBAL",4)~ REPLY @2 GOTO StivanPC3-1
IF ~~ THEN DO ~SetGlobal("tb#StivanPCTalk","GLOBAL",4)~ REPLY @3 GOTO StivanPC3-1
IF ~~ THEN DO ~SetGlobal("tb#StivanPCTalk","GLOBAL",4)~ REPLY @4 GOTO StivanPC3-1
END

IF ~~ THEN StivanPC3-1
SAY @5
IF ~Race(Player1,HALFLING)~ THEN REPLY @6 GOTO StivanPC3-2
IF ~!Race(Player1,HALFLING)~ THEN REPLY @6 GOTO StivanPC3-3
END

IF ~~ THEN StivanPC3-2
SAY @7
IF ~~ THEN GOTO StivanPC3-4
END	

IF ~~ THEN StivanPC3-3
SAY @8
IF ~~ THEN GOTO StivanPC3-4
END

IF ~~ THEN StivanPC3-4
SAY @9
= @10
IF ~Global("WorkingForAran","GLOBAL",1)~ THEN GOTO StivanPC3-4a
IF ~!Global("WorkingForAran","GLOBAL",1)~ THEN GOTO StivanPC3-4b
END

IF ~~ THEN StivanPC3-4a
SAY @11
= @12
= @13
IF ~Class(Player1,THIEF_ALL)~ THEN DO ~SetGlobal("tb#ShadowsThievesJobs","GLOBAL",1)~ REPLY @14 GOTO StivanPC3-5
IF ~~ THEN DO ~SetGlobal("tb#ShadowsThievesJobs","GLOBAL",1)~ REPLY @15 GOTO StivanPC3-5
IF ~~ THEN DO ~SetGlobal("tb#ShadowsThievesJobs","GLOBAL",1)~ REPLY @16 GOTO StivanPC3-5
IF ~~ THEN DO ~SetGlobal("tb#ShadowsThievesJobs","GLOBAL",1)~ REPLY @17 GOTO StivanPC3-6
IF ~~ THEN DO ~SetGlobal("tb#ShadowsThievesJobs","GLOBAL",1)~ REPLY @18 GOTO StivanPC3-6
END

IF ~~ THEN StivanPC3-5
SAY @19 
IF ~~ THEN GOTO StivanPC3-7
END

IF ~~ THEN StivanPC3-6
SAY @20
= @21 
IF ~~ THEN GOTO StivanPC3-7
END

IF ~~ THEN StivanPC3-7
SAY @22
IF ~~ THEN EXIT
END

IF ~~ THEN StivanPC3-4b 
SAY @23
IF ~~ THEN DO ~SetGlobal("tb#StivanVineyards","GLOBAL",1)~ REPLY @24 GOTO StivanPC3-8
IF ~~ THEN DO ~SetGlobal("tb#StivanVineyards","GLOBAL",1)~ REPLY @25 GOTO StivanPC3-9
IF ~~ THEN DO ~SetGlobal("tb#StivanVineyards","GLOBAL",1)~ REPLY @26 GOTO StivanPC3-11
IF ~~ THEN DO ~SetGlobal("tb#StivanVineyards","GLOBAL",1)~ REPLY @27 GOTO StivanPC3-10
END

IF ~~ THEN StivanPC3-8
SAY @28
IF ~~ THEN GOTO StivanPC3-11
END

IF ~~ THEN StivanPC3-9
SAY @29 
IF ~~ THEN GOTO StivanPC3-11
END

IF ~~ THEN StivanPC3-10
SAY @30
IF ~~ THEN GOTO StivanPC3-11
END

IF ~~ THEN StivanPC3-11
SAY @31
= @32
IF ~~ THEN EXIT
END

CHAIN 
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanViconia","GLOBAL",0)~ THEN TB#STIVB stivan-viconia-1
@33
= @34
DO ~SetGlobal("tb#StivanViconia","GLOBAL",1)~
== BVICONI @35
== TB#STIVB @36
== BVICONI @37
== TB#STIVB @38
== BVICONI @39
== TB#STIVB @40
== BVICONI @41
== TB#STIVB @42
== BVICONI @43
== TB#STIVB @44
== BVICONI @45
EXIT

CHAIN 
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanViconia","GLOBAL",2)~ THEN TB#STIVB stivan-viconia-3
@46
DO ~SetGlobal("tb#StivanViconia","GLOBAL",3)~
== BVICONI @47
== TB#STIVB @48
== BVICONI @49
== TB#STIVB @50
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanViconia","GLOBAL",3)~ THEN BVICONI stivan-viconia-4
@51
DO ~SetGlobal("tb#StivanViconia","GLOBAL",4)~
== TB#STIVB @52
== BVICONI @53
== TB#STIVB @54
== BVICONI @55
== TB#STIVB @56
== BVICONI @57
== TB#STIVB @58
== BVICONI @59
== TB#STIVB @60
== BVICONI @61
== TB#STIVB @62
== BVICONI @63
== TB#STIVB @64
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanViconia","GLOBAL",4)~ THEN BVICONI stivan-viconia-5
@65
== BVICONI IF ~Race(Player1,HUMAN) Global("SleptViconia","GLOBAL",1)~ THEN @66
== TB#STIVB @67
DO ~SetGlobal("tb#StivanViconia", "GLOBAL",5)~
== BVICONI @68
== TB#STIVB @69
== BVICONI @70
BRANCH ~Global("AnomenIsNotKnight","GLOBAL",1)~ BEGIN
== TB#STIVB @71
== BVICONI @72
== TB#STIVB @73
== BVICONI @74
END
BRANCH ~Global("AnomenIsNotKnight","GLOBAL",0)~ BEGIN
== TB#STIVB @75
== BVICONI @76
== TB#STIVB @77
== BVICONI @78
END
EXIT


CHAIN 
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanViconia","GLOBAL",5)~ THEN TB#STIVB stivan-viconia-6
@79
DO ~SetGlobal("tb#StivanViconia","GLOBAL",6)~
== BVICONI @80
== TB#STIVB @81
== BVICONI @82
== TB#STIVB @83
== BVICONI @84
== TB#STIVB @85
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanViconia","GLOBAL",7)~ THEN BVICONI stivan-viconia-7
@86
DO ~SetGlobal("tb#StivanViconia","GLOBAL",8)~
== TB#STIVB @87
== BVICONI @88
== TB#STIVB @89
== BVICONI @90
== TB#STIVB @91
== BVICONI @92
EXIT

CHAIN 
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
Global("AnomenIsNotKnight","GLOBAL",0)
CombatCounter(0)
Global("tb#StivanAnomen","GLOBAL",0)~ THEN TB#STIVB stivan-anomen-1
@93
DO ~SetGlobal("tb#StivanAnomen", "GLOBAL",1)~
== BANOMEN @94
== TB#STIVB @95
== BANOMEN @96
== TB#STIVB @97
== BANOMEN @98
== TB#STIVB @99
EXIT

CHAIN 
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
Global("AnomenIsNotKnight","GLOBAL",0)
CombatCounter(0)
Global("tb#StivanAnomen","GLOBAL",1)~ THEN TB#STIVB stivan-anomen-2
@100
DO ~SetGlobal("tb#StivanAnomen","GLOBAL",2)~
== BANOMEN @101
== TB#STIVB @102
== BANOMEN @103
== BKELDOR IF ~IsValidForPartyDialog("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @104
== BANOMEN IF ~IsValidForPartyDialog("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @105
== TB#STIVB @106
== BANOMEN @107
== TB#STIVB @108
== BANOMEN @109
EXIT

ADD_TRANS_ACTION ANOMENJ BEGIN 101 END BEGIN END ~SetGlobalTimer("tb#StivanAnomenUpset","GLOBAL",FOUR_DAYS)~

CHAIN 
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
Global("AnomenIsNotKnight","GLOBAL",1)
GlobalTimerExpired("tb#stivanAnomenUpset","GLOBAL")
CombatCounter(0)
Global("tb#StivanAnomen","GLOBAL",2)~ THEN TB#STIVB stivan-anomen-3
@110
DO ~SetGlobal("tb#StivanAnomen","GLOBAL",3)~
== BANOMEN @111
== TB#STIVB @112
== BANOMEN @113
== TB#STIVB @114
== BANOMEN @115
== TB#STIVB @116
== BANOMEN @117
== TB#STIVB @118
== BANOMEN @119
EXIT


CHAIN 
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanKeldorn","GLOBAL",0)~ THEN TB#STIVB stivan-keldorn-1
@120
DO ~SetGlobal("tb#StivanKeldorn","GLOBAL",1)~
== BKELDOR @121
= @122
== TB#STIVB @123 
= @124
== BKELDOR @125
EXIT

CHAIN
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LadyMaria","GLOBAL",5)
Global("tb#StivanKeldorn","GLOBAL",1)~ THEN TB#STIVB stivan-keldorn-4
@126
DO ~SetGlobal("tb#StivanKeldorn","GLOBAL",2)~
== BKELDOR @127
== TB#STIVB @128
== BKELDOR @129
== TB#STIVB @130
== BKELDOR @131
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
AreaType(DUNGEON)
CombatCounter(0)
Global("tb#StivanEdwinInDungeon","GLOBAL",0)~ THEN BEDWIN StivanEdwinInDungeon
@132
DO ~SetGlobal("tb#StivanEdwinInDungeon","GLOBAL",1)~
== TB#STIVB @133
== BEDWIN @134
EXIT

CHAIN 
IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanEdwin","GLOBAL",0)~ THEN TB#STIVB stivan-edwin1
@135
DO ~SetGlobal("tb#StivanEdwin","GLOBAL",1)~
== BEDWIN @136
== TB#STIVB @137
== BEDWIN @138
= @139
== TB#STIVB @140
== BEDWIN @141
== TB#STIVB @142
== BEDWIN @143
== TB#STIVB @144
== BEDWIN @145
== TB#STIVB @146
EXIT

CHAIN 
IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
Global("tb#StivanEdwinScroll","GLOBAL",1)
CombatCounter(0)
Global("tb#StivanEdwin","GLOBAL",1)~ THEN TB#STIVJ stivan-edwin-2
@147
DO ~SetGlobal("tb#StivanEdwinScroll","GLOBAL",2)~
= @148
== EDWINJ @149
== TB#STIVJ @150
== EDWINJ @151
== TB#STIVJ @152
END
IF ~~ THEN REPLY @153 EXTERN EDWINJ StivanEdwin1
IF ~Global("EdwinRomanceActive","GLOBAL",2)~ THEN REPLY @154 EXTERN EDWINJ StivanEdwin2
IF ~~ THEN REPLY @155 EXTERN TB#STIVJ StivanEdwin3
IF ~~ THEN REPLY @156 EXTERN EDWINJ StivanEdwin1

APPEND EDWINJ
IF ~~ StivanEdwin1
SAY @157
IF ~~ THEN EXTERN EDWINJ StivanEdwin5
END 
END

CHAIN
IF ~~ THEN EDWINJ StivanEdwin2
@158 
= @159
== TB#STIVJ @160
END EDWINJ StivanEdwin5

APPEND TB#STIVJ
IF ~~ StivanEdwin3
SAY @161
= @160
IF ~~ THEN EXTERN EDWINJ StivanEdwin5
END
END

CHAIN EDWINJ StivanEdwin5
@162
== EDWINJ IF ~Global("EdwinRomanceActive","GLOBAL",2)~ THEN @163
= @164
== TB#STIVJ @165
== EDWINJ @166
== TB#STIVJ @167
== EDWINJ @168
== TB#STIVJ @169
== EDWINJ @170
== TB#STIVJ @171
== EDWINJ @172
DO ~SetGlobal("TB#StivanSusanScene","GLOBAL",1) StartCutSceneMode() StartCutScene("tb#ssus1")~
EXIT

BEGIN TB#SSUS
IF ~!Global("tb#StivanSusanScene","GLOBAL",2)~ THEN 0
SAY @173
IF ~~ THEN EXIT
END

CHAIN IF ~Global("TB#StivanSusanScene","GLOBAL",2)~ THEN TB#SSUS tb#sus
@174
= @175
== TB#STIVJ @176
== EDWINJ @177
== TB#SSUS @178
== EDWINJ @179
DO ~SetGlobal("TB#StivanSusanScene","GLOBAL",3) StartCutSceneMode() StartCutScene("tb#ssus2")~
EXIT

CHAIN IF ~Global("TB#StivanSusanScene","GLOBAL",4)~ THEN EDWINJ susan-finale
@180
== TB#STIVJ @181
== EDWINJ @182
DO ~SetGlobal("TB#StivanSusanScene","GLOBAL",5)~
EXIT

APPEND EDWINJ

IF ~PartyRested()
InParty("Edwin")
InParty("tb#Stiv")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0)
Global("TalkedDegardan","GLOBAL",3)
Global("EdwinComplainsOfStivan","GLOBAL",0)~ THEN BEGIN EdwinComplainsOfStivan
SAY @183
IF ~~ THEN DO ~SetGlobal("EdwinComplainsOfStivan","GLOBAL",1)~ REPLY @184 GOTO EdwinComplainsOfStivan1
IF ~~ THEN DO ~SetGlobal("EdwinComplainsOfStivan","GLOBAL",1)~ REPLY @185 GOTO EdwinComplainsOfStivan3
IF ~Global("EdwinRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("EdwinComplainsOfStivan","GLOBAL",1)~ REPLY @186 GOTO EdwinComplainsOfStivan2
IF ~Global("EdwinRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("EdwinComplainsOfStivan","GLOBAL",1)~ REPLY @187 GOTO EdwinComplainsOfStivan2
IF ~~ THEN REPLY @188 GOTO EdwinComplainsOfStivan3
END

IF ~~ THEN EdwinComplainsOfStivan1
SAY @189
IF ~~ THEN GOTO EdwinComplainsOfStivan4
END

IF ~~ THEN EdwinComplainsOfStivan3
SAY @190
IF ~~ THEN GOTO EdwinComplainsOfStivan4
END

IF ~~ THEN EdwinComplainsOfStivan2
SAY @191
IF ~~ THEN GOTO EdwinComplainsOfStivan4
END

IF ~~ THEN EdwinComplainsOfStivan4
SAY @192
IF ~~ THEN REPLY @193 GOTO EdwinComplainsOfStivan5
IF ~~ THEN REPLY @194 GOTO EdwinComplainsOfStivan6
IF ~Global("EdwinRomanceActive","GLOBAL",2)~ THEN REPLY @195 GOTO EdwinComplainsOfStivan7
END

IF ~~ THEN EdwinComplainsOfStivan5
SAY @196 
IF ~~ THEN REPLY @197 GOTO EdwinComplainsOfStivan6
END

IF ~~ THEN EdwinComplainsOfStivan7
SAY @198
IF ~~ THEN REPLY @197 GOTO EdwinComplainsOfStivan6
END

IF ~~ THEN EdwinComplainsOfStivan6
SAY @199
IF ~~ THEN EXIT
END
END

CHAIN 
IF ~Global("tb#StivanEdwinaDrunk","GLOBAL",1)~ THEN TB#STIVJ stivanedwinpresleep
@200
DO ~SetGlobal("tb#StivanEdwinaDrunk","GLOBAL",2)~
== EDWINJ @201
== TB#STIVJ @202
== EDWINJ @203
== TB#STIVJ @204
== EDWINJ @205
== TB#STIVJ @206
== EDWINJ @207
== TB#STIVJ @208
== EDWINJ @209
== TB#STIVJ @210
== EDWINJ @211
== TB#STIVJ @212
== EDWINJ @213
== TB#STIVJ @214
== EDWINJ @215
== TB#STIVJ @216
== EDWINJ @217
== TB#STIVJ @218
== EDWINJ @219
== TB#STIVJ @220
== EDWINJ @221
== TB#STIVJ @222
== EDWINJ @223
== TB#STIVJ @224
== EDWINJ @225
= @226
== TB#STIVJ @227
== EDWINJ @217
= @228
== TB#STIVJ @229
= @230
== EDWINJ @231
== TB#STIVJ @232
DO ~RestParty()~
EXIT

CHAIN 
IF ~Global("tb#StivanEdwinaDrunk","GLOBAL",3)~ THEN EDWINJ stivanEdwinAfterNight 
@233
= @234
= @235
= @236
= @237
= @238
= @239
= @240
= @241
= @240
= @242
= @243
DO ~SetGlobal("tb#StivanEdwinaDrunk","GLOBAL",4)~
== TB#STIVJ @244
== EDWINJ @245
== TB#STIVJ @246
== EDWINJ @247
== TB#STIVJ @248
== EDWINJ @249
== TB#STIVJ @250
== EDWINJ @251
== TB#STIVJ @252
== EDWINJ @253
= @254
== TB#STIVJ @255
== EDWINJ @256
== TB#STIVJ @257
== EDWINJ @258
== TB#STIVJ @259
== EDWINJ @165
== TB#STIVJ @260
== EDWINJ @261
== TB#STIVJ @262
== EDWINJ @263
== TB#STIVJ @264
== EDWINJ @265
= @266
= @267
= @268
= @269
= @270
== TB#STIVJ @271
== EDWINJ @272
== TB#STIVJ @273
== EDWINJ @274
== TB#STIVJ @275
== EDWINJ @276
== TB#STIVJ @277
== EDWINJ @278
== TB#STIVJ @279
== EDWINJ @280
EXIT

CHAIN
IF ~InParty("Edwin")
InParty("Minsc")
See("Edwin")
See("Minsc")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("Minsc",CD_STATE_NOTVALID)
Gender("Edwin",Female)
CombatCounter(0)
Global("tb#StivanEdwina","GLOBAL",0)~ THEN TB#STIVB minscEdwina
@281
DO ~SetGlobal("tb#StivanEdwina","GLOBAL",1)~
== BEDWIN @282
== TB#STIVB @283
== BEDWIN @284
== BMINSC @285
== BEDWIN @286
== BMINSC @287
== BEDWIN @288
== TB#STIVB @289
== BEDWIN @290
== TB#STIVB @291
== BEDWIN @292
== TB#STIVB @293
EXIT

CHAIN 
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
TimeOfDay(Night)
CombatCounter(0)
Global("tb#StivanMinscUB","GLOBAL",0)
Global("WWBooGone","GLOBAL",3)~ THEN TB#STIVB minscPostUB
@294
= @295
DO ~SetGlobal("tb#StivanMinscUB","GLOBAL",1)~
== BMINSC @296
= @297
== TB#STIVB @298
== BMINSC @299
= @300
= @301
== TB#STIVB @302
== BMINSC @303
== TB#STIVB @165
= @304
= @305
= @306
= @307
= @308
= @309
= @310
== BEDWIN IF ~IsValidForPartyDialog("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @311
== TB#STIVB @312
= @313
= @314
== BMINSC @315
EXIT

CHAIN 
IF ~InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
AreaType(OUTDOOR)
CombatCounter(0)
Global("tb#StivanHaerdalis","GLOBAL",0)~ THEN TB#STIVB stivan-dalis-1
@316
DO ~SetGlobal("tb#StivanHaerdalis","GLOBAL",1)~
== BHAERDA @317
== TB#STIVB @318
== BHAERDA @319
== TB#STIVB @320
== BHAERDA @321
== TB#STIVB @322
== BHAERDA @323
EXIT

CHAIN
IF ~InParty("tb#stiv")
See("tb#stiv")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("PlanarPrison","GLOBAL",2)
Global("tb#StivanHaerdalis","GLOBAL",1)~ THEN BHAERDA stivan-dalis-2
@324
DO ~SetGlobal("tb#StivanHaerdalis","GLOBAL",2)~
== TB#STIVB @325
== BHAERDA @326
== TB#STIVB @327
== BHAERDA @328
= @329
= @330
= @331
== TB#STIVB @332
== BHAERDA @333
= @334
== TB#STIVB @335
== BHAERDA @336
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanHaerdalis","GLOBAL",2)~ THEN BHAERDA stivan-dalis-3
@337
DO ~SetGlobal("tb#StivanHaerdalis","GLOBAL",3)~
== TB#STIVB @338
== BHAERDA @339
== TB#STIVB @340
== BHAERDA @341
== TB#STIVB @342
== BHAERDA @343
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("HaerDalisRomanceActive","GLOBAL",2)
Global("tb#StivanHaerDalisAerie","GLOBAL",0)~ THEN BHAERDA stivan-dalis-rom
@344
DO ~SetGlobal("tb#StivanHaerdalisAerie","GLOBAL",1)~
== TB#STIVB @345
== BHAERDA @346
EXIT

CHAIN
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
TimeOfDay(Night)
AreaType(OUTDOOR)
CombatCounter(0)
Global("tb#StivanAerie","GLOBAL",1)~ THEN BAERIE AerieScared
@347
DO ~SetGlobal("tb#StivanAerie","GLOBAL",2)~
= @165
= @348
= @349
== TB#STIVB @350
== BAERIE @351
== TB#STIVB @352
== BAERIE @353
END
IF ~~ THEN REPLY @354 EXTERN BAERIE AerieScared1
IF ~~ THEN REPLY @355 EXTERN BAERIE AerieScared1
IF ~~ THEN REPLY @356 EXTERN TB#STIVB AerieScared2
IF ~~ THEN REPLY @357 EXTERN TB#STIVB AerieScared2
IF ~~ THEN REPLY @358 EXTERN TB#STIVB AerieScared2

CHAIN IF ~~ THEN BAERIE AerieScared1
@359
BRANCH ~InParty("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID)~ BEGIN
== BMAZZY IF ~~ THEN @360
== TB#STIVB @361
== BMAZZY @362
END
BRANCH ~InParty("Korgan") StateCheck("Korgan",CD_STATE_NOTVALID)~ BEGIN
== BKORGAN @363
BRANCH ~InParty("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID)~ BEGIN
== BMAZZY @364
== BKORGAN @365
== BMAZZY @366
END
END
EXIT

CHAIN IF ~~ THEN TB#STIVB AerieScared2
@367
BRANCH ~InParty("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID)~ BEGIN
== BMAZZY IF ~~ THEN @360
== TB#STIVB @361
== BMAZZY @362
END
BRANCH ~InParty("Korgan") StateCheck("Korgan",CD_STATE_NOTVALID)~ BEGIN
== BKORGAN @363
BRANCH ~InParty("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID)~ BEGIN
== BMAZZY @364
== BKORGAN @365
== BMAZZY @366
END
END
EXIT

CHAIN
IF ~InParty("jan")
See("jan")
!StateCheck("jan",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanJan","GLOBAL",0)~ THEN TB#STIVB StivanJan1
@368
DO ~SetGlobal("tb#StivanJan","GLOBAL",1)~
== BJAN @369
== TB#STIVB @370
== BJAN @371
== TB#STIVB @372
== BJAN @373 //" I hate my editor
== TB#STIVB @374
== BJAN @375
== TB#STIVB @376
== BJAN @377
= @378
= @379
= @380
== TB#STIVB @381
== BJAN @382
== TB#STIVB @383
EXIT
 
CHAIN
IF ~InParty("Jan")
See("Jan")
!StateCheck("Jan",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanJan","GLOBAL",1)~ THEN TB#STIVB StivanJan2
@384
DO ~SetGlobal("tb#StivanJan","GLOBAL",2)~
== BJAN @385
== TB#STIVB @386
== BJAN @387
== TB#STIVB @388
== BJAN @389
== TB#STIVB @390
= @391
== BJAN @392
= @393
= @165
= @394
== TB#STIVB @395
== BJAN @396
== TB#STIVB @165
EXIT
 
CHAIN
IF ~InParty("tb#stiv")
See("tb#stiv")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanJan","GLOBAL",2)~ THEN BJAN StivanJan3
@397
DO ~SetGlobal("tb#StivanJan","GLOBAL",3)~
== TB#STIVB @398
== BJAN @399
== TB#STIVB @400
== BJAN @401
== TB#STIVB @402
= @403
== BJAN @404
== TB#STIVB @405
== BJAN @406
== TB#STIVB @407
== BJAN @408
== TB#STIVB @409
== BJAN @410
== TB#STIVB @165
EXIT

CHAIN
IF ~InParty("Jan")
See("Jan")
!StateCheck("Jan",CD_STATE_NOTVALID)
CombatCounter(0)
GlobalGT("tb#StivanAnomen","GLOBAL",5)
Global("tb#StivanFeelsStrange","GLOBAL",0)~ THEN TB#STIVB stivanjanstrange
@411
DO ~SetGlobal("tb#StivanFeelsStrange","GLOBAL",1)~
== BJAN @412
== TB#STIVB @413
== BJAN @414
== TB#STIVB @415
== BJAN @416
== TB#STIVB @417
== BJAN @418
== TB#STIVB @419
== BJAN @420
== TB#STIVB @165
EXIT

CHAIN 
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
OR(2)
  AreaCheck("ar0300")
  AreaCheck("ar0500")
CombatCounter(0)
Global("tb#StivanJaheira","GLOBAL",0)~ THEN TB#STIVB stivanjaheira1
@421
DO ~SetGlobal("tb#StivanJaheira","GLOBAL",1)~
== BJAHEIR @422
== TB#STIVB @423
== BJAHEIR @424
== TB#STIVB @425
== BJAHEIR @426
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanJaheiraBalance","GLOBAL",0)
Global("lyrosjob","global",3)~ THEN BJAHEIR stivanjaheirabalance
@427
DO ~SetGlobal("tb#StivanJaheiraBalance","GLOBAL",1)~
== TB#STIVB @428
== BJAHEIR @429
== TB#STIVB @430
== BJAHEIR @431
== TB#STIVB @432
== BJAHEIR @433
== TB#STIVB @434
== BJAHEIR @435
== TB#STIVB @436
== BJAHEIR @437
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanYoshimo","GLOBAL",0)~ THEN BYOSHIM Athkatla
@438
DO ~SetGlobal("tb#StivanYoshimo","GLOBAL",1)~ 
== TB#STIVB @439
== BYOSHIM @440
== TB#STIVB @441
== BYOSHIM @442
== TB#STIVB @443 
== BYOSHIM @444
== TB#STIVB @445
== BYOSHIM @446
== TB#STIVB @447
== BYOSHIM @448
EXIT

CHAIN 
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanYoshimo","GLOBAL",1)~ THEN TB#STIVB yoshimo1
@449
DO ~SetGlobal("tb#StivanYoshimo","GLOBAL",2)~
== BYOSHIM @450
= @451
== TB#STIVB @452
== BYOSHIM @453
== TB#STIVB @454
== BYOSHIM @455
== TB#STIVB @456
== BYOSHIM @457
== TB#STIVB @458
== BYOSHIM @459
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanYoshimo","GLOBAL",2)~ THEN BYOSHIM yoshimo2
@460
DO ~SetGlobal("tb#StivanYoshimo","GLOBAL",3)~
== TB#STIVB @461
== BYOSHIM @462
== TB#STIVB @463
== BYOSHIM @464
== TB#STIVB @465
== BYOSHIM @466
== TB#STIVB @467
== BYOSHIM @468
== TB#STIVB @469
== BYOSHIM @470
== TB#STIVB @471
== BYOSHIM @472
= @165
== TB#STIVB @473
== BYOSHIM @474
EXIT

CHAIN 
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanYoshimo","GLOBAL",3)~ THEN TB#STIVB Yoshitaciturno
@475
DO ~SetGlobal("tb#StivanYoshimo","GLOBAL",4)~
== BYOSHIM @476
= @477
== TB#STIVB @478
== BYOSHIM @479
== TB#STIVB @480
== BYOSHIM @481
EXIT

CHAIN 
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanKorgan","GLOBAL",0)~ THEN TB#STIVB stivankorgan1
@482
DO ~SetGlobal("tb#StivanKorgan","GLOBAL",1)~
== BKORGAN @483
== TB#STIVB @484
== BKORGAN @485
== TB#STIVB @486
== BKORGAN @487
== TB#STIVB @488
== BKORGAN @489
EXIT

CHAIN 
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanKorgan","GLOBAL",1)~ THEN TB#STIVB stivankorgan2
@490
DO ~SetGlobal("tb#StivanKorgan","GLOBAL",2)~
== BKORGAN @491
== TB#STIVB @492
== BKORGAN @493
== TB#STIVB @494
== BKORGAN @495
== TB#STIVB @496
== BKORGAN @497
== TB#STIVB @498
== BKORGAN @499
= @500
== TB#STIVB @501
== BKORGAN @502
== TB#STIVB @503
EXIT

CHAIN 
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanValygar","GLOBAL",0)~ THEN TB#STIVB stivanvalygar1
@504
DO ~SetGlobal("tb#StivanValygar","GLOBAL",1)~
== BVALYGA @505
= @506
== TB#STIVB @507 
== BVALYGA @508
EXIT

CHAIN 
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanValygar", "GLOBAL",1)~ THEN TB#STIVB stivanvalygar2
@509
DO ~SetGlobal("tb#StivanValygar", "GLOBAL",2)~
== BVALYGA @510
BRANCH ~GlobalLT("tb#StivanMinsc","GLOBAL",3) IsValidForPartyDialog("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ BEGIN
== TB#STIVB @511
== BMINSC @512
== TB#STIVB @513
END
== BVALYGA @514
== TB#STIVB @515
== BVALYGA @516
== TB#STIVB @517
== BVALYGA @518
== TB#STIVB @519
== BVALYGA @520
== TB#STIVB @521
== BVALYGA @522
EXIT

CHAIN 
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
Dead("Lavok02")
CombatCounter(0)
Global("tb#StivanValygar","GLOBAL",2)~ THEN TB#STIVB stivanvalygar2
@523
DO ~SetGlobal("tb#StivanValygar","GLOBAL",3)~
== BVALYGA @524
== TB#STIVB @525
== BVALYGA @526
== TB#STIVB @527
== BVALYGA @528
== TB#STIVB @529
== BVALYGA @530
== TB#STIVB @531
== BVALYGA @532
== TB#STIVB @533
== BVALYGA @534
== TB#STIVB @535
== BVALYGA @536
EXIT

CHAIN 
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
Global("tb#StivanAerieToldWIngs","GLOBAL",1)
CombatCounter(0)
Global("tb#StivanDislikesAerie","GLOBAL",0)~ THEN TB#STIVB stivanaeriewings
@537
DO ~SetGlobal("tb#StivanDislikesAerie","GLOBAL",1)~
== BAERIE @538
END
IF ~GlobalGT("tb#StivanAerie","GLOBAL",99)~  THEN EXTERN BAERIE stivanAerieWings1
IF ~GlobalLT("tb#StivanAerie","GLOBAL",100)~ THEN EXTERN tb#stivb stivanAerieWings2

CHAIN IF ~~ THEN BAERIE stivanAerieWings1
@539
EXIT

CHAIN IF ~~ THEN tb#STIVB stivanAerieWings2
 @540
== BAERIE @541
END
IF ~~ THEN REPLY @542 EXTERN TB#STIVB StivanDislikesAerie1-1
IF ~~ THEN REPLY @543 EXTERN TB#STIVB StivanDislikesAerie1-1
IF ~~ THEN REPLY @544 EXTERN BAERIE StivanDislikesAerie1-2
IF ~~ THEN REPLY @545 EXTERN BAERIE StivanDislikesAerie1-3

APPEND BAERIE
IF ~~ THEN StivanDislikesAerie1-2
SAY @546
IF ~~ THEN EXIT
END

IF ~~ THEN StivanDislikesAerie1-3
SAY @547
IF ~~ THEN DO ~SetGlobal("AerieRomance","global",3)~ EXIT
END
END

APPEND TB#STIVB

IF ~~ THEN StivanDislikesAerie1-1
SAY @548
IF ~~ THEN REPLY @549 EXTERN TB#STIVB StivanDislikesAerie1-4
IF ~~ THEN REPLY @550 EXTERN TB#STIVB StivanDislikesAerie1-4
IF ~~ THEN REPLY @551 EXTERN TB#STIVB StivanDislikesAerie1-4
END

IF ~~ THEN StivanDislikesAerie1-4
SAY @552
= @553
IF ~~ THEN REPLY @554 EXTERN TB#STIVB StivanDislikesAerie1-5
IF ~~ THEN REPLY @555 EXTERN TB#STIVB StivanDislikesAerie1-5
IF ~~ THEN REPLY @556 EXTERN TB#STIVB StivanDislikesAerie1-5
END

IF ~~ THEN StivanDislikesAerie1-5
SAY @557
IF ~~ THEN EXIT
END
END

CHAIN 
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanImoen","GLOBAL",0)~ THEN TB#STIVB stivanimoen1
@558
DO ~SetGlobal("tb#StivanImoen","GLOBAL",1)~
== BIMOEN2 @559
== TB#STIVB @560
== BIMOEN2 @561
== TB#STIVB @562
== BIMOEN2 @563
== TB#STIVB @564
= @565
== BIMOEN2 @566
== TB#STIVB @567
= @568
= @569
== BIMOEN2 @570
== TB#STIVB @571
== BIMOEN2 @572
EXIT
 
CHAIN 
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanImoen","GLOBAL",1)~ THEN TB#STIVB stivanimoen2
@573
DO ~SetGlobal("tb#StivanImoen","GLOBAL",2)~
== BIMOEN2 @574 
== TB#STIVB @575
== BIMOEN2 @576
== TB#STIVB @577
== BIMOEN2 @578
== TB#STIVB @579
== BIMOEN2 @580
== TB#STIVB @581 
== BIMOEN2 @582
== TB#STIVB @583
== BIMOEN2 @584
EXIT


CHAIN 
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanImoen","GLOBAL",2)~ THEN TB#STIVB stivanimoen3
@585
DO ~SetGlobal("tb#StivanImoen","GLOBAL",3)~
== BIMOEN2 @586
== TB#STIVB @587
== BIMOEN2 @588
== TB#STIVB @589
== BIMOEN2 @590
== TB#STIVB @165
= @591
== BIMOEN2 @592
== TB#STIVB IF~Gender(Player1,MALE)~ THEN @593
== TB#STIVB IF~Gender(Player1,FEMALE)~ THEN @594
== BIMOEN2 @595
== BIMOEN2 IF~Gender(Player1,MALE)~ THEN @596
== BIMOEN2 IF~Gender(Player1,FEMALE)~ THEN @597
== TB#STIVB @598
END
IF ~Class(Player1,THIEF)~ THEN REPLY @599 EXTERN BIMOEN2 tb#StivanImoen1-1
IF ~~ THEN REPLY @600 EXTERN BIMOEN2 tb#StivanImoen1-1
IF ~~ THEN REPLY @601 EXTERN BIMOEN2 tb#StivanImoen1-1
IF ~~ THEN REPLY @602 EXTERN BIMOEN2 tb#StivanImoen1-1
IF ~~ THEN REPLY @603 EXTERN BIMOEN2 tb#StivanImoen1-1
IF ~~ THEN REPLY @604 EXTERN BIMOEN2 tb#StivanImoen1-1

CHAIN IF ~~ THEN BIMOEN2 tb#StivanImoen1-1
@605
== TB#STIVB @606
== BIMOEN2 @607
== TB#STIVB @608
EXIT

CHAIN IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanImoen","GLOBAL",3)~ THEN TB#STIVB stivanimoen4
@609
DO ~SetGlobal("tb#StivanImoen","GLOBAL",4)~
== BIMOEN2 @610
== TB#STIVB @611
== BIMOEN2 @612
== TB#STIVB @613
== BIMOEN2 @614
== TB#STIVB @615
== BIMOEN2 @616
== TB#STIVB @617
== BIMOEN2 @618
== TB#STIVB @619
== BIMOEN2 @620
== TB#STIVB @621
EXIT

CHAIN IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanImoen","GLOBAL",4)~ THEN TB#STIVB stivanimoen5
@622
DO ~SetGlobal("tb#StivanImoen","GLOBAL",5)~
== BIMOEN2 @623
== TB#STIVB @624
== BIMOEN2 @625
== TB#STIVB @626
== BIMOEN2 @627
== TB#STIVB @628
== BIMOEN2 @629
== TB#STIVB @630
== BIMOEN2 @631
EXIT

CHAIN IF ~InParty("tb#stiv")
See("tb#stiv")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanImoen","GLOBAL",5)
HPGT("tb#Stiv",20)~ THEN BIMOEN2 stivanimoen6
@632 [ CAS_PM6F ]  
DO ~SetGlobal("tb#StivanImoen","GLOBAL",6)~
BRANCH ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ BEGIN
== BNALIA @633
== BIMOEN2 @634
== TB#STIVB @635
== BNALIA @636
== TB#STIVB @637
END
== TB#STIVB @638 [ CAS_PM6M ]  
EXIT

CHAIN IF ~Global("tb#StivanImoen","GLOBAL",7)~ THEN TB#STIVJ stivanimoen6-a
@639
= @640
DO ~SetGlobal("tb#StivanImoen","GLOBAL",8)~
== BIMOEN2 @641
== TB#STIVB @642
== BIMOEN2 @643
== TB#STIVB @644
== BIMOEN2 @645
= @646
== TB#STIVB @647
DO ~ReallyForceSpell(Myself,CLERIC_CURE_LIGHT_WOUNDS)~
EXIT

CHAIN IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanImoen","GLOBAL",8)~ THEN TB#STIVB stivanimoen7
@648
DO ~SetGlobal("tb#StivanImoen","GLOBAL",9)~
== BIMOEN2 @649
DO %ApplySpellRES("spcl141","Imoen2")
ApplySpellRES("spcl441","Imoen2")
DisplayString("Imoen2",@650)%
== TB#STIVB @651
== BIMOEN2 @652
== TB#STIVB @635
= @653
= @654
== BIMOEN2 @655
== TB#STIVB @656
== BIMOEN2 @657
== TB#STIVB @658
= @659
== BIMOEN2 @660
== TB#STIVB IF ~Global("AnomenIsNotKnight","GLOBAL",0)~ THEN @661
== TB#STIVB IF ~Global("AnomenIsNotKnight","GLOBAL",1)~ THEN @165
= @662
== BIMOEN2 @663
EXIT

CHAIN IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanImoen","GLOBAL",9)~ THEN TB#STIVB stivanimoen8
@664 [ CAS_PM2M ]  
DO ~SetGlobal("tb#StivanImoen","GLOBAL",10)~
== BIMOEN2 @665
== TB#STIVB @666
BRANCH ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ BEGIN
== TB#STIVB @667
== BNALIA @668
== TB#STIVB @669
END
== BIMOEN2 @670 [ CAS_PM1F ]  
== TB#STIVB @671 [ CAS_PM1M ]  
DO ~ApplySpell("tb#stiv",WIZARD_INVISIBILITY)~
== TB#STIVB @672
DO ~AddSpecialAbility("spin118")~
== BIMOEN2 @673
== TB#STIVB @674
EXIT

CHAIN IF ~InParty("tb#stiv")
See("tb#stiv")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanImoen","GLOBAL",10)~ THEN BIMOEN2 stivanimoen9
@675
DO ~SetGlobal("tb#StivanImoen","GLOBAL",11)~
== TB#STIVB @676
== BIMOEN2 @677
== TB#STIVB @678
== BIMOEN2 @625
== TB#STIVB @679
== BIMOEN2 @680
BRANCH ~Global("AnomenIsNotKnight","GLOBAL",1)~ BEGIN
== TB#STIVB @681
== BIMOEN2 @682
== TB#STIVB @683
== BIMOEN2 @684
END
BRANCH ~Global("AnomenIsNotKnight","GLOBAL",0)~ BEGIN
== TB#STIVB @685
== BIMOEN2 @686
== TB#STIVB @687
== BIMOEN2 @165
= @688
== BIMOEN2 IF ~Gender(Player1,MALE)~ THEN @689
END
EXIT

CHAIN IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanImoen","GLOBAL",11)
HaveSpellRES("spin118")
Global("AnomenIsNotKnight","GLOBAL",0)~ THEN TB#STIVB stivanimoen10
@690 [ CAS_PM1M ]  
= @691
DO ~SetGlobal("tb#StivanImoen","GLOBAL",12) SpellRES("spin118","tb#stiv")~
== BIMOEN2 @692
== TB#STIVB @693
= @694
== BIMOEN2 @695
== TB#STIVB @165
= @696
EXIT

CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanMinsc","GLOBAL",0)~ THEN TB#STIVB stivanminsc1
@697
DO ~SetGlobal("tb#StivanMinsc","GLOBAL",1)~
== BMINSC @698
== TB#STIVB @699
== BMINSC @700
== TB#STIVB @701
== BMINSC @702
= @703
= @173
= @704
== TB#STIVB @165
EXIT

CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanMinsc","GLOBAL",1)~ THEN TB#STIVB stivanminsc2
@705
DO ~SetGlobal("tb#StivanMinsc","GLOBAL",2)~
== BMINSC @706
== TB#STIVB @707
== BMINSC @708
== TB#STIVB @709
== BMINSC @710
== TB#STIVB @711
== BMINSC @712
EXIT


CHAIN 
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanAnomen","GLOBAL",3)~ THEN TB#STIVB  stivananomen4
@713
DO ~SetGlobal("tb#StivanAnomen","GLOBAL",4)~
== BANOMEN @714
= @715 
= @716
== TB#STIVB @717
== BANOMEN @718
== TB#STIVB @719 
== BANOMEN @720
== TB#STIVB @721
== BANOMEN @722
== TB#STIVB @723
== BANOMEN @724
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanAnomen","GLOBAL",4)~ THEN BANOMEN stivananomen5
@725
DO ~SetGlobal("tb#StivanAnomen","GLOBAL",5)~
== TB#STIVB @726
== BANOMEN @727
== TB#STIVB @728
== BANOMEN @729
== TB#STIVB @730
== BANOMEN @731
= @732
== TB#STIVB @733
== BANOMEN @734
== TB#STIVB @735
EXIT

CHAIN 
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanAnomen","GLOBAL",5)~ THEN TB#STIVB stivananomen6
@736
DO ~SetGlobal("tb#StivanAnomen","GLOBAL",6)~
== BANOMEN @737
== TB#STIVB @738
== BANOMEN @739
= @740
= @741
= @742
== TB#STIVB @743
== BANOMEN @744
== TB#STIVB @745
== BANOMEN @746
= @747
== TB#STIVB @748
== BANOMEN @749
= @750
= @751
= @752
== TB#STIVB @753
== BANOMEN IF~Global("AnomenRomanceActive","GLOBAL",2)~ THEN @754
== BANOMEN IF~!Global("AnomenRomanceActive","GLOBAL",2)~ THEN @755
== TB#STIVB @756
== BANOMEN @757
== TB#STIVB @758
== BANOMEN @759
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanAnomen","GLOBAL",7)~ THEN BANOMEN stivanomen8
@760
DO ~SetGlobal("tb#StivanAnomen","GLOBAL",8)~
== TB#STIVB @761
== BANOMEN @762
= @763
== TB#STIVB @764
== BANOMEN @765
= @766 
== TB#STIVB @767
== BANOMEN @768
== TB#STIVB @769
EXIT

CHAIN 
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanKorgan","GLOBAL",2)~ THEN TB#STIVB stivankorgan3
@770 
DO ~SetGlobal("tb#StivanKorgan","GLOBAL",3)~
= @771
== BKORGAN @772
== TB#STIVB @773
= @165
= @774
= @775
= @776
= @777
== BKORGAN @778
== TB#STIVB @779
= @780
== BVICONI IF~IsValidForPartyDialog("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @781
== BKORGAN @782
== TB#STIVB @783
== BKORGAN @784
== TB#STIVB @785
= @786
== BKORGAN @787
== TB#STIVB @788
== BEDWIN IF~IsValidForPartyDialog("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @789
EXIT

CHAIN 
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanNalia","GLOBAL",0)~ THEN TB#STIVB stivannalia1
@790
DO ~SetGlobal("tb#StivanNalia","GLOBAL",1)~ 
== BNALIA @791
== TB#STIVB @792
== BNALIA @793
== TB#STIVB @794
== BNALIA @795
== TB#STIVB @796
== BNALIA @797
= @798
= @799
== TB#STIVB @800
== BNALIA @801
== TB#STIVB @802
= @803
= @804
EXIT

CHAIN 
IF ~InParty("Nalia")
See("Nalia")
See("Player1")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("Player1",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanNaliaFatherDeath","GLOBAL",0)
Global("isaeaNalia","GLOBAL",1)~ THEN TB#STIVB stivannalia2
@805
DO ~SetGlobal("tb#StivanNaliaFatherDeath","GLOBAL",1)~
== BNALIA @806
== BJAHEIR IF ~IsValidForPartyDialog("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @807
== TB#STIVB @808
== BNALIA @809
END
IF ~~ THEN REPLY @810 EXTERN BNALIA AfterFatherDeath1-1
IF ~~ THEN REPLY @811 EXTERN BNALIA AfterFatherDeath1-2
IF ~~ THEN REPLY @812 EXTERN BNALIA AfterFatherDeath1-3
IF ~~ THEN REPLY @813 EXTERN BNALIA AfterFatherDeath1-4

APPEND BNALIA

IF ~~ THEN BEGIN AfterFatherDeath1-1
SAY @814
= @815
= @816
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN AfterFatherDeath1-2
SAY @817 
= @818
= @819
= @820
IF ~~ THEN EXIT
END
END

CHAIN
IF ~~ THEN BNALIA AfterFatherDeath1-3
@821
== TB#STIVB @822
EXIT

CHAIN
IF ~~ THEN BNALIA AfterFatherDeath1-4
@823
== TB#STIVB @824
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanNaliaFatherDeath","GLOBAL",1)
Global("tb#StivanNaliaManor","GLOBAL",0)
Global("KeepPlot","GLOBAL",0)~ THEN BNALIA stivannaliakeep
@825
DO ~SetGlobal("tb#StivanNaliaManor","GLOBAL",1)~
== TB#STIVB @826
== BNALIA @827
== TB#STIVB @828
= @829
= @830
= @831 
== BNALIA IF ~!Class(Player1,FIGHTER_ALL)~ THEN @832
== BNALIA IF ~Class(Player1,FIGHTER_ALL)~ THEN @833
== TB#STIVB @834
== BNALIA @835
== TB#STIVB @836
== BNALIA @837
== TB#STIVB @838
BRANCH ~IsValidForPartyDialog("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ BEGIN
== TB#STIVB @839
== BKORGAN @840
== TB#STIVB @841
END
== TB#STIVB @842
== BNALIA @843
== TB#STIVB @844
= @845
== BNALIA @846
== TB#STIVB @836
== BNALIA @847
== TB#STIVB @848
== BNALIA @849
EXIT

CHAIN 
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
CombatCounter(0)
Global("NaliaIsaeaPlotDone","GLOBAL",1)
Global("tb#StivanNaliaPrison","GLOBAL",0)~ THEN TB#STIVB stivannaliaprison
@850
DO ~SetGlobal("tb#StivanNaliaPrison","GLOBAL",1)~
== BNALIA @851
== TB#STIVB @852
== BNALIA @853
= @854
== TB#STIVB @788
== BNALIA @855
== TB#STIVB @856
== BNALIA @857
== TB#STIVB @858
== BNALIA @859
= @860
== TB#STIVB @861
== BNALIA @862
== TB#STIVB @863
= @165
= @864
== BNALIA @865
== TB#STIVB @634
= @866
== BNALIA @867
== TB#STIVB @868
== BNALIA @869
== TB#STIVB @870
== BNALIA @871
EXIT

CHAIN
IF ~InParty("tb#stiv")
InParty("Cernd")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
!StateCheck("Cernd",CD_STATE_NOTVALID)
CombatCounter(0)
GlobalGT("tb#StivanCernd","GLOBAL",2)
Global("BJaheira11","LOCALS",1)
Global("tb#StivanCerndJaheira","GLOBAL",0)~ THEN BJAHEIR  jaheirastivancernd
@872
DO ~SetGlobal("tb#StivanCerndJaheira","GLOBAL",1)~
== BCERND @873
== TB#STIVB @874
== BJAHEIR @875
== BCERND @876
= @877
== BJAHEIR @878
= @879
== BCERND @880
== BJAHEIR @165
== BCERND @165
== TB#STIVB @881
== BJAHEIR @882
== BCERND @883 
EXIT


CHAIN
IF ~InParty("tb#stiv")
InParty("Cernd")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
!StateCheck("Cernd",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanValygar","GLOBAL",2)
GlobalGT("tb#StivanCernd","GLOBAL",2)
Global("tb#StivanCerndValygar","GLOBAL",0)~ THEN BVALYGA valygarstivancernd
@884
DO ~SetGlobal("tb#StivanCerndValygar","GLOBAL",1)~
== TB#STIVB @885
== BCERND @886
== TB#STIVB @887
== BVALYGA @888
== TB#STIVB @889
== BCERND @890
== BVALYGA @891
EXIT

CHAIN
IF ~InParty("tb#stiv")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanJan","GLOBAL",3)~ THEN BJAN jan4
@892
DO ~SetGlobal("tb#StivanJan","GLOBAL",4)~
== TB#STIVB @893
== BJAN @894
== TB#STIVB @895
== BJAN @896
= @897
== BMAZZY IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @898
== TB#STIVB @899
= @900
= @901
== BJAN @902
== TB#STIVB @903
== BJAN @904
== TB#STIVB @165
EXIT


CHAIN IF ~Global("tb#StivanAerie","GLOBAL",100) InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN baerie post-quest
@905
DO ~SetGlobal("tb#StivanAerie","GLOBAL",101)~
== tb#stivb @906
== baerie @907
BRANCH ~GlobalLT("tb#stivanCernd","GLOBAL",3)~ BEGIN // senza cernd, o dopo pochi dialoghi tra di loro
== tb#stivb @908
== baerie @909
== tb#stivb @910
END
BRANCH ~GlobalGT("tb#stivanCernd","GLOBAL",4)~ BEGIN // dopo il banter a Brynnlaw, Stivan sta cominciando a cambiare visione del mondo
== tb#stivb @911
== baerie @912
BRANCH ~InParty("cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ BEGIN
== bcernd @913
== tb#stivb IF ~GlobalLT("tb#stivanCernd","GLOBAL",8)~ THEN // prima del banter "Cernd, potresti attirare un'altro gabbiano? Ora so che cosa dirgli."
@914
== tb#stivb IF ~GlobalGT("tb#stivanCernd","GLOBAL",7)~ THEN // dopo il suddetto banter
@915
END
END
EXIT
