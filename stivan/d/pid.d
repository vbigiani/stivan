APPEND tb#stivj

IF ~GlobalTimerNotExpired("tb#stivanAngry","GLOBAL")~ THEN PIDAngry
SAY @0
IF ~~ THEN DO ~StartCutScene("tb#sfix")~ EXIT
END

IF ~IsGabber(Player1)
Alignment("tb#stiv",CHAOTIC_GOOD)
OR (6)
AreaCheck("AR2900")
AreaCheck("AR2901")
AreaCheck("AR2902")
AreaCheck("AR2903")
AreaCheck("AR2904")
AreaCheck("AR2905")
~ THEN PIDHell
SAY @1
IF ~~ THEN DO ~StartCutScene("tb#sfix2")~ EXIT
END

IF ~IsGabber(Player1)~ THEN BEGIN PID1
SAY @2
IF ~HPPercentGT("tb#stiv",74)~ THEN REPLY @3 GOTO PD1-1
IF ~HPPercentLT("tb#stiv",75) HPPercentGT("tb#stiv",49)~ THEN REPLY @3 GOTO PD1-2
IF ~HPPercentLT("tb#stiv",50) HPPercentGT("tb#stiv",24)~ THEN REPLY @3 GOTO PD1-3
IF ~HPPercentLT("tb#stiv",25)~ THEN REPLY @3 GOTO PD1-4
IF ~Race(Player1,HALFLING)~ THEN REPLY @4 GOTO PD2-2
IF ~!Race(Player1,HALFLING)~ THEN REPLY @5 GOTO PD2-2
IF ~~ THEN REPLY @6 GOTO PD3-1
IF ~~ THEN REPLY @7 GOTO PD4-1
IF ~Global("knowsmurders","GLOBAL",1) OR(2) Global("MerchantHide","GLOBAL",0) Global("TalkedToHooker2","GLOBAL",0)~ THEN REPLY @8 GOTO PD5
IF ~~ THEN REPLY @9 GOTO PD6
IF ~GlobalLT("Chapter","GLOBAL",4)~ THEN REPLY @10 GOTO PD7
IF ~GlobalLT("Chapter","GLOBAL",4)~ THEN REPLY @11 GOTO PD8
IF ~Global("TMAcceptance","GLOBAL",1) Dead("cefald01")  OR(2) Dead("trgeni01") Global("geniesgone","GLOBAL",1)~ THEN REPLY @12 GOTO PD9-solved
IF ~Global("TMAcceptance","GLOBAL",1) OR(2) !Dead("cefald01") !Dead("trgeni01") OR(2) !Dead("cefald01") !Global("geniesgone","GLOBAL",1)~ THEN REPLY @12 GOTO PD9
IF ~Global("WorkingForAran","GLOBAL",1)~ THEN REPLY @13 GOTO PD10
IF ~Global("WorkingForBodhi","GLOBAL",1)~ THEN REPLY @14 GOTO PD11
IF ~Global("MaeVarWork","GLOBAL",3)~ THEN REPLY @15 GOTO PD12
IF ~Global("MaeVarWork","GLOBAL",1)~ THEN REPLY @16 GOTO PD12
IF ~Global("EdwinJob","GLOBAL",3)~ THEN REPLY @17 GOTO PD13
IF ~Global("SpawnBarg","GLOBAL",1) Global("RoenalConvict","GLOBAL",0)~ THEN REPLY @18 GOTO PD14
IF ~Global("crothfCreate","GLOBAL",1) !Global("TakenBlame","GLOBAL",1)~ THEN REPLY @19 GOTO PD18-1
IF ~Global("tb#EdwinComplainsOfStivan","GLOBAL",1)~ THEN REPLY @20 DO ~SetGlobal("tb#EdwinComplainsOfStivan","GLOBAL",2)~ GOTO PD16
IF ~~ THEN REPLY @21 GOTO PD15
IF ~~ THEN REPLY @22 EXIT
IF ~~ THEN REPLY @23 GOTO PD17
END


IF ~~ THEN BEGIN PD1-1
SAY @24
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD1-2
SAY @25
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD1-3
SAY @26
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD1-4
SAY @27
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD2-2
SAY @28
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-1
SAY @29
IF ~InParty("Edwin") !Gender("Edwin",FEMALE) !Global("EdwinRomanceActive","GLOBAL",2)~ THEN REPLY @30 GOTO PD3-2 
IF ~InParty("Edwin") Gender("Edwin",FEMALE) !Global("EdwinRomanceActive","GLOBAL",2)~ THEN REPLY @30 GOTO PD3-3
IF ~InParty("Edwin") Global("EdwinRomanceActive","GLOBAL",2)~ THEN REPLY @30 GOTO PD3-4
IF ~InParty("Jan")~ THEN REPLY @31 GOTO PD3-5
IF ~InParty("Haerdalis")~ THEN REPLY @32 GOTO PD3-6
IF ~InParty("Aerie") !Global("HaerDalisRomanceActive","GLOBAL",2) !Global("AerieRomanceActive","GLOBAL",2) ~ THEN REPLY @33 GOTO PD3-7
IF ~InParty("Aerie") Global("HaerDalisRomanceActive","GLOBAL",2)~ THEN REPLY @33 GOTO PD3-8
IF ~InParty("Aerie") Global("AerieRomanceActive","GLOBAL",2)~ THEN REPLY @33 GOTO PD3-9
IF ~InParty("Jaheira") !Global("JaheiraRomanceActive","GLOBAL",2)~ THEN REPLY @34 GOTO PD3-10
IF ~InParty("Jaheira") Global("JaheiraRomanceActive","GLOBAL",2)~ THEN REPLY @34 GOTO PD3-11
IF ~InParty("Cernd")~ THEN REPLY @35 GOTO PD3-12
IF ~InParty("Valygar")~ THEN REPLY @36 GOTO PD3-13
IF ~InParty("Keldorn")~ THEN REPLY @37 GOTO PD3-14
IF ~InParty("Yoshimo")~ THEN REPLY @38 GOTO PD3-15
IF ~InParty("Viconia") !Global("ViconiaRomanceActive","GLOBAL",2)~ THEN REPLY @39 GOTO PD3-16
IF ~InParty("Viconia") Global("ViconiaRomanceActive","GLOBAL",2)~ THEN REPLY @39 GOTO PD3-17
IF ~InParty("Anomen") Global("AnomenIsKnight","GLOBAL",0) Global("AnomenIsNotKnight","GLOBAL",0)~ THEN REPLY @40 GOTO PD3-18
IF ~InParty("Anomen") Global("AnomenIsNotKnight","GLOBAL",1)~ THEN REPLY @40 GOTO PD3-19
IF ~InParty("Anomen") Global("AnomenIsKnight","GLOBAL",1)~ THEN REPLY @40 GOTO PD3-20
IF ~InParty("Nalia") !Dead("TorGal")~ THEN REPLY @41 GOTO PD3-21
IF ~InParty("Nalia")  Dead("TorGal")~ THEN REPLY @41 GOTO PD3-22
IF ~InParty("Mazzy")~ THEN REPLY @42 GOTO PD3-23
IF ~InParty("Korgan")~ THEN REPLY @43 GOTO PD3-24
IF ~InParty("Imoen2")~ THEN REPLY @44 GOTO PD3-26
IF ~InParty("Minsc") GlobalLT("tb#StivanMinsc","GLOBAL",3)~ THEN REPLY @45 GOTO PD3-27
IF ~InParty("Minsc") GlobalGT("tb#StivanMinsc","GLOBAL",2)~ THEN REPLY @45 GOTO PD3-28
IF ~~ THEN REPLY @46 EXIT
END

IF ~~ THEN BEGIN PD3-2
SAY @47
= @48 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-3
SAY @49
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-4
SAY @50
IF ~~ THEN REPLY @51 GOTO PD3-4a
IF ~~ THEN REPLY @52 GOTO PD3-4b
IF ~~ THEN REPLY @53 GOTO PD3-4c
END

IF ~~ THEN BEGIN PD3-4a
SAY @54
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-4b
SAY @55
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-4c
SAY @56
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-5
SAY @57
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-6
SAY @58
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-7
SAY @59
IF ~GlobalLT("tb#StivanAerie","GLOBAL",100)~ THEN EXIT
IF ~GlobalGT("tb#StivanAerie","GLOBAL",99)~ THEN GOTO PD3-7a
END

IF ~~ THEN BEGIN PD3-8
SAY @60
IF ~GlobalLT("tb#StivanAerie","GLOBAL",100)~ THEN EXIT
IF ~GlobalGT("tb#StivanAerie","GLOBAL",99)~ THEN GOTO PD3-7a
END

IF ~~ THEN BEGIN PD3-7a
SAY @61
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-9
SAY @62
IF ~~ THEN REPLY @63 GOTO PD3-9a
IF ~~ THEN REPLY @64 GOTO PD3-9a
IF ~~ THEN REPLY @65 GOTO PD3-9a
END

IF ~~ THEN BEGIN PD3-9a
SAY @66
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-10
SAY @67
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-11
SAY @68
IF ~~ THEN REPLY @69 GOTO PD3-11a
IF ~~ THEN REPLY @70 GOTO PD3-11b
IF ~~ THEN REPLY @71 GOTO PD3-11b
END

IF ~~ THEN BEGIN PD3-11a
SAY @72
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-11b
SAY @73
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-12
SAY @74
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-13
SAY @75
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-14
SAY @76
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-15
SAY @77
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-16
SAY @78
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-17
SAY @79
IF ~~ THEN REPLY @80 GOTO PD3-17a
IF ~~ THEN REPLY @81 GOTO PD3-17b
IF ~~ THEN REPLY @82 GOTO PD3-17a
END

IF ~~ THEN BEGIN PD3-17a
SAY @47
= @83
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-17b
SAY @84
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-18
SAY @85
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-19
SAY @86
= @87
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-20
SAY @88
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-21
SAY @89
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-22
SAY @90
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-23
SAY @91
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-24
SAY @92
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-26
SAY @93
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-27
SAY @94
IF ~~ THEN REPLY @95 GOTO PD3-27a
IF ~~ THEN REPLY @96 GOTO PD3-27b
END

IF ~~ THEN BEGIN PD3-27a
SAY @97
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-27b
SAY @98
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-28
SAY @99
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD4-1
SAY @100
IF ~~ THEN REPLY @101 GOTO PD4-2
IF ~~ THEN REPLY @102 GOTO PD4-3
IF ~~ THEN REPLY @103 GOTO PD4-4
IF ~~ THEN REPLY @104 GOTO PD4-5
IF ~~ THEN REPLY @105 GOTO PD4-6
IF ~!Global("EntryTest","GLOBAL",7) ~ THEN REPLY @106 GOTO PD4-7a
IF ~Global("EntryTest","GLOBAL",7) ~ THEN REPLY @106 GOTO PD4-7b
IF ~~ THEN REPLY @107 GOTO PD4-8
END

IF ~~ THEN BEGIN PD4-2
SAY @108
= @109
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD4-3
SAY @110
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD4-4
SAY @111
= @112
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD4-5
SAY @113
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD4-6
SAY @114
= @115
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD4-7a
SAY @116
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD4-7b
SAY @117
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD4-8
SAY @118
= @119
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD5
SAY @120
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD6
SAY @121
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD7
SAY @122
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD8
SAY @123
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD9
SAY @124
= @125
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD9-solved
SAY @126
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD10
SAY @127
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD11
SAY @128
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD12
SAY @129
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD13
SAY @130
IF ~~ THEN DO ~SetGlobal("#tbStivanMarcus","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN PD14
SAY @131
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD15
SAY @132
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD16
SAY @133
IF ~~ THEN REPLY @134 GOTO PD16-2
IF ~Global("EdwinRomanceActive","GLOBAL",2)~ THEN REPLY @135 GOTO PD16-4
IF ~!Global("EdwinRomanceActive","GLOBAL",2)~ THEN REPLY @135 GOTO PD16-5
END

IF ~~ THEN BEGIN PD16-2
SAY @136
IF ~~ THEN REPLY @137 GOTO PD16-3
IF ~Global("EdwinRomanceActive","GLOBAL",2)~ THEN REPLY @135 GOTO PD16-4
IF ~!Global("EdwinRomanceActive","GLOBAL",2)~ THEN REPLY @135 GOTO PD16-5
END

IF ~~ THEN BEGIN PD16-4
SAY @138
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD16-5
SAY @139
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD17
SAY @140
= @141
IF ~~ THEN DO ~StartCutScene("tb#sfix")~ EXIT
END

IF ~~ THEN PD18-1
SAY @142
IF ~Global("BonnieClyde","GLOBAL",2)~ THEN REPLY @143 GOTO PD18-2
IF ~Global("BonnieClyde","GLOBAL",4)~ THEN REPLY @144 GOTO PD18-3
IF ~~ THEN REPLY @145 GOTO PD18-3
IF ~~ THEN REPLY @146 GOTO PD18-4
END

IF ~~ THEN PD18-2
SAY @147
IF ~~ THEN EXIT
END

IF ~~ THEN PD18-3
SAY @148
IF ~~ THEN EXIT
END

IF ~~ THEN PD18-4
SAY @149
IF ~~ THEN EXIT
END
END

CHAIN
IF ~~ THEN TB#STIVJ PD16-3
@150
= @151
= @152
= @153
== HAERDAJ IF ~InParty("Haerdalis") !StateCheck("Haerdalis",CD_STATE_NOTVALID)~ THEN @154
END
IF ~Global("EdwinRomanceActive","GLOBAL",2)~ THEN EXTERN TB#STIVJ PD16-4
IF ~Global("EdwinRomanceActive","GLOBAL",2)~ THEN EXTERN TB#STIVJ PD16-5
