BEGIN TB#SMESS

IF ~Global("tb#stivanEntryTest","GLOBAL",3)~ THEN BEGIN DocumentsAreReady
SAY @0
IF ~~ THEN REPLY @1 EXTERN TB#STIVJ DocumentsAreReady1-1
IF ~~ THEN REPLY @2 EXTERN TB#STIVJ DocumentsAreReady1-2
IF ~~ THEN REPLY @3 EXTERN TB#STIVJ DocumentsAreReady1-3
END

CHAIN IF ~~ THEN TB#SMESS DocumentsAreReady1-4
@4
= @5
= @6 
== TB#STIVJ @7
END
IF ~~ THEN REPLY @8 EXTERN TB#STIVJ DocumentsAreReady1-5
IF ~~ THEN REPLY @9 EXTERN TB#STIVJ DocumentsAreReady1-6
IF ~~ THEN REPLY @10 EXTERN TB#STIVJ DocumentsAreReady1-7

APPEND TB#STIVJ
IF ~~ THEN BEGIN DocumentsAreReady1-1
SAY @11
IF ~~ THEN EXTERN TB#SMESS DocumentsAreReady1-4
END

IF ~~ THEN BEGIN DocumentsAreReady1-2
SAY @12
IF ~~ THEN EXTERN TB#SMESS DocumentsAreReady1-4
END

IF ~~ THEN BEGIN DocumentsAreReady1-3
SAY @13
IF ~~ THEN EXTERN TB#SMESS DocumentsAreReady1-4
END

IF ~~ THEN BEGIN DocumentsAreReady1-5
SAY @14
IF ~~ THEN DO ~SetGlobal("tb#stivanEntryTest","GLOBAL",4) ActionOverride("tb#smess",DestroySelf())~
UNSOLVED_JOURNAL @15 EXIT
END

IF ~~ THEN BEGIN DocumentsAreReady1-6
SAY @16
IF ~~ THEN DO ~SetGlobal("tb#stivanEntryTest","GLOBAL",4) ActionOverride("tb#smess",DestroySelf())~
UNSOLVED_JOURNAL @15 EXIT
END

IF ~~ THEN BEGIN DocumentsAreReady1-7
SAY @17
IF ~~ THEN DO ~SetGlobal("tb#stivanEntryTest","GLOBAL",4) ActionOverride("tb#smess",DestroySelf())~
UNSOLVED_JOURNAL @15 EXIT
END
END
