BEGIN tb#scler

IF ~Global("tb#StivanEntryTest","GLOBAL",1)~ THEN BEGIN FirstDialogueClerk
SAY @0
IF ~~ THEN REPLY @1 GOTO FirstDialogueClerk1
IF ~~ THEN REPLY @2 GOTO FirstDialogueClerk1
IF ~~ THEN REPLY @3 GOTO FirstDialogueClerk2
IF ~~ THEN REPLY @4 EXIT
END

IF ~~ THEN BEGIN FirstDialogueClerk2
SAY @5
= @6
IF ~~ THEN REPLY @1 GOTO FirstDialogueClerk1
IF ~~ THEN REPLY @2 GOTO FirstDialogueClerk1
IF ~~ THEN REPLY @4 EXIT
END

IF ~~ THEN BEGIN FirstDialogueClerk1
SAY @7
IF ~~ THEN REPLY @8 GOTO FirstDialogueClerk3
IF ~~ THEN REPLY @9 GOTO FirstDialogueClerk3
IF ~~ THEN REPLY @10 GOTO FirstDialogueClerk4
IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN REPLY @11 EXTERN TB#STIVJ FirstDialogueClerk5
END

IF ~~ THEN BEGIN FirstDialogueClerk3
SAY @12
IF ~~ THEN GOTO FirstDialogueClerk4
END

IF ~~ THEN BEGIN FirstDialogueClerk4
SAY @13
IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN REPLY @11 EXTERN TB#STIVJ FirstDialogueClerk5
IF ~~ THEN REPLY @14 GOTO FirstDialogueClerk6
IF ~~ THEN REPLY @15 GOTO FirstDialogueClerk6
END

IF ~~ THEN BEGIN FirstDialogueClerk6
SAY @16
= @17
= @18
IF ~~ THEN REPLY @19 GOTO FirstDialogueClerk7
IF ~~ THEN REPLY @20 GOTO FirstDialogueClerk7
IF ~~ THEN REPLY @21 EXTERN TB#STIVJ FirstDialogueClerk5
END

IF ~~ THEN BEGIN FirstDialogueClerk7
SAY @22
= @23
IF ~~ THEN DO ~SetGlobal("tb#stivanEntryTest","GLOBAL",2)~ UNSOLVED_JOURNAL @24 EXIT
END

IF ~Global("tb#StivanEntryTest","GLOBAL",2)~ THEN BEGIN SecondDialogueClerk
SAY @25
IF ~~ THEN REPLY @26 GOTO SecondDialogueClerk1
IF ~Dead("bhcrypt")~ THEN REPLY @27 GOTO SecondDialogueClerk6
IF ~~ THEN REPLY @28 GOTO SecondDialogueClerk2
END

IF ~~ THEN BEGIN SecondDialogueClerk1
SAY @29
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SecondDialogueClerk2
SAY @30
IF ~~ THEN REPLY @31 GOTO SecondDialogueClerk3
IF ~~ THEN REPLY @32 GOTO SecondDialogueClerk4
IF ~~ THEN REPLY @33 GOTO SecondDialogueClerk5
END

IF ~~ THEN BEGIN SecondDialogueClerk3
SAY @34
IF ~~ THEN REPLY @32 GOTO SecondDialogueClerk4
IF ~~ THEN REPLY @33 GOTO SecondDialogueClerk5
IF ~~ THEN REPLY @35 GOTO SecondDialogueClerk1
END

IF ~~ THEN BEGIN SecondDialogueClerk4
SAY @36
IF ~~ THEN REPLY @31 GOTO SecondDialogueClerk3
IF ~~ THEN REPLY @33 GOTO SecondDialogueClerk5
IF ~~ THEN REPLY @35 GOTO SecondDialogueClerk1
END

IF ~~ THEN BEGIN SecondDialogueClerk5
SAY @37
IF ~~ THEN REPLY @31 GOTO SecondDialogueClerk3
IF ~~ THEN REPLY @32 GOTO SecondDialogueClerk4
IF ~~ THEN REPLY @35 GOTO SecondDialogueClerk1
END

IF ~~ THEN BEGIN SecondDialogueClerk6
SAY @38 
IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN 
UNSOLVED_JOURNAL @39 EXTERN TB#STIVJ SecondDialogueClerk8
IF ~OR(2) !InParty("tb#stiv") StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN GOTO SecondDialogueClerk7
END

IF ~~ THEN BEGIN SecondDialogueClerk7
SAY @40
IF ~~ THEN EXIT
END

IF ~Global("tb#stivanEntryTest","GLOBAL",4)~ THEN BEGIN ThirdDialogueClerk
SAY @41
IF ~OR(2) !InParty("tb#stiv") StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN GOTO ThirdDialogueClerk1-1
IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN GOTO ThirdDialogueClerk1-2
END 

IF ~~ THEN BEGIN ThirdDialogueClerk1-1
SAY @42
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ThirdDialogueClerk1-3
SAY @43
IF ~~ THEN EXIT
END


IF ~GlobalLT("tb#StivanEntryTest","GLOBAL",4)~ THEN BEGIN pre_quest1
SAY @44
IF ~~ THEN EXIT
END

IF ~GlobalGT("tb#StivanEntryTest","GLOBAL",4)~ THEN BEGIN pre_quest2
SAY @45
IF ~~ THEN EXIT
END


APPEND TB#STIVJ
IF ~~ THEN BEGIN FirstDialogueClerk5
SAY @46
IF ~~ THEN DO %SetGlobal("tb#StivanJoined","GLOBAL",0) LeaveParty() EscapeArea()  EraseJournalEntry(@47) EraseJournalEntry(@39) EraseJournalEntry(@24) EraseJournalEntry(@48)% SOLVED_JOURNAL @49 EXIT
END
END

CHAIN IF ~~ THEN tb#stivj SecondDialogueClerk8
@50
== TB#SCLER @51 
== TB#STIVJ @52
== TB#SCLER @53
== TB#STIVJ @54
== TB#SCLER @55 DO ~SetGlobal("tb#stivanEntryTest","GLOBAL",3) TakePartyItem("tb#surn") AddXPObject(Player1,2000) AddXPObject(Player2,2000) AddXPObject(Player3,2000) AddXPObject(Player4,2000) AddXPObject(Player5,2000) AddXPObject(Player6,2000) AddXPObject("tb#Stiv",3000)~ 
EXIT

CHAIN IF ~~ THEN TB#SCLER ThirdDialogueClerk1-2
@56
= @57
== TB#STIVJ @58
== TB#SCLER @59
== TB#STIVJ @60
= @61 
== TB#SCLER @62
= @63
== TB#STIVJ @64
DO ~GiveItemCreate("tb#sdocu","tb#stiv",0,0,0) GiveItemCreate("tb#surn","tb#stiv",0,0,0) SetGlobal("tb#stivanEntryTest","GLOBAL",5)~
== TB#SCLER @65
END 
IF ~~ THEN REPLY @66 EXTERN TB#SCLER ThirdDialogueClerk1-3
IF ~~ THEN REPLY @67 EXTERN TB#SCLER ThirdDialogueClerk1-3
IF ~~ THEN REPLY @68 EXTERN TB#SCLER ThirdDialogueClerk1-3


// miscellaneous employees
APPEND CIVIL02
IF WEIGHT #-1 ~Global("tb#StivanEntryTest","GLOBAL",1) InParty("tb#stiv")~ THEN BEGIN FemaleClerk
SAY @69
IF ~~ THEN REPLY @70 GOTO FemaleClerk1-1
IF ~~ THEN REPLY @71 GOTO FemaleClerk1-2
IF ~~ THEN REPLY @72 EXIT
END

IF ~~ THEN FemaleClerk1-1
SAY @73
IF ~~ THEN EXIT
END

IF ~~ THEN FemaleClerk1-2
SAY @74
IF ~~ THEN EXIT
END
END

APPEND CLERK01
IF WEIGHT #-1 ~Global("tb#StivanEntryTest","GLOBAL",1) InParty("tb#stiv")~ THEN BEGIN ConfusedClerk
SAY @75
= @76
IF ~~ THEN REPLY @77 GOTO ConfusedClerk1-1
IF ~~ THEN REPLY @78 EXIT
END

IF ~~ THEN ConfusedClerk1-1
SAY @79
= @80
= @81
= @82
= @83
IF ~~ THEN REPLY @84 GOTO ConfusedClerk1-2
IF ~~ THEN REPLY @85 GOTO ConfusedClerk1-2
IF ~~ THEN REPLY @86 EXIT
END

IF ~~ THEN ConfusedClerk1-2
SAY @87
IF ~~ THEN EXIT
END
END

APPEND COUNSEC
IF WEIGHT #-1 ~Global("tb#StivanEntryTest","GLOBAL",1) InParty("tb#stiv")~ THEN BEGIN GovernmentOfficial
SAY @88
IF ~~ THEN REPLY @89 GOTO GovernmentOfficial1-1
IF ~~ THEN REPLY @90 GOTO GovernmentOfficial1-1
IF ~~ THEN REPLY @91 EXIT
END

IF ~~ THEN GovernmentOfficial1-1
SAY @92
IF ~~ THEN EXIT
END
END

APPEND CIVIL03
IF WEIGHT #-1 ~Global("tb#StivanEntryTest","GLOBAL",1) InParty("tb#stiv")~ THEN BEGIN NiceClerk
SAY @93
IF ~~ THEN REPLY @94 GOTO NiceClerk1-1
IF ~~ THEN REPLY @95 GOTO NiceClerk1-1
IF ~~ THEN REPLY @96 EXIT
END

IF ~~ THEN NiceClerk1-1
SAY @97
= @98
IF ~~ THEN EXIT
END
END
