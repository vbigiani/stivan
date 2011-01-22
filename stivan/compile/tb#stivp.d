BEGIN TB#STIVP

IF ~Global("tb#StivanJoined","GLOBAL",1)~ THEN BEGIN StivanKickedOut
SAY @0
IF ~~ THEN REPLY @1 GOTO StivanKickedOut1-1
IF ~~ THEN REPLY @2 GOTO StivanKickedOut1-2
END

IF ~~ THEN BEGIN StivanKickedOut1-1
SAY @3
IF ~~ THEN REPLY @4 DO ~SetGlobal("tb#StivanJoined","GLOBAL",0)~ EXIT 
IF ~~ THEN REPLY @5 DO ~SetGlobal("tb#StivanJoined","GLOBAL",0) EscapeAreaMove("AR1000",2000,2000,0)~ EXIT
END

IF ~~ THEN BEGIN StivanKickedOut1-2
SAY @6
IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~Global("tb#StivanJoined","GLOBAL",0)~ THEN BEGIN StivanComesBack
SAY @7
= @8
= @9
IF ~~ THEN REPLY @10 GOTO StivanComesBack1-1
IF ~~ THEN REPLY @11 GOTO StivanComesBack1-1
IF ~~ THEN REPLY @12 GOTO StivanComesBack1-2
END

IF ~~ THEN BEGIN StivanComesBack1-1
SAY @13
IF ~~ THEN REPLY @14 GOTO StivanComesBack1-2
IF ~~ THEN REPLY @15 GOTO StivanComesBack1-3
IF ~~ THEN REPLY @16 GOTO StivanComesBack1-3
END

IF ~~ THEN BEGIN StivanComesBack1-2
SAY @17
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN StivanComesBack1-3
SAY @18
IF ~~ THEN DO ~SetGlobal("tb#StivanJoined","GLOBAL",1) JoinParty()~ EXIT
END
