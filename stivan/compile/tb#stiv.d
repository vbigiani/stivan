BEGIN TB#STIV

IF ~NumTimesTalkedTo(0)~ THEN BEGIN StivanFirstMeet
SAY @0
IF ~~ THEN REPLY @1 GOTO StivanFirstMeet1-1
IF ~~ THEN REPLY @2 GOTO StivanFirstMeet1-2
IF ~~ THEN REPLY @3 GOTO StivanFirstMeet1-3
IF ~~ THEN REPLY @4 EXIT
END

IF ~~ THEN BEGIN StivanFirstMeet1-1
SAY @5
IF ~PartyGoldGT(0)~ THEN REPLY @6 DO ~GiveItemCreate("tb#splu",Player1,0,0,0) DestroyGold(1)~ GOTO StivanFirstMeet1-1a
IF ~~ THEN REPLY @7 EXIT
END

IF ~~ THEN BEGIN StivanFirstMeet1-1a
SAY @8
IF ~~ THEN REPLY @9 EXIT
IF ~~ THEN REPLY @10 GOTO StivanFirstMeet1-4
IF ~~ THEN REPLY @11 GOTO StivanFirstMeet1-2
END 

IF ~~ THEN BEGIN StivanFirstMeet1-2
SAY @12
IF ~~ THEN REPLY @13 EXIT
IF ~~ THEN REPLY @14 GOTO StivanFirstMeet1-4
IF ~~ THEN REPLY @3 GOTO StivanFirstMeet1-3
END

IF ~~ THEN BEGIN StivanFirstMeet1-3
SAY @15
IF ~~ THEN REPLY @13 EXIT
IF ~~ THEN REPLY @14 GOTO StivanFirstMeet1-4
END

IF ~~ THEN BEGIN StivanFirstMeet1-4
SAY @16
IF ~~ THEN REPLY @17 GOTO StivanFirstMeet1-5
IF ~~ THEN REPLY @18 GOTO StivanFirstMeet1-5
IF ~~ THEN REPLY @19 GOTO StivanFirstMeet1-5
IF ~~ THEN REPLY @20 EXIT
END

IF ~~ THEN BEGIN StivanFirstMeet1-5
SAY @21
= @22
IF ~~ THEN REPLY @23 GOTO StivanFirstMeet1-6
IF ~Gender(Player1,MALE)~ THEN REPLY @24 GOTO StivanFirstMeet1-6
IF ~Gender(Player1,FEMALE)~ THEN REPLY @25 GOTO StivanFirstMeet1-6
IF ~Gender(Player1,MALE)~ THEN REPLY @26 GOTO StivanFirstMeet1-6
IF ~Gender(Player1,FEMALE)~ THEN REPLY @27 GOTO StivanFirstMeet1-6
END

IF ~~ THEN BEGIN StivanFirstMeet1-6
SAY @28
IF ~~ THEN REPLY @29 GOTO StivanFirstMeet1-7
IF ~~ THEN REPLY @30 GOTO StivanFirstMeet1-7
IF ~~ THEN REPLY @31 GOTO StivanFirstMeet1-7
END

IF ~~ THEN BEGIN StivanFirstMeet1-7
SAY @32
= @33
IF ~~ THEN REPLY @34 GOTO StivanFirstMeet1-8
IF ~~ THEN REPLY @35 GOTO StivanFirstMeet1-8
IF ~~ THEN REPLY @36 GOTO StivanFirstMeet1-8
END

IF ~~ THEN BEGIN StivanFirstMeet1-8
SAY @37
= @38
= @39
IF ~~ THEN REPLY @40 GOTO StivanFirstMeet1-9
IF ~~ THEN REPLY @41 GOTO StivanFirstMeet1-9
IF ~~ THEN REPLY @42 GOTO StivanFirstMeet1-9
END

IF ~~ THEN BEGIN StivanFirstMeet1-9
SAY @43
IF ~~ THEN REPLY @44 GOTO StivanFirstMeet1-9a
IF ~~ THEN REPLY @45 GOTO StivanFirstMeet1-10
IF ~~ THEN REPLY @46 GOTO StivanFirstMeet1-11
IF ~~ THEN REPLY @47 EXIT
END

IF ~~ THEN BEGIN StivanFirstMeet1-9a
SAY @48
IF ~~ THEN REPLY @49 EXIT
IF ~~ THEN REPLY @50GOTO StivanFirstMeet1-10
IF ~~ THEN REPLY @51 GOTO StivanFirstMeet1-11
END

IF ~~ THEN BEGIN StivanFirstMeet1-10
SAY @52
IF ~~ THEN REPLY @53 UNSOLVED_JOURNAL @54 DO ~SetGlobal("tb#StivanJoined","GLOBAL",1) SetGlobal("tb#stivanEntryTest","GLOBAL",1) SetGlobalTimer("tb#stivanEntryTimer","GLOBAL",FOUR_DAYS) JoinParty()~ EXTERN tb#stiv StivanFirstMeet1-12

IF ~~ THEN REPLY @55 EXIT
END

IF ~~ THEN BEGIN StivanFirstMeet1-11
SAY @56
IF ~~ THEN GOTO StivanFirstMeet1-10
END

IF~ NumTimestalkedToGT(0) ~THEN BEGIN StivanSecondMeet
SAY @57
= @58
IF ~~ THEN REPLY @1 GOTO StivanFirstMeet1-1
IF ~~ THEN REPLY @59 GOTO StivanFirstMeet1-2
IF ~~ THEN REPLY @3 GOTO StivanFirstMeet1-3
IF ~~ THEN REPLY @4 EXIT
END

CHAIN IF ~~ THEN TB#STIV StivanFirstMeet1-12
@60 

== TB#STIVJ IF ~IsValidForPartyDialog("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @61
== MINSCJ IF ~IsValidForPartyDialog("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @62
== TB#STIVJ IF ~IsValidForPartyDialog("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @63
== AERIEJ IF ~IsValidForPartyDialog("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @64
== TB#STIVJ IF ~IsValidForPartyDialog("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @65
== JAHEIRAJ IF ~IsValidForPartyDialog("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @66
== JANJ IF ~IsValidForPartyDialog("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @67
= @68
== TB#STIVJ IF ~IsValidForPartyDialog("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @69
== NALIAJ IF ~IsValidForPartyDialog("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @70
== TB#STIVJ IF ~IsValidForPartyDialog("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @71
== NALIAJ IF ~IsValidForPartyDialog("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @72
== TB#STIVJ IF ~IsValidForPartyDialog("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @73
== NALIAJ IF ~IsValidForPartyDialog("nalia") !StateCheck("nalia",CD_STATE_NOTVALID)~ THEN @74
== EDWINJ IF ~IsValidForPartyDialog("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @75
== HAERDAJ IF ~IsValidForPartyDialog("Haerdalis") !StateCheck("Haerdalis",CD_STATE_NOTVALID)~ THEN @76 
== YOSHJ IF ~IsValidForPartyDialog("Yoshimo") !StateCheck("yoshimo",CD_STATE_NOTVALID)~ THEN @77
== VICONJ IF ~IsValidForPartyDialog("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @78
== VALYGARJ IF ~IsValidForPartyDialog("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @79
== CERNDJ IF ~IsValidForPartyDialog("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @80 
== TB#STIVJ IF ~IsValidForPartyDialog("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @81
== KORGANJ IF ~IsValidForPartyDialog("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @82
== TB#STIVJ IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @83
== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @84
== TB#STIVJ IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @85
== ANOMENJ IF ~IsValidForPartyDialog("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @86
== KELDORJ IF ~IsValidForPartyDialog("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @87
EXIT
