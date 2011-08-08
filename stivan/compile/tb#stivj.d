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
IF ~~ THEN DO %SetGlobal("tb#StivanJoined","GLOBAL",0) LeaveParty() EscapeArea()  EraseJournalEntry(@18) EraseJournalEntry(@19) EraseJournalEntry(@20) EraseJournalEntry(@21)%
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
== JANJ IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @67
== IMOEN2J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @68
== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @69
== KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @70
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenIsNotKnight","GLOBAL",0)~ THEN @71
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenIsNotKnight","GLOBAL",1)~ THEN @72
== TB#STIVJ @73
= @74 DO %GiveItemCreate("tb#srpl",Player1,0,0,0) SetGlobal("tb#stivanEntryTest","GLOBAL",6) AddXPObject(Player1,5000) AddXPObject(Player2,5000) AddXPObject(Player3,5000) AddXPObject(Player4,5000) AddXPObject(Player5,5000) AddXPObject(Player6,5000) AddXPObject("tb#Stiv",15000) TakePartyItem("tb#surn") DestroyItem("tb#surn") EraseJournalEntry(@18) EraseJournalEntry(@19) EraseJournalEntry(@20) EraseJournalEntry(@21)%
= @75
= @76
DO ~ StartCutSceneMode() StartCutScene("tb#surn1")~
EXIT

BEGIN TB#SSKF
BEGIN TB#SSKM

CHAIN IF ~Global("tb#stivanEntryTest","GLOBAL",6) AreaCheck("AR0041")~ THEN TB#STIVJ QuestFinish
@77
== TB#SSKF @78
== TB#SSKM @79
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
SAY @80
IF ~~ THEN REPLY @81 DO ~SetGlobal("tb#BeforeYoshiBetrayal","GLOBAL",1)~ GOTO BeforeYoshiBetrayal1-1
IF ~~ THEN REPLY @82 DO ~SetGlobal("tb#BeforeYoshiBetrayal","GLOBAL",1)~ GOTO BeforeYoshiBetrayal1-2
IF ~~ THEN REPLY @83 DO ~SetGlobal("tb#BeforeYoshiBetrayal","GLOBAL",1)~ GOTO BeforeYoshiBetrayal1-1
END

IF ~~ THEN BeforeYoshiBetrayal1-1
SAY @84
IF ~~ THEN REPLY @85 GOTO BeforeYoshiBetrayal1-3
IF ~~ THEN REPLY @86 GOTO BeforeYoshiBetrayal1-4
IF ~~ THEN REPLY @87 GOTO BeforeYoshiBetrayal1-4
END

IF ~~ THEN BeforeYoshiBetrayal1-2
SAY @88
IF ~~ THEN REPLY @85 GOTO BeforeYoshiBetrayal1-3
IF ~~ THEN REPLY @89 GOTO BeforeYoshiBetrayal1-4
IF ~~ THEN REPLY @90 GOTO BeforeYoshiBetrayal1-4
END

IF ~~ THEN BeforeYoshiBetrayal1-3
SAY @91
= @92 
IF ~~ THEN REPLY @93 GOTO BeforeYoshiBetrayal1-5
IF ~~ THEN REPLY @94 GOTO BeforeYoshiBetrayal1-6
IF ~~ THEN REPLY @95 GOTO BeforeYoshiBetrayal1-6
END

IF ~~ THEN BeforeYoshiBetrayal1-5
SAY @96
IF ~~ THEN EXTERN YOSHJ  BeforeYoshiBetrayal1-7
END

IF ~~ THEN BeforeYoshiBetrayal1-6
SAY @97
IF ~~ THEN EXTERN YOSHJ  BeforeYoshiBetrayal1-7
END 

IF ~~ THEN BeforeYoshiBetrayal1-4
SAY @98
= @99
IF ~~ THEN EXTERN YOSHJ  BeforeYoshiBetrayal1-7
END
END

APPEND YOSHJ 

IF ~~ THEN BEGIN BeforeYoshiBetrayal1-7
SAY @100
IF ~~ THEN REPLY @101 EXTERN YOSHJ  BeforeYoshiBetrayal1-8
IF ~~ THEN REPLY @102 EXTERN YOSHJ  BeforeYoshiBetrayal1-8
IF ~~ THEN REPLY @103 EXTERN YOSHJ  BeforeYoshiBetrayal1-9
END

IF ~~ THEN BEGIN BeforeYoshiBetrayal1-8
SAY @104
IF ~~ THEN EXIT
END
END

CHAIN
IF ~~ THEN YOSHJ BeforeYoshiBetrayal1-9
@105
== TB#STIVJ @106
== YOSHJ  @107
EXIT

ADD_TRANS_ACTION YOSHIMOX BEGIN 0 END BEGIN END ~SetGlobal("tb#AfterYoshiBetrayal","GLOBAL",1)~

APPEND tb#stivj
IF ~InParty("tb#stiv")
InParty(Player1)
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#AfterYoshiBetrayal","GLOBAL",1)~ THEN afterYoshiBetrayal1
SAY @108
IF ~~ THEN DO ~SetGlobal("tb#AfterYoshiBetrayal","GLOBAL",2)~ REPLY @109 GOTO AfterYoshiBetrayal1-1
IF ~~ THEN DO ~SetGlobal("tb#AfterYoshiBetrayal","GLOBAL",2)~ REPLY @110 GOTO AfterYoshiBetrayal1-1
IF ~~ THEN DO ~SetGlobal("tb#AfterYoshiBetrayal","GLOBAL",2)~ REPLY @111 GOTO AfterYoshiBetrayal1-1
IF ~~ THEN DO ~SetGlobal("tb#AfterYoshiBetrayal","GLOBAL",2)~ REPLY @112 GOTO AfterYoshiBetrayal1-1
END

IF ~~ THEN AfterYoshiBetrayal1-1
SAY @113
= @114  
IF ~~ THEN REPLY @115 GOTO AfterYoshiBetrayal1-2
IF ~~ THEN REPLY @116 GOTO AfterYoshiBetrayal1-3
IF ~~ THEN REPLY @117 GOTO AfterYoshiBetrayal1-4
IF ~~ THEN REPLY @118 GOTO AfterYoshiBetrayal1-5
END

IF ~~ THEN AfterYoshiBetrayal1-2
SAY @119
= @120
IF ~~ THEN GOTO AfterYoshiBetrayal1-5
END

IF ~~ THEN AfterYoshiBetrayal1-3
SAY @121
IF ~~ THEN GOTO AfterYoshiBetrayal1-5
END

IF ~~ THEN AfterYoshiBetrayal1-4
SAY @122
IF ~~ THEN GOTO AfterYoshiBetrayal1-5
END

IF ~~ THEN AfterYoshiBetrayal1-5
SAY @123
IF ~~ THEN REPLY @124 GOTO AfterYoshiBetrayal1-6
IF ~~ THEN REPLY @125 GOTO AfterYoshiBetrayal1-7
IF ~~ THEN REPLY @126 GOTO AfterYoshiBetrayal1-8
END

IF ~~ THEN AfterYoshiBetrayal1-6
SAY @127
IF ~~ THEN GOTO AfterYoshiBetrayal1-8
END

IF ~~ THEN AfterYoshiBetrayal1-7
SAY @128
IF ~~ THEN GOTO AfterYoshiBetrayal1-8
END

IF ~~ THEN AfterYoshiBetrayal1-8
SAY @129
IF ~~ THEN REPLY @130 GOTO AfterYoshiBetrayal1-9
IF ~~ THEN REPLY @131 GOTO AfterYoshiBetrayal1-9
IF ~~ THEN REPLY @132 GOTO AfterYoshiBetrayal1-9
IF ~~ THEN REPLY @133 GOTO AfterYoshiBetrayal1-9
END

IF ~~ THEN AfterYoshiBetrayal1-9
SAY @134
= @135
=  @136
IF ~~ THEN EXIT
END
END





///////////////////////////////////////////
// Yoshimo's Katana related dialog
///////////////////////////////////////////


ADD_TRANS_ACTION SLILMAT BEGIN 0 END BEGIN 3 END ~SetGlobal("tb#YoshiKatanaIsNotUsable","GLOBAL",1)~

EXTEND_BOTTOM SLILMAT 0
IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) PartyHasItem("NPSW02")  Global("tb#YoshiKatanaIsNotUsable","GLOBAL",1)~ THEN EXTERN tb#stivj YoshiKatana1
IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) PartyHasItem("NPSW02") PartyGoldGT(999) Global("tb#YoshiKatanaIsNotUsable","GLOBAL",2)~ THEN  REPLY @137 EXTERN TB#STIVJ YoshiKatana1-3
END

CHAIN IF ~~ THEN TB#STIVJ YoshiKatana1
@138
== SLILMAT @139
== TB#STIVJ @140
== SLILMAT @141
== TB#STIVJ @142
== SLILMAT @143
== TB#STIVJ @119
= @144
= @145
== SLILMAT @146
== TB#STIVJ @147
= @148
= @149
END
IF ~~ THEN REPLY @150 EXTERN TB#STIVJ YoshiKatana1-1
IF ~PartyGoldLT(1000)~ THEN REPLY @151 EXTERN TB#STIVJ YoshiKatana1-2
IF ~PartyGoldGT(999)~ THEN REPLY @152 EXTERN TB#STIVJ YoshiKatana1-3
IF ~PartyGoldGT(999)~ THEN REPLY @153 EXTERN TB#STIVJ YoshiKatana1-4

APPEND TB#STIVJ

IF ~~ THEN BEGIN YoshiKatana1-1
SAY @154 
IF ~~ THEN DO ~SetGlobal("tb#YoshiKatanaIsNotUsable","GLOBAL",2)~ EXTERN SLILMAT YoshiKatana1-1a
END

IF ~~ THEN YoshiKatana1-2
SAY @155
= @156
IF ~~ THEN DO ~SetGlobal("tb#YoshiKatanaIsNotUsable","GLOBAL",2)~ EXTERN SLILMAT YoshiKatana1-2a
END

IF ~~ THEN YoshiKatana1-3
SAY @157
IF ~~ THEN DO ~TakePartyGold(1000)~ EXTERN SLILMAT YoshiKatana1-3a
END

IF ~~ THEN YoshiKatana1-4
SAY @158 
= @159
IF ~~ THEN DO ~TakePartyGold(1000)~ EXTERN SLILMAT YoshiKatana1-3a
END
END

APPEND SLILMAT

IF ~~ THEN YoshiKatana1-1a
SAY @160
IF ~~ THEN EXIT
END

IF ~~ THEN YoshiKatana1-2a
SAY @161
IF ~~ THEN EXIT
END

IF ~~ THEN YoshiKatana1-3a
SAY @162
IF ~~ THEN DO ~SetGlobal("tb#YoshiKatanaIsUsable","GLOBAL",1) StartCutSceneMode() ActionOverride("SLILMAT",StartCutScene("tb#syk1"))~ EXIT
END
END

CHAIN
IF WEIGHT #-1 ~Global("tb#YoshiKatanaIsUsable","GLOBAL",1) PartyHasItem("NPSW02")~ THEN SLILMAT YoshiKatanaIsUsable1
@163
DO ~GiveItemCreate("tb#syk1","tb#stiv",1,0,0) TakePartyItem("NPSW02") DestroyItem("NPSW02")~ 
== TB#STIVJ @164
= @165
== TB#STIVJ IF ~Global("tb#stivanCrom","GLOBAL",1)~ THEN @166
== TB#STIVJ IF ~Global("tb#stivanCrom","GLOBAL",0)~ THEN @167
EXIT

EXTEND_BOTTOM WSMITH01 13
IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) PartyHasItem("npsw02") PartyHasItem("miscbu") Global("tb#stivanCrom","GLOBAL",0)~ THEN DO ~SetGlobal("tb#stivanCrom","GLOBAL",1)~ EXTERN tb#stivj YoshiKatana0
IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) PartyHasItem("tb#syk1") GlobalLT("tb#stivanCrom","GLOBAL",2)~ THEN DO ~SetGlobal("tb#stivanCrom","GLOBAL",2)~ EXTERN tb#stivj CromwellUpgradeKatana1
IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) PartyHasItem("tb#syk1") Global("tb#stivanCrom","GLOBAL",2)~ THEN EXTERN WSMITH01 CromwellUpgradeKatana2
END

CHAIN IF ~~ THEN TB#STIVJ YoshiKatana0
@168
== WSMITH01 @169
== TB#STIVJ @170
== WSMITH01 @171
== TB#STIVJ @172
== WSMITH01 @173
COPY_TRANS WSMITH01 13

CHAIN IF ~~ THEN TB#STIVJ CromwellUpgradeKatana1
@174
== WSMITH01 @175
== TB#STIVJ @176
== WSMITH01 @177
== TB#STIVJ @178
== WSMITH01 @179
= @180
= @181
== TB#STIVJ @182
== WSMITH01 @183
== TB#STIVJ @184
== WSMITH01 @185
END
IF ~~ THEN REPLY #59761 EXTERN WSMITH01 CromwellUpgradeKatana1-1
IF ~~ THEN REPLY #59762 EXTERN WSMITH01 CromwellUpgradeKatana1-3

APPEND WSMITH01
IF ~~ THEN CromwellUpgradeKatana1-1
SAY @186
IF ~PartyGoldGT(14999)~ THEN REPLY #59785 DO ~TakePartyGold(15000) DestroyGold(15000) TakePartyItem("tb#syk1") DestroyItem("tb#syk1") GiveItemCreate("tb#syk2","tb#stiv",1,0,0)~ GOTO CromwellUpgradeKatana1-2
IF ~~ THEN REPLY #59786 GOTO CromwellUpgradeKatana1-3
IF ~~ THEN REPLY #59791 GOTO 12
END

IF ~~ THEN CromwellUpgradeKatana1-2
SAY @187 
IF ~~ THEN DO ~StartCutSceneMode() StartCutScene("cromwell")~ EXIT
END

IF ~~ THEN CromwellUpgradeKatana1-3
SAY #59796
COPY_TRANS WSMITH01 13
END

IF ~~ THEN CromwellUpgradeKatana2
SAY @188
IF ~~ THEN REPLY #59761 EXTERN WSMITH01 CromwellUpgradeKatana1-1
IF ~~ THEN REPLY #59762 EXTERN WSMITH01 CromwellUpgradeKatana1-3
END
END




///////////////////////////////////////////
// More interjections than you can wave a stick at
///////////////////////////////////////////

INTERJECT_COPY_TRANS VICG1 0 tb#stivanVicG1-0
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN 
@189
END

INTERJECT_COPY_TRANS NALIAJ 265 tb#stivanNaliaj-265
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN 
@190
END

INTERJECT_COPY_TRANS VICONI 2 tb#stivanViconi-2
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN 
@191
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN 
@192
END

INTERJECT_COPY_TRANS BEDWIN 50 tb#StivanBedwin-50
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN 
@193
== BEDWIN @194
== TB#STIVJ @195
== BVICONI IF ~!Global("EdwinRomanceActive","GLOBAL",2)~ THEN
@196
== BVICONI IF ~Global("EdwinRomanceActive","GLOBAL",2)~ THEN
@197
END

INTERJECT_COPY_TRANS EDWIN 49 tb#StivanEdwin49
== VICONIJ IF ~InParty("Viconia") InParty("tb#stiv") !StateCheck("Viconia",CD_STATE_NOTVALID) !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@198
== TB#STIVJ @199
END

INTERJECT_COPY_TRANS MAEVAR 31 tb#stivanMaevar-31
== VICONIJ IF ~InParty("Viconia") InParty("tb#stiv") !StateCheck("Viconia",CD_STATE_NOTVALID) !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@200
== TB#STIVJ @201
== VICONIJ @202 
= @203
END

INTERJECT_COPY_TRANS LEHTIN 10 tb#StivanLehtin-10
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@204
== VICONIJ IF ~InParty("Viconia") InParty("tb#stiv") !StateCheck("Viconia",CD_STATE_NOTVALID) !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@205
END


INTERJECT_COPY_TRANS C6ELHAN2 55 tb#stivanC6elhan2-55
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@206
END

INTERJECT_COPY_TRANS VICONIJ 122 tb#stivanViconij-122
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@207
== VICONIJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@208
END

INTERJECT C6ELHAN2 62 tb#stivanC6elhan2-62
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) InParty("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN
@209
END
IF ~~ THEN REPLY @210 EXTERN TB#STIVJ ViconiaGeas1-1
IF ~~ THEN REPLY @211 EXTERN TB#STIVJ ViconiaGeas1-2
IF ~Global("ViconiaRomanceActive","GLOBAL",2)~ THEN REPLY @212 EXTERN TB#STIVJ ViconiaGeas1-3
IF ~~ THEN REPLY @213 EXTERN TB#STIVJ ViconiaGeas1-3
IF ~~ THEN REPLY @214 EXTERN TB#STIVJ ViconiaGeas1-2

APPEND TB#STIVJ
IF ~~ ViconiaGeas1-1
SAY @215
COPY_TRANS C6ELHAN2 62
END

IF ~~ ViconiaGeas1-2
SAY @216
IF ~!Global("tb#AfterYoshiBetrayal","GLOBAL",2)~ THEN EXTERN TB#STIVJ ViconiaGeas1-4
IF ~Global("tb#AfterYoshiBetrayal","GLOBAL",2)~ THEN EXTERN TB#STIVJ ViconiaGeas1-5
END

IF ~~ ViconiaGeas1-3
SAY @217
IF ~!Global("tb#AfterYoshiBetrayal","GLOBAL",2)~ THEN EXTERN TB#STIVJ ViconiaGeas1-4
IF ~Global("tb#AfterYoshiBetrayal","GLOBAL",2)~ THEN EXTERN TB#STIVJ ViconiaGeas1-5
END

IF ~~ ViconiaGeas1-4
SAY @218
COPY_TRANS C6ELHAN2 62
END
END

CHAIN 
IF ~~ THEN TB#STIVJ ViconiaGeas1-5
@219 
== VICONIJ @220
= @221
= @119
= @222
== TB#STIV @223
== VICONIJ@224
COPY_TRANS C6ELHAN2 62

INTERJECT MAZZY 25 tb#StivanMazzy-25
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@225
END
IF ~~ THEN REPLY @226 EXTERN TB#STIVJ StivanDislikesMazzy1-1
IF ~~ THEN REPLY @227 EXTERN TB#STIVJ StivanDislikesMazzy1-2
IF ~~ THEN REPLY @228 EXTERN TB#STIVJ StivanDislikesMazzy1-3

APPEND TB#STIVJ
IF ~~ THEN BEGIN StivanDislikesMazzy1-1
SAY @229
IF ~~ THEN EXTERN MAZZY StivanDislikesMazzy1-4
END

IF ~~ THEN BEGIN StivanDislikesMazzy1-2
SAY @230
IF ~~ THEN EXTERN MAZZY StivanDislikesMazzy1-4
END

IF ~~ THEN BEGIN StivanDislikesMazzy1-3
SAY @231
IF ~~ THEN EXTERN MAZZY StivanDislikesMazzy1-4
END
END

APPEND MAZZY
IF ~~ THEN BEGIN StivanDislikesMazzy1-4
SAY @232
COPY_TRANS SAFE MAZZY 25
END
END

INTERJECT_COPY_TRANS GORF1 0 tb#StivanGorf1-0
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN 
@233
== GORF1 @234
== TB#STIVJ @235
== GORF1 @236
== TB#STIVJ @237
= @238
END

INTERJECT_COPY_TRANS2 MAZZYJ 203 tb#StivanMazzyj-203
== MAZZYJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@239
== TB#STIVJ @240
== MAZZYJ @241
== TB#STIVJ @242
== MAZZYJ @243
== TB#STIVJ @244 DO ~ApplySpellRES("tb#ssca",Myself)~
== MAZZYJ @245
END

INTERJECT_COPY_TRANS2 SASSAR 31 tb#StivanSassar-31
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@246
= @247
BRANCH ~InParty("Mazzy") InParty("tb#stiv") !StateCheck("Mazzy",CD_STATE_NOTVALID) !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ BEGIN
== MAZZYJ @248
DO ~GiveGoldForce(100)~
== SASSAR @249
== MAZZYJ @250
== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN
@251
== TB#STIVJ @252
== MAZZYJ @253
== TB#STIVJ @254
== MAZZYJ @255
END
END

INTERJECT_COPY_TRANS SAFE BANOMEN 22 tb#StivanBANOMEN-22
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) !Global("AnomenIsNotKnight","GLOBAL",1)~ THEN 
@256
== BANOMEN @257
END

INTERJECT_COPY_TRANS ANOMENJ 224 tb#StivanANOMENJ-224
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) !Global("AnomenIsNotKnight","GLOBAL",1)~ THEN
@258
== ANOMENJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@259
END

INTERJECT_COPY_TRANS2 BANOMEN 60 tb#StivanBANOMEN-60
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@260
== MAZZYJ @261
END

INTERJECT_COPY_TRANS MAZZYJ 0 tb#StivanMazzy-0
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@262
== MAZZYJ @263
END

INTERJECT_COPY_TRANS COR 5 tb#StivanCor-5
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@264
== COR @265
== TB#STIVJ @266
== COR IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@267
END

INTERJECT_COPY_TRANS COR 8 tb#StivanCor-8
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@268
END

INTERJECT_COPY_TRANS ANOMENJ 48 tb#StivanAnomenj-48
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@269
END


INTERJECT ANOMENJ 52 tb#StivanAnomenj-52
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@270
END
IF ~Global("tb#StivanPCTalk","GLOBAL",3)~ THEN REPLY @271 EXTERN TB#STIVJ SaerkStrikesAgain1-1
IF ~!Global("tb#StivanPCTalk","GLOBAL",3)~ THEN REPLY @272 EXTERN TB#STIVJ SaerkStrikesAgain1-2

APPEND TB#STIVJ
IF ~~ THEN BEGIN SaerkStrikesAgain1-1
SAY @273
IF ~~ THEN EXTERN TB#STIVJ SaerkStrikesAgain1-3
END

IF ~~ THEN BEGIN SaerkStrikesAgain1-2
SAY @274
= @275
= @276
= @277
IF ~~ THEN EXTERN TB#STIVJ SaerkStrikesAgain1-3
END
END

CHAIN IF ~~ THEN TB#STIVJ SaerkStrikesAgain1-3
@278 
== MINSCJ IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @279
= @280
= @281
== EDWINJ IF ~InParty("Edwin") InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @282 
== JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @283
== CERNDJ IF ~InParty("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @284
== VALYGARJ IF ~InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @285
== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @286
== AERIEJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN
@287
== HAERDAJ IF ~InParty("Haerdalis") !StateCheck("Haerdalis",CD_STATE_NOTVALID)~ THEN @288
== NALIAJ IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN
@289
= @290
== VICONIJ IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @291
== YOSHJ IF ~InParty("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @292
== IMOEN2J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @293
== MAZZYJ IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @294
== JANJ IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @295 
== KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @296
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @297
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ @298
= @299
= @300
END
COPY_TRANS ANOMENJ 52

INTERJECT_COPY_TRANS ANOMENJ 62 tb#StivanAnomenj-62
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@301
= @302
END

INTERJECT_COPY_TRANS ANOMENJ 71 tb#StivanAnomenj-71
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@303
== ANOMENJ @304
END

INTERJECT_COPY_TRANS COR 51 tb#StivanCor-51
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@305
== ANOMENJ @306
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@307
== ANOMENJ @308
END

INTERJECT_COPY_TRANS KELDOR 2 tb#StivanKeldor-2
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@309
== KELDOR @310
== TB#STIVJ @311
== KELDOR @312
END

INTERJECT_COPY_TRANS2 KELDOR 3 tb#StivanKeldor-3
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@313
END

INTERJECT_COPY_TRANS SAFE KELDOR 4 tb#StivanKeldor-4
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@314
== KELDOR @315
END

INTERJECT_COPY_TRANS KELDORJ 11 tb#StivanKeldorj-11
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN 
@316
== KELDORJ @317
== TB#STIVJ @318
== KELDORJ @319
== TB#STIVJ @320
== KELDORJ @321
= @322
END

INTERJECT_COPY_TRANS BKELDOR 37 tb#StivanBkeldor-37
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@323
== BKELDOR @324
END

INTERJECT_COPY_TRANS BVICONI 111 tb#StivanBviconi-111
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@325
== BVICONI @326
END

INTERJECT_COPY_TRANS BVALYGA 6 tb#StivanBvalyga-8
== BVALYGA IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@327
= @328
== TB#STIVJ @329
== BVICONI @330
END

INTERJECT_COPY_TRANS EDWINJ 11 tb#StivanEdwinj-11
== EDWINJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@331
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@332
END

INTERJECT_COPY_TRANS2 EDWINJ 170 tb#StivanEdwinj-170
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv")~ THEN @333
== EDWINJ @334
END

INTERJECT_COPY_TRANS YOSHJ 145 tb#StivanYoshj-145
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@335
== YOSHJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@336
END

INTERJECT_COPY_TRANS YOSHJ 113 tb#StivanYoshj-113
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@337
END

INTERJECT_COPY_TRANS SAFE YOSHIMOX 2 tb#StivanYoshimox-2
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@338
== YOSHIMOX @339
== TB#STIVJ @340
== YOSHIMOX @341
END

INTERJECT_COPY_TRANS2 VALYGAR 44 tb#StivanValygar-44
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@342
== YOSHJ IF ~IsValidForPartyDialog("Yoshimo") IsValidForPartyDialog("tb#stiv") !StateCheck("Yoshimo",CD_STATE_NOTVALID) !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@343
END

INTERJECT_COPY_TRANS VALYGARJ 61 tb#StivanValygarj-61
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@344
== VALYGARJ @345
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@346
== VALYGARJ @347
END

INTERJECT_COPY_TRANS VALYGARJ 59 tb#StivanValygarj-49
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@348
== VALYGARJ @349
END

INTERJECT_COPY_TRANS NALIAJ 226 tb#StivanNaliaj-226
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@350
== NALIAJ @351
== TB#STIVJ @352
== NALIAJ @353
== TB#STIVJ @354
== NALIAJ @355
== TB#STIVJ @356
= @357
END

INTERJECT_COPY_TRANS JAHEIRAJ 392 tb#StivanJaheiraj-392
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@358
== JAHEIRAJ @359
== TB#STIVJ @360
END

APPEND TB#STIVJ 
IF ~AreaCheck("AR0502")
Global("tb#StivanEnteredTanner2","AR0502",0)~ THEN BEGIN Stivanar0502
SAY @361
IF ~~ THEN DO ~SetGlobal("tb#StivanEnteredTanner2","AR0502",1)~ EXIT
END
END

INTERJECT_COPY_TRANS BODHI 1 tb#StivanBodhi-1
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@362
END

INTERJECT_COPY_TRANS BODHI 6 tb#StivanBodhi-6
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@363
END

INTERJECT_COPY_TRANS RYLOCK 24 tb#StivanRylock-24
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@364
== HAERDAJ IF ~IsValidForPartyDialog("haerdalis") IsValidForPartyDialog("tb#stiv") !StateCheck("haerdalis",CD_STATE_NOTVALID) !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@365
== TB#STIVJ IF ~IsValidForPartyDialog("haerdalis") IsValidForPartyDialog("tb#stiv") !StateCheck("haerdalis",CD_STATE_NOTVALID) !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @119
END

CHAIN IF WEIGHT #-1 ~IsValidForPartyDialog("tb#stiv")
See("tb#stiv")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
Global("tb#StivanNobleMan","GLOBAL",0)~ THEN NOBLEM1 stivanNobleman
@366
== TB#STIVJ @367
DO ~SetGlobal("tb#StivanNobleMan","GLOBAL",1)~
EXIT

CHAIN IF WEIGHT #-1 ~IsValidForPartyDialog("tb#stiv")
See("tb#stiv")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
Global("tb#SStivanFemaleChild","GLOBAL",0)~ THEN urchin2 StivanUrchin
@368
DO ~SetGlobal("tb#SStivanFemaleChild","GLOBAL",1)~
== TB#STIVJ @369
EXIT

CHAIN IF WEIGHT #-1 ~IsValidForPartyDialog("tb#stiv")
See("tb#stiv")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
Global("tb#SStivanNobleWoman","GLOBAL",0) ~THEN NOBLEW1 stivanNoblewoman
@370
DO ~SetGlobal("tb#SStivanNobleWoman","GLOBAL",1)~
== TB#STIVJ @371
EXIT

INTERJECT_COPY_TRANS MESSEN 15 tb#StivanMessen-15
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@372
END

INTERJECT_COPY_TRANS2 MESSEN 10 tb#StivanMessen-10
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@373
END

INTERJECT_COPY_TRANS2 BHCRYPT 0 tb#StivanBhcrypt-0
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@374
== BHCRYPT @375
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@376
END

INTERJECT_COPY_TRANS UDSIMYAZ 26 tb#StivanUdsimyaz-26
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@377
END

INTERJECT PLAYER1 33 tb#StivanTreeOfLife
== PLAYER1 IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@378
END
IF ~!Global("EntryTest","GLOBAL",7)~ THEN REPLY @379 EXTERN TB#STIVJ TreeOfLifeStivan1-1
IF ~Global("EntryTest","GLOBAL",7) !Global("tb#AfterYoshiBetrayal","GLOBAL",1)~ THEN REPLY @379 EXTERN TB#STIVJ TreeOfLifeStivan1-2
IF ~Global("EntryTest","GLOBAL",7) Global("tb#AfterYoshiBetrayal","GLOBAL",1)~ THEN REPLY @379 EXTERN TB#STIVJ TreeOfLifeStivan1-3
IF ~!Global("EntryTest","GLOBAL",7)~ THEN REPLY @380 EXTERN TB#STIVJ TreeOfLifeStivan1-1
IF ~Global("EntryTest","GLOBAL",7)~ THEN REPLY @380 EXTERN TB#STIVJ TreeOfLifeStivan1-2
IF ~!Global("EntryTest","GLOBAL",7)~ THEN REPLY @381 EXTERN TB#STIVJ TreeOfLifeStivan1-1
IF ~Global("EntryTest","GLOBAL",7)~ THEN REPLY @381 EXTERN TB#STIVJ TreeOfLifeStivan1-4

APPEND TB#STIVJ 
IF ~~ THEN BEGIN TreeOfLifeStivan1-1 
SAY @382
= @383
IF ~~ THEN DO ~SetGlobal("tb#StivanJoined","GLOBAL",0) LeaveParty() EscapeArea()~ GOTO TreeOfLifeStivan1-1a
END

IF ~~ THEN BEGIN TreeOfLifeStivan1-1a
SAY @384 
COPY_TRANS player1 33
END

IF ~~ THEN BEGIN TreeOfLifeStivan1-2
SAY @385 
COPY_TRANS player1 33
END
 
IF ~~ THEN BEGIN TreeOfLifeStivan1-3
SAY @386
= @387 
COPY_TRANS player1 33
END

IF ~~ THEN BEGIN TreeOfLifeStivan1-4
SAY @388 
IF ~~ THEN REPLY @389 EXTERN TB#STIVJ TreeOfLifeStivan1-5
IF ~~ THEN REPLY @390 EXTERN TB#STIVJ TreeOfLifeStivan1-5
IF ~~ THEN REPLY @391 EXTERN TB#STIVJ TreeOfLifeStivan1-6
END

IF ~~ THEN BEGIN TreeOfLifeStivan1-5
SAY @392
COPY_TRANS player1 33
END

IF ~~ THEN BEGIN TreeOfLifeStivan1-6
SAY @393
COPY_TRANS player1 33
END
END

INTERJECT_COPY_TRANS PLAYER1 25 StivanHell
== tb#stivj IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@394
= @395
END

INTERJECT_COPY_TRANS3 HELLJON 7 tb#StivanHelljon-7
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Alignment("tb#stiv",CHAOTIC_NEUTRAL)~ THEN
@396
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Alignment("tb#stiv",CHAOTIC_NEUTRAL)~ THEN
@397
END

INTERJECT_COPY_TRANS3 HELLJON 8 tb#StivanHelljon-8
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Alignment("tb#stiv",CHAOTIC_NEUTRAL)~ THEN
@396
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Alignment("tb#stiv",CHAOTIC_NEUTRAL)~ THEN
@397
END

INTERJECT_COPY_TRANS3 HELLJON 9 tb#StivanHelljon-9
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Alignment("tb#stiv",CHAOTIC_NEUTRAL)~ THEN
@396
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Alignment("tb#stiv",CHAOTIC_NEUTRAL)~ THEN
@397
END

INTERJECT_COPY_TRANS3 HELLJON 10 tb#StivanHelljon-10
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Alignment("tb#stiv",CHAOTIC_NEUTRAL)~ THEN
@396
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Alignment("tb#stiv",CHAOTIC_NEUTRAL)~ THEN
@397
END

INTERJECT_COPY_TRANS RAELIS 41 tb#StivanRaelis-41
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @398
== RAELIS @399
== TB#STIVJ @400
END

INTERJECT_COPY_TRANS HAERDA 109 tb#StivanHaerda-109
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) !Global("RaelisJob","GLOBAL",1)~ THEN @401
END

INTERJECT_COPY_TRANS HAERDA 109 tb#StivanHaerda-109a
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Global("RaelisJob","GLOBAL",1)~ THEN @402
END

INTERJECT_COPY_TRANS HAERDA 103 tb#StivanHaerda-103
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @403
== HAERDA @404
== TB#STIVJ @405
== HAERDA @406 
== TB#STIVJ @407
== HAERDA @408
= @409
END

INTERJECT_COPY_TRANS AERIE 26 tb#StivanAerie-26
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @410
END

INTERJECT_COPY_TRANS SAFE AERIE 52 tb#StivanAerie-52
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @411
= @412
== AERIE @413
== TB#STIVJ @414
== AERIE @415
END	

INTERJECT_COPY_TRANS AERIE 17 tb#StivanAerie-17
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @416
END

INTERJECT_COPY_TRANS SAFE KORGANA 9 tb#StivanKorgana-9
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @417
== KORGANA @418
END

INTERJECT_COPY_TRANS JAN 19 tb#StivanJan-19
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @419
== JAN @420
END

INTERJECT_COPY_TRANS SAFE NALIA 66 tb#StivanNalia-66
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @421
= @422
== NALIA @119
== TB#STIVJ @423
== NALIA @424
END

INTERJECT_COPY_TRANS NALIA 14 tb#StivanNalia-14
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @425
BRANCH ~IsValidForPartyDialog("Jaheira") IsValidForPartyDialog("tb#stiv") !StateCheck("Jaheira",CD_STATE_NOTVALID) !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ BEGIN
== JAHEIRAJ @426
== TB#STIVJ @427	
== JAHEIRAJ @352
END
END

INTERJECT_COPY_TRANS ISAEA 1 tb#StivanIsaea-1
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @428
== ISAEA @429
== TB#STIVJ @430
== ISAEA @431
END

INTERJECT_COPY_TRANS ISAEA 21 tb#StivanIsaea-21
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @432
== ISAEA @433
== NALIAJ @434
== ISAEA @435
END

INTERJECT_COPY_TRANS NALIAJ 220 tb#StivanNaliaj-220
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @436
END

INTERJECT_COPY_TRANS ISAEA 26 tb#StivanIsaea-26
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @437
== ISAEA @438
END

INTERJECT_COPY_TRANS ISAEA 29 tb#StivanIsaea-29
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @439
END

INTERJECT EDWIN 16 tb#StivanEdwin-16
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @440
END
IF ~~ THEN REPLY @441 EXTERN tb#stivj tb#StivanEdwin-12a
IF ~~ THEN DO ~SetGlobal("#tbStivanMarcus","GLOBAL",1)~ REPLY @442 EXTERN tb#stivj tb#StivanEdwin-12b

APPEND TB#STIVJ
IF ~~ THEN tb#StivanEdwin-12a
SAY @443
COPY_TRANS EDWIN 16
END

IF ~~ THEN tb#StivanEdwin-12b
SAY @444
COPY_TRANS EDWIN 16
END
END

INTERJECT MARCUS 0 tb#StivanMarcus-0
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Global("#tbStivanMarcus","GLOBAL",1)~ THEN @445
== MARCUS @446
== TB#STIVJ @447 DO ~GiveItemCreate("AMUL09",Player1,1,0,0)~
END
IF ~~ THEN REPLY @448 EXTERN TB#STIVJ StivanMarcus1-1
IF ~~ THEN REPLY @449 EXTERN TB#STIVJ StivanMarcus1-1
IF ~~ THEN REPLY @450 EXTERN TB#STIVJ StivanMarcus1-1

CHAIN IF ~~ THEN tb#stivj StivanMarcus1-1
@451
= @452
= @453
== MARCUS @454
== TB#STIVJ @455
== MARCUS @456
== TB#STIVJ @457 DO ~GiveItemCreate("misc4w",Player1,1,0,0)~
== MARCUS @458 DO ~EscapeArea()~
== TB#STIVJ @459
EXIT

INTERJECT_COPY_TRANS SAERK 1 tb#StivanSaerk-1
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @460
== SAERK @461
== TB#STIVJ @462
== SAERK @463
END

INTERJECT_COPY_TRANS SAERK 4 tb#StivanSaerk-4
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @464
== SAERK @465
== TB#STIVJ @466
== SAERK @467
END

INTERJECT trgyp02 2 tb#StivanTrgyp02-2
== TRGYP02 IF ~!InPartySlot(LastTalkedToBy,0) Name("tb#Stiv",LastTalkedToBy)~ THEN  @468 
== tb#stivj @469
EXIT


INTERJECT_COPY_TRANS CELOGAN 40 tb#stivanCelogan-40
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @470
== CELOGAN @471
== TB#STIVJ @472
== CELOGAN @473
== TB#STIVJ @474
END

INTERJECT_COPY_TRANS MARIA 5 tb#StivanMaria-5
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN 
@475
END

INTERJECT_COPY_TRANS KHELLOR 6 tb#StivanKhellor-6
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @476
== KHELLOR @477
== TB#STIVJ @478
== KHELLOR @479
END

INTERJECT_COPY_TRANS KHELLOR 6 tb#StivanKhellor-8
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @480
END

INTERJECT_COPY_TRANS BODHIAMB 15 tb#StivanBodhiamb-15
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @481
END

INTERJECT_COPY_TRANS BODHIAMB 13 tb#StivanBodhiamb-13
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @482
END

INTERJECT_COPY_TRANS BODHIAMB 19 tb#StivanBodhiamb-19
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @483
END

INTERJECT_COPY_TRANS BODHIAMB 17 tb#StivanBodhiamb-17
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) GlobalLT("tb#StivanAerie","GLOBAL",100)~ THEN @484
END

INTERJECT_COPY_TRANS BODHIAMB 17 tb#StivanBodhiamb-17
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) GlobalGT("tb#StivanAerie","GLOBAL",99)~ THEN @485
END

INTERJECT_COPY_TRANS UDSILVER 0 tb#StivanUdsilver-0
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @486
== UDSILVER IF ~!Dead("UDtrap06") Dead("UDbalor") !Dead("UDsvir03")~ THEN @487
== UDSILVER IF ~OR(3) Dead("UDtrap06") !Dead("UDbalor") Dead("UDsvir03")~ THEN @488
END

EXTEND_BOTTOM UDSILVER 37
IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN EXTERN tb#stivj stivanisdrow
END

EXTEND_BOTTOM UDSILVER 39
IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN EXTERN tb#stivj stivanisdrow
END

APPEND TB#STIVJ
IF ~~ THEN stivanisdrow
SAY @489
IF ~Race(Player1,HALFORC)~ THEN REPLY @490 EXTERN TB#STIVJ StivanDrow1-1
IF ~Race(Player1,HALFLING)~ THEN REPLY @491 EXTERN TB#STIVJ StivanDrow1-2
IF ~Race(Player1,GNOME)~ THEN REPLY @492 EXTERN TB#STIVJ StivanDrow1-3
IF ~OR (2) Race(Player1,ELF) Race(Player1,HALF_ELF)~ THEN REPLY @493 EXTERN TB#STIVJ StivanDrow1-4
IF ~Class(Player1,MAGE_ALL)~ THEN REPLY @494 EXTERN TB#STIVJ StivanDrow1-5
IF ~Gender(Player1,MALE)~ THEN REPLY @495 EXTERN TB#STIVJ StivanDrow1-6
IF ~Gender(Player1,FEMALE)~ THEN REPLY @496 EXTERN TB#STIVJ StivanDrow1-7
IF ~~ THEN REPLY @497 EXTERN TB#STIVJ StivanDrow1-8
IF ~~ THEN REPLY @498 EXTERN TB#STIVJ StivanDrow1-9
END

IF ~~ THEN StivanDrow1-1
SAY @499
IF ~~ THEN EXTERN TB#STIVJ StivanDrow1-9
END

IF ~~ THEN StivanDrow1-2
SAY @500
IF ~~ THEN EXTERN TB#STIVJ StivanDrow1-9
END

IF ~~ THEN StivanDrow1-3
SAY @501
IF ~~ THEN EXTERN TB#STIVJ StivanDrow1-9
END

IF ~~ THEN StivanDrow1-4
SAY @502
IF ~~ THEN EXTERN TB#STIVJ StivanDrow1-9
END

IF ~~ THEN StivanDrow1-5
SAY @503
IF ~~ THEN EXTERN TB#STIVJ StivanDrow1-9
END

IF ~~ THEN StivanDrow1-6
SAY @504
IF ~~ THEN EXTERN TB#STIVJ StivanDrow1-9
END 

IF ~~ THEN StivanDrow1-7
SAY @505
IF ~~ THEN EXTERN TB#STIVJ StivanDrow1-9
END

IF ~~ THEN StivanDrow1-8
SAY @506
IF ~~ THEN EXTERN TB#STIVJ StivanDrow1-9
END

IF ~~ THEN StivanDrow1-9
SAY @507
COPY_TRANS UDSILVER 37
END
END

INTERJECT_COPY_TRANS UDSILVER 46 tb#StivanUdsilver-46
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @508
== UDSILVER @509
== TB#STIVJ @510
== UDSILVER @511
== TB#STIVJ @512
== UDSILVER @513
== TB#STIVJ @514
== UDSILVER @515
END

INTERJECT_COPY_TRANS SLHALF01 4 tb#StivanSlhalf01-4
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") IsValidForPartyDialog("Haerdalis")!StateCheck("tb#stiv",CD_STATE_NOTVALID) !StateCheck("Haerdalis",CD_STATE_NOTVALID)~ THEN 
@516
== HAERDAJ @517
== TB#STIVJ @518
== HAERDAJ @519
END

INTERJECT_COPY_TRANS RUMAR 7 tb#StivanRumar-7
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") IsValidForPartyDialog("Yoshimo")!StateCheck("tb#stiv",CD_STATE_NOTVALID) !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN 
@520
== YOSHJ @521
END

INTERJECT_COPY_TRANS NOBLEW2 1 tb#StivanNoblew2-1
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") IsValidForPartyDialog("Nalia")!StateCheck("tb#stiv",CD_STATE_NOTVALID) !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN 
@522
== NALIAJ @523
END

INTERJECT_COPY_TRANS2 GAELAN 66 tb#StivanGaelan-66
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@524
END

INTERJECT_COPY_TRANS2 FIRKRA01 9 tb#StivanFirkra01-9
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@525
END

INTERJECT_COPY_TRANS DASLAVE1 7 tb#StivanDaslave1-7
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@526
BRANCH ~IsValidForPartyDialog("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ BEGIN
== TB#STIVJ @527
== NALIAJ @528
== TB#STIVJ @529
END
END

INTERJECT_COPY_TRANS DASLAVE1 8 tb#StivanDaslave1-8
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@526
BRANCH ~IsValidForPartyDialog("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ BEGIN
== TB#STIVJ @527
== NALIAJ @530
== TB#STIVJ @531
== NALIAJ @532
== TB#STIVJ @533
= @534
END
END

INTERJECT_COPY_TRANS UHMAY01 18 tb#StivanUhmay01-18
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@535
= @536
END

INTERJECT_COPY_TRANS PROST1 4 tb#StivanProst1-4
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@537
END

INTERJECT_COPY_TRANS PROST1 1 tb#StivanProst1-1
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@538
END

INTERJECT_COPY_TRANS SLUMM3 2 tb#StivanSlumm3-2
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@539
END

INTERJECT_COPY_TRANS DHARLOT1 1 tb#StivanDharlot1-1
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
@540
END

INTERJECT_COPY_TRANS UDSOLA01 50 tb#StivanUDSOLA01-50
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ @541
== VICONIJ IF ~IsValidForPartyDialog("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ @542
END

INTERJECT_COPY_TRANS UDSOLA01 114 tb#StivanUDSOLA01-114
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ @543
== UDSOLA01 @544
END

INTERJECT ANOMENJ 134 tb#StivanAnomenj-134
== ANOMENJ IF ~Global("tb#StivanAnomenj-52","GLOBAL",1)~ THEN @545
END
IF ~~ THEN REPLY @546 EXTERN ANOMENJ 174
IF ~~ THEN REPLY @547 EXTERN ANOMENJ 135
IF ~!Global("AnomenRomanceActive","GLOBAL",2)~ THEN REPLY @548 EXTERN ANOMENJ AnomenDecidesHimself

EXTEND_BOTTOM ANOMENJ 134
IF ~!Global("AnomenRomanceActive","GLOBAL",2)~ THEN REPLY @548 EXTERN ANOMENJ AnomenDecidesHimself
END

APPEND ANOMENJ
IF ~~ THEN BEGIN AnomenDecidesHimself
SAY @549
= @550
COPY_TRANS ANOMENJ 135
END
END

INTERJECT_COPY_TRANS KALAH2 13 tb#StivanKalah2-13
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN 
@551
END

INTERJECT_COPY_TRANS2 VVAMN1 4 tb#StivanVvamn1-4
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN 
@552
BRANCH ~IsValidForPartyDialog("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ BEGIN
== YOSHJ @553
== TB#STIVJ @554
== YOSHJ @555
END
END

INTERJECT_COPY_TRANS HENDAK 19 tb#StivanHendak-19
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN 
@556
END

INTERJECT_COPY_TRANS CIVFRUS1 1 tb#StivanCivfrus1-1
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @557
END

INTERJECT_COPY_TRANS SAFE EDWIN 30 tb#StivanEdwin-30
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @558
== EDWIN @559
== TB#STIVJ @560
== EDWIN @561
END

INTERJECT_COPY_TRANS SAFE EDWIN 31 tb#StivanEdwin-31
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @558
== EDWIN @559
== TB#STIVJ @560
== EDWIN @561
END

INTERJECT_COPY_TRANS2 ARENTHIS 16 tb#StivanArenthis-16
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @562
= @119
= @563
END

INTERJECT_COPY_TRANS SURLY 14 tb#StivanSurly-14
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Global("tb#stivanSurly","GLOBAL",0)~ THEN @564
DO  ~SetGlobal("tb#stivanSurly","GLOBAL",1)~
== SURLY @565
== TB#STIVJ @566
== SURLY @567
END

INTERJECT SURLY 14 tb#StivanSurly-14-2
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Global("tb#stivanSurly","GLOBAL",1)~ THEN @568
DO  ~SetGlobal("tb#stivanSurly","GLOBAL",2)~
== SURLY @569
== TB#STIVJ @570
== SURLY @571
== TB#STIVJ @572
== SURLY @573
== TB#STIVJ @332
DO ~RunAwayFrom("surly",120)~
EXIT

CHAIN IF WEIGHT #-1 ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Global("tb#stivanSurly","GLOBAL",2)~ THEN SURLY surlyStivanFinale
@574
== TB#STIVJ @575
== SURLY @576
END
IF ~!Class(Player1,DRUID_ALL) !Class(Player1,RANGER_ALL) !Range([PC.0.0.RANGER_ALL],30) !Range([PC.0.0.DRUID_ALL],30)~ THEN REPLY @577 EXTERN tb#stivj killSeagulls
IF ~!Class(Player1,DRUID_ALL) !Class(Player1,RANGER_ALL) OR(2) Range([PC.0.0.RANGER_ALL],30) Range([PC.0.0.DRUID_ALL],30)~ THEN REPLY @578 EXTERN surly surlyNotPaid
IF ~~ THEN REPLY @579 EXTERN surly surlyNoShow

APPEND TB#STIVJ
IF ~~ THEN killSeagulls
SAY @392
IF ~~ THEN DO ~SetGlobal("tb#stivanSurly","GLOBAL",3) StartCutSceneMode() StartCutScene("tb#ssurl")~ EXIT
END
END

APPEND SURLY
IF ~~ THEN surlyNoShow
SAY @580
IF ~PartyGoldGT(99)~ THEN DO ~TakePartyGold(100) DestroyGold(100)~ REPLY @581 GOTO surlyPaid
IF ~~ THEN REPLY @582 GOTO surlyNotPaid
END

IF WEIGHT #-1 ~Global("tb#stivanSurly","GLOBAL",5)~ THEN surlyStivanFinale
SAY @583
IF ~!Class(Player1,DRUID_ALL) !Class(Player1,RANGER_ALL) !Range([PC.0.0.RANGER_ALL],30) !Range([PC.0.0.DRUID_ALL],30)~ THEN REPLY @584 EXTERN tb#stivj killSeagulls
IF ~PartyGoldGT(99)~ THEN DO ~TakePartyGold(100) DestroyGold(100)~ REPLY @585 GOTO surlyPaid
IF ~~ THEN REPLY @582 GOTO surlyNotPaid
END

IF ~~ THEN surlyPaid
SAY @586
IF ~~ THEN DO ~SetGlobal("tb#stivanSurly","GLOBAL",4)~ EXIT
END

IF ~~ THEN surlyNotPaid
SAY @587
IF ~~ THEN DO ~SetGlobal("tb#stivanSurly","GLOBAL",5)~ EXIT
END

IF WEIGHT #-1 ~Global("tb#StivanSurly","GLOBAL",3)~ THEN surlyAfterSeagull
SAY @588
IF ~~ THEN DO ~SetGlobal("tb#stivanSurly","GLOBAL",4)~ GOTO surlyEnd
END

IF ~~ THEN surlyEnd
SAY @589
COPY_TRANS SURLY 14
END
END

INTERJECT_COPY_TRANS THIEF3 0 tb#StivanThief3-0
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @590
END

INTERJECT_COPY_TRANS THIEF5 7 tb#StivanThief5-7
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @591
END

// If you consider these men a threat, then do what you think is necessary.   Gloves of Healing would be a suitable reward for the task, I think.  Do you accept?
INTERJECT_COPY_TRANS KAYL2 13 tb#StivanKayl2-13
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @592
== KAYL2 @593
END

// That is a shame, truly, for we have no one else to turn to at this time.  If you change your mind, please come back and speak with me. 
INTERJECT_COPY_TRANS KAYL2 7 tb#stivanKayl2-7
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @594
END

// Very well then, you shall have it.  Return it soon or you will not be given your reward.  It is very important that the cup remains in the hands of the Order.
INTERJECT_COPY_TRANS SAFE KAYL2 21 tb#StivanKayl2-21
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @595
== KAYL2 @596
== TB#STIVJ @597
== KAYL2 @598
END

// Then you are due your just reward.  The Most Noble Order of the Radiant Heart gives you our fullest thanks.
INTERJECT_COPY_TRANS SAFE KAYL2 18 tb#StivanKayl2-18
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @599
== KAYL2 @600
END

INTERJECT_COPY_TRANS WELLYN 3 tb#StivanWellyn-3
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @601
== JAHEIRAJ IF ~IsValidForPartyDialog("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @602
END

INTERJECT_COPY_TRANS JAHEIRAJ 292 tb#StivanJaheiraj-292
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @603
== JAHEIRAJ @604
== TB#STIVJ @605
END

INTERJECT_COPY_TRANS WELLYN 8 tb#StivanWellyn-8
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @606
== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @607
BRANCH ~IsValidForPartyDialog("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ BEGIN
== KORGANJ @608
== TB#STIVJ @609
== KORGANJ @610
END
END

INTERJECT_COPY_TRANS2 LLYNIS 10 tb#StivanLlynis-10
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @611
END

INTERJECT_COPY_TRANS2 LLYNIS 8 tb#StivanLlynis-8
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @611
END

INTERJECT LLYNIS 11 tb#StivanLlynis-11
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @612
== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @613
END
IF ~~ THEN DO ~ActionOverride("llynis",Enemy())~ EXIT

INTERJECT LLYNIS 12 tb#StivanLlynis-12
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @612
== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @613
END
IF ~~ THEN DO ~ActionOverride("llynis",Enemy())~ EXIT

INTERJECT_COPY_TRANS RENAL 30 tb#StivanRenal-30
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @614
BRANCH ~IsValidForPartyDialog("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ BEGIN
== YOSHJ @615
== TB#STIVJ @616
END
END

INTERJECT_COPY_TRANS YOSHJ 73 tb#StivanYoshj-73
== YOSHJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @617
END

INTERJECT_COPY_TRANS MAEVAR 29 tb#StivanMaevar-29
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") IsValidForPartyDialog("Yoshimo") !StateCheck("tb#stiv",CD_STATE_NOTVALID) !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @618
== YOSHJ @619
END

INTERJECT_COPY_TRANS NOBLEM1 7 tb#StivanNoblem1-7
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") IsValidForPartyDialog("Edwin") !StateCheck("tb#stiv",CD_STATE_NOTVALID) !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @620
== EDWINJ @621
END

INTERJECT_COPY_TRANS NOBLEW1 0 tb#StivanNoblew1-0
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @622
END

INTERJECT_COPY_TRANS2 pirpir10 4 tb#StivanPirPir10-4
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") IsValidForPartyDialog("Cernd") !StateCheck("tb#stiv",CD_STATE_NOTVALID) !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @623
== CERNDJ @624
== TB#STIVJ @625
END

INTERJECT_COPY_TRANS BKELDOR 4 tb#StivanBkeldor-4
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @626
== BKELDOR @627
END

INTERJECT_COPY_TRANS BANOMEN 45 tb#StivanBanomen-45
== BKELDOR IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN @628
== TB#STIVJ @629
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
@630
DO ~SetGlobal("tb#StivanViconia","GLOBAL",2)~
== VICONIJ @631
== TB#STIVJ @632
== VICONIJ @633
== TB#STIVJ @634
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
@635
DO ~SetGlobal("tb#StivanAnomenAboutFaith","GLOBAL",1)~
== ANOMENJ @636
== TB#STIVJ @637
== ANOMENJ @638
== TB#STIVJ @639
== ANOMENj @640
== TB#STIVJ @641
== ANOMENJ @642
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
Global("FollowedGarren","GLOBAL",1)
CombatCounter(0)
Global("tb#StivanKeldornAboutGarren","GLOBAL",0)~ THEN KELDORJ stivanKeldornGarren
@643
DO ~SetGlobal("tb#StivanKeldornAboutGarren","GLOBAL",1)~
== TB#STIVJ @644
== KELDORJ @645
== TB#STIVJ @646
== KELDORJ @647
END
IF ~~ THEN REPLY @648 EXTERN TB#STIVJ StivanKeldorn1-1
IF ~~ THEN REPLY @649 EXTERN TB#STIVJ StivanKeldorn1-1
IF ~~ THEN REPLY @650 EXTERN TB#STIVJ StivanKeldorn1-2
IF ~~ THEN REPLY @651 EXTERN TB#STIVJ StivanKeldorn1-2

APPEND TB#STIVJ
IF ~~ StivanKeldorn1-1
SAY @652
IF ~~ THEN EXIT
END

IF ~~ StivanKeldorn1-2
SAY @653
IF ~~ EXTERN KELDORJ StivanKeldorn1-3
END
END

APPEND KELDORJ
IF ~~ THEN StivanKeldorn1-3
SAY @654
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
@655
DO ~SetGlobal("tb#StivanHaerdalisBesamen","GLOBAL",1)~
== HAERDAJ @656
== TB#STIVJ @657
== HAERDAJ @658
= @659
= @660
= @661
== TB#STIVJ @662
== HAERDAJ @663
== HAERDAJ IF ~IsValidForPartyDialog("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) Global("HaerDalisRomanceActive","GLOBAL",2)~ THEN @664
== AERIEJ IF ~IsValidForPartyDialog("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) Global("HaerDalisRomanceActive","GLOBAL",2)~ THEN @665
== TB#STIVJ @666
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CheckStatGT("Aerie",5,FATIGUE)
CombatCounter(0)
Global("tb#StivanAerie","GLOBAL",0)~ THEN AERIEJ stivan-aerie-1
@667
DO ~SetGlobal("tb#StivanAerie","GLOBAL",1)~
== TB#STIVJ @668
== AERIEJ @669
== TB#STIVJ @670
== AERIEJ @671
== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @672
== TB#STIVJ @673
== AERIEJ @674
== TB#STIVJ @675
== AERIEJ @676
== TB#STIVJ @677
== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @678
== TB#STIVJ IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @679
= @119
= @680
== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @681
== TB#STIVJ IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @682
EXIT

CHAIN 
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanJaheiraTrademeet","GLOBAL",0)
AreaCheck("AR2000")~ THEN TB#STIVJ stivanjaheiratrademeet
@683
DO ~SetGlobal("tb#StivanJaheiraTrademeet","GLOBAL",1)~
== JAHEIRAJ @684
== TB#STIVJ @685
== JAHEIRAJ  @686
EXIT

CHAIN 
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
Global("JaheiraCursed","GLOBAL",3)
CombatCounter(0)
Global("tb#StivanJaheiraCursed","GLOBAL",0)~ THEN TB#STIVJ stivanjaheiracurse
@687
DO ~SetGlobal("tb#StivanJaheiraCursed","GLOBAL",1)~
== JAHEIRAJ @688
== TB#STIVJ @689
== JAHEIRAJ @690
== TB#STIVJ @691
== JAHEIRAJ @692
== TB#STIVJ @693
== JAHEIRAJ @694
== TB#STIVJ @695
== JAHEIRAJ @696
EXIT

CHAIN 
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
Global("JaheiraCursed","GLOBAL",10)
CombatCounter(0)
Global("tb#StivanJaheiraCursed","GLOBAL",1)~ THEN TB#STIVJ stivanjaheirapostcurse
@697
DO ~SetGlobal("tb#StivanJaheiraCursed","GLOBAL",2)~
== JAHEIRAJ @698
== TB#STIVJ @699
== JAHEIRAJ @700
== TB#STIVJ @701
== JAHEIRAJ @702
== TB#STIVJ @703
== JAHEIRAJ @119
= @704
= @705
= @706
= @707
= @708
= @119
= @709
== TB#STIVJ @710
== JAHEIRAJ @711
EXIT

CHAIN
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanJaheiraKhalid","GLOBAL",2)~ THEN TB#STIVJ stivanjaheira2
@712
DO ~SetGlobal("tb#StivanJaheiraKhalid","GLOBAL",3)~
== JAHEIRAJ @713
== TB#STIVJ @714
== JAHEIRAJ @715
== TB#STIVJ @716
== JAHEIRAJ @717
== TB#STIVJ @718
== JAHEIRAJ @719
== TB#STIVJ @720
== JAHEIRAJ @721
== TB#STIVJ @722
== JAHEIRAJ @723
== TB#STIVJ @724
== JAHEIRAJ @725
== TB#STIVJ @726
== JAHEIRAJ @727
= @728
== TB#STIVJ @119
= @729
== JAHEIRAJ @730
EXIT

CHAIN 
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanValygarSphere","GLOBAL",0)
Dead("obshal04")~ THEN TB#STIVJ stivanvalygarsphere
@731
DO ~SetGlobal("tb#StivanValygarSphere","GLOBAL",1)~
== VALYGARJ @732
== TB#STIVJ @733
== VALYGARJ @734
== TB#STIVJ @735
== VALYGARJ @736
EXIT

CHAIN
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
Global("u!SunaDies","GLOBAL",1)
CombatCounter(0)
Global("tb#StivanValygarAboutSuna","GLOBAL",0)~ THEN TB#STIVJ stivanvalygarsuna
@737
DO ~SetGlobal("tb#StivanValygarAboutSuna","GLOBAL",1)~
== VALYGARJ @738
== TB#STIVJ @739
== VALYGARJ @740
== TB#STIVJ @741
== VALYGARJ @742
== TB#STIVJ @743
== VALYGARJ @744
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
@745
DO ~SetGlobal("tb#StivanMazzyObshal01","GLOBAL",1)~
== MAZZYJ @746
== TB#STIVJ @747
== MAZZYJ @748
== TB#STIVJ @749
== MAZZYJ @750
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
GlobalGT("A#IM5Quest","GLOBAL",3)
Global("tb#StivanMazzyAboutKram","GLOBAL",0)~ THEN MAZZYJ kram
@751
DO ~SetGlobal("tb#StivanMazzyAboutMazzy","GLOBAL",1)~
== TB#STIVJ  @752
== MAZZYJ @753
== TB#STIVJ @754
== MAZZYJ @755
== TB#STIVJ @756
== MAZZYJ @757
== TB#STIVJ @758
== MAZZYJ @759
EXIT


CHAIN 
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
AreaCheck("AR0202")
CombatCounter(0)
Global("tb#StivanKeldornStink","GLOBAL",0)~ THEN TB#STIVJ stivankeldornstink
@760
DO ~SetGlobal("tb#StivanKeldornStink","GLOBAL",1)~
== KELDORJ @761 
== TB#STIVJ @762
== KELDORJ @119
EXIT

ADD_TRANS_ACTION BAERIE BEGIN 140 END BEGIN END ~SetGlobal("tb#StivanAerieToldWIngs","GLOBAL",1)~


CHAIN 
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanMazzyDragon","GLOBAL",0)
AreaCheck("ar1402")~ THEN TB#STIVJ stivandragon
@763
DO ~SetGlobal("tb#StivanMazzyDragon","GLOBAL",1)~
== MAZZYJ @764
== TB#STIVJ @765
== MAZZYJ @766
== TB#STIVJ @767
END
IF ~~ THEN REPLY @768 EXTERN MAZZYJ StivanMazzyDragon1-1
IF ~!Race(Player1,HALFLING)~ THEN REPLY @769 EXTERN MAZZYJ StivanMazzyDragon1-2
IF ~Race(Player1,HALFLING)~ THEN REPLY @770 EXTERN MAZZYJ StivanMazzyDragon1-3
IF ~Class(Player1,BARD_ALL)~ THEN REPLY @771 EXTERN MAZZYJ StivanMazzyDragon1-4
IF ~~ THEN REPLY @772 EXTERN MAZZYJ StivanMazzyDragon1-1

CHAIN IF ~~ THEN MAZZYJ StivanMazzyDragon1-1
@773
== TB#STIVJ @774
EXTERN MAZZYJ StivanMazzyDragon1-4

APPEND MAZZYJ
IF ~~ THEN BEGIN StivanMazzyDragon1-2
SAY @775
IF ~~ THEN EXTERN MAZZYJ StivanMazzyDragon1-4
END
END

CHAIN IF ~~ THEN MAZZYJ StivanMazzyDragon1-3
@776
== TB#STIVJ @774
EXTERN MAZZYJ StivanMazzyDragon1-4

CHAIN IF ~~ THEN MAZZYJ StivanMazzyDragon1-4
@777
== TB#STIVJ @778
== MAZZYJ @779
== TB#STIVJ @780
= @781
= @782
= @783
= @784
== MAZZYJ @785
== TB#STIVJ @786
== MAZZYJ @787
== TB#STIVJ @788
END
IF ~~ THEN REPLY @789 EXTERN TB#STIVJ StivanMazzyDragon1-6
IF ~~ THEN REPLY @790 EXTERN MAZZYJ StivanMazzyDragon1-7
IF ~~ THEN REPLY @791 EXTERN TB#STIVJ StivanMazzyDragon1-8

APPEND TB#STIVJ
IF ~~ THEN BEGIN StivanMazzyDragon1-6
SAY @792
IF ~~ THEN DO ~ApplySpellRES("tb#ssca",Myself)~ EXIT
END
END

APPEND MAZZYJ
IF ~~ THEN BEGIN StivanMazzyDragon1-7
SAY @793
IF ~~ THEN REPLY @794 EXIT
IF ~~ THEN REPLY @795 EXIT
IF ~~ THEN REPLY @796 EXTERN TB#STIVJ StivanMazzyDragon1-6
IF ~~ THEN REPLY @797 EXIT
END
END

APPEND TB#STIVJ
IF ~~ THEN BEGIN StivanMazzyDragon1-8
SAY @798
IF ~~ THEN EXIT
END
END

BEGIN TB#SLIL
CHAIN 
IF ~Global("tb#StivanLarry","GLOBAL",2)~ THEN TB#SLIL StivanLarry
@799
== MINSCJ @800
== TB#SLIL @801
== MINSCJ @802
== TB#STIVJ @803
== MINSCJ @804
== TB#SLIL @805
== TB#STIVJ @806
== MINSCJ @807
== TB#STIVJ @808
== MINSCJ @809
== TB#STIVJ @810
== TB#SLIL @811 DO ~DestroySelf()~
EXIT

CHAIN 
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanMazzyDrow","GLOBAL",0)
GlobalGT("PhaereJob","GLOBAL",5)~ THEN TB#STIVJ mazzydrow
@812
DO ~SetGlobal("tb#StivanMazzyDrow","GLOBAL",1)~
== MAZZYJ @813
== TB#STIVJ @814
= @815
= @816
= @817
= @818
= @819
= @820
= @821
== MAZZYJ @822
== TB#STIVJ @823
== MAZZYJ @824
== TB#STIVJ @825
== MAZZYJ @826
== TB#STIVJ @827
== MAZZYJ @828
= @829
== TB#STIVJ @830
= @831
= @832
== MAZZYJ @833
= @834 
= @835
== TB#STIVJ @119
= @836
== MAZZYJ @837
== TB#STIVJ @838
EXIT

BEGIN TB#SELF

CHAIN 
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanMazzyDrow","GLOBAL",1)
AreaCheck("ar2500")~ THEN TB#STIVJ mazzypostdrow
@839
DO ~SetGlobal("tb#StivanMazzyDrow","GLOBAL",2)~
== MAZZYJ @840
= @841
= @842
== tb#self @843
== MAZZYJ @844
== tb#self @845
== MAZZYJ @846 
= @847
== TB#STIVJ @119
= @848
== MAZZYJ @849
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
HPPercentLT("tb#Stiv",50)
CombatCounter(0)
Global("tb#StivanAnomen","GLOBAL",6)~ THEN ANOMENJ stivananomen7
@850 
DO ~SetGlobal("tb#StivanAnomen","GLOBAL",7)~
= @851
== TB#STIVJ @852
= @853 
== ANOMENJ @854
DO ~ActionOverride("Anomen",ForceSpell("tb#Stiv",CLERIC_CURE_MEDIUM_WOUNDS))~
== TB#STIVJ @855
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanAnomen","GLOBAL",8)
AreaCheck("ar2804")~ THEN ANOMENJ stivananomen9
@856 
DO ~SetGlobal("tb#StivanAnomen","GLOBAL",9)~
== TB#STIVJ @857
BRANCH ~Global("AnomenRomanceActive","GLOBAL",2)~ BEGIN
== ANOMENJ @858
== TB#STIVJ @859
== ANOMENJ @860
= @861
END
BRANCH ~!Global("AnomenRomanceActive","GLOBAL",2)~ BEGIN
== ANOMENJ @862
== TB#STIVJ @863
== ANOMENJ @864
END
== TB#STIVJ @865
== ANOMENJ @866
== TB#STIVJ @867
END
IF ~~ THEN REPLY @868 EXTERN tb#stivj StivanAnomenLastTalk1-1
IF ~!Global("AnomenRomanceActive","GLOBAL",2)~ THEN REPLY @869 EXTERN tb#stivj StivanAnomenLastTalk1-1
IF ~~ THEN REPLY @870 EXTERN tb#stivj StivanAnomenLastTalk1-1
IF ~Global("AnomenRomanceActive","GLOBAL",2)~ THEN REPLY @871 EXTERN tb#stivj StivanAnomenLastTalk1-1
IF ~Global("AnomenRomanceActive","GLOBAL",2)~ THEN REPLY @872 EXTERN tb#stivj StivanAnomenLastTalk1-2

APPEND tb#stivJ
IF ~~ THEN BEGIN StivanAnomenLastTalk1-1
SAY @873
= @874
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN StivanAnomenLastTalk1-2
SAY @875
IF ~~ THEN REPLY @876 GOTO StivanAnomenLastTalk1-3
IF ~~ THEN REPLY @877 GOTO StivanAnomenLastTalk1-3
IF ~~ THEN REPLY @878 GOTO StivanAnomenLastTalk1-3
END

IF ~~ THEN BEGIN StivanAnomenLastTalk1-3
SAY @879 
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
@880
DO ~SetGlobal("tb#StivanKorganUD","GLOBAL",1)~ 
== KORGANJ @881
== TB#STIVJ @882
== KORGANJ @883
= @884
== TB#STIVJ @885
== KORGANJ @886
BRANCH ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ BEGIN
== MAZZYJ @887
== KORGANJ  @888
== MAZZYJ @889 
END
EXIT

CHAIN 
IF ~InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
HPPercentLT("tb#Stiv",30)
CombatCounter(0)
Global("tb#StivanHaerdalis","GLOBAL",3)~ THEN TB#STIVJ stivanhaer4
@890
DO ~SetGlobal("tb#StivanHaerdalis","GLOBAL",4)~
== HAERDAJ @891
EXIT

CHAIN 
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
HPPercentLT("tb#Stiv",40)
Global("tb#StivanMinsc","GLOBAL",2)~ THEN TB#STIVJ stivanminsc3
@892
DO ~SetGlobal("tb#StivanMinsc","GLOBAL",3)~
== MINSCJ @893
== TB#STIVJ @894
== MINSCJ @895
= @896
== TB#STIVJ @897
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanMinscDrow","GLOBAL",0)
Global("PhaereJob","GLOBAL",8)~ THEN MINSCJ stivanminscdrow
@898
DO ~SetGlobal("tb#StivanMinscDrow","GLOBAL",1)~
== TB#STIVJ @899
== MINSCJ @900
== TB#STIVJ @901
== MINSCJ @902
= @903
= @904
== TB#STIVJ @905
EXIT

CHAIN 
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
CombatCounter(0)
Global("AnomenDecide","GLOBAL",4)
Global("tb#AnomenStivanSaerk","GLOBAL",0)
AreaCheck("AR1002")~ THEN TB#STIVJ stivanpretrial
@906
DO ~SetGlobal("tb#AnomenStivanSaerk","GLOBAL",1)~
== ANOMENJ @907
== TB#STIVJ @908
= @909
== ANOMENJ @910
EXIT

CHAIN 
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
CombatCounter(0)
Global("KillSaerk","GLOBAL",1)
Global("tb#AnomenStivanSaerk","GLOBAL",1)
AreaCheck("AR1000")~ THEN TB#STIVJ stivanposttrial1
@911
DO ~SetGlobal("tb#AnomenStivanSaerk","GLOBAL",2)~
== ANOMENJ @912
== TB#STIVJ @913
== ANOMENJ @914
== TB#STIVJ @915
== ANOMENJ @916
EXIT

CHAIN 
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
CombatCounter(0)
Global("KillSaerk","GLOBAL",2)
Global("tb#AnomenStivanSaerk","GLOBAL",1)
AreaCheck("AR1000")~ THEN TB#STIVJ stivanposttrial2
@911
DO ~SetGlobal("tb#AnomenStivanSaerk","GLOBAL",2)~
== ANOMENJ @912
== TB#STIVJ @913
== ANOMENJ @917
== TB#STIVJ @918
== ANOMENJ @919
== TB#STIVJ @920
== ANOMENJ @921
== TB#STIVJ @922
== ANOMENJ @923
== TB#STIVJ @924
END
IF ~~ THEN REPLY @925 EXTERN TB#STIVJ StivanSaysFarewell
IF ~~ THEN REPLY @926 EXTERN TB#STIVJ StivanSaysFarewell
IF ~~ THEN REPLY @927 EXTERN TB#STIVJ StivanSaysFarewell

APPEND TB#STIVJ 

IF ~~ THEN StivanSaysFarewell
SAY @928
= @929
= @930
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
@931
= @932
DO ~SetGlobal("tb#StivanCernd","GLOBAL",1)~
== TB#STIVJ @933
== CERNDJ @934
== TB#STIVJ @935
== CERNDJ @936
== TB#STIVJ @937
== CERNDJ @938
EXIT

CHAIN 
IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)
CombatCounter(0)
Global("CerndBeggar","GLOBAL",2)
Global("tb#StivanCernd","GLOBAL",1)~ THEN TB#STIVJ stivancernd2
@939
DO ~SetGlobal("tb#StivanCernd","GLOBAL",2)~
== CERNDJ @940
== TB#STIVJ @941
== CERNDJ @942
== TB#STIVJ @943
== CERNDJ @944
== TB#STIVJ @945
== CERNDJ @946
== TB#STIVJ @947
== CERNDJ @948
== TB#STIVJ @119
= @949
== CERNDJ @950
EXIT


CHAIN 
IF ~InParty("tb#stiv")
See("tb#stiv")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanCernd","GLOBAL",2)
GlobalGT("Chapter","GLOBAL",2)~ THEN CERNDJ stivancernd3
@951
DO ~SetGlobal("tb#StivanCernd","GLOBAL",3)~
== TB#STIVJ @952
== CERNDJ @953
== TB#STIVJ @954
== CERNDJ @955
== TB#STIVJ @956
== CERNDJ @957
== TB#STIVJ @958
== CERNDJ @959
= @960
EXIT

CHAIN 
IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanCernd","GLOBAL",3)
GlobalGT("AsylumPlot","GLOBAL",1)
AreaCheck("ar1600")~ THEN TB#STIVJ stivancerd4
@961
DO ~SetGlobal("tb#StivanCernd","GLOBAL",4)~
== CERNDJ @962
== TB#STIVJ @963
== CERNDJ @964
== TB#STIVJ @965
== CERNDJ @966
= @967
= @968
== TB#STIVJ @969
== CERNDJ @970
== TB#STIVJ @971
== CERNDJ @972
== TB#STIVJ @973
= @974
== CERNDJ @975
= @976
== TB#STIVJ @977
== CERNDJ @978
== TB#STIVJ @119
= @979
END
IF ~~ THEN REPLY @980 EXTERN TB#STIVJ StivanCernd1-1
IF ~~ THEN REPLY @981 EXTERN TB#STIVJ StivanCernd1-1
IF ~~ THEN REPLY @982 EXTERN TB#STIVJ StivanCernd1-1
IF ~~ THEN REPLY @983 EXTERN TB#STIVJ StivanCernd1-1

CHAIN IF ~~ THEN tb#stivj StivanCernd1-1
@984
= @985
== CERNDJ @986
== TB#STIVJ @987
= @988
== CERNDJ @989
== CERNDJ IF ~OR(2) Class(Player1,DRUID_ALL) Class(Player1,RANGER_ALL)~ THEN @990
== CERNDJ IF ~!Class(Player1,DRUID_ALL) !Class(Player1,RANGER_ALL)~ THEN @991
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
@992
== CERNDJ @993
EXTERN TB#STIVJ postSola

CHAIN IF ~InParty("cernd")
See("cernd")
!StateCheck("cernd",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanCernd","GLOBAL",4)
Global("SolaufeinJob","GLOBAL",9)
!Dead("solaufein")
~ THEN TB#STIVJ savedSola
@994
== CERNDJ @995
EXTERN TB#STIVJ postSola

CHAIN IF ~InParty("cernd")
See("cernd")
!StateCheck("cernd",CD_STATE_NOTVALID)
Global("tb#StivanCernd","GLOBAL",4)
AreaCheck("ar2401")~ THEN TB#STIVJ noSola
@996
== CERNDJ @997
EXTERN TB#STIVJ postSola

CHAIN IF ~~ THEN TB#STIVJ postSola
@998
== CERNDJ @999
= @1000
DO ~SetGlobal("tb#StivanCernd","GLOBAL",5)~
== TB#STIVJ @1001
== CERNDJ @1002
== TB#STIVJ @1003
== CERNDJ @1004
== TB#STIVJ @1005
== CERNDJ @1006
= @1007
== TB#STIVJ @1008
== CERNDJ @1009
== TB#STIVJ @1010
== CERNDJ @1011
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
@1000
= @1012
= @119
= @1013
DO ~SetGlobal("tb#StivanCernd","GLOBAL",6)~
== TB#STIVJ @1014
== CERNDJ @1015
== TB#STIVJ @1016 
= @1017
== CERNDJ @1018
== TB#STIVJ @1019
= @119
= @1020
== CERNDJ @1021
== TB#STIVJ @1022
== CERNDJ @1023
EXIT

CHAIN IF ~InParty("cernd")
See("cernd")
!StateCheck("cernd",CD_STATE_NOTVALID)
!StateCheck("Stivan",CD_STATE_NOTVALID)
Global("tb#StivanCernd","GLOBAL",7)
AreaType(OUTDOOR)
RealGlobalTimerExpired("tb#StivanCerndTimer","global")~ THEN TB#STIVJ StivanCernd7
@1024
DO ~SetGlobal("tb#StivanCernd","GLOBAL",8)~
== CERNDJ @1025
= @119
= @1026
== TB#STIVJ @119
= @1027
= @1028
== CERNDJ @1029
== TB#STIVJ @1030
== CERNDJ @1031
EXIT

CHAIN IF ~InParty("cernd")
See("cernd")
!StateCheck("cernd",CD_STATE_NOTVALID)
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
Global("tb#StivanCernd","GLOBAL",8)
PartyHasItem("miscb2")~ THEN TB#STIVJ StivanCernd8
@1032
DO ~SetGlobal("tb#StivanCernd","GLOBAL",9)~
== CERNDJ @1033
= @1034
== TB#STIVJ @1035
= @1036
== CERNDJ @1037
EXIT

CHAIN 
IF ~InParty("Stivan")
See("Stivan")
!StateCheck("Stivan",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanCernd","GLOBAL",9)
Global("tb#StivanSawHell","GLOBAL",1)
AreaCheck("AR2900")~ THEN CERNDJ stivanCernd9
@1038
DO ~SetGlobal("tb#StivanCernd","GLOBAL",8)~
== TB#STIVJ @1039
== CERNDJ @1040
= @1041
= @1042
== TB#STIVJ @1043
== CERNDJ @1044
== TB#STIVJ @1045
== CERNDJ @1046
== TB#STIVJ @1047
== CERNDJ @1048
== TB#STIVJ @1049
== CERNDJ @1050
== TB#STIVJ @1051
== CERNDJ @1052
== TB#STIVJ @1053
== CERNDJ @1054
== TB#STIVJ @1055
== CERNDJ @1056
== TB#STIVJ @1057
== CERNDJ @1058
== TB#STIVJ @1059
== CERNDJ @1060
== TB#STIVJ @1061
== CERNDJ @1062
== TB#STIVJ @119
= @1063
== CERNDJ @1064
== TB#STIVJ @1065
== CERNDJ @1066
== TB#STIVJ @392
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
@1067
DO ~SetGlobal("tb#StivanPCTalk","GLOBAL",2)~
EXIT

CHAIN
IF WEIGHT #-1 ~InParty("tb#stiv")
InParty(Player1)
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanPCTalk","GLOBAL",2)~ THEN FFBART StivanSamuel1
@1068
DO ~SetGlobal("tb#StivanPCTalk","GLOBAL",3)~
== TB#STIVJ @1069
== FFBART @1070
END
IF ~Global("InteractMazzy","LOCALS",1)~ THEN EXTERN FFBART StivanSamuel1-1
IF ~!Global("InteractMazzy","LOCALS",1)~ THEN EXTERN FFBART StivanSamuel1-2

CHAIN 
IF ~~ THEN FFBART StivanSamuel1-1
@1071
BRANCH ~InParty("mazzy")~ BEGIN
== FFBART @1072
== TB#STIVJ @1073
== FFBART @1074
== TB#STIVJ @1075
== FFBART @1076
== TB#STIVJ @1077
== FFBART @1078
END
EXTERN TB#STIVJ StivanSamuel1-3

CHAIN 
IF ~~ THEN FFBART StivanSamuel1-2
@1079
DO ~GiveItemCreate("BOOT02",Player1,0,0,0)~
== TB#STIVJ @1080
= @1081
== FFBART @1082
EXTERN TB#STIVJ StivanSamuel1-3

APPEND TB#STIVJ
IF ~~ THEN StivanSamuel1-3
SAY @1083
= @1084
IF ~GlobalGT("AnomenDecide","GLOBAL",0)~ THEN REPLY @1085 EXTERN TB#STIVJ StivanSamuel1-5
IF ~Global("AnomenDecide","GLOBAL",0)~ THEN REPLY @1085 EXTERN TB#STIVJ StivanSamuel1-6
IF ~!Race(Player1,HALFLING) GlobalGT("AnomenDecide","GLOBAL",0)~ THEN REPLY @1086 EXTERN TB#STIVJ StivanSamuel1-5
IF ~!Race(Player1,HALFLING) Global("AnomenDecide","GLOBAL",0)~ THEN REPLY @1086 EXTERN TB#STIVJ StivanSamuel1-6
IF ~~ THEN REPLY @1087 EXTERN TB#STIVJ StivanSamuel1-4
IF ~GlobalGT("AnomenDecide","GLOBAL",0)~ THEN REPLY @1088 EXTERN TB#STIVJ StivanSamuel1-5
IF ~Global("AnomenDecide","GLOBAL",0)~ THEN REPLY @1088 EXTERN TB#STIVJ StivanSamuel1-6
END

IF ~~ THEN StivanSamuel1-4
SAY @1089
IF ~GlobalGT("AnomenDecide","GLOBAL",0)~ THEN EXTERN TB#STIVJ StivanSamuel1-5
IF ~Global("AnomenDecide","GLOBAL",0)~ THEN EXTERN TB#STIVJ StivanSamuel1-6
END

IF ~~ THEN StivanSamuel1-5
SAY @1090
IF ~~ THEN EXTERN TB#STIVJ StivanSamuel1-7
END

IF ~~ THEN StivanSamuel1-6
SAY @1091
= @276
= @277
IF ~~ THEN EXTERN TB#STIVJ StivanSamuel1-7
END

IF ~~ THEN StivanSamuel1-7
SAY @1092
IF ~~ THEN REPLY @1093 EXTERN FFBART StivanSamuel1-10
IF ~~ THEN REPLY @1094 EXTERN TB#STIVJ StivanSamuel1-8
IF ~~ THEN REPLY @1095 EXTERN TB#STIVJ StivanSamuel1-9
END

IF ~~ THEN StivanSamuel1-8
SAY @1096
IF ~~ THEN EXTERN FFBART StivanSamuel1-10
END

IF ~~ THEN StivanSamuel1-9
SAY @1097
IF ~~ THEN EXTERN FFBART StivanSamuel1-10
END
END

CHAIN 
IF ~~ THEN FFBART StivanSamuel1-10
@1098
== TB#STIVJ @1099
== FFBART @1100
== TB#STIVJ @1101
== FFBART @1102
== TB#STIVJ @1103
END
IF ~~ THEN REPLY @1104 EXTERN TB#STIVJ StivanSamuel1-11
IF ~~ THEN REPLY @1105 EXTERN TB#STIVJ StivanSamuel1-11
IF ~~ THEN REPLY @1106 EXTERN TB#STIVJ StivanSamuel1-12

CHAIN
IF ~~ THEN tb#stivj StivanSamuel1-11
@1107
== FFBART @1108
EXTERN TB#STIVJ StivanSamuel1-12

CHAIN
IF ~~ THEN TB#STIVJ StivanSamuel1-12
@392
== FFBART @1109
EXTERN FFWENCH StivanSamuel1-13

CHAIN
IF ~~ THEN FFWENCH StivanSamuel1-13
@1110
== FFBART @1111
== TB#STIVJ @1112
= @119
= @1113
EXIT

APPEND TB#STIVJ
IF ~InParty("tb#stiv")
InParty(Player1)
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanPCTalk","GLOBAL",0)~ THEN StivanPC1
SAY @1114
IF ~~ THEN DO ~SetGlobal("tb#StivanPCTalk","GLOBAL",1)~ REPLY @1115 GOTO StivanPC1-1
IF ~~ THEN DO ~SetGlobal("tb#StivanPCTalk","GLOBAL",1)~ REPLY @1116 GOTO StivanPC1-2
IF ~~ THEN DO ~SetGlobal("tb#StivanPCTalk","GLOBAL",1)~ REPLY @1117 GOTO StivanPC1-3
IF ~~ THEN DO ~SetGlobal("tb#StivanPCTalk","GLOBAL",1)~ REPLY @1118 GOTO StivanPC1-4
END

IF ~~ THEN  StivanPC1-1
SAY @1119
IF ~~ THEN GOTO StivanPC1-5
END

IF ~~ THEN StivanPC1-2
SAY @1120
IF ~~ THEN GOTO StivanPC1-5
END

IF ~~ THEN StivanPC1-3
SAY @1121
IF ~~ THEN GOTO StivanPC1-5
END

IF ~~ THEN StivanPC1-4
SAY @1122
= @1123
IF ~~ THEN EXIT
END

IF ~~ THEN StivanPC1-5
SAY @1124 
= @1125
IF ~~ THEN REPLY @1126 GOTO StivanPC1-6
IF ~~ THEN REPLY @1127 GOTO StivanPC1-7
IF ~~ THEN REPLY @1128 GOTO StivanPC1-8
IF ~~ THEN REPLY @1129 GOTO StivanPC1-4
END
 
IF ~~ THEN StivanPC1-6
SAY @1130
IF ~~ THEN GOTO StivanPC1-9
END

IF ~~ THEN StivanPC1-7
SAY @1131
IF ~~ THEN GOTO StivanPC1-9
END

IF ~~ THEN StivanPC1-8
SAY @1132
IF ~~ THEN GOTO StivanPC1-9
END

IF ~~ THEN StivanPC1-9
SAY @1133
= @1134
= @1135 
IF ~Gender(Player1,MALE)~ THEN REPLY @1136 GOTO StivanPC1-12
IF ~ Gender(Player1,FEMALE)~ THEN REPLY @1136 GOTO StivanPC1-13
IF ~Gender(Player1,MALE)~ THEN REPLY @1137 GOTO StivanPC1-12
IF ~ Gender(Player1,FEMALE)~ THEN REPLY @1137 GOTO StivanPC1-13
IF ~Gender(Player1,MALE)~ THEN REPLY @1138 GOTO StivanPC1-12
IF ~ Gender(Player1,FEMALE)~ THEN REPLY @1138 GOTO StivanPC1-13 
IF ~~ THEN REPLY @1139 GOTO StivanPC1-10
IF ~~ THEN REPLY @1140 GOTO StivanPC1-11
END

IF ~~ THEN StivanPC1-10
SAY @1141
= @1142
IF ~Gender(Player1,MALE)~ THEN REPLY @1136 GOTO StivanPC1-12
IF ~ Gender(Player1,FEMALE)~ THEN REPLY @1136 GOTO StivanPC1-13
IF ~Gender(Player1,MALE)~ THEN REPLY @1137 GOTO StivanPC1-12
IF ~ Gender(Player1,FEMALE)~ THEN REPLY @1137 GOTO StivanPC1-13
IF ~Gender(Player1,MALE)~ THEN REPLY @1138 GOTO StivanPC1-12
IF ~ Gender(Player1,FEMALE)~ THEN REPLY @1138 GOTO StivanPC1-13 
END

IF ~~ THEN StivanPC1-11
SAY @1143
= @1144
IF ~Gender(Player1,MALE)~ THEN REPLY @1136 GOTO StivanPC1-12
IF ~ Gender(Player1,FEMALE)~ THEN REPLY @1136 GOTO StivanPC1-13
IF ~Gender(Player1,MALE)~ THEN REPLY @1137 GOTO StivanPC1-12
IF ~ Gender(Player1,FEMALE)~ THEN REPLY @1137 GOTO StivanPC1-13
IF ~Gender(Player1,MALE)~ THEN REPLY @1138 GOTO StivanPC1-12
IF ~ Gender(Player1,FEMALE)~ THEN REPLY @1138 GOTO StivanPC1-13 
END

IF ~~ THEN StivanPC1-12
SAY @1145
IF ~~ THEN REPLY @1146 GOTO StivanPC1-16
IF ~~ THEN REPLY @1147 GOTO StivanPC1-16
END

IF ~~ THEN StivanPC1-13
SAY @1148
IF ~~ THEN REPLY @1149 GOTO StivanPC1-14
IF ~~ THEN REPLY @1150 GOTO StivanPC1-14
IF ~~ THEN REPLY @1151 GOTO StivanPC1-14
END

IF ~~ THEN StivanPC1-14
SAY @1152
IF ~~ THEN REPLY @1153 GOTO StivanPC1-16
IF ~~ THEN REPLY @1154 GOTO StivanPC1-16
END

IF ~~ THEN StivanPC1-16
SAY @1155
= @1156
IF ~~ THEN REPLY @1157 GOTO StivanPC1-17
IF ~~ THEN REPLY @1158 GOTO StivanPC1-18
IF ~~ THEN REPLY @1159 GOTO StivanPC1-18
END

IF ~~ THEN StivanPC1-17
SAY @1160
= @1161
IF ~~ THEN GOTO StivanPC1-18
END

IF ~~ THEN StivanPC1-18
SAY @1162 
= @1163
IF ~~ THEN REPLY @1164 GOTO StivanPC1-19
IF ~~ THEN REPLY @1165 GOTO StivanPC1-19
IF ~~ THEN REPLY @1166 GOTO StivanPC1-19
END

IF ~~ THEN StivanPC1-19
SAY @1167 
IF ~~ THEN EXIT
END

IF ~InParty("tb#stiv")
InParty(Player1)
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanPCCowled","GLOBAL",0)
Global("Chapter","GLOBAL",2)~ THEN PC2
SAY @1168
IF ~~ THEN DO ~SetGlobal("tb#StivanPCCowled","GLOBAL",1)~ REPLY @1169 GOTO PC2-1a
IF ~Global("SpawnBrus","GLOBAL",0)~ THEN DO ~SetGlobal("tb#StivanPCCowled","GLOBAL",1)~ REPLY @1170 GOTO PC2-1
IF ~!Global("SpawnBrus","GLOBAL",0)~ THEN DO ~SetGlobal("tb#StivanPCCowled","GLOBAL",1)~ REPLY @1171 GOTO PC2-1
IF ~~ THEN DO ~SetGlobal("tb#StivanPCCowled","GLOBAL",1)~ REPLY @1172 GOTO PC2-7
END

IF ~~ THEN PC2-1a
SAY @1173
IF ~~ THEN GOTO PC2-1
END

IF ~~ THEN PC2-1
SAY @1174
= @1175
IF ~~ THEN REPLY @1176 GOTO PC2-3
END

IF ~~ THEN PC2-3
SAY @1177
IF ~~ THEN REPLY @1178 GOTO PC2-4
IF ~~ THEN REPLY @1179 GOTO PC2-4
IF ~~ THEN REPLY @1180 GOTO PC2-4
END

IF ~~ THEN PC2-4
SAY @1181
= @1182
= @1183
= @1184
= @1185
IF ~~ THEN REPLY @1186 GOTO PC2-5
IF ~~ THEN REPLY @1187 GOTO PC2-5
IF ~~ THEN REPLY @1188 GOTO PC2-5
END

IF ~~ THEN PC2-5
SAY @1189
= @1190
= @1191
IF ~~ THEN REPLY @1192 GOTO PC2-6
IF ~~ THEN REPLY @1193 GOTO PC2-7
IF ~~ THEN REPLY @1194 GOTO PC2-6
END

IF ~~ THEN PC2-7
SAY @1195
IF ~~ THEN EXIT
END

IF ~~ THEN PC2-6
SAY @1196
IF ~~ THEN EXIT
END
END

CHAIN IF ~Dead("udbalor") Global("tb#stivanUdbalor","GLOBAL",0)~ THEN TB#STIVJ aboutUdBalor
@1197
= @1198
DO ~SetGlobal("tb#stivanUdbalor","GLOBAL",1)~
BRANCH ~InParty("viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ BEGIN
== TB#STIVJ @1199
== VICONIJ @1200
== TB#STIVJ @1201
== VICONIJ @1202
END
END
IF ~~ THEN REPLY @1203 EXTERN TB#STIVJ aboutUdBalor-1
IF ~~ THEN REPLY @1204 EXTERN TB#STIVJ aboutUdBalor-2
IF ~~ THEN REPLY @1205 EXTERN TB#STIVJ aboutUdBalor-3

APPEND TB#STIVJ
IF ~~ THEN aboutUdBalor-1
SAY @1206
IF ~~ THEN REPLY @1207 GOTO aboutUdBalor-4
IF ~~ THEN REPLY @1208 GOTO aboutUdBalor-4
IF ~~ THEN REPLY @1209 GOTO aboutUdBalor-4
END

IF ~~ THEN aboutUdBalor-2
SAY @1210
IF ~~ THEN EXIT
END

IF ~~ THEN aboutUdBalor-3
SAY @1211
IF ~~ THEN EXIT
END

IF ~~ THEN aboutUdBalor-4
SAY @1212
= @1213
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
@1214
DO ~SetGlobal("tb#StivanJaheiraTethyr","GLOBAL",1)~
== JAHEIRAJ @1215
== TB#STIVJ @1216
== JAHEIRAJ @1217
== TB#STIVJ @1218
== JAHEIRAJ @1219
== TB#STIVJ @1220
== JAHEIRAJ @1221
== TB#STIVJ @1222
== JAHEIRAJ @1223
= @1224
== TB#STIVJ @1225
EXIT




///////////////////////////////////////////
// Misc encounters
///////////////////////////////////////////

CHAIN
IF WEIGHT #0 ~InParty("tb#stiv") InParty("Viconia") !StateCheck("tb#stiv",CD_STATE_NOTVALID) !StateCheck("viconia",CD_STATE_NOTVALID) Global("tb#sdr1","GLOBAL",0)~ THEN TB#SDR1 StivanDrow1
@1226
DO ~SetGlobal("tb#sdr1","GLOBAL",1)~
== TB#STIVJ @1227
== TB#SDR1 @1228
== VICONIJ @1229
== TB#SDR1 @1230
== TB#STIVJ @119
= @1231
== VICONIJ @1232
EXIT

CHAIN
IF WEIGHT #0 ~InParty("tb#stiv") InParty("jaheira") !StateCheck("tb#stiv",CD_STATE_NOTVALID) !StateCheck("jaheira",CD_STATE_NOTVALID) Global("tb#sdr2","GLOBAL",0)~ THEN TB#SDR2 StivanDrow2
@1233
DO ~SetGlobal("tb#sdr2","GLOBAL",1)~
== TB#STIVJ @1234
== TB#SDR2 @1235
== JAHEIRAJ @1236
== TB#SDR2 @1237
== TB#STIVJ @119
= @1238
== JAHEIRAJ @1239
EXIT

CHAIN
IF WEIGHT #0 ~InParty("tb#stiv") InParty("anomen") !StateCheck("tb#stiv",CD_STATE_NOTVALID) !StateCheck("anomen",CD_STATE_NOTVALID) Global("tb#sdr3","GLOBAL",0)~ THEN TB#SDR2 StivanDrow3
@1240
DO ~SetGlobal("tb#sdr3","GLOBAL",1)~
== ANOMENJ @1241
== TB#SDR3 @1242
== ANOMENJ @1243
== TB#SDR3 @1244
== TB#STIVJ @1245
EXIT

CHAIN IF WEIGHT #-1 ~IsValidForPartyDialog("tb#stiv")
See("tb#stiv")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
Global("tb#StivanHalflingSlums","GLOBAL",0)~ THEN SLHALF01 stivanHalflingSlums
@1246
== TB#STIVJ @1247
DO ~SetGlobal("tb#StivanHalflingSlums","GLOBAL",1)~
EXIT

CHAIN IF WEIGHT #-1 ~IsValidForPartyDialog("tb#stiv")
See("tb#stiv")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
Global("tb#StivanHalflingBridge","GLOBAL",0)~ THEN BMTOWN4 stivanHalflingBridge
@1248
== TB#STIVJ @1249
DO ~SetGlobal("tb#StivanHalflingBridge","GLOBAL",1)~
EXIT

CHAIN IF WEIGHT #-1 ~IsValidForPartyDialog("tb#stiv")
See("tb#stiv")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
Global("tb#StivanRose","GLOBAL",0)~ THEN MURDGIRL stivanRose
@1250
DO ~SetGlobal("tb#StivanRose","GLOBAL",1)~
== TB#STIVJ @1251
== MURDGIRL @1252
== TB#STIVJ @1253
== MURDGIRL @1254
EXIT

CHAIN IF WEIGHT #-1 ~IsValidForPartyDialog("tb#stiv")
IsValidForPartyDialog("Nalia")
See("tb#stiv")
See("Nalia")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
!StateCheck("Nalia",CD_STATE_NOTVALID)
Global("tb#StivanNaliaOphal","GLOBAL",0)~ THEN NOBLEM3 stivannaliaophal
@1255
DO ~SetGlobal("tb#StivanNaliaOphal","GLOBAL",1)~
== NALIAJ @1256
== NOBLEM3 @1257
== TB#STIVJ @1258
== NOBLEM3 @1259
== TB#STIVJ @1260
== NALIAJ @1261
== NOBLEM3 @1262
EXIT

BEGIN TB#STAND
CHAIN IF ~InParty("tb#Stiv") InParty("Nalia") !StateCheck("tb#Stiv",CD_STATE_NOTVALID) !StateCheck("nalia",CD_STATE_NOTVALID) Global("tb#StivanNaliaTandalon","GLOBAL",0)~ THEN TB#STAND StivanNaliaTandalon
@1263
== NALIAJ @1264
== TB#STAND @1265
== TB#STIVJ @1266
== TB#STAND @1267
== TB#STIVJ @1268
== TB#STAND @1269
DO ~DestroySelf() SetGlobal("tb#StivanNaliaTandalon","GLOBAL",1)~
== NALIAJ @119
= @1270
== TB#STIVJ @1271
EXIT