BEGIN TB#STIVP

IF ~Global("tb#StivanJoined","GLOBAL",1)~ THEN BEGIN StivanKickedOut
SAY ~*Ahem* Pardon? Are you turning down the most skilled seagull hunter in Faerun?~
IF ~~ THEN REPLY ~I have other priorities for the moment. We'll meet again once I need again your abilities.~ GOTO StivanKickedOut1-1
IF ~~ THEN REPLY ~Oh, no. I wasn't talking about you.~ GOTO StivanKickedOut1-2
END

IF ~~ THEN BEGIN StivanKickedOut1-1
SAY ~(Snort!) Very well! We'll meet at the Government Quarter in Athkatla. Maybe I could sell some seagull plumes to the nobles for their ridiculous headgear...~
IF ~~ THEN REPLY ~Wait here, Stivan. I'll be back as soon as possible.~ DO ~SetGlobal("tb#StivanJoined","GLOBAL",0)~ EXIT 
IF ~~ THEN REPLY ~Very well, we'll meet here.~ DO ~SetGlobal("tb#StivanJoined","GLOBAL",0) EscapeAreaMove("AR1000",2000,2000,0)~ EXIT
END

IF ~~ THEN BEGIN StivanKickedOut1-2
SAY ~Heh. I had no doubt. You'd be dead without me.~
IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~Global("tb#StivanJoined","GLOBAL",0)~ THEN BEGIN StivanComesBack
SAY ~Come, ladies and gents, come! Two plumes for the price of three! No, wait, two plumes for the price of four!~
= ~Uhm... I'm afraid I'm doing something wrong...~
= ~*Ahem* Look who's here! <CHARNAME>! How are you? Did you decide at last to require again the services of Stivan, the famous seagull hunter?~
IF ~~ THEN REPLY ~You said it yourself. Let's go.~ GOTO StivanComesBack1-1
IF ~~ THEN REPLY ~Hello to you, Stivan. We all felt your absence.~ GOTO StivanComesBack1-1
IF ~~ THEN REPLY ~Not right now. Good luck in your plume peddling.~ GOTO StivanComesBack1-2
END

IF ~~ THEN BEGIN StivanComesBack1-1
SAY ~Heh. Modestly, there's no-one like me.~
IF ~~ THEN REPLY ~... I changed my mind. Goodbye.~ GOTO StivanComesBack1-2
IF ~~ THEN REPLY ~Sure, Stivan. Do you want to go now?~ GOTO StivanComesBack1-3
IF ~~ THEN REPLY ~Move, halfling, before I lose my temper.~ GOTO StivanComesBack1-3
END

IF ~~ THEN BEGIN StivanComesBack1-2
SAY ~(Snort!) Why did you come, then? Let me handle my business!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN StivanComesBack1-3
SAY ~Here I come, wait for me!~
IF ~~ THEN DO ~SetGlobal("tb#StivanJoined","GLOBAL",1) JoinParty()~ EXIT
END
