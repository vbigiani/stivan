BEGIN TB#STIVJ

///////////////////////////////////////////
// Quest related dialog
///////////////////////////////////////////

IF ~InParty("tb#stiv")
InParty(Player1)
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0)
!Global("tb#stivanEntryTest","GLOBAL",3) 
Global("tb#UrnBroken","GLOBAL",1)~ THEN BEGIN WarnUrnBroken
SAY @0
= @1
= @2
IF ~~ THEN DO ~SetGlobalTimer("tb#stivanEntryTimer","GLOBAL",FOUR_DAYS) IncrementGlobal("tb#UrnBroken","GLOBAL",1)~ EXIT
END

IF ~InParty("tb#stiv")
InParty(Player1)
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0)
!Global("tb#stivanEntryTest","GLOBAL",3) 
Global("tb#UrnBroken","GLOBAL",3)~ THEN BEGIN UrnBroken
SAY @3
= @4
= @5
= @6
IF ~~ THEN DO ~SetGlobal("tb#UrnBroken","GLOBAL",4)~ REPLY @7 GOTO UrnBroken1-1
IF ~~ THEN DO ~SetGlobal("tb#UrnBroken","GLOBAL",4)~  REPLY @8 GOTO UrnBroken1-1
IF ~~ THEN DO ~SetGlobal("tb#UrnBroken","GLOBAL",4)~  REPLY @9 GOTO UrnBroken1-1
END

IF ~~ THEN BEGIN UrnBroken1-1
SAY @10
= @11
= @12
IF ~~ THEN REPLY @13 GOTO UrnBroken1-2
IF ~~ THEN REPLY @14 GOTO UrnBroken1-2
IF ~~ THEN REPLY @15 GOTO UrnBroken1-2
END

IF ~~ THEN BEGIN UrnBroken1-2
SAY @16
= @17 
IF ~~ THEN DO ~SetGlobal("tb#StivanJoined","GLOBAL",0) LeaveParty() EscapeArea()  EraseJournalEntry(@18) EraseJournalEntry(@19) EraseJournalEntry(@20) EraseJournalEntry(@21)~
SOLVED_JOURNAL @22 EXIT
END

IF ~ InParty("tb#stiv")
InParty(Player1)
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#stivanEntryTest","GLOBAL",5)
AreaCheck("ar0806")~ THEN BEGIN FinalRest
SAY @23
IF ~~ THEN REPLY @24 GOTO FinalRest1-1
IF ~~ THEN REPLY @25 GOTO FinalRest1-2
IF ~~ THEN REPLY @26 GOTO FinalRest1-3
IF ~~ THEN REPLY @27 GOTO FinalRest1-4
END

IF ~~ THEN BEGIN FinalRest1-2
SAY @28
IF ~~ THEN GOTO FinalRest1-1
END

IF ~~ THEN BEGIN FinalRest1-3
SAY @29
IF ~~ THEN GOTO FinalRest1-1
END

IF ~~ THEN BEGIN FinalRest1-4
SAY @30
IF ~~ THEN GOTO FinalRest1-1
END 

IF ~~ THEN BEGIN FinalRest1-1
SAY @31
IF ~~ THEN REPLY @32 GOTO FinalRest1-5
IF ~~ THEN REPLY @33 GOTO FinalRest1-5
IF ~~ THEN REPLY @34 GOTO FinalRest1-5
IF ~~ THEN REPLY @35 GOTO FinalRest1-5
END

IF ~~ THEN BEGIN FinalRest1-5
SAY @36
IF ~~ THEN REPLY @37 GOTO FinalRest1-6
IF ~~ THEN REPLY @38 GOTO FinalRest1-6
IF ~Gender(Player1,MALE)~ THEN REPLY @39 GOTO FinalRest1-6
IF ~ Gender(Player1,FEMALE)~ THEN REPLY @40 GOTO FinalRest1-6
END

IF ~~ THEN BEGIN FinalRest1-6
SAY @41
= @42
IF ~Gender(Player1,"FEMALE")~ THEN GOTO FinalRest1-7
IF ~Gender(Player1,"MALE")~ THEN GOTO FinalRest1-8
END

IF ~~ THEN BEGIN FinalRest1-7
SAY @43
IF ~~ THEN REPLY @44 GOTO FinalRest1-9
IF ~~ THEN REPLY @45 GOTO FinalRest1-9
IF ~~ THEN REPLY @46 GOTO FinalRest1-9
IF ~~ THEN REPLY @47 GOTO FinalRest1-10
END

IF ~~ THEN BEGIN FinalRest1-8
SAY @48
IF ~~ THEN REPLY @44 GOTO FinalRest1-9
IF ~~ THEN REPLY @45 GOTO FinalRest1-9
IF ~~ THEN REPLY @46 GOTO FinalRest1-9
IF ~~ THEN REPLY @47 GOTO FinalRest1-10
END

IF ~~ THEN BEGIN FinalRest1-9
SAY @49
= @50
IF ~~ THEN SOLVED_JOURNAL @51
GOTO FinalRest1-11
END

IF ~~ THEN BEGIN FinalRest1-10
SAY @52
= @53
IF ~~ THEN SOLVED_JOURNAL @51
GOTO FinalRest1-11
END

CHAIN
IF ~~ THEN TB#STIVJ FinalRest1-11
@54
= @55
== MINSCJ IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @56
== JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @57
== CERNDJ IF ~InParty("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @58
= @59
== AERIEJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @60
== MAZZYJ IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @61
== NALIAJ IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @62
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @63
== HAERDAJ IF ~InParty("haerdalis") !StateCheck("haerdalis",CD_STATE_NOTVALID)~ THEN @64 
== VICONIJ IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @65
== VALYGARJ IF ~InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @66
== IMOEN2J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @67
== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @68
== KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @69
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenIsNotKnight","GLOBAL",0)~ THEN @70
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenIsNotKnight","GLOBAL",1)~ THEN @71
== TB#STIVJ @72
= @73 DO ~GiveItemCreate("tb#srpl",Player1,0,0,0) SetGlobal("tb#stivanEntryTest","GLOBAL",6) AddXPObject(Player1,5000) AddXPObject(Player2,5000) AddXPObject(Player3,5000) AddXPObject(Player4,5000) AddXPObject(Player5,5000) AddXPObject(Player6,5000) AddXPObject("tb#Stiv",15000) TakePartyItem("tb#surn") DestroyItem("tb#surn") EraseJournalEntry(@18) EraseJournalEntry(@19) EraseJournalEntry(@20) EraseJournalEntry(@21)~
= @74
= @75
DO ~ StartCutSceneMode() StartCutScene("tb#surn1")~
EXIT

BEGIN TB#SSKF
BEGIN TB#SSKM

CHAIN IF ~Global("tb#stivanEntryTest","GLOBAL",6) AreaCheck("AR0041")~ THEN TB#STIVJ QuestFinish
@76
== TB#SSKF @77
== TB#SSKM @78
DO ~SetGlobal("tb#stivanEntryTest","GLOBAL",7)~
EXIT





///////////////////////////////////////////
// Yoshimo's betrayal related dialog
///////////////////////////////////////////

APPEND TB#STIVJ
IF ~InParty("tb#stiv")
InParty("Yoshimo")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("Chapter","GLOBAL",4)
CombatCounter(0)
Global("tb#BeforeYoshiBetrayal","GLOBAL",0)~ BeforeYoshiBetrayal1
SAY @79
IF ~~ THEN REPLY @80 DO ~SetGlobal("tb#BeforeYoshiBetrayal","GLOBAL",1)~ GOTO BeforeYoshiBetrayal1-1
IF ~~ THEN REPLY @81 DO ~SetGlobal("tb#BeforeYoshiBetrayal","GLOBAL",1)~ GOTO BeforeYoshiBetrayal1-2
IF ~~ THEN REPLY @82 DO ~SetGlobal("tb#BeforeYoshiBetrayal","GLOBAL",1)~ GOTO BeforeYoshiBetrayal1-1
END

IF ~~ THEN BeforeYoshiBetrayal1-1
SAY @83
IF ~~ THEN REPLY @84 GOTO BeforeYoshiBetrayal1-3
IF ~~ THEN REPLY @85 GOTO BeforeYoshiBetrayal1-4
IF ~~ THEN REPLY @86 GOTO BeforeYoshiBetrayal1-4
END

IF ~~ THEN BeforeYoshiBetrayal1-2
SAY @87
IF ~~ THEN REPLY @84 GOTO BeforeYoshiBetrayal1-3
IF ~~ THEN REPLY @88 GOTO BeforeYoshiBetrayal1-4
IF ~~ THEN REPLY @89 GOTO BeforeYoshiBetrayal1-4
END

IF ~~ THEN BeforeYoshiBetrayal1-3
SAY @90
= @91 
IF ~~ THEN REPLY @92 GOTO BeforeYoshiBetrayal1-5
IF ~~ THEN REPLY @93 GOTO BeforeYoshiBetrayal1-6
IF ~~ THEN REPLY @94 GOTO BeforeYoshiBetrayal1-6
END

IF ~~ THEN BeforeYoshiBetrayal1-5
SAY @95
IF ~~ THEN EXTERN YOSHJ  BeforeYoshiBetrayal1-7
END

IF ~~ THEN BeforeYoshiBetrayal1-6
SAY @96
IF ~~ THEN EXTERN YOSHJ  BeforeYoshiBetrayal1-7
END 

IF ~~ THEN BeforeYoshiBetrayal1-4
SAY @97
= @98
IF ~~ THEN EXTERN YOSHJ  BeforeYoshiBetrayal1-7
END
END

APPEND YOSHJ 

IF ~~ THEN BEGIN BeforeYoshiBetrayal1-7
SAY @99
IF ~~ THEN REPLY @100 EXTERN YOSHJ  BeforeYoshiBetrayal1-8
IF ~~ THEN REPLY @101 EXTERN YOSHJ  BeforeYoshiBetrayal1-8
IF ~~ THEN REPLY @102 EXTERN YOSHJ  BeforeYoshiBetrayal1-9
END

IF ~~ THEN BEGIN BeforeYoshiBetrayal1-8
SAY @103
IF ~~ THEN EXIT
END
END

CHAIN
IF ~~ THEN YOSHJ BeforeYoshiBetrayal1-9
@104
== TB#STIVJ @105
== YOSHJ  @106
EXIT

ADD_TRANS_ACTION YOSHIMOX BEGIN 0 END BEGIN END ~SetGlobal("tb#AfterYoshiBetrayal","GLOBAL",1)~

APPEND tb#stivj
IF ~InParty("tb#stiv")
InParty(Player1)
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#AfterYoshiBetrayal","GLOBAL",1)~ THEN afterYoshiBetrayal1
SAY @107
IF ~~ THEN DO ~SetGlobal("tb#AfterYoshiBetrayal","GLOBAL",2)~ REPLY @108 GOTO AfterYoshiBetrayal1-1
IF ~~ THEN DO ~SetGlobal("tb#AfterYoshiBetrayal","GLOBAL",2)~ REPLY @109 GOTO AfterYoshiBetrayal1-1
IF ~~ THEN DO ~SetGlobal("tb#AfterYoshiBetrayal","GLOBAL",2)~ REPLY @110 GOTO AfterYoshiBetrayal1-1
IF ~~ THEN DO ~SetGlobal("tb#AfterYoshiBetrayal","GLOBAL",2)~ REPLY @111 GOTO AfterYoshiBetrayal1-1
END

IF ~~ THEN AfterYoshiBetrayal1-1
SAY @112
= @113  
IF ~~ THEN REPLY @114 GOTO AfterYoshiBetrayal1-2
IF ~~ THEN REPLY @115 GOTO AfterYoshiBetrayal1-3
IF ~~ THEN REPLY @116 GOTO AfterYoshiBetrayal1-4
IF ~~ THEN REPLY @117 GOTO AfterYoshiBetrayal1-5
END

IF ~~ THEN AfterYoshiBetrayal1-2
SAY @118
= @119
IF ~~ THEN GOTO AfterYoshiBetrayal1-5
END

IF ~~ THEN AfterYoshiBetrayal1-3
SAY @120
IF ~~ THEN GOTO AfterYoshiBetrayal1-5
END

IF ~~ THEN AfterYoshiBetrayal1-4
SAY @121
IF ~~ THEN GOTO AfterYoshiBetrayal1-5
END

IF ~~ THEN AfterYoshiBetrayal1-5
SAY @122
IF ~~ THEN REPLY @123 GOTO AfterYoshiBetrayal1-6
IF ~~ THEN REPLY @124 GOTO AfterYoshiBetrayal1-7
IF ~~ THEN REPLY @125 GOTO AfterYoshiBetrayal1-8
END

IF ~~ THEN AfterYoshiBetrayal1-6
SAY @126
IF ~~ THEN GOTO AfterYoshiBetrayal1-8
END

IF ~~ THEN AfterYoshiBetrayal1-7
SAY @127
IF ~~ THEN GOTO AfterYoshiBetrayal1-8
END

IF ~~ THEN AfterYoshiBetrayal1-8
SAY @128
IF ~~ THEN REPLY @129 GOTO AfterYoshiBetrayal1-9
IF ~~ THEN REPLY @130 GOTO AfterYoshiBetrayal1-9
IF ~~ THEN REPLY @131 GOTO AfterYoshiBetrayal1-9
IF ~~ THEN REPLY @132 GOTO AfterYoshiBetrayal1-9
END

IF ~~ THEN AfterYoshiBetrayal1-9
SAY @133
= @134
=  @135
IF ~~ THEN EXIT
END
END





///////////////////////////////////////////
// Yoshimo's Katana related dialog
///////////////////////////////////////////


ADD_TRANS_ACTION SLILMAT BEGIN 0 END BEGIN 3 END ~SetGlobal("tb#YoshiKatanaIsNotUsable","GLOBAL",1)~

EXTEND_BOTTOM SLILMAT 0
IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) PartyHasItem("NPSW02")  Global("tb#YoshiKatanaIsNotUsable","GLOBAL",1)~ THEN EXTERN tb#stivj YoshiKatana1
IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) PartyHasItem("NPSW02") PartyGoldGT(999) Global("tb#YoshiKatanaIsNotUsable","GLOBAL",2)~ THEN  REPLY @136 EXTERN TB#STIVJ YoshiKatana1-3
END

CHAIN IF ~~ THEN TB#STIVJ YoshiKatana1
@137
== SLILMAT @138
== TB#STIVJ @139
== SLILMAT @140
== TB#STIVJ @141
== SLILMAT @142
== TB#STIVJ @118
= @143
= @144
== SLILMAT @145
== TB#STIVJ @146
= @147
= @148
END
IF ~~ THEN REPLY @149 EXTERN TB#STIVJ YoshiKatana1-1
IF ~PartyGoldLT(1000)~ THEN REPLY @150 EXTERN TB#STIVJ YoshiKatana1-2
IF ~PartyGoldGT(999)~ THEN REPLY @151 EXTERN TB#STIVJ YoshiKatana1-3
IF ~PartyGoldGT(999)~ THEN REPLY @152 EXTERN TB#STIVJ YoshiKatana1-4

APPEND TB#STIVJ

IF ~~ THEN BEGIN YoshiKatana1-1
SAY @153 
IF ~~ THEN DO ~SetGlobal("tb#YoshiKatanaIsNotUsable","GLOBAL",2)~ EXTERN SLILMAT YoshiKatana1-1a
END

IF ~~ THEN YoshiKatana1-2
SAY @154
= @155
IF ~~ THEN DO ~SetGlobal("tb#YoshiKatanaIsNotUsable","GLOBAL",2)~ EXTERN SLILMAT YoshiKatana1-2a
END

IF ~~ THEN YoshiKatana1-3
SAY @156
IF ~~ THEN DO ~TakePartyGold(1000)~ EXTERN SLILMAT YoshiKatana1-3a
END

IF ~~ THEN YoshiKatana1-4
SAY @157 
= @158
IF ~~ THEN DO ~TakePartyGold(1000)~ EXTERN SLILMAT YoshiKatana1-3a
END
END

APPEND SLILMAT

IF ~~ THEN YoshiKatana1-1a
SAY @159
IF ~~ THEN EXIT
END

IF ~~ THEN YoshiKatana1-2a
SAY @160
IF ~~ THEN EXIT
END

IF ~~ THEN YoshiKatana1-3a
SAY @161
IF ~~ THEN DO ~SetGlobal("tb#YoshiKatanaIsUsable","GLOBAL",1) StartCutSceneMode() ActionOverride("SLILMAT",StartCutScene("tb#syk1"))~ EXIT
END
END

CHAIN
IF WEIGHT #-1 ~Global("tb#YoshiKatanaIsUsable","GLOBAL",1) PartyHasItem("NPSW02")~ THEN SLILMAT YoshiKatanaIsUsable1
@162
DO ~GiveItemCreate("tb#syk1","tb#stiv",1,0,0) TakePartyItem("NPSW02") DestroyItem("NPSW02")~ 
== TB#STIVJ @163
= @164
== TB#STIVJ IF ~Global("tb#stivanCrom","GLOBAL",1)~ THEN @165
== TB#STIVJ IF ~Global("tb#stivanCrom","GLOBAL",0)~ THEN @166
EXIT

EXTEND_BOTTOM WSMITH01 13
IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) PartyHasItem("npsw02") PartyHasItem("miscbu") Global("tb#stivanCrom","GLOBAL",0)~ THEN DO ~SetGlobal("tb#stivanCrom","GLOBAL",1)~ EXTERN tb#stivj YoshiKatana0
IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) PartyHasItem("tb#syk1") GlobalLT("tb#stivanCrom","GLOBAL",2)~ THEN DO ~SetGlobal("tb#stivanCrom","GLOBAL",2)~ EXTERN tb#stivj CromwellUpgradeKatana1
IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) PartyHasItem("tb#syk1") Global("tb#stivanCrom","GLOBAL",2)~ THEN EXTERN WSMITH01 CromwellUpgradeKatana2
END

CHAIN IF ~~ THEN TB#STIVJ YoshiKatana0
@167
== WSMITH01 @168
== TB#STIVJ @169
== WSMITH01 @170
== TB#STIVJ @171
== WSMITH01 @172
COPY_TRANS WSMITH01 13

CHAIN IF ~~ THEN TB#STIVJ CromwellUpgradeKatana1
@173
== WSMITH01 @174
== TB#STIVJ @175
== WSMITH01 @176
== TB#STIVJ @177
== WSMITH01 @178
= @179
= @180
== TB#STIVJ @181
== WSMITH01 @182
== TB#STIVJ @183
== WSMITH01 @184
END
IF ~~ THEN REPLY #59761 EXTERN WSMITH01 CromwellUpgradeKatana1-1
IF ~~ THEN REPLY #59762 EXTERN WSMITH01 CromwellUpgradeKatana1-3

APPEND WSMITH01
IF ~~ THEN CromwellUpgradeKatana1-1
SAY @185
IF ~PartyGoldGT(14999)~ THEN REPLY #59785 DO ~TakePartyGold(15000) DestroyGold(15000) TakePartyItem("tb#syk1") DestroyItem("tb#syk1") GiveItemCreate("tb#syk2","tb#stiv",1,0,0)~ GOTO CromwellUpgradeKatana1-2
IF ~~ THEN REPLY #59786 GOTO CromwellUpgradeKatana1-3
IF ~~ THEN REPLY #59791 GOTO 12
END

IF ~~ THEN CromwellUpgradeKatana1-2
SAY @186 
IF ~~ THEN DO ~StartCutSceneMode() StartCutScene("cromwell")~ EXIT
END

IF ~~ THEN CromwellUpgradeKatana1-3
SAY #59796
COPY_TRANS WSMITH01 13
END

IF ~~ THEN CromwellUpgradeKatana2
SAY @187
IF ~~ THEN REPLY #59761 EXTERN WSMITH01 CromwellUpgradeKatana1-1
IF ~~ THEN REPLY #59762 EXTERN WSMITH01 CromwellUpgradeKatana1-3
END
END




///////////////////////////////////////////
// More interjections than you can wave a stick at
///////////////////////////////////////////

INTERJECT_COPY_TRANS VICG1 0 tb#stivanVicG1-0
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN 
@188
END

INTERJECT_COPY_TRANS NALIAJ 265 tb#stivanNaliaj-265
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN 
@189
END

INTERJECT_COPY_TRANS VICONI 2 tb#stivanViconi-2
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN 
@190
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN 
@191
END

INTERJECT_COPY_TRANS BEDWIN 50 tb#StivanBedwin-50
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN 
@192
== BEDWIN @193
== TB#STIVJ @194
== BVICONI IF ~!Global("EdwinRomanceActive","GLOBAL",2)~ THEN
@195
== BVICONI IF ~Global("EdwinRomanceActive","GLOBAL",2)~ THEN
@196
END

INTERJECT_COPY_TRANS EDWIN 49 tb#StivanEdwin49
== VICONIJ IF ~InParty("Viconia") InParty("tb#stiv") !StateCheck("Viconia",CD_STATE_NOTVALID) !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@197
== TB#STIVJ @198
END

INTERJECT_COPY_TRANS MAEVAR 31 tb#stivanMaevar-31
== VICONIJ IF ~InParty("Viconia") InParty("tb#stiv") !StateCheck("Viconia",CD_STATE_NOTVALID) !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@199
== TB#STIVJ @200
== VICONIJ @201 
= @202
END

INTERJECT_COPY_TRANS LEHTIN 10 tb#StivanLehtin-10
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@203
== VICONIJ IF ~InParty("Viconia") InParty("tb#stiv") !StateCheck("Viconia",CD_STATE_NOTVALID) !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@204
END


INTERJECT_COPY_TRANS C6ELHAN2 55 tb#stivanC6elhan2-55
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@205
END

INTERJECT_COPY_TRANS VICONIJ 122 tb#stivanViconij-122
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@206
== VICONIJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@207
END

INTERJECT C6ELHAN2 62 tb#stivanC6elhan2-62
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) InParty("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN
@208
END
IF ~~ THEN REPLY @209 EXTERN TB#STIVJ ViconiaGeas1-1
IF ~~ THEN REPLY @210 EXTERN TB#STIVJ ViconiaGeas1-2
IF ~Global("ViconiaRomanceActive","GLOBAL",2)~ THEN REPLY @211 EXTERN TB#STIVJ ViconiaGeas1-3
IF ~~ THEN REPLY @212 EXTERN TB#STIVJ ViconiaGeas1-3
IF ~~ THEN REPLY @213 EXTERN TB#STIVJ ViconiaGeas1-2

APPEND TB#STIVJ
IF ~~ ViconiaGeas1-1
SAY @214
COPY_TRANS C6ELHAN2 62
END

IF ~~ ViconiaGeas1-2
SAY @215
IF ~!Global("tb#AfterYoshiBetrayal","GLOBAL",2)~ THEN EXTERN TB#STIVJ ViconiaGeas1-4
IF ~Global("tb#AfterYoshiBetrayal","GLOBAL",2)~ THEN EXTERN TB#STIVJ ViconiaGeas1-5
END

IF ~~ ViconiaGeas1-3
SAY @216
IF ~!Global("tb#AfterYoshiBetrayal","GLOBAL",2)~ THEN EXTERN TB#STIVJ ViconiaGeas1-4
IF ~Global("tb#AfterYoshiBetrayal","GLOBAL",2)~ THEN EXTERN TB#STIVJ ViconiaGeas1-5
END

IF ~~ ViconiaGeas1-4
SAY @217
COPY_TRANS C6ELHAN2 62
END
END

CHAIN 
IF ~~ THEN TB#STIVJ ViconiaGeas1-5
@218 
== VICONIJ @219
= @220
= @118
= @221
== TB#STIV @222
== VICONIJ@223
COPY_TRANS C6ELHAN2 62

INTERJECT MAZZY 25 tb#StivanMazzy-25
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@224
END
IF ~~ THEN REPLY @225 EXTERN TB#STIVJ StivanDislikesMazzy1-1
IF ~~ THEN REPLY @226 EXTERN TB#STIVJ StivanDislikesMazzy1-2
IF ~~ THEN REPLY @227 EXTERN TB#STIVJ StivanDislikesMazzy1-3

APPEND TB#STIVJ
IF ~~ THEN BEGIN StivanDislikesMazzy1-1
SAY @228
IF ~~ THEN EXTERN MAZZY StivanDislikesMazzy1-4
END

IF ~~ THEN BEGIN StivanDislikesMazzy1-2
SAY @229
IF ~~ THEN EXTERN MAZZY StivanDislikesMazzy1-4
END

IF ~~ THEN BEGIN StivanDislikesMazzy1-3
SAY @230
IF ~~ THEN EXTERN MAZZY StivanDislikesMazzy1-4
END
END

APPEND MAZZY
IF ~~ THEN BEGIN StivanDislikesMazzy1-4
SAY @231
COPY_TRANS SAFE MAZZY 25
END
END

INTERJECT_COPY_TRANS GORF1 0 tb#StivanGorf1-0
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN 
@232
== GORF1 @233
== TB#STIVJ @234
== GORF1 @235
== TB#STIVJ @236
= @237
END

INTERJECT_COPY_TRANS2 MAZZYJ 203 tb#StivanMazzyj-203
== MAZZYJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@238
== TB#STIVJ @239
== MAZZYJ @240
== TB#STIVJ @241
== MAZZYJ @242
== TB#STIVJ @243 DO ~ApplySpellRES("tb#ssca",Myself)~
== MAZZYJ @244
END

INTERJECT_COPY_TRANS2 SASSAR 31 tb#StivanSassar-31
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@245
= @246
BRANCH ~InParty("Mazzy") InParty("tb#stiv") !StateCheck("Mazzy",CD_STATE_NOTVALID) !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ BEGIN
== MAZZYJ @247
DO ~GiveGoldForce(100)~
== SASSAR @248
== MAZZYJ @249
== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN
@250
== TB#STIVJ @251
== MAZZYJ @252
== TB#STIVJ @253
== MAZZYJ @254
END
END

INTERJECT_COPY_TRANS SAFE BANOMEN 22 tb#StivanBANOMEN-22
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) !Global("AnomenIsNotKnight","GLOBAL",1)~ THEN 
@255
== BANOMEN @256
END

INTERJECT_COPY_TRANS ANOMENJ 224 tb#StivanANOMENJ-224
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) !Global("AnomenIsNotKnight","GLOBAL",1)~ THEN
@257
== ANOMENJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@258
END

INTERJECT_COPY_TRANS2 BANOMEN 60 tb#StivanBANOMEN-60
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@259
== MAZZYJ @260
END

INTERJECT_COPY_TRANS MAZZYJ 0 tb#StivanMazzy-0
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@261
== MAZZYJ @262
END

INTERJECT_COPY_TRANS COR 5 tb#StivanCor-5
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@263
== COR @264
== TB#STIVJ @265
== COR IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@266
END

INTERJECT_COPY_TRANS COR 8 tb#StivanCor-8
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@267
END

INTERJECT_COPY_TRANS ANOMENJ 48 tb#StivanAnomenj-48
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@268
END


INTERJECT ANOMENJ 52 tb#StivanAnomenj-52
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@269
END
IF ~Global("tb#StivanPCTalk","GLOBAL",3)~ THEN REPLY @270 EXTERN TB#STIVJ SaerkStrikesAgain1-1
IF ~!Global("tb#StivanPCTalk","GLOBAL",3)~ THEN REPLY @271 EXTERN TB#STIVJ SaerkStrikesAgain1-2

APPEND TB#STIVJ
IF ~~ THEN BEGIN SaerkStrikesAgain1-1
SAY @272
IF ~~ THEN EXTERN TB#STIVJ SaerkStrikesAgain1-3
END

IF ~~ THEN BEGIN SaerkStrikesAgain1-2
SAY @273
= @274
= @275
= @276
IF ~~ THEN EXTERN TB#STIVJ SaerkStrikesAgain1-3
END
END

CHAIN IF ~~ THEN TB#STIVJ SaerkStrikesAgain1-3
@277 
== MINSCJ IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @278
= @279
= @280
== EDWINJ IF ~InParty("Edwin") InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @281 
== JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @282
== CERNDJ IF ~InParty("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @283
== VALYGARJ IF ~InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @284
== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @285
== AERIEJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN
@286
== HAERDAJ IF ~InParty("Haerdalis") !StateCheck("Haerdalis",CD_STATE_NOTVALID)~ THEN @287
== NALIAJ IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN
@288
= @289
== VICONIJ IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @290
== YOSHJ IF ~InParty("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @291
== IMOEN2J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @292
== MAZZYJ IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @293
== JANJ IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @294 
== KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @295
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @296
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ @297
= @298
= @299
END
COPY_TRANS ANOMENJ 52

INTERJECT_COPY_TRANS ANOMENJ 62 tb#StivanAnomenj-62
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@300
= @301
END

INTERJECT_COPY_TRANS ANOMENJ 71 tb#StivanAnomenj-71
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@302
== ANOMENJ @303
END

INTERJECT_COPY_TRANS COR 51 tb#StivanCor-51
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@304
== ANOMENJ @305
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@306
== ANOMENJ @307
END

INTERJECT_COPY_TRANS KELDOR 2 tb#StivanKeldor-2
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@308
== KELDOR @309
== TB#STIVJ @310
== KELDOR @311
END

INTERJECT_COPY_TRANS2 KELDOR 3 tb#StivanKeldor-3
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@312
END

INTERJECT_COPY_TRANS SAFE KELDOR 4 tb#StivanKeldor-4
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@313
== KELDOR @314
END

INTERJECT_COPY_TRANS KELDORJ 11 tb#StivanKeldorj-11
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN 
@315
== KELDORJ @316
== TB#STIVJ @317
== KELDORJ @318
== TB#STIVJ @319
== KELDORJ @320
= @321
END

INTERJECT_COPY_TRANS BKELDOR 37 tb#StivanBkeldor-37
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@322
== BKELDOR @323
END

INTERJECT_COPY_TRANS BVICONI 111 tb#StivanBviconi-111
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@324
== BVICONI @325
END

INTERJECT_COPY_TRANS BVALYGA 6 tb#StivanBvalyga-8
== BVALYGA IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@326
= @327
== TB#STIVJ @328
== BVICONI @329
END

INTERJECT_COPY_TRANS EDWINJ 11 tb#StivanEdwinj-11
== EDWINJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@330
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@331
END

INTERJECT_COPY_TRANS YOSHJ 145 tb#StivanYoshj-145
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@332
== YOSHJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@333
END

INTERJECT_COPY_TRANS YOSHJ 113 tb#StivanYoshj-113
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@334
END

INTERJECT_COPY_TRANS SAFE YOSHIMOX 2 tb#StivanYoshimox-2
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@335
== YOSHIMOX @336
== TB#STIVJ @337
== YOSHIMOX @338
END

INTERJECT_COPY_TRANS2 VALYGAR 44 tb#StivanValygar-44
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@339
== YOSHJ IF ~IsValidForPartyDialog("Yoshimo") IsValidForPartyDialog("tb#stiv") !StateCheck("Yoshimo",CD_STATE_NOTVALID) !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@340
END

INTERJECT_COPY_TRANS VALYGARJ 61 tb#StivanValygarj-61
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@341
== VALYGARJ @342
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@343
== VALYGARJ @344
END

INTERJECT_COPY_TRANS VALYGARJ 59 tb#StivanValygarj-49
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@345
== VALYGARJ @346
END

INTERJECT_COPY_TRANS NALIAJ 226 tb#StivanNaliaj-226
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@347
== NALIAJ @348
== TB#STIVJ @349
== NALIAJ @350
== TB#STIVJ @351
== NALIAJ @352
== TB#STIVJ @353
= @354
END

INTERJECT_COPY_TRANS JAHEIRAJ 392 tb#StivanJaheiraj-392
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@355
== JAHEIRAJ @356
== TB#STIVJ @357
END

APPEND TB#STIVJ 
IF ~AreaCheck("AR0502")
Global("tb#StivanEnteredTanner2","AR0502",0)~ THEN BEGIN Stivanar0502
SAY @358
IF ~~ THEN DO ~SetGlobal("tb#StivanEnteredTanner2","AR0502",1)~ EXIT
END
END

INTERJECT_COPY_TRANS BODHI 1 tb#StivanBodhi-1
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@359
END

INTERJECT_COPY_TRANS BODHI 6 tb#StivanBodhi-6
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@360
END

INTERJECT_COPY_TRANS RYLOCK 24 tb#StivanRylock-24
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@361
== HAERDAJ IF ~IsValidForPartyDialog("haerdalis") IsValidForPartyDialog("tb#stiv") !StateCheck("haerdalis",CD_STATE_NOTVALID) !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@362
== TB#STIVJ IF ~IsValidForPartyDialog("haerdalis") IsValidForPartyDialog("tb#stiv") !StateCheck("haerdalis",CD_STATE_NOTVALID) !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @118
END

CHAIN IF WEIGHT #-1 ~IsValidForPartyDialog("tb#stiv")
See("tb#stiv")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
Global("tb#StivanNobleMan","GLOBAL",0)~ THEN NOBLEM1 stivanNobleman
@363
== TB#STIVJ @364
DO ~SetGlobal("tb#StivanNobleMan","GLOBAL",1)~
EXIT

CHAIN IF WEIGHT #-1 ~IsValidForPartyDialog("tb#stiv")
See("tb#stiv")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
Global("tb#SStivanFemaleChild","GLOBAL",0)~ THEN urchin2 StivanUrchin
@365
DO ~SetGlobal("tb#SStivanFemaleChild","GLOBAL",1)~
== TB#STIVJ @366
EXIT

CHAIN IF WEIGHT #-1 ~IsValidForPartyDialog("tb#stiv")
See("tb#stiv")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
Global("tb#SStivanNobleWoman","GLOBAL",0) ~THEN NOBLEW1 stivanNoblewoman
@367
DO ~SetGlobal("tb#SStivanNobleWoman","GLOBAL",1)~
== TB#STIVJ @368
EXIT

INTERJECT_COPY_TRANS MESSEN 15 tb#StivanMessen-15
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@369
END

INTERJECT_COPY_TRANS2 MESSEN 10 tb#StivanMessen-10
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@370
END

INTERJECT_COPY_TRANS2 BHCRYPT 0 tb#StivanBhcrypt-0
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@371
== BHCRYPT @372
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@373
END

INTERJECT_COPY_TRANS UDSIMYAZ 26 tb#StivanUdsimyaz-26
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@374
END

INTERJECT PLAYER1 33 tb#StivanTreeOfLife
== PLAYER1 IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@375
END
IF ~!Global("EntryTest","GLOBAL",7)~ THEN REPLY @376 EXTERN TB#STIVJ TreeOfLifeStivan1-1
IF ~Global("EntryTest","GLOBAL",7) !Global("tb#AfterYoshiBetrayal","GLOBAL",1)~ THEN REPLY @376 EXTERN TB#STIVJ TreeOfLifeStivan1-2
IF ~Global("EntryTest","GLOBAL",7) Global("tb#AfterYoshiBetrayal","GLOBAL",1)~ THEN REPLY @376 EXTERN TB#STIVJ TreeOfLifeStivan1-3
IF ~!Global("EntryTest","GLOBAL",7)~ THEN REPLY @377 EXTERN TB#STIVJ TreeOfLifeStivan1-1
IF ~Global("EntryTest","GLOBAL",7)~ THEN REPLY @377 EXTERN TB#STIVJ TreeOfLifeStivan1-2
IF ~!Global("EntryTest","GLOBAL",7)~ THEN REPLY @378 EXTERN TB#STIVJ TreeOfLifeStivan1-1
IF ~Global("EntryTest","GLOBAL",7)~ THEN REPLY @378 EXTERN TB#STIVJ TreeOfLifeStivan1-4

APPEND TB#STIVJ 
IF ~~ THEN BEGIN TreeOfLifeStivan1-1 
SAY @379
= @380
IF ~~ THEN DO ~SetGlobal("tb#StivanJoined","GLOBAL",0) LeaveParty() EscapeArea()~ GOTO TreeOfLifeStivan1-1a
END

IF ~~ THEN BEGIN TreeOfLifeStivan1-1a
SAY @381 
COPY_TRANS player1 33
END

IF ~~ THEN BEGIN TreeOfLifeStivan1-2
SAY @382 
COPY_TRANS player1 33
END
 
IF ~~ THEN BEGIN TreeOfLifeStivan1-3
SAY @383
= @384 
COPY_TRANS player1 33
END

IF ~~ THEN BEGIN TreeOfLifeStivan1-4
SAY @385 
IF ~~ THEN REPLY @386 EXTERN TB#STIVJ TreeOfLifeStivan1-5
IF ~~ THEN REPLY @387 EXTERN TB#STIVJ TreeOfLifeStivan1-5
IF ~~ THEN REPLY @388 EXTERN TB#STIVJ TreeOfLifeStivan1-6
END

IF ~~ THEN BEGIN TreeOfLifeStivan1-5
SAY @389
COPY_TRANS player1 33
END

IF ~~ THEN BEGIN TreeOfLifeStivan1-6
SAY @390
COPY_TRANS player1 33
END
END

INTERJECT_COPY_TRANS PLAYER1 25 StivanHell
== tb#stivj IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@391
= @392
END

INTERJECT_COPY_TRANS3 HELLJON 7 tb#StivanHelljon-7
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Alignment("tb#stiv",CHAOTIC_NEUTRAL)~ THEN
@393
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Alignment("tb#stiv",CHAOTIC_NEUTRAL)~ THEN
@394
END

INTERJECT_COPY_TRANS3 HELLJON 8 tb#StivanHelljon-8
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Alignment("tb#stiv",CHAOTIC_NEUTRAL)~ THEN
@393
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Alignment("tb#stiv",CHAOTIC_NEUTRAL)~ THEN
@394
END

INTERJECT_COPY_TRANS3 HELLJON 9 tb#StivanHelljon-9
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Alignment("tb#stiv",CHAOTIC_NEUTRAL)~ THEN
@393
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Alignment("tb#stiv",CHAOTIC_NEUTRAL)~ THEN
@394
END

INTERJECT_COPY_TRANS3 HELLJON 10 tb#StivanHelljon-10
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Alignment("tb#stiv",CHAOTIC_NEUTRAL)~ THEN
@393
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Alignment("tb#stiv",CHAOTIC_NEUTRAL)~ THEN
@394
END

INTERJECT_COPY_TRANS RAELIS 41 tb#StivanRaelis-41
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @395
== RAELIS @396
== TB#STIVJ @397
END

INTERJECT_COPY_TRANS HAERDA 109 tb#StivanHaerda-109
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) !Global("RaelisJob","GLOBAL",1)~ THEN @398
END

INTERJECT_COPY_TRANS HAERDA 109 tb#StivanHaerda-109a
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Global("RaelisJob","GLOBAL",1)~ THEN @399
END

INTERJECT_COPY_TRANS HAERDA 103 tb#StivanHaerda-103
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @400
== HAERDA @401
== TB#STIVJ @402
== HAERDA @403 
== TB#STIVJ @404
== HAERDA @405
= @406
END

INTERJECT_COPY_TRANS AERIE 26 tb#StivanAerie-26
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @407
END

INTERJECT_COPY_TRANS SAFE AERIE 52 tb#StivanAerie-52
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @408
= @409
== AERIE @410
== TB#STIVJ @411
== AERIE @412
END	

INTERJECT_COPY_TRANS AERIE 17 tb#StivanAerie-17
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @413
END

INTERJECT_COPY_TRANS SAFE KORGANA 9 tb#StivanKorgana-9
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @414
== KORGANA @415
END

INTERJECT_COPY_TRANS JAN 19 tb#StivanJan-19
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @416
== JAN @417
END

INTERJECT_COPY_TRANS SAFE NALIA 66 tb#StivanNalia-66
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @418
= @419
== NALIA @118
== TB#STIVJ @420
== NALIA @421
END

INTERJECT_COPY_TRANS NALIA 14 tb#StivanNalia-14
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @422
BRANCH ~IsValidForPartyDialog("Jaheira") IsValidForPartyDialog("tb#stiv") !StateCheck("Jaheira",CD_STATE_NOTVALID) !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ BEGIN
== JAHEIRAJ @423
== TB#STIVJ @424	
== JAHEIRAJ @349
END
END

INTERJECT_COPY_TRANS ISAEA 1 tb#StivanIsaea-1
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @425
== ISAEA @426
== TB#STIVJ @427
== ISAEA @428
END

INTERJECT_COPY_TRANS ISAEA 21 tb#StivanIsaea-21
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @429
== ISAEA @430
== NALIAJ @431
== ISAEA @432
END

INTERJECT_COPY_TRANS NALIAJ 220 tb#StivanNaliaj-220
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @433
END

INTERJECT_COPY_TRANS ISAEA 26 tb#StivanIsaea-26
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @434
== ISAEA @435
END

INTERJECT_COPY_TRANS ISAEA 29 tb#StivanIsaea-29
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @436
END

INTERJECT EDWIN 16 tb#StivanEdwin-16
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @437
END
IF ~~ THEN REPLY @438 EXTERN tb#stivj tb#StivanEdwin-12a
IF ~~ THEN DO ~SetGlobal("#tbStivanMarcus","GLOBAL",1)~ REPLY @439 EXTERN tb#stivj tb#StivanEdwin-12b

APPEND TB#STIVJ
IF ~~ THEN tb#StivanEdwin-12a
SAY @440
COPY_TRANS EDWIN 16
END

IF ~~ THEN tb#StivanEdwin-12b
SAY @441
COPY_TRANS EDWIN 16
END
END

INTERJECT MARCUS 0 tb#StivanMarcus-0
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Global("#tbStivanMarcus","GLOBAL",1)~ THEN @442
== MARCUS @443
== TB#STIVJ @444 DO ~GiveItemCreate("AMUL09",Player1,1,0,0)~
END
IF ~~ THEN REPLY @445 EXTERN TB#STIVJ StivanMarcus1-1
IF ~~ THEN REPLY @446 EXTERN TB#STIVJ StivanMarcus1-1
IF ~~ THEN REPLY @447 EXTERN TB#STIVJ StivanMarcus1-1

CHAIN IF ~~ THEN tb#stivj StivanMarcus1-1
@448
= @449
= @450
== MARCUS @451
== TB#STIVJ @452
== MARCUS @453
== TB#STIVJ @454 DO ~GiveItemCreate("misc4w",Player1,1,0,0)~
== MARCUS @455 DO ~EscapeArea()~
== TB#STIVJ @456
EXIT

INTERJECT_COPY_TRANS SAERK 1 tb#StivanSaerk-1
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @457
== SAERK @458
== TB#STIVJ @459
== SAERK @460
END

INTERJECT_COPY_TRANS SAERK 4 tb#StivanSaerk-4
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @461
== SAERK @462
== TB#STIVJ @463
== SAERK @464
END

INTERJECT trgyp02 2 tb#StivanTrgyp02-2
== TRGYP02 IF ~!InPartySlot(LastTalkedToBy,0) Name("tb#Stiv",LastTalkedToBy)~ THEN  @465 
== tb#stivj @466
EXIT


INTERJECT_COPY_TRANS CELOGAN 40 tb#stivanCelogan-40
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @467
== CELOGAN @468
== TB#STIVJ @469
== CELOGAN @470
== TB#STIVJ @471
END

INTERJECT_COPY_TRANS MARIA 5 tb#StivanMaria-5
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN 
@472
END

INTERJECT_COPY_TRANS KHELLOR 6 tb#StivanKhellor-6
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @473
== KHELLOR @474
== TB#STIVJ @475
== KHELLOR @476
END

INTERJECT_COPY_TRANS KHELLOR 6 tb#StivanKhellor-8
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @477
END

INTERJECT_COPY_TRANS BODHIAMB 15 tb#StivanBodhiamb-15
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @478
END

INTERJECT_COPY_TRANS BODHIAMB 13 tb#StivanBodhiamb-13
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @479
END

INTERJECT_COPY_TRANS BODHIAMB 19 tb#StivanBodhiamb-19
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @480
END

INTERJECT_COPY_TRANS BODHIAMB 17 tb#StivanBodhiamb-17
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @481
END

INTERJECT_COPY_TRANS UDSILVER 0 tb#StivanUdsilver-0
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @482
== UDSILVER IF ~!Dead("UDtrap06") Dead("UDbalor") !Dead("UDsvir03")~ THEN @483
== UDSILVER IF ~OR(3) Dead("UDtrap06") !Dead("UDbalor") Dead("UDsvir03")~ THEN @484
END

EXTEND_BOTTOM UDSILVER 37
IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN EXTERN tb#stivj stivanisdrow
END

EXTEND_BOTTOM UDSILVER 39
IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN EXTERN tb#stivj stivanisdrow
END

APPEND TB#STIVJ
IF ~~ THEN stivanisdrow
SAY @485
IF ~Race(Player1,HALFORC)~ THEN REPLY @486 EXTERN TB#STIVJ StivanDrow1-1
IF ~Race(Player1,HALFLING)~ THEN REPLY @487 EXTERN TB#STIVJ StivanDrow1-2
IF ~Race(Player1,GNOME)~ THEN REPLY @488 EXTERN TB#STIVJ StivanDrow1-3
IF ~OR (2) Race(Player1,ELF) Race(Player1,HALF_ELF)~ THEN REPLY @489 EXTERN TB#STIVJ StivanDrow1-4
IF ~Class(Player1,MAGE_ALL)~ THEN REPLY @490 EXTERN TB#STIVJ StivanDrow1-5
IF ~Gender(Player1,MALE)~ THEN REPLY @491 EXTERN TB#STIVJ StivanDrow1-6
IF ~Gender(Player1,FEMALE)~ THEN REPLY @492 EXTERN TB#STIVJ StivanDrow1-7
IF ~~ THEN REPLY @493 EXTERN TB#STIVJ StivanDrow1-8
IF ~~ THEN REPLY @494 EXTERN TB#STIVJ StivanDrow1-9
END

IF ~~ THEN StivanDrow1-1
SAY @495
IF ~~ THEN EXTERN TB#STIVJ StivanDrow1-9
END

IF ~~ THEN StivanDrow1-2
SAY @496
IF ~~ THEN EXTERN TB#STIVJ StivanDrow1-9
END

IF ~~ THEN StivanDrow1-3
SAY @497
IF ~~ THEN EXTERN TB#STIVJ StivanDrow1-9
END

IF ~~ THEN StivanDrow1-4
SAY @498
IF ~~ THEN EXTERN TB#STIVJ StivanDrow1-9
END

IF ~~ THEN StivanDrow1-5
SAY @499
IF ~~ THEN EXTERN TB#STIVJ StivanDrow1-9
END

IF ~~ THEN StivanDrow1-6
SAY @500
IF ~~ THEN EXTERN TB#STIVJ StivanDrow1-9
END 

IF ~~ THEN StivanDrow1-7
SAY @501
IF ~~ THEN EXTERN TB#STIVJ StivanDrow1-9
END

IF ~~ THEN StivanDrow1-8
SAY @502
IF ~~ THEN EXTERN TB#STIVJ StivanDrow1-9
END

IF ~~ THEN StivanDrow1-9
SAY @503
COPY_TRANS UDSILVER 37
END
END

INTERJECT_COPY_TRANS UDSILVER 46 tb#StivanUdsilver-46
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @504
== UDSILVER @505
== TB#STIVJ @506
== UDSILVER @507
== TB#STIVJ @508
== UDSILVER @509
== TB#STIVJ @510
== UDSILVER @511
END

INTERJECT_COPY_TRANS SLHALF01 4 tb#StivanSlhalf01-4
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") IsValidForPartyDialog("Haerdalis")!StateCheck("tb#stiv",CD_STATE_NOTVALID) !StateCheck("Haerdalis",CD_STATE_NOTVALID)~ THEN 
@512
== HAERDAJ @513
== TB#STIVJ @514
== HAERDAJ @515
END

INTERJECT_COPY_TRANS RUMAR 7 tb#StivanRumar-7
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") IsValidForPartyDialog("Yoshimo")!StateCheck("tb#stiv",CD_STATE_NOTVALID) !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN 
@516
== YOSHJ @517
END

INTERJECT_COPY_TRANS NOBLEW2 1 tb#StivanNoblew2-1
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") IsValidForPartyDialog("Nalia")!StateCheck("tb#stiv",CD_STATE_NOTVALID) !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN 
@518
== NALIAJ @519
END

INTERJECT_COPY_TRANS2 GAELAN 66 tb#StivanGaelan-66
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@520
END

INTERJECT_COPY_TRANS2 FIRKRA01 9 tb#StivanFirkra01-9
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@521
END

INTERJECT_COPY_TRANS DASLAVE1 7 tb#StivanDaslave1-7
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@522
BRANCH ~IsValidForPartyDialog("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ BEGIN
== TB#STIVJ @523
== NALIAJ @524
== TB#STIVJ @525
END
END

INTERJECT_COPY_TRANS DASLAVE1 8 tb#StivanDaslave1-8
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@522
BRANCH ~IsValidForPartyDialog("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ BEGIN
== TB#STIVJ @523
== NALIAJ @526
== TB#STIVJ @527
== NALIAJ @528
== TB#STIVJ @529
= @530
END
END

INTERJECT_COPY_TRANS UHMAY01 18 tb#StivanUhmay01-18
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@531
= @532
END

INTERJECT_COPY_TRANS PROST1 4 tb#StivanProst1-4
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@533
END

INTERJECT_COPY_TRANS PROST1 1 tb#StivanProst1-1
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@534
END

INTERJECT_COPY_TRANS SLUMM3 2 tb#StivanSlumm3-2
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@535
END

INTERJECT_COPY_TRANS DHARLOT1 1 tb#StivanDharlot1-1
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@536
END

INTERJECT_COPY_TRANS UDSOLA01 50 tb#StivanUDSOLA01-50
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ @537
== VICONIJ IF ~IsValidForPartyDialog("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ @538
END

INTERJECT_COPY_TRANS UDSOLA01 114 tb#StivanUDSOLA01-114
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ @539
== UDSOLA01 @540
END

INTERJECT ANOMENJ 134 tb#StivanAnomenj-134
== ANOMENJ IF ~Global("tb#StivanAnomenj-52","GLOBAL",1)~ THEN @541
END
IF ~~ THEN REPLY @542 EXTERN ANOMENJ 174
IF ~~ THEN REPLY @543 EXTERN ANOMENJ 135
IF ~!Global("AnomenRomanceActive","GLOBAL",2)~ THEN REPLY @544 EXTERN ANOMENJ AnomenDecidesHimself

EXTEND_BOTTOM ANOMENJ 134
IF ~!Global("AnomenRomanceActive","GLOBAL",2)~ THEN REPLY @544 EXTERN ANOMENJ AnomenDecidesHimself
END

APPEND ANOMENJ
IF ~~ THEN BEGIN AnomenDecidesHimself
SAY @545
= @546
COPY_TRANS ANOMENJ 135
END
END

INTERJECT_COPY_TRANS KALAH2 13 tb#StivanKalah2-13
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN 
@547
END

INTERJECT_COPY_TRANS2 VVAMN1 4 tb#StivanVvamn1-4
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN 
@548
BRANCH ~IsValidForPartyDialog("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ BEGIN
== YOSHJ @549
== TB#STIVJ @550
== YOSHJ @551
END
END

INTERJECT_COPY_TRANS HENDAK 19 tb#StivanHendak-19
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN 
@552
END

INTERJECT_COPY_TRANS CIVFRUS1 1 tb#StivanCivfrus1-1
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @553
END

INTERJECT_COPY_TRANS SAFE EDWIN 30 tb#StivanEdwin-30
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @554
== EDWIN @555
== TB#STIVJ @556
== EDWIN @557
END

INTERJECT_COPY_TRANS SAFE EDWIN 31 tb#StivanEdwin-31
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @554
== EDWIN @555
== TB#STIVJ @556
== EDWIN @557
END

INTERJECT_COPY_TRANS2 ARENTHIS 16 tb#StivanArenthis-16
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @558
= @118
= @559
END

INTERJECT_COPY_TRANS SURLY 14 tb#StivanSurly-14
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Global("tb#stivanSurly","GLOBAL",0)~ THEN @560
DO  ~SetGlobal("tb#stivanSurly","GLOBAL",1)~
== SURLY @561
== TB#STIVJ @562
== SURLY @563
END

INTERJECT SURLY 14 tb#StivanSurly-14-2
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Global("tb#stivanSurly","GLOBAL",1)~ THEN @564
DO  ~SetGlobal("tb#stivanSurly","GLOBAL",2)~
== SURLY @565
== TB#STIVJ @566
== SURLY @567
== TB#STIVJ @568
== SURLY @569
== TB#STIVJ @331
DO ~RunAwayFrom("surly",120)~
EXIT

CHAIN IF WEIGHT #-1 ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Global("tb#stivanSurly","GLOBAL",2)~ THEN SURLY surlyStivanFinale
@570
== TB#STIVJ @571
== SURLY @572
END
IF ~!Class(Player1,DRUID_ALL) !Class(Player1,RANGER_ALL) !Range([PC.0.0.RANGER_ALL],30) !Range([PC.0.0.DRUID_ALL],30)~ THEN REPLY @573 EXTERN tb#stivj killSeagulls
IF ~!Class(Player1,DRUID_ALL) !Class(Player1,RANGER_ALL) OR(2) Range([PC.0.0.RANGER_ALL],30) Range([PC.0.0.DRUID_ALL],30)~ THEN REPLY @574 EXTERN surly surlyNotPaid
IF ~~ THEN REPLY @575 EXTERN surly surlyNoShow

APPEND TB#STIVJ
IF ~~ THEN killSeagulls
SAY @389
IF ~~ THEN DO ~SetGlobal("tb#stivanSurly","GLOBAL",3) StartCutSceneMode() StartCutScene("tb#ssurl")~ EXIT
END
END

APPEND SURLY
IF ~~ THEN surlyNoShow
SAY @576
IF ~PartyGoldGT(99)~ THEN DO ~TakePartyGold(100) DestroyGold(100)~ REPLY @577 GOTO surlyPaid
IF ~~ THEN REPLY @578 GOTO surlyNotPaid
END

IF WEIGHT #-1 ~Global("tb#stivanSurly","GLOBAL",5)~ THEN surlyStivanFinale
SAY @579
IF ~!Class(Player1,DRUID_ALL) !Class(Player1,RANGER_ALL) !Range([PC.0.0.RANGER_ALL],30) !Range([PC.0.0.DRUID_ALL],30)~ THEN REPLY @580 EXTERN tb#stivj killSeagulls
IF ~PartyGoldGT(99)~ THEN DO ~TakePartyGold(100) DestroyGold(100)~ REPLY @581 GOTO surlyPaid
IF ~~ THEN REPLY @578 GOTO surlyNotPaid
END

IF ~~ THEN surlyPaid
SAY @582
IF ~~ THEN DO ~SetGlobal("tb#stivanSurly","GLOBAL",4)~ EXIT
END

IF ~~ THEN surlyNotPaid
SAY @583
IF ~~ THEN DO ~SetGlobal("tb#stivanSurly","GLOBAL",5)~ EXIT
END

IF WEIGHT #-1 ~Global("tb#StivanSurly","GLOBAL",3)~ THEN surlyAfterSeagull
SAY @584
IF ~~ THEN DO ~SetGlobal("tb#stivanSurly","GLOBAL",4)~ GOTO surlyEnd
END

IF ~~ THEN surlyEnd
SAY @585
COPY_TRANS SURLY 14
END
END

INTERJECT_COPY_TRANS THIEF3 0 tb#StivanThief3-0
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @586
END

INTERJECT_COPY_TRANS THIEF5 7 tb#StivanThief5-7
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @587
END

// If you consider these men a threat, then do what you think is necessary.   Gloves of Healing would be a suitable reward for the task, I think.  Do you accept?
INTERJECT_COPY_TRANS KAYL2 13 tb#StivanKayl2-13
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @588
== KAYL2 @589
END

// That is a shame, truly, for we have no one else to turn to at this time.  If you change your mind, please come back and speak with me. 
INTERJECT_COPY_TRANS KAYL2 7 tb#stivanKayl2-7
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @590
END

// Very well then, you shall have it.  Return it soon or you will not be given your reward.  It is very important that the cup remains in the hands of the Order.
INTERJECT_COPY_TRANS SAFE KAYL2 21 tb#StivanKayl2-21
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @591
== KAYL2 @592
== TB#STIVJ @593
== KAYL2 @594
END

// Then you are due your just reward.  The Most Noble Order of the Radiant Heart gives you our fullest thanks.
INTERJECT_COPY_TRANS SAFE KAYL2 18 tb#StivanKayl2-18
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @595
== KAYL2 @596
END

INTERJECT_COPY_TRANS WELLYN 3 tb#StivanWellyn-3
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @597
== JAHEIRAJ IF ~IsValidForPartyDialog("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @598
END

INTERJECT_COPY_TRANS JAHEIRAJ 292 tb#StivanJaheiraj-292
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @599
== JAHEIRAJ @600
== TB#STIVJ @601
END

INTERJECT_COPY_TRANS WELLYN 8 tb#StivanWellyn-8
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @602
== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @603
BRANCH ~IsValidForPartyDialog("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ BEGIN
== KORGANJ @604
== TB#STIVJ @605
== KORGANJ @606
END
END

INTERJECT_COPY_TRANS2 LLYNIS 10 tb#StivanLlynis-10
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @607
END

INTERJECT_COPY_TRANS2 LLYNIS 8 tb#StivanLlynis-8
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @607
END

INTERJECT LLYNIS 11 tb#StivanLlynis-11
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @608
== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @609
END
IF ~~ THEN DO ~ActionOverride("llynis",Enemy())~ EXIT

INTERJECT LLYNIS 12 tb#StivanLlynis-12
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @608
== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @609
END
IF ~~ THEN DO ~ActionOverride("llynis",Enemy())~ EXIT

INTERJECT_COPY_TRANS RENAL 30 tb#StivanRenal-30
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @610
BRANCH ~IsValidForPartyDialog("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ BEGIN
== YOSHJ @611
== TB#STIVJ @612
END
END

INTERJECT_COPY_TRANS YOSHJ 73 tb#StivanYoshj-73
== YOSHJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @613
END

INTERJECT_COPY_TRANS MAEVAR 29 tb#StivanMaevar-29
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") IsValidForPartyDialog("Yoshimo") !StateCheck("tb#stiv",CD_STATE_NOTVALID) !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @614
== YOSHJ @615
END

INTERJECT_COPY_TRANS NOBLEM1 7 tb#StivanNoblem1-7
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") IsValidForPartyDialog("Edwin") !StateCheck("tb#stiv",CD_STATE_NOTVALID) !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @616
== EDWINJ @617
END

INTERJECT_COPY_TRANS NOBLEW1 0 tb#StivanNoblew1-0
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @618
END

/* INTERJECT_COPY_TRANS
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") IsValidForPartyDialog("Cernd") !StateCheck("tb#stiv",CD_STATE_NOTVALID) !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN ~(Sospira) Mi piacerebbe tanto saper decantare poesie e filastrocche come questo marinaio, ma la mia memoria, purtroppo, non è delle migliori.~
== CERNDJ ~Se la poesia non viene naturalmente come le foglie vengono agli alberi, allora è meglio che non venga per niente.~
== TB#STIVJ ~Complimenti, Cernd. Hai appena fatto sprofondare la scarsa considerazione che avevo di te!~
END */

INTERJECT_COPY_TRANS BKELDOR 4 tb#StivanBkeldor-4
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @619
== BKELDOR @620
END

INTERJECT_COPY_TRANS BANOMEN 45 tb#StivanBanomen-45
== BKELDOR IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @621
== TB#STIVJ @622
END




///////////////////////////////////////////
// Scripted banters
///////////////////////////////////////////

CHAIN 
IF ~PartyRested()
InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanViconia","GLOBAL",1)~ THEN TB#STIVJ stivan-viconia-2
@623
DO ~SetGlobal("tb#StivanViconia","GLOBAL",2)~
== VICONIJ @624
== TB#STIVJ @625
== VICONIJ @626
== TB#STIVJ @627
EXIT

CHAIN 
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
Global("AnomenIsNotKnight","GLOBAL",0)
OR(2)
AreaCheck("AR0901")
AreaCheck("AR0902")
CombatCounter(0)
Global("tb#StivanAnomenAboutFaith","GLOBAL",0)~ THEN TB#STIVJ stivan-anomen-temple
@628
DO ~SetGlobal("tb#StivanAnomenAboutFaith","GLOBAL",1)~
== ANOMENJ @629
== TB#STIVJ @630
== ANOMENJ @631
== TB#STIVJ @632
== ANOMENj @633
== TB#STIVJ @634
== ANOMENJ @635
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
Global("FollowedGarren","GLOBAL",1)
CombatCounter(0)
Global("tb#StivanKeldornAboutGarren","GLOBAL",0)~ THEN KELDORJ stivanKeldornGarren
@636
DO ~SetGlobal("tb#StivanKeldornAboutGarren","GLOBAL",1)~
== TB#STIVJ @637
== KELDORJ @638
== TB#STIVJ @639
== KELDORJ @640
END
IF ~~ THEN REPLY @641 EXTERN TB#STIVJ StivanKeldorn1-1
IF ~~ THEN REPLY @642 EXTERN TB#STIVJ StivanKeldorn1-1
IF ~~ THEN REPLY @643 EXTERN TB#STIVJ StivanKeldorn1-2
IF ~~ THEN REPLY @644 EXTERN TB#STIVJ StivanKeldorn1-2

APPEND TB#STIVJ
IF ~~ StivanKeldorn1-1
SAY @645
IF ~~ THEN EXIT
END

IF ~~ StivanKeldorn1-2
SAY @646
IF ~~ EXTERN KELDORJ StivanKeldorn1-3
END
END

APPEND KELDORJ
IF ~~ THEN StivanKeldorn1-3
SAY @647
IF ~~ THEN EXIT
END
END

CHAIN 
IF ~InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
AreaType(OUTDOOR)
CombatCounter(0)
Global("tb#StivanHaerdalisBesamen","GLOBAL",0)
OR(2)
Global("BesamenDead","GLOBAL",1)
Global("BesamenDead","GLOBAL",2)~ THEN TB#STIVJ stivan-dalis-qp
@648
DO ~SetGlobal("tb#StivanHaerdalisBesamen","GLOBAL",1)~
== HAERDAJ @649
== TB#STIVJ @650
== HAERDAJ @651
= @652
= @653
= @654
== TB#STIVJ @655
== HAERDAJ @656
== HAERDAJ IF ~IsValidForPartyDialog("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) Global("HaerDalisRomanceActive","GLOBAL",2)~ THEN @657
== AERIEJ IF ~IsValidForPartyDialog("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) Global("HaerDalisRomanceActive","GLOBAL",2)~ THEN @658
== TB#STIVJ @659
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CheckStatGT("Aerie",5,FATIGUE)
CombatCounter(0)
Global("tb#StivanAerie","GLOBAL",0)~ THEN AERIEJ stivan-aerie-1
@660
DO ~SetGlobal("tb#StivanAerie","GLOBAL",1)~
== TB#STIVJ @661
== AERIEJ @662
== TB#STIVJ @663
== AERIEJ @664
== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @665
== TB#STIVJ @666
== AERIEJ @667
== TB#STIVJ @668
== AERIEJ @669
== TB#STIVJ @670
== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @671
== TB#STIVJ IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @672
= @118
= @673
== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @674
== TB#STIVJ IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @675
EXIT

CHAIN 
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanJaheiraTrademeet","GLOBAL",0)
AreaCheck("AR2000")~ THEN TB#STIVJ stivanjaheiratrademeet
@676
DO ~SetGlobal("tb#StivanJaheiraTrademeet","GLOBAL",1)~
== JAHEIRAJ @677
== TB#STIVJ @678
== JAHEIRAJ  @679
EXIT

CHAIN 
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
Global("JaheiraCursed","GLOBAL",3)
CombatCounter(0)
Global("tb#StivanJaheiraCursed","GLOBAL",0)~ THEN TB#STIVJ stivanjaheiracurse
@680
DO ~SetGlobal("tb#StivanJaheiraCursed","GLOBAL",1)~
== JAHEIRAJ @681
== TB#STIVJ @682
== JAHEIRAJ @683
== TB#STIVJ @684
== JAHEIRAJ @685
== TB#STIVJ @686
== JAHEIRAJ @687
== TB#STIVJ @688
== JAHEIRAJ @689
EXIT

CHAIN 
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
Global("JaheiraCursed","GLOBAL",10)
CombatCounter(0)
Global("tb#StivanJaheiraCursed","GLOBAL",1)~ THEN TB#STIVJ stivanjaheirapostcurse
@690
DO ~SetGlobal("tb#StivanJaheiraCursed","GLOBAL",2)~
== JAHEIRAJ @691
== TB#STIVJ @692
== JAHEIRAJ @693
== TB#STIVJ @694
== JAHEIRAJ @695
== TB#STIVJ @696
== JAHEIRAJ @118
= @697
= @698
= @699
= @700
= @701
= @118
= @702
== TB#STIVJ @703
== JAHEIRAJ @704
EXIT

CHAIN
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanJaheiraKhalid","GLOBAL",2)~ THEN TB#STIVJ stivanjaheira2
@705
DO ~SetGlobal("tb#StivanJaheiraKhalid","GLOBAL",3)~
== JAHEIRAJ @706
== TB#STIVJ @707
== JAHEIRAJ @708
== TB#STIVJ @709
== JAHEIRAJ @710
== TB#STIVJ @711
== JAHEIRAJ @712
== TB#STIVJ @713
== JAHEIRAJ @714
== TB#STIVJ @715
== JAHEIRAJ @716
== TB#STIVJ @717
== JAHEIRAJ @718
== TB#STIVJ @719
== JAHEIRAJ @720
= @721
== TB#STIVJ @118
= @722
== JAHEIRAJ @723
EXIT

CHAIN 
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanValygarSphere","GLOBAL",0)
Dead("obshal04")~ THEN TB#STIVJ stivanvalygarsphere
@724
DO ~SetGlobal("tb#StivanValygarSphere","GLOBAL",1)~
== VALYGARJ @725
== TB#STIVJ @726
== VALYGARJ @727
== TB#STIVJ @728
== VALYGARJ @729
EXIT

CHAIN
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
Global("u!SunaDies","GLOBAL",1)
CombatCounter(0)
Global("tb#StivanValygarAboutSuna","GLOBAL",0)~ THEN TB#STIVJ stivanvalygarsuna
@730
DO ~SetGlobal("tb#StivanValygarAboutSuna","GLOBAL",1)~
== VALYGARJ @731
== TB#STIVJ @732
== VALYGARJ @733
== TB#STIVJ @734
== VALYGARJ @735
== TB#STIVJ @736
== VALYGARJ @737
EXIT

CHAIN 
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanMazzyObshal01","GLOBAL",0)
Dead("obshal01")
Dead("obshal02")
Dead("obshal03")~ THEN TB#STIVJ stivanmazzyhalfling
@738
DO ~SetGlobal("tb#StivanMazzyObshal01","GLOBAL",1)~
== MAZZYJ @739
== TB#STIVJ @740
== MAZZYJ @741
== TB#STIVJ @742
== MAZZYJ @743
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
GlobalGT("A#IM5Quest","GLOBAL",3)
Global("tb#StivanMazzyAboutKram","GLOBAL",0)~ THEN MAZZYJ kram
@744
DO ~SetGlobal("tb#StivanMazzyAboutMazzy","GLOBAL",1)~
== TB#STIVJ  @745
== MAZZYJ @746
== TB#STIVJ @747
== MAZZYJ @748
== TB#STIVJ @749
== MAZZYJ @750
== TB#STIVJ @751
== MAZZYJ @752
EXIT


CHAIN 
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
AreaCheck("AR0202")
CombatCounter(0)
Global("tb#StivanKeldornStink","GLOBAL",0)~ THEN TB#STIVJ stivankeldornstink
@753
DO ~SetGlobal("tb#StivanKeldornStink","GLOBAL",1)~
== KELDORJ @754 
== TB#STIVJ @755
== KELDORJ @118
EXIT

ADD_TRANS_ACTION BAERIE BEGIN 140 END BEGIN END ~SetGlobal("tb#StivanAerieToldWIngs","GLOBAL",1)~


CHAIN 
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanMazzyDragon","GLOBAL",0)
AreaCheck("ar1402")~ THEN TB#STIVJ stivandragon
@756
DO ~SetGlobal("tb#StivanMazzyDragon","GLOBAL",1)~
== MAZZYJ @757
== TB#STIVJ @758
== MAZZYJ @759
== TB#STIVJ @760
END
IF ~~ THEN REPLY @761 EXTERN MAZZYJ StivanMazzyDragon1-1
IF ~!Race(Player1,HALFLING)~ THEN REPLY @762 EXTERN MAZZYJ StivanMazzyDragon1-2
IF ~Race(Player1,HALFLING)~ THEN REPLY @763 EXTERN MAZZYJ StivanMazzyDragon1-3
IF ~Class(Player1,BARD_ALL)~ THEN REPLY @764 EXTERN MAZZYJ StivanMazzyDragon1-4
IF ~~ THEN REPLY @765 EXTERN MAZZYJ StivanMazzyDragon1-1

CHAIN IF ~~ THEN MAZZYJ StivanMazzyDragon1-1
@766
== TB#STIVJ @767
EXTERN MAZZYJ StivanMazzyDragon1-4

APPEND MAZZYJ
IF ~~ THEN BEGIN StivanMazzyDragon1-2
SAY @768
IF ~~ THEN EXTERN MAZZYJ StivanMazzyDragon1-4
END
END

CHAIN IF ~~ THEN MAZZYJ StivanMazzyDragon1-3
@769
== TB#STIVJ @767
EXTERN MAZZYJ StivanMazzyDragon1-4

CHAIN IF ~~ THEN MAZZYJ StivanMazzyDragon1-4
@770
== TB#STIVJ @771
== MAZZYJ @772
== TB#STIVJ @773
= @774
= @775
= @776
= @777
== MAZZYJ @778
== TB#STIVJ @779
== MAZZYJ @780
== TB#STIVJ @781
END
IF ~~ THEN REPLY @782 EXTERN TB#STIVJ StivanMazzyDragon1-6
IF ~~ THEN REPLY @783 EXTERN MAZZYJ StivanMazzyDragon1-7
IF ~~ THEN REPLY @784 EXTERN TB#STIVJ StivanMazzyDragon1-8

APPEND TB#STIVJ
IF ~~ THEN BEGIN StivanMazzyDragon1-6
SAY @785
IF ~~ THEN DO ~ApplySpellRES("tb#ssca",Myself)~ EXIT
END
END

APPEND MAZZYJ
IF ~~ THEN BEGIN StivanMazzyDragon1-7
SAY @786
IF ~~ THEN REPLY @787 EXIT
IF ~~ THEN REPLY @788 EXIT
IF ~~ THEN REPLY @789 EXTERN TB#STIVJ StivanMazzyDragon1-6
IF ~~ THEN REPLY @790 EXIT
END
END

APPEND TB#STIVJ
IF ~~ THEN BEGIN StivanMazzyDragon1-8
SAY @791
IF ~~ THEN EXIT
END
END

BEGIN TB#SLIL
CHAIN 
IF ~Global("tb#StivanLarry","GLOBAL",2)~ THEN TB#SLIL StivanLarry
@792
== MINSCJ @793
== TB#SLIL @794
== MINSCJ @795
== TB#STIVJ @796
== MINSCJ @797
== TB#SLIL @798
== TB#STIVJ @799
== MINSCJ @800
== TB#STIVJ @801
== MINSCJ @802
== TB#STIVJ @803
== TB#SLIL @804 DO ~DestroySelf()~
EXIT

CHAIN 
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanMazzyDrow","GLOBAL",0)
GlobalGT("PhaereJob","GLOBAL",5)~ THEN TB#STIVJ mazzydrow
@805
DO ~SetGlobal("tb#StivanMazzyDrow","GLOBAL",1)~
== MAZZYJ @806
== TB#STIVJ @807
= @808
= @809
= @810
= @811
= @812
= @813
= @814
== MAZZYJ @815
== TB#STIVJ @816
== MAZZYJ @817
== TB#STIVJ @818
== MAZZYJ @819
== TB#STIVJ @820
== MAZZYJ @821
= @822
== TB#STIVJ @823
= @824
= @825
== MAZZYJ @826
= @827 
= @828
== TB#STIVJ @118
= @829
== MAZZYJ @830
== TB#STIVJ @831
EXIT

BEGIN TB#SELF

CHAIN 
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanMazzyDrow","GLOBAL",1)
AreaCheck("ar2500")~ THEN TB#STIVJ mazzypostdrow
@832
DO ~SetGlobal("tb#StivanMazzyDrow","GLOBAL",2)~
== MAZZYJ @833
= @834
= @835
== tb#self @836
== MAZZYJ @837
== tb#self @838
== MAZZYJ @839 
= @840
== TB#STIVJ @118
= @841
== MAZZYJ @842
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
HPPercentLT("tb#Stiv",50)
CombatCounter(0)
Global("tb#StivanAnomen","GLOBAL",6)~ THEN ANOMENJ stivananomen7
@843 
DO ~SetGlobal("tb#StivanAnomen","GLOBAL",7)~
= @844
== TB#STIVJ @845
= @846 
== ANOMENJ @847
DO ~ActionOverride("Anomen",ForceSpell("tb#Stiv",CLERIC_CURE_MEDIUM_WOUNDS))~
== TB#STIVJ @848
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanAnomen","GLOBAL",8)
AreaCheck("ar2804")~ THEN ANOMENJ stivananomen9
@849 
DO ~SetGlobal("tb#StivanAnomen","GLOBAL",9)~
== TB#STIVJ @850
BRANCH ~Global("AnomenRomanceActive","GLOBAL",2)~ BEGIN
== ANOMENJ @851
== TB#STIVJ @852
== ANOMENJ @853
= @854
END
BRANCH ~!Global("AnomenRomanceActive","GLOBAL",2)~ BEGIN
== ANOMENJ @855
== TB#STIVJ @856
== ANOMENJ @857
END
== TB#STIVJ @858
== ANOMENJ @859
== TB#STIVJ @860
END
IF ~~ THEN REPLY @861 EXTERN tb#stivj StivanAnomenLastTalk1-1
IF ~!Global("AnomenRomanceActive","GLOBAL",2)~ THEN REPLY @862 EXTERN tb#stivj StivanAnomenLastTalk1-1
IF ~~ THEN REPLY @863 EXTERN tb#stivj StivanAnomenLastTalk1-1
IF ~Global("AnomenRomanceActive","GLOBAL",2)~ THEN REPLY @864 EXTERN tb#stivj StivanAnomenLastTalk1-1
IF ~Global("AnomenRomanceActive","GLOBAL",2)~ THEN REPLY @865 EXTERN tb#stivj StivanAnomenLastTalk1-2

APPEND tb#stivJ
IF ~~ THEN BEGIN StivanAnomenLastTalk1-1
SAY @866
= @867
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN StivanAnomenLastTalk1-2
SAY @868
IF ~~ THEN REPLY @869 GOTO StivanAnomenLastTalk1-3
IF ~~ THEN REPLY @870 GOTO StivanAnomenLastTalk1-3
IF ~~ THEN REPLY @871 GOTO StivanAnomenLastTalk1-3
END

IF ~~ THEN BEGIN StivanAnomenLastTalk1-3
SAY @872 
IF ~~ THEN EXIT
END
END

CHAIN 
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanKorganUD","GLOBAL",0)
Global("udDrowPlot","GLOBAL",5)~ THEN TB#STIVJ stivankorgan4
@873
DO ~SetGlobal("tb#StivanKorganUD","GLOBAL",1)~ 
== KORGANJ @874
== TB#STIVJ @875
== KORGANJ @876
= @877
== TB#STIVJ @878
== KORGANJ @879
BRANCH ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ BEGIN
== MAZZYJ @880
== KORGANJ  @881
== MAZZYJ @882 
END
EXIT

CHAIN 
IF ~InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
HPPercentLT("tb#Stiv",30)
CombatCounter(0)
Global("tb#StivanHaerdalis","GLOBAL",3)~ THEN TB#STIVJ stivanhaer4
@883
DO ~SetGlobal("tb#StivanHaerdalis","GLOBAL",4)~
== HAERDAJ @884
EXIT

CHAIN 
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
HPPercentLT("tb#Stiv",40)
Global("tb#StivanMinsc","GLOBAL",2)~ THEN TB#STIVJ stivanminsc3
@885
DO ~SetGlobal("tb#StivanMinsc","GLOBAL",3)~
== MINSCJ @886
== TB#STIVJ @887
== MINSCJ @888
= @889
== TB#STIVJ @890
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanMinscDrow","GLOBAL",0)
Global("PhaereJob","GLOBAL",8)~ THEN MINSCJ stivanminscdrow
@891
DO ~SetGlobal("tb#StivanMinscDrow","GLOBAL",1)~
== TB#STIVJ @892
== MINSCJ @893
== TB#STIVJ @894
== MINSCJ @895
= @896
= @897
== TB#STIVJ @898
EXIT

CHAIN 
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
CombatCounter(0)
Global("AnomenDecide","GLOBAL",4)
Global("tb#AnomenStivanSaerk","GLOBAL",0)
AreaCheck("AR1002")~ THEN TB#STIVJ stivanpretrial
@899
DO ~SetGlobal("tb#AnomenStivanSaerk","GLOBAL",1)~
== ANOMENJ @900
== TB#STIVJ @901
= @902
== ANOMENJ @903
EXIT

CHAIN 
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
CombatCounter(0)
Global("KillSaerk","GLOBAL",1)
Global("tb#AnomenStivanSaerk","GLOBAL",1)
AreaCheck("AR1000")~ THEN TB#STIVJ stivanposttrial1
@904
DO ~SetGlobal("tb#AnomenStivanSaerk","GLOBAL",2)~
== ANOMENJ @905
== TB#STIVJ @906
== ANOMENJ @907
== TB#STIVJ @908
== ANOMENJ @909
EXIT

CHAIN 
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
CombatCounter(0)
Global("KillSaerk","GLOBAL",2)
Global("tb#AnomenStivanSaerk","GLOBAL",1)
AreaCheck("AR1000")~ THEN TB#STIVJ stivanposttrial2
@904
DO ~SetGlobal("tb#AnomenStivanSaerk","GLOBAL",2)~
== ANOMENJ @905
== TB#STIVJ @906
== ANOMENJ @910
== TB#STIVJ @911
== ANOMENJ @912
== TB#STIVJ @913
== ANOMENJ @914
== TB#STIVJ @915
== ANOMENJ @916
== TB#STIVJ @917
END
IF ~~ THEN REPLY @918 EXTERN TB#STIVJ StivanSaysFarewell
IF ~~ THEN REPLY @919 EXTERN TB#STIVJ StivanSaysFarewell
IF ~~ THEN REPLY @920 EXTERN TB#STIVJ StivanSaysFarewell

APPEND TB#STIVJ 

IF ~~ THEN StivanSaysFarewell
SAY @921
= @922
= @923
IF ~~ THEN DO ~SetGlobal("tb#StivanJoined","GLOBAL",0) LeaveParty() EscapeArea()~ EXIT
END
END

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
AreaType(OUTDOOR)
Dead("cefald01")
Global("tb#StivanCernd","GLOBAL",0)~ THEN CERNDJ stivancernd1
@924
= @925
DO ~SetGlobal("tb#StivanCernd","GLOBAL",1)~
== TB#STIVJ @926
== CERNDJ @927
== TB#STIVJ @928
== CERNDJ @929
== TB#STIVJ @930
== CERNDJ @931
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("CerndBeggar","GLOBAL",2)
Global("tb#StivanCernd","GLOBAL",1)~ THEN TB#STIVJ stivancernd2
@932
DO ~SetGlobal("tb#StivanCernd","GLOBAL",2)~
== CERNDJ @933
== TB#STIVJ @934
== CERNDJ @935
== TB#STIVJ @936
== CERNDJ @937
== TB#STIVJ @938
== CERNDJ @939
== TB#STIVJ @940
== CERNDJ @941
== TB#STIVJ @118
= @942
== CERNDJ @943
EXIT


CHAIN 
IF ~InParty("tb#stiv")
See("tb#stiv")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanCernd","GLOBAL",2)
GlobalGT("Chapter","GLOBAL",2)~ THEN CERNDJ stivancernd3
@944
DO ~SetGlobal("tb#StivanCernd","GLOBAL",3)~
== TB#STIVJ @945
== CERNDJ @946
== TB#STIVJ @947
== CERNDJ @948
== TB#STIVJ @949
== CERNDJ @950
== TB#STIVJ @951
== CERNDJ @952
= @953
EXIT

CHAIN 
IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanCernd","GLOBAL",3)
GlobalGT("AsylumPlot","GLOBAL",1)
AreaCheck("ar1600")~ THEN TB#STIVJ stivancerd4
@954
DO ~SetGlobal("tb#StivanCernd","GLOBAL",4)~
== CERNDJ @955
== TB#STIVJ @956
== CERNDJ @957
== TB#STIVJ @958
== CERNDJ @959
= @960
= @961
== TB#STIVJ @962
== CERNDJ @963
== TB#STIVJ @964
== CERNDJ @965
== TB#STIVJ @966
= @967
== CERNDJ @968
= @969
== TB#STIVJ @970
== CERNDJ @971
== TB#STIVJ @118
= @972
END
IF ~~ THEN REPLY @973 EXTERN TB#STIVJ StivanCernd1-1
IF ~~ THEN REPLY @974 EXTERN TB#STIVJ StivanCernd1-1
IF ~~ THEN REPLY @975 EXTERN TB#STIVJ StivanCernd1-1
IF ~~ THEN REPLY @976 EXTERN TB#STIVJ StivanCernd1-1

CHAIN IF ~~ THEN tb#stivj StivanCernd1-1
@977
= @978
== CERNDJ @979
== TB#STIVJ @980
= @981
== CERNDJ @982
== CERNDJ IF ~OR(2) Class(Player1,DRUID_ALL) Class(Player1,RANGER_ALL)~ THEN @983
== CERNDJ IF ~!Class(Player1,DRUID_ALL) !Class(Player1,RANGER_ALL)~ THEN @984
EXIT

CHAIN IF ~InParty("cernd")
See("Cernd")
!StateCheck("cernd",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanCernd","GLOBAL",4)
GlobalGT("SolaufeinJob","GLOBAL",7)
PartyHasItem("misc9w")
Dead("solaufein")
~ THEN TB#STIVJ killedSola
@985
== CERNDJ @986
EXTERN TB#STIVJ postSola

CHAIN IF ~InParty("cernd")
See("cernd")
!StateCheck("cernd",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanCernd","GLOBAL",4)
Global("SolaufeinJob","GLOBAL",9)
!Dead("solaufein")
~ THEN TB#STIVJ savedSola
@987
== CERNDJ @988
EXTERN TB#STIVJ postSola

CHAIN IF ~InParty("cernd")
See("cernd")
!StateCheck("cernd",CD_STATE_NOTVALID)
Global("tb#StivanCernd","GLOBAL",4)
AreaCheck("ar2401")~ THEN TB#STIVJ noSola
@989
== CERNDJ @990
EXTERN TB#STIVJ postSola

CHAIN IF ~~ THEN TB#STIVJ postSola
@991
== CERNDJ @992
= @993
DO ~SetGlobal("tb#StivanCernd","GLOBAL",5)~
== TB#STIVJ @994
== CERNDJ @995
== TB#STIVJ @996
== CERNDJ @997
== TB#STIVJ @998
== CERNDJ @999
= @1000
== TB#STIVJ @1001
== CERNDJ @1002
== TB#STIVJ @1003
== CERNDJ @1004
EXIT

CHAIN IF ~InParty("tb#stiv")
See("tb#stiv")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanCernd","GLOBAL",5)
Global("Chapter","GLOBAL",6)
AreaType(OUTDOOR)
!AreaCheck("AR2500")
!AreaCheck("AR2601")
~ THEN CERNDJ StivanCernd6
@993
= @1005
= @118
= @1006
DO ~SetGlobal("tb#StivanCernd","GLOBAL",6)~
== TB#STIVJ @1007
== CERNDJ @1008
== TB#STIVJ @1009 
= @1010
== CERNDJ @1011
== TB#STIVJ @1012
= @118
= @1013
== CERNDJ @1014
== TB#STIVJ @1015
== CERNDJ @1016
EXIT

CHAIN IF ~InParty("cernd")
See("cernd")
!StateCheck("cernd",CD_STATE_NOTVALID)
!StateCheck("Stivan",CD_STATE_NOTVALID)
Global("tb#StivanCernd","GLOBAL",7)
AreaType(OUTDOOR)
RealGlobalTimerExpired("tb#StivanCerndTimer","global")~ THEN TB#STIVJ StivanCernd7
@1017
DO ~SetGlobal("tb#StivanCernd","GLOBAL",8)~
== CERNDJ @1018
= @118
= @1019
== TB#STIVJ @118
= @1020
= @1021
== CERNDJ @1022
== TB#STIVJ @1023
== CERNDJ @1024
EXIT

CHAIN IF ~InParty("cernd")
See("cernd")
!StateCheck("cernd",CD_STATE_NOTVALID)
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
Global("tb#StivanCernd","GLOBAL",8)
PartyHasItem("miscb2")~ THEN TB#STIVJ StivanCernd8
@1025
== CERNDJ @1026
= @1027
== TB#STIVJ @1028
= @1029
== CERNDJ @1030
EXIT

CHAIN 
IF ~InParty("Stivan")
See("Stivan")
!StateCheck("Stivan",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanCernd","GLOBAL",9)
Global("tb#StivanSawHell","GLOBAL",1)
AreaCheck("AR2900")~ THEN CERNDJ stivanCernd9
@1031
DO ~SetGlobal("tb#StivanCernd","GLOBAL",8)~
== TB#STIVJ @1032
== CERNDJ @1033
= @1034
= @1035
== TB#STIVJ @1036
== CERNDJ @1037
== TB#STIVJ @1038
== CERNDJ @1039
== TB#STIVJ @1040
== CERNDJ @1041
== TB#STIVJ @1042
== CERNDJ @1043
== TB#STIVJ @1044
== CERNDJ @1045
== TB#STIVJ @1046
== CERNDJ @1047
== TB#STIVJ @1048
== CERNDJ @1049
== TB#STIVJ @1050
== CERNDJ @1051
== TB#STIVJ @1052
== CERNDJ @1053
== TB#STIVJ @1054
== CERNDJ @1055
== TB#STIVJ @118
= @1056
== CERNDJ @1057
== TB#STIVJ @1058
== CERNDJ @1059
== TB#STIVJ @389
DO ~ApplySpellRES("tb#scg","tb#stiv") ChangeAlignment("tb#stiv",CHAOTIC_GOOD) StartCutscene("tb#sfix2")~
EXIT

CHAIN
IF ~InParty("tb#stiv")
InParty(Player1)
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0)
OR(2)
	AreaCheck("AR0509")
	AreaCheck("AR0522")
Global("tb#StivanPCTalk","GLOBAL",1)~ THEN TB#STIVJ inAR0509
@1060
DO ~SetGlobal("tb#StivanPCTalk","GLOBAL",2)~
EXIT

CHAIN
IF WEIGHT #-1 ~InParty("tb#stiv")
InParty(Player1)
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanPCTalk","GLOBAL",2)~ THEN FFBART StivanSamuel1
@1061
DO ~SetGlobal("tb#StivanPCTalk","GLOBAL",3)~
== TB#STIVJ @1062
== FFBART @1063
END
IF ~Global("InteractMazzy","LOCALS",1)~ THEN EXTERN FFBART StivanSamuel1-1
IF ~!Global("InteractMazzy","LOCALS",1)~ THEN EXTERN FFBART StivanSamuel1-2

CHAIN 
IF ~~ THEN FFBART StivanSamuel1-1
@1064
BRANCH ~InParty("mazzy")~ BEGIN
== FFBART @1065
== TB#STIVJ @1066
== FFBART @1067
== TB#STIVJ @1068
== FFBART @1069
== TB#STIVJ @1070
== FFBART @1071
END
EXTERN TB#STIVJ StivanSamuel1-3

CHAIN 
IF ~~ THEN FFBART StivanSamuel1-2
@1072
DO ~GiveItemCreate("BOOT02",Player1,0,0,0)~
== TB#STIVJ @1073
= @1074
== FFBART @1075
EXTERN TB#STIVJ StivanSamuel1-3

APPEND TB#STIVJ
IF ~~ THEN StivanSamuel1-3
SAY @1076
= @1077
IF ~GlobalGT("AnomenDecide","GLOBAL",0)~ THEN REPLY @1078 EXTERN TB#STIVJ StivanSamuel1-5
IF ~Global("AnomenDecide","GLOBAL",0)~ THEN REPLY @1078 EXTERN TB#STIVJ StivanSamuel1-6
IF ~!Race(Player1,HALFLING) GlobalGT("AnomenDecide","GLOBAL",0)~ THEN REPLY @1079 EXTERN TB#STIVJ StivanSamuel1-5
IF ~!Race(Player1,HALFLING) Global("AnomenDecide","GLOBAL",0)~ THEN REPLY @1079 EXTERN TB#STIVJ StivanSamuel1-6
IF ~~ THEN REPLY @1080 EXTERN TB#STIVJ StivanSamuel1-4
IF ~GlobalGT("AnomenDecide","GLOBAL",0)~ THEN REPLY @1081 EXTERN TB#STIVJ StivanSamuel1-5
IF ~Global("AnomenDecide","GLOBAL",0)~ THEN REPLY @1081 EXTERN TB#STIVJ StivanSamuel1-6
END

IF ~~ THEN StivanSamuel1-4
SAY @1082
IF ~GlobalGT("AnomenDecide","GLOBAL",0)~ THEN EXTERN TB#STIVJ StivanSamuel1-5
IF ~Global("AnomenDecide","GLOBAL",0)~ THEN EXTERN TB#STIVJ StivanSamuel1-6
END

IF ~~ THEN StivanSamuel1-5
SAY @1083
IF ~~ THEN EXTERN TB#STIVJ StivanSamuel1-7
END

IF ~~ THEN StivanSamuel1-6
SAY @1084
= @275
= @276
IF ~~ THEN EXTERN TB#STIVJ StivanSamuel1-7
END

IF ~~ THEN StivanSamuel1-7
SAY @1085
IF ~~ THEN REPLY @1086 EXTERN FFBART StivanSamuel1-10
IF ~~ THEN REPLY @1087 EXTERN TB#STIVJ StivanSamuel1-8
IF ~~ THEN REPLY @1088 EXTERN TB#STIVJ StivanSamuel1-9
END

IF ~~ THEN StivanSamuel1-8
SAY @1089
IF ~~ THEN EXTERN FFBART StivanSamuel1-10
END

IF ~~ THEN StivanSamuel1-9
SAY @1090
IF ~~ THEN EXTERN FFBART StivanSamuel1-10
END
END

CHAIN 
IF ~~ THEN FFBART StivanSamuel1-10
@1091
== TB#STIVJ @1092
== FFBART @1093
== TB#STIVJ @1094
== FFBART @1095
== TB#STIVJ @1096
END
IF ~~ THEN REPLY @1097 EXTERN TB#STIVJ StivanSamuel1-11
IF ~~ THEN REPLY @1098 EXTERN TB#STIVJ StivanSamuel1-11
IF ~~ THEN REPLY @1099 EXTERN TB#STIVJ StivanSamuel1-12

CHAIN
IF ~~ THEN tb#stivj StivanSamuel1-11
@1100
== FFBART @1101
EXTERN TB#STIVJ StivanSamuel1-12

CHAIN
IF ~~ THEN TB#STIVJ StivanSamuel1-12
@389
== FFBART @1102
EXTERN FFWENCH StivanSamuel1-13

CHAIN
IF ~~ THEN FFWENCH StivanSamuel1-13
@1103
== FFBART @1104
== TB#STIVJ @1105
= @118
= @1106
EXIT

APPEND TB#STIVJ
IF ~InParty("tb#stiv")
InParty(Player1)
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanPCTalk","GLOBAL",0)~ THEN StivanPC1
SAY @1107
IF ~~ THEN DO ~SetGlobal("tb#StivanPCTalk","GLOBAL",1)~ REPLY @1108 GOTO StivanPC1-1
IF ~~ THEN DO ~SetGlobal("tb#StivanPCTalk","GLOBAL",1)~ REPLY @1109 GOTO StivanPC1-2
IF ~~ THEN DO ~SetGlobal("tb#StivanPCTalk","GLOBAL",1)~ REPLY @1110 GOTO StivanPC1-3
IF ~~ THEN DO ~SetGlobal("tb#StivanPCTalk","GLOBAL",1)~ REPLY @1111 GOTO StivanPC1-4
END

IF ~~ THEN  StivanPC1-1
SAY @1112
IF ~~ THEN GOTO StivanPC1-5
END

IF ~~ THEN StivanPC1-2
SAY @1113
IF ~~ THEN GOTO StivanPC1-5
END

IF ~~ THEN StivanPC1-3
SAY @1114
IF ~~ THEN GOTO StivanPC1-5
END

IF ~~ THEN StivanPC1-4
SAY @1115
= @1116
IF ~~ THEN EXIT
END

IF ~~ THEN StivanPC1-5
SAY @1117 
= @1118
IF ~~ THEN REPLY @1119 GOTO StivanPC1-6
IF ~~ THEN REPLY @1120 GOTO StivanPC1-7
IF ~~ THEN REPLY @1121 GOTO StivanPC1-8
IF ~~ THEN REPLY @1122 GOTO StivanPC1-4
END
 
IF ~~ THEN StivanPC1-6
SAY @1123
IF ~~ THEN GOTO StivanPC1-9
END

IF ~~ THEN StivanPC1-7
SAY @1124
IF ~~ THEN GOTO StivanPC1-9
END

IF ~~ THEN StivanPC1-8
SAY @1125
IF ~~ THEN GOTO StivanPC1-9
END

IF ~~ THEN StivanPC1-9
SAY @1126
= @1127
= @1128 
IF ~Gender(Player1,MALE)~ THEN REPLY @1129 GOTO StivanPC1-12
IF ~ Gender(Player1,FEMALE)~ THEN REPLY @1129 GOTO StivanPC1-13
IF ~Gender(Player1,MALE)~ THEN REPLY @1130 GOTO StivanPC1-12
IF ~ Gender(Player1,FEMALE)~ THEN REPLY @1130 GOTO StivanPC1-13
IF ~Gender(Player1,MALE)~ THEN REPLY @1131 GOTO StivanPC1-12
IF ~ Gender(Player1,FEMALE)~ THEN REPLY @1131 GOTO StivanPC1-13 
IF ~~ THEN REPLY @1132 GOTO StivanPC1-10
IF ~~ THEN REPLY @1133 GOTO StivanPC1-11
END

IF ~~ THEN StivanPC1-10
SAY @1134
= @1135
IF ~Gender(Player1,MALE)~ THEN REPLY @1129 GOTO StivanPC1-12
IF ~ Gender(Player1,FEMALE)~ THEN REPLY @1129 GOTO StivanPC1-13
IF ~Gender(Player1,MALE)~ THEN REPLY @1130 GOTO StivanPC1-12
IF ~ Gender(Player1,FEMALE)~ THEN REPLY @1130 GOTO StivanPC1-13
IF ~Gender(Player1,MALE)~ THEN REPLY @1131 GOTO StivanPC1-12
IF ~ Gender(Player1,FEMALE)~ THEN REPLY @1131 GOTO StivanPC1-13 
END

IF ~~ THEN StivanPC1-11
SAY @1136
= @1137
IF ~Gender(Player1,MALE)~ THEN REPLY @1129 GOTO StivanPC1-12
IF ~ Gender(Player1,FEMALE)~ THEN REPLY @1129 GOTO StivanPC1-13
IF ~Gender(Player1,MALE)~ THEN REPLY @1130 GOTO StivanPC1-12
IF ~ Gender(Player1,FEMALE)~ THEN REPLY @1130 GOTO StivanPC1-13
IF ~Gender(Player1,MALE)~ THEN REPLY @1131 GOTO StivanPC1-12
IF ~ Gender(Player1,FEMALE)~ THEN REPLY @1131 GOTO StivanPC1-13 
END

IF ~~ THEN StivanPC1-12
SAY @1138
IF ~~ THEN REPLY @1139 GOTO StivanPC1-16
IF ~~ THEN REPLY @1140 GOTO StivanPC1-16
END

IF ~~ THEN StivanPC1-13
SAY @1141
IF ~~ THEN REPLY @1142 GOTO StivanPC1-14
IF ~~ THEN REPLY @1143 GOTO StivanPC1-14
IF ~~ THEN REPLY @1144 GOTO StivanPC1-14
END

IF ~~ THEN StivanPC1-14
SAY @1145
IF ~~ THEN REPLY @1146 GOTO StivanPC1-16
IF ~~ THEN REPLY @1147 GOTO StivanPC1-16
END

IF ~~ THEN StivanPC1-16
SAY @1148
= @1149
IF ~~ THEN REPLY @1150 GOTO StivanPC1-17
IF ~~ THEN REPLY @1151 GOTO StivanPC1-18
IF ~~ THEN REPLY @1152 GOTO StivanPC1-18
END

IF ~~ THEN StivanPC1-17
SAY @1153
= @1154
IF ~~ THEN GOTO StivanPC1-18
END

IF ~~ THEN StivanPC1-18
SAY @1155 
= @1156
IF ~~ THEN REPLY @1157 GOTO StivanPC1-19
IF ~~ THEN REPLY @1158 GOTO StivanPC1-19
IF ~~ THEN REPLY @1159 GOTO StivanPC1-19
END

IF ~~ THEN StivanPC1-19
SAY @1160 
IF ~~ THEN EXIT
END

IF ~InParty("tb#stiv")
InParty(Player1)
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanPCCowled","GLOBAL",0)
Global("Chapter","GLOBAL",2)~ THEN PC2
SAY @1161
IF ~~ THEN DO ~SetGlobal("tb#StivanPCCowled","GLOBAL",1)~ REPLY @1162 GOTO PC2-1a
IF ~Global("SpawnBrus","GLOBAL",0)~ THEN DO ~SetGlobal("tb#StivanPCCowled","GLOBAL",1)~ REPLY @1163 GOTO PC2-1
IF ~!Global("SpawnBrus","GLOBAL",0)~ THEN DO ~SetGlobal("tb#StivanPCCowled","GLOBAL",1)~ REPLY @1164 GOTO PC2-1
IF ~~ THEN DO ~SetGlobal("tb#StivanPCCowled","GLOBAL",1)~ REPLY @1165 GOTO PC2-7
END

IF ~~ THEN PC2-1a
SAY @1166
IF ~~ THEN GOTO PC2-1
END

IF ~~ THEN PC2-1
SAY @1167
= @1168
IF ~~ THEN REPLY @1169 GOTO PC2-3
END

IF ~~ THEN PC2-3
SAY @1170
IF ~~ THEN REPLY @1171 GOTO PC2-4
IF ~~ THEN REPLY @1172 GOTO PC2-4
IF ~~ THEN REPLY @1173 GOTO PC2-4
END

IF ~~ THEN PC2-4
SAY @1174
= @1175
= @1176
= @1177
= @1178
IF ~~ THEN REPLY @1179 GOTO PC2-5
IF ~~ THEN REPLY @1180 GOTO PC2-5
IF ~~ THEN REPLY @1181 GOTO PC2-5
END

IF ~~ THEN PC2-5
SAY @1182
= @1183
= @1184
IF ~~ THEN REPLY @1185 GOTO PC2-6
IF ~~ THEN REPLY @1186 GOTO PC2-7
IF ~~ THEN REPLY @1187 GOTO PC2-6
END

IF ~~ THEN PC2-7
SAY @1188
IF ~~ THEN EXIT
END

IF ~~ THEN PC2-6
SAY @1189
IF ~~ THEN EXIT
END

IF ~AreaCheck("ar0903") Global("tb#stivanar0903","GLOBAL",0)~ THEN inAr0903
SAY @1190
= @1191
IF ~~ THEN DO ~SetGlobal("tb#stivanar0903","GLOBAL",1)~ REPLY @1192 GOTO inAr0903-1
END

IF ~~ THEN inAr0903-3
SAY @1193
IF ~~ THEN EXIT
END

IF ~AreaCheck("ar0903")	Dead("Heartg1")
	Dead("Heartg2")
	Dead("Heartg3")
	Dead("Heartg4")
	Dead("Heartg5")
	Global("tb#stivanClearedAR0903","GLOBAL",0)~ THEN ClearedAr0903
SAY @1194
IF ~~ THEN DO ~SetGlobal("tb#stivanClearedAR0903","GLOBAL",1)~ EXIT
END
END

CHAIN IF ~~ THEN tb#stivj inAr0903-1
@1195
BRANCH ~InParty("Keldorn") !StateCheck("keldorn",CD_STATE_NOTVALID)~ BEGIN
== KELDORJ @1196
== TB#STIVJ @1197
== KELDORJ @1198
== TB#STIVJ @736
END
== ANOMENJ IF ~InParty("anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenIsNotKnight","GLOBAL",1)~ THEN @1199
== ANOMENJ IF ~InParty("anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenIsNotKnight","GLOBAL",1)~ THEN @1200
END
IF ~!Alignment(Player1,MASK_GOOD)~ THEN REPLY @1201 EXTERN tb#stivj inAr0903-2
IF ~!Alignment(Player1,MASK_GOOD)~ THEN REPLY @1202 EXTERN tb#stivj inAr0903-3
IF ~!Alignment(Player1,MASK_EVIL)~ THEN REPLY @1203 EXTERN tb#stivj inAr0903-3

CHAIN IF ~~ THEN tb#stivj inAr0903-2
@1204 DO ~SetGlobal("TempleShout0903","GLOBAL",1)~
== KELDORJ IF ~InParty("Keldorn") !StateCheck("keldorn",CD_STATE_NOTVALID)~ THEN @1205 DO ~LeaveParty() Enemy()~
== ANOMENJ IF ~InParty("anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenIsNotKnight","GLOBAL",1)~ THEN @1206 DO ~LeaveParty() Enemy()~
EXIT

CHAIN IF ~Dead("udbalor") Global("tb#stivanUdbalor","GLOBAL",0)~ THEN TB#STIVJ aboutUdBalor
@1207
= @1208
DO ~SetGlobal("tb#stivanUdbalor","GLOBAL",1)~
BRANCH ~InParty("viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ BEGIN
== TB#STIVJ @1209
== VICONIJ @1210
== TB#STIVJ @1211
== VICONIJ @1212
END
END
IF ~~ THEN REPLY @1213 EXTERN TB#STIVJ aboutUdBalor-1
IF ~~ THEN REPLY @1214 EXTERN TB#STIVJ aboutUdBalor-2
IF ~~ THEN REPLY @1215 EXTERN TB#STIVJ aboutUdBalor-3

APPEND TB#STIVJ
IF ~~ THEN aboutUdBalor-1
SAY @1216
IF ~~ THEN REPLY @1217 GOTO aboutUdBalor-4
IF ~~ THEN REPLY @1218 GOTO aboutUdBalor-4
IF ~~ THEN REPLY @1219 GOTO aboutUdBalor-4
END

IF ~~ THEN aboutUdBalor-2
SAY @1220
IF ~~ THEN EXIT
END

IF ~~ THEN aboutUdBalor-3
SAY @1221
IF ~~ THEN EXIT
END

IF ~~ THEN aboutUdBalor-4
SAY @1222
= @1223
IF ~~ THEN EXIT
END
END

CHAIN 
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
AreaCheck("AR2600")
CombatCounter(0)
Global("tb#StivanJaheiraTethyr","GLOBAL",0)~ THEN TB#STIVJ JaheiraStivanAr2600
@1224
DO ~SetGlobal("tb#StivanJaheiraTethyr","GLOBAL",1)~
== JAHEIRAJ @1225
== TB#STIVJ @1226
== JAHEIRAJ @1227
== TB#STIVJ @1228
== JAHEIRAJ @1229
== TB#STIVJ @1230
== JAHEIRAJ @1231
== TB#STIVJ @1232
== JAHEIRAJ @1233
= @1234
== TB#STIVJ @1235
EXIT




///////////////////////////////////////////
// Misc encounters
///////////////////////////////////////////

CHAIN
IF WEIGHT #0 ~InParty("tb#stiv") InParty("Viconia") !StateCheck("tb#stiv",CD_STATE_NOTVALID) !StateCheck("viconia",CD_STATE_NOTVALID) Global("tb#sdr1","GLOBAL",0)~ THEN TB#SDR1 StivanDrow1
@1236
DO ~SetGlobal("tb#sdr1","GLOBAL",1)~
== TB#STIVJ @1237
== TB#SDR1 @1238
== VICONIJ @1239
== TB#SDR1 @1240
== TB#STIVJ @118
= @1241
== VICONIJ @1242
EXIT

CHAIN
IF WEIGHT #0 ~InParty("tb#stiv") InParty("jaheira") !StateCheck("tb#stiv",CD_STATE_NOTVALID) !StateCheck("jaheira",CD_STATE_NOTVALID) Global("tb#sdr2","GLOBAL",0)~ THEN TB#SDR2 StivanDrow2
@1243
DO ~SetGlobal("tb#sdr2","GLOBAL",1)~
== TB#STIVJ @1244
== TB#SDR2 @1245
== JAHEIRAJ @1246
== TB#SDR2 @1247
== TB#STIVJ @118
= @1248
== JAHEIRAJ @1249
EXIT

CHAIN
IF WEIGHT #0 ~InParty("tb#stiv") InParty("anomen") !StateCheck("tb#stiv",CD_STATE_NOTVALID) !StateCheck("anomen",CD_STATE_NOTVALID) Global("tb#sdr3","GLOBAL",0)~ THEN TB#SDR2 StivanDrow3
@1250
DO ~SetGlobal("tb#sdr3","GLOBAL",1)~
== ANOMENJ @1251
== TB#SDR3 @1252
== ANOMENJ @1253
== TB#SDR3 @1254
== TB#STIVJ @1255
EXIT

CHAIN IF WEIGHT #-1 ~IsValidForPartyDialog("tb#stiv")
See("tb#stiv")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
Global("tb#StivanHalflingSlums","GLOBAL",0)~ THEN SLHALF01 stivanHalflingSlums
@1256
== TB#STIVJ @1257
DO ~SetGlobal("tb#StivanHalflingSlums","GLOBAL",1)~
EXIT

CHAIN IF WEIGHT #-1 ~IsValidForPartyDialog("tb#stiv")
See("tb#stiv")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
Global("tb#StivanHalflingBridge","GLOBAL",0)~ THEN BMTOWN4 stivanHalflingBridge
@1258
== TB#STIVJ @1259
DO ~SetGlobal("tb#StivanHalflingBridge","GLOBAL",1)~
EXIT

CHAIN IF WEIGHT #-1 ~IsValidForPartyDialog("tb#stiv")
See("tb#stiv")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
Global("tb#StivanRose","GLOBAL",0)~ THEN MURDGIRL stivanRose
@1260
DO ~SetGlobal("tb#StivanRose","GLOBAL",1)~
== TB#STIVJ @1261
== MURDGIRL @1262
== TB#STIVJ @1263
== MURDGIRL @1264
EXIT

CHAIN IF WEIGHT #-1 ~IsValidForPartyDialog("tb#stiv")
IsValidForPartyDialog("Nalia")
See("tb#stiv")
See("Nalia")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
!StateCheck("Nalia",CD_STATE_NOTVALID)
Global("tb#StivanNaliaOphal","GLOBAL",0)~ THEN NOBLEM3 stivannaliaophal
@1265
DO ~SetGlobal("tb#StivanNaliaOphal","GLOBAL",1)~
== NALIAJ @1266
== NOBLEM3 @1267
== TB#STIVJ @1268
== NOBLEM3 @1269
== TB#STIVJ @1270
== NALIAJ @1271
== NOBLEM3 @1272
EXIT

BEGIN TB#STAND
CHAIN IF ~InParty("tb#Stiv") InParty("Nalia") !StateCheck("tb#Stiv",CD_STATE_NOTVALID) !StateCheck("nalia",CD_STATE_NOTVALID) Global("tb#StivanNaliaTandalon","GLOBAL",0)~ THEN TB#STAND StivanNaliaTandalon
@1273
== NALIAJ @1274
== TB#STAND @1275
== TB#STIVJ @1276
== TB#STAND @1277
== TB#STIVJ @1278
== TB#STAND @1279
DO ~DestroySelf() SetGlobal("tb#StivanNaliaTandalon","GLOBAL",1)~
== NALIAJ @118
= @1280
== TB#STIVJ @1281
EXIT