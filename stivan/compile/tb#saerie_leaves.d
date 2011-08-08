/* Variables:

tb#StivanAerie: tracks the quest.
  0,1,2: other Stivan/Aerie banters.
      3: Aerie just left.
      4: Aerie going to be assassinated.
      5: Aerie saved.
      6: Second assassin group appears.
      7: second assassin group is defeated.
      8: preparing before spawning assassins.
      9: start spawning assassins.
     10: spawning assassins (until "tb#stivanassassintimer","AR0607" runs out)
     11: Stivan waits before going to quest area.
     12: Stivan going to in quest area.
     13: Stivan in quest area.
    100: Aerie re-joined the party.
*/

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanAerie", "GLOBAL",2)
OR(7)
AreaCheck("ar0020")
AreaCheck("ar0300")
AreaCheck("ar0400")
AreaCheck("ar0500")
AreaCheck("ar0700")
AreaCheck("ar0900")
AreaCheck("ar1000")
~ THEN BAERIE aeriegone
@0
DO ~SetGlobal("tb#StivanAerie", "GLOBAL",3)~
== TB#STIVB @1
= @2
== BAERIE @3
== TB#STIVB @4
== BAERIE @5
== TB#STIVB @6
== BAERIE @7
== TB#STIVB @8
== BAERIE @9
== BMAZZY IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @10
== TB#STIVB @11
== BAERIE @12
== TB#STIVB @13
== BMAZZY IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @14
== BAERIE @15
== TB#STIVB @16
== BMINSC IF ~IsValidForPartyDialog("Minsc")~ @17
== BAERIE IF ~!Dead("quaylem") !Dead("quayle")~ THEN @18
== BAERIE IF ~OR(2) Dead("quaylem") Dead("quayle")~ THEN @19
== BAERIE @20
END
IF ~OR(2) Global("aerieRomanceActive","GLOBAL",1) Global("aerieRomanceActive","GLOBAL",2)~ THEN REPLY @21 EXTERN BAERIE aeriegone3
IF ~OR(2) Global("aerieRomanceActive","GLOBAL",1) Global("aerieRomanceActive","GLOBAL",2)~ THEN REPLY @22 EXTERN BAERIE aeriegone1
IF ~!Global("aerieRomanceActive","GLOBAL",1) !Global("aerieRomanceActive","GLOBAL",2)~ THEN REPLY @23 EXTERN BAERIE aeriegone3
IF ~~ THEN REPLY @24 EXTERN BAERIE aeriegone3
IF ~~ THEN REPLY @25 EXTERN BAERIE aeriegone2

CHAIN IF ~~ THEN BAERIE aeriegone1
@26
EXTERN BAERIE aeriegone3

CHAIN IF ~~ THEN BAERIE aeriegone2
@27
EXTERN BAERIE aeriegone3

CHAIN IF ~~ THEN BAERIE aeriegone3
@28
BRANCH ~IsValidForPartyDialog("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ BEGIN
== BJAHEIR @29
== BAERIE @30
== BJAHEIR @31
END
BRANCH ~IsValidForPartyDialog("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ BEGIN
== BCERND @32
== TB#STIVB @33
== BCERND @34
== TB#STIVB @35
== BCERND @1
END
BRANCH ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ BEGIN
== BMAZZY @36
== TB#STIVJ @37
== BMAZZY @36
== TB#STIVJ @38
== BMAZZY @36
== TB#STIVJ @39
== BMAZZY @40
== TB#STIVJ @41
END
BRANCH ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ BEGIN
== BNALIA @42
== TB#STIVB @43
== BNALIA @44
== TB#STIVB @45
== BNALIA @1
END
== BEDWIN IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @46
BRANCH ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ BEGIN
== BVICONI @47
== BAERIE @48
== BVICONI @49
END
== BVALYGA IF ~InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @50
== BIMOEN2 IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @51
BRANCH ~IsValidForPartyDialog("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ BEGIN
== BYOSHIM @52
== BAERIE @53
END
== BKORGAN IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @54
== BKELDOR IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @55
== BANOMEN IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenIsNotKnight","GLOBAL",0)~ THEN @56
== BANOMEN IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenIsNotKnight","GLOBAL",1)~ THEN @57
BRANCH ~InParty("haerdalis") !StateCheck("haerdalis",CD_STATE_NOTVALID) Global("HaerDalisRomanceActive","GLOBAL",2)~ BEGIN
== BHAERDA @58
== BAERIE @59
== BHAERDA @60
== BAERIE @61
END
== BHAERDA IF ~InParty("haerdalis") !StateCheck("haerdalis",CD_STATE_NOTVALID) !Global("HaerDalisRomanceActive","GLOBAL",2)~ THEN @62
BRANCH ~IsValidForPartyDialog("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) Global("MinscWitch","GLOBAL",1)~ BEGIN
== BMINSC @63
== BAERIE @64
== BMINSC @65
= @1
= @66
== BAERIE @67
== BMINSC @68
END
== TB#STIVB @69
END
IF ~~ THEN REPLY @70 EXTERN tb#stivb aeriegone4
IF ~~ THEN REPLY @71 EXTERN tb#stivb aeriegone4
 
APPEND tb#stivb
  IF ~~ THEN aeriegone4
  SAY @72
  IF ~~ THEN REPLY @73 GOTO aeriegone5
  END
END

CHAIN IF ~~ THEN tb#stivb aeriegone5
@74
BRANCH ~InParty("haerdalis") !StateCheck("haerdalis",CD_STATE_NOTVALID) Global("HaerDalisRomanceActive","GLOBAL",2)~ BEGIN
== BHAERDA @75
== TB#STIVB @76
== BHAERDA @77
END
BRANCH ~IsValidForPartyDialog("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) Global("MinscWitch","GLOBAL",1)~ BEGIN
== TB#STIVB @78
== BMINSC @79
== TB#STIVB @80
== BMINSC @81
== TB#STIVB @82
== BMINSC @83
== TB#STIVB @84
== BMINSC @85
END
== TB#STIVB @86
END
IF ~~ DO ~ActionOverride("aerie",LeaveParty()) ActionOverride("aerie",SetGlobal("KickedOut","LOCALS",1)) ActionOverride("Aerie",LeaveAreaLUA("ar0607","",[469.437],14))~ UNSOLVED_JOURNAL @87 EXIT


APPEND aeriep
  IF WEIGHT #-1 ~GlobalGT("tb#StivanAerie","GLOBAL",2) GlobalLT("tb#StivanAerie","GLOBAL",100) OR(2) !Dead("tb#stiv") InPartyAllowDead("tb#stiv")~ angry
  SAY @88
  IF ~~ THEN EXIT
  END
  IF WEIGHT #-1 ~GlobalGT("tb#StivanAerie","GLOBAL",2) GlobalLT("tb#StivanAerie","GLOBAL",100) Dead("tb#stiv") !InPartyAllowDead("tb#stiv")~ angry2
  SAY @89
  IF ~~ THEN DO ~SetGlobal("tb#StivanAerie","GLOBAL",100)~ GOTO angry3
  END

  IF ~~ THEN angry3
  SAY @90
  COPY_TRANS aeriep 0
  END
END

APPEND quayle
  IF WEIGHT #-1 ~GlobalGT("tb#StivanAerie","GLOBAL",2) GlobalLT("tb#StivanAerie","GLOBAL",100)~ angry
    SAY @91
    IF ~~ THEN EXIT
  END
END

CHAIN IF WEIGHT #-100 ~Global("tb#StivanAerie","GLOBAL",3) IsValidForPartyDialog("tb#stiv")~ THEN aeriep assassination
@92
BRANCH ~IsValidForPartyDialog("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) Global("MinscWitch","GLOBAL",1)~ BEGIN
== BMINSC @93
== AERIEP @94
== BMINSC @95
== AERIEP @96
== BMINSC @97
== AERIEP @98
== tb#stivj @99
END
== tb#stivj @100
== AERIEP @101
== tb#stivj @102
END
IF ~~ THEN DO ~SetGlobal("tb#StivanAerie","GLOBAL",4)~ EXIT

CHAIN IF WEIGHT #-100 ~Global("tb#StivanAerie","GLOBAL",5) Dead("tb#sass") IsValidForPartyDialog("tb#stiv")~ THEN aeriep postassassination
@103
== tb#stivj @104
== aeriep @105
== tb#stivj @106
= @107
DO ~SetGlobal("tb#StivanAerie","GLOBAL",6)~
EXIT

CHAIN IF WEIGHT #-100 ~Global("tb#StivanAerie","GLOBAL",7) NumDead("tb#sass",3) IsValidForPartyDialog("tb#stiv")~ THEN aeriep divination1
@108
== tb#stivj @109
BRANCH ~InParty("haerdalis") !StateCheck("haerdalis",CD_STATE_NOTVALID) Global("HaerDalisRomanceActive","GLOBAL",2)~ BEGIN
== BHAERDA @110
== AERIEP @111
== BHAERDA @112
== AERIEP @113
== BHAERDA @114
= @115
== AERIEP @116
END
== tb#stivj @117
= @118
== aeriep @119
== BMINSC IF ~IsValidForPartyDialog("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @120
== BEDWIN IF ~IsValidForPartyDialog("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @121
END
IF ~OR(2) Kit(Player1,INQUISITOR) Kit(Player1,WIZARDSLAYER)~ THEN REPLY @122 EXTERN aeriep divination4
IF ~OR(2) Class(Player1,MAGE_ALL) Class(Player1,SORCERER) !Alignment(Player1,MASK_EVIL)~ THEN REPLY @123 EXTERN aeriep divination4
IF ~OR(2) Class(Player1,MAGE_ALL) Class(Player1,SORCERER) Alignment(Player1,MASK_EVIL)~ THEN REPLY @124 EXTERN aeriep divination4
IF ~~ THEN REPLY @125 EXTERN aeriep divination2
IF ~~ THEN REPLY @126 EXTERN aeriep divination3
IF ~~ THEN REPLY @127 EXTERN aeriep divination2

APPEND aeriep
  IF ~~ THEN divination2
    SAY @128
    IF ~~ THEN EXTERN aeriep divination4
  END
  
  IF ~~ THEN divination3
    SAY @129 
    IF ~~ THEN EXTERN aeriep divination4
  END
END

CHAIN IF ~~ THEN aeriep divination4
@130
== tb#stivj @131
== aeriep @132
== tb#stivj @133
END
IF ~~ THEN REPLY @134 EXTERN tb#stivj divination5
IF ~~ THEN REPLY @135 EXTERN tb#stivj divination5
IF ~~ THEN REPLY @136 EXTERN tb#stivj divination5

CHAIN IF ~~ THEN tb#stivj divination5
@137
== aeriep @138
== tb#stivj @139
== aeriep @140
END
IF ~~ THEN REPLY @141 EXTERN aeriep divination6
IF ~~ THEN REPLY @142 EXTERN aeriep divination7

APPEND aeriep
  IF ~~ THEN divination6
  SAY @143
    IF ~~ THEN DO ~SetGlobal("tb#StivanAerie","GLOBAL",8)~ EXIT
  END

  IF ~~ THEN divination7
  SAY @144
    IF ~~ THEN DO ~SetGlobal("tb#StivanAerie","GLOBAL",9)~ EXIT
  END

  IF WEIGHT #-100 ~Global("tb#StivanAerie","GLOBAL",8) IsValidForPartyDialog("tb#stiv")~ ready
  SAY @145
    IF ~~ THEN REPLY @146 EXTERN aeriep divination6
    IF ~~ THEN REPLY @147 EXTERN aeriep divination7
  END
END

CHAIN IF WEIGHT #-100 ~Global("tb#stivanAerie","GLOBAL",10) GlobalTimerExpired("tb#StivanAerieTimer","AR0607") IsValidForPartyDialog("tb#stiv")~ THEN aeriep gotTarget
@148
END
IF ~~ THEN REPLY @149 EXTERN aeriep gotTarget1
IF ~~ THEN REPLY @150 EXTERN aeriep gotTarget1
IF ~~ THEN REPLY @151 EXTERN aeriep gotTarget1

CHAIN IF ~~ THEN aeriep gotTarget1
@152
== tb#stivj @153
== aeriep @154
== tb#stivj @155
END
IF ~~ THEN REPLY @156 EXTERN tb#stivj gotTarget2
IF ~~ THEN REPLY @157 EXTERN tb#stivj gotTarget2
IF ~~ THEN REPLY @158 EXTERN tb#stivj gotTarget2

CHAIN IF ~~ THEN tb#stivj gotTarget2
@159
= @160
== aeriep @161
== tb#stivj @162
== aeriep @163
== tb#stivj @164
= @165
== aeriep @166
== tb#stivj @167
== aeriep @168
== tb#stivj @169
END
IF ~~ THEN REPLY @170 EXTERN tb#STIVJ gotTarget3
IF ~~ THEN REPLY @171 EXTERN tb#STIVJ gotTarget4
IF ~~ THEN REPLY @172 EXTERN tb#STIVJ gotTarget5

APPEND tb#stivj
  IF ~~ THEN gotTarget3
  SAY @173
    IF ~~ THEN DO ~SetGlobal("tb#StivanAerie","GLOBAL",12)~ UNSOLVED_JOURNAL @174 GOTO gotTarget7
  END
  
  IF ~~ THEN gotTarget4
  SAY @175
    IF ~~ THEN DO ~SetGlobal("tb#StivanAerie","GLOBAL",12)~ UNSOLVED_JOURNAL @174 GOTO gotTarget7
  END
  
  IF ~~ THEN gotTarget5
  SAY @176
    IF ~~ THEN DO ~SetGlobal("tb#StivanAerie","GLOBAL",11)~ UNSOLVED_JOURNAL @174 EXIT
  END

  IF WEIGHT #-100 ~Global("tb#StivanAerie","GLOBAL",11)~ gotTarget6
  SAY @177
    IF ~~ THEN REPLY @178 EXTERN tb#STIVJ gotTarget4
    IF ~~ THEN REPLY @179 EXTERN tb#STIVJ gotTarget5
  END
END

APPEND aeriep
  IF WEIGHT #-100 ~Global("tb#StivanAerie","GLOBAL",11)~ THEN gotTarget
  SAY @180
    IF ~~ THEN EXTERN tb#stivj gotTarget6
  END
END

CHAIN IF ~~ THEN tb#stivj gotTarget7
@181
== MINSCJ IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @182
== HAERDAJ IF ~InParty("haerdalis") !StateCheck("haerdalis",CD_STATE_NOTVALID) Global("HaerDalisRomanceActive","GLOBAL",2)~ THEN @183
BRANCH ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ BEGIN
== MAZZYJ @184
== tb#stivj @185
== MAZZYJ @186
END
BRANCH ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ BEGIN
== KORGANJ @187
== tb#stivj @188
== KORGANJ @189
== tb#stivj @190
END
EXIT

BEGIN TB#SNEC

IF ~!Dead("tb#sgua") !PartyHasItem("tb#sloc")~ THEN necri
SAY @191
IF ~!StateCheck("tb#stiv",STATE_INVISIBLE)~                                       THEN REPLY @192 DO ~SetGlobal("tb#sslitfail","TB#S00",1)~ EXIT
IF ~StateCheck("tb#stiv", STATE_INVISIBLE)~                                       THEN REPLY @192 DO ~SetGlobal("tb#sslitsucc","TB#S00",1)~ EXIT
IF ~!StateCheck("tb#stiv", STATE_INVISIBLE)~                                      THEN REPLY @193 DO ~SetGlobal("tb#sslitfail","TB#S00",1)~ EXIT
IF ~StateCheck("tb#stiv", STATE_INVISIBLE) CheckStatLT("tb#stiv",100,PICKPOCKET)~ THEN REPLY @193 DO ~SetGlobal("tb#spickfail","TB#S00",1)~ EXIT
IF ~StateCheck("tb#stiv", STATE_INVISIBLE) CheckStatGT("tb#stiv",99,PICKPOCKET)~  THEN REPLY @193 DO ~SetGlobal("tb#spicksucc","TB#S00",1)~ EXIT
IF ~~                                                                             THEN REPLY @194 DO ~SetGlobal("tb#sask","TB#S00",1)~ EXIT
END

IF ~Dead("tb#sgua")~ THEN kill
SAY @195
IF ~~ THEN DO ~SetGlobal("tb#sslitfail","TB#S00",1)~ EXIT
END

IF ~True()~ THEN last
SAY @191
IF ~~ THEN DO ~SetGlobal("tb#sslitfail","TB#S00",1)~ EXIT
END

CHAIN IF WEIGHT #-100 ~Global("tb#StivanAerie","GLOBAL",13) PartyHasItem("tb#sloc") InMyArea("tb#stiv")~ THEN aeriep final
@196
== tb#stivj @197
DO ~SetGlobal("tb#StivanAerie","GLOBAL",99) EraseJournalEntry(@87) EraseJournalEntry(@174) AddJournalEntry(@198,QUEST_DONE)~

== aeriep @199
EXIT

CHAIN IF WEIGHT #-100 ~Global("tb#StivanAerie","GLOBAL",99)~ THEN tb#stivj final
@200
DO ~SetGlobal("tb#stivanAerie","GLOBAL",100)~
== aeriep @201
BRANCH ~InParty("haerdalis") !StateCheck("haerdalis",CD_STATE_NOTVALID) Global("HaerDalisRomanceActive","GLOBAL",2)~ BEGIN
== aeriep @202
== HAERDAJ @203
END
BRANCH ~IsValidForPartyDialog("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) Global("MinscWitch","GLOBAL",1)~ BEGIN
== MINSCJ @204
== aeriep @205
== MINSCJ @206
== aeriep @207
== MINSCJ @208
END
== tb#stivj @209
== aeriep IF ~OR(2) Dead("quaylem") Dead("quayle")~ THEN @210
== aeriep IF ~!Dead("quaylem") !Dead("quayle")~ THEN @211
== tb#stivj @212
== aeriep @213
== tb#stivj @214
== aeriep @215
== aeriep @216
COPY_TRANS aeriep 0