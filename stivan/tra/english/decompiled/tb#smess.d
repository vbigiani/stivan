BEGIN TB#SMESS

IF ~Global("tb#stivanEntryTest","GLOBAL",3)~ THEN BEGIN DocumentsAreReady
SAY ~I am sorry if I'm disturbing you, <PRO_SIRMAAM>. Is this the party where the halfling Stivan travels?~
IF ~~ THEN REPLY ~Correct. It shows by our tired faces, eh?~ EXTERN TB#STIVJ DocumentsAreReady1-1
IF ~~ THEN REPLY ~Stivan, this man is asking of you.~ EXTERN TB#STIVJ DocumentsAreReady1-2
IF ~~ THEN REPLY ~I have no idea whom are you talking about.~ EXTERN TB#STIVJ DocumentsAreReady1-3
END

CHAIN IF ~~ THEN TB#SMESS DocumentsAreReady1-4
~I found you at last. You've been impossible to find for far too long - I was beginning to worry for the worse.~
= ~I was tasked with informing you that the documents of requested are ready, and you can go collect them any time you wish. Mister Lawrence works night and day hoping to be elected as Employee of the Year,~
= ~I have nothing else to add. Have a good <DAYNIGHT>.~ 
== TB#STIVJ ~Finally the ashes of my loved ones will rest in peace. We just need to go to the Government Quarter, collect urn and paperwork and go in my lawfully-bought crypt.~
END
IF ~~ THEN REPLY ~Let's not waste any time chattering, in that case.~ EXTERN TB#STIVJ DocumentsAreReady1-5
IF ~~ THEN REPLY ~Not now, Stivan. I must look for allies against Bodhi.~ EXTERN TB#STIVJ DocumentsAreReady1-6
IF ~~ THEN REPLY ~Why don't you go there ahead of us? While we finish readying the battle against Bodhi, you could handle all matters by yourself.~ EXTERN TB#STIVJ DocumentsAreReady1-7

APPEND TB#STIVJ
IF ~~ THEN BEGIN DocumentsAreReady1-1
SAY ~Heh. It sounded as if you were being sarcastic, <CHARNAME>...~
IF ~~ THEN EXTERN TB#SMESS DocumentsAreReady1-4
END

IF ~~ THEN BEGIN DocumentsAreReady1-2
SAY ~Heh. It must be one of my usual buyers - he must have run out of plumes while we were gone.~
IF ~~ THEN EXTERN TB#SMESS DocumentsAreReady1-4
END

IF ~~ THEN BEGIN DocumentsAreReady1-3
SAY ~<CHARNAME>, have I become invisible? I am Stivan!~
IF ~~ THEN EXTERN TB#SMESS DocumentsAreReady1-4
END

IF ~~ THEN BEGIN DocumentsAreReady1-5
SAY ~Yeah! Let's go!~
IF ~~ THEN DO ~SetGlobal("tb#stivanEntryTest","GLOBAL",4) ActionOverride("tb#smess",DestroySelf())~
UNSOLVED_JOURNAL ~Looking for a tomb.

A messenger informed us that the documents for the transferal of the crypt are ready. I can go pick them up any time I wish from the clerk Lawrence in the Council of Six building.~ EXIT
END

IF ~~ THEN BEGIN DocumentsAreReady1-6
SAY ~(Snort!) Stivan the Hunter is enough to handle that meanie! Either way, if you really need to look for further help, try and hurry.~
IF ~~ THEN DO ~SetGlobal("tb#stivanEntryTest","GLOBAL",4) ActionOverride("tb#smess",DestroySelf())~
UNSOLVED_JOURNAL ~Looking for a tomb.

A messenger informed us that the documents for the transferal of the crypt are ready. I can go pick them up any time I wish from the clerk Lawrence in the Council of Six building.~ EXIT
END

IF ~~ THEN BEGIN DocumentsAreReady1-7
SAY ~I'd rather you come with me, <CHARNAME>. I could strangle that clerk if I went alone...~
IF ~~ THEN DO ~SetGlobal("tb#stivanEntryTest","GLOBAL",4) ActionOverride("tb#smess",DestroySelf())~
UNSOLVED_JOURNAL ~Looking for a tomb.

A messenger informed us that the documents for the transferal of the crypt are ready. I can go pick them up any time I wish from the clerk Lawrence in the Council of Six building.~ EXIT
END
END
