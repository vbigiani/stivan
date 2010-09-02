BEGIN TB#STIVP

IF ~Global("tb#StivanJoined","LOCALS",1)~ THEN BEGIN StivanKickedOut
SAY ~*Ahem* Chiedo scusa? Stai forse congedando il più abile cacciatore di gabbiani di tutta Faerun?~
IF ~~ THEN REPLY ~Ho altre priorità al momento. Ci rivedremo quando avrò bisogno delle tue abilità.~ GOTO StivanKickedOut1-1
IF ~~ THEN REPLY ~Oh, no. Non mi stavo riferendo a te.~ GOTO StivanKickedOut1-2
END

IF ~~ THEN BEGIN StivanKickedOut1-1
SAY ~(Snort!) E va bene! Andrò al Quartiere Governativo di Athkatla. Magari lì riuscirò a vendere qualche piuma di gabbiano ai nobili per i loro ridicoli copricapo...~
IF ~~ THEN REPLY ~Aspettami qui, Stivan. Tornerò quanto prima.~ DO ~SetGlobal("tb#StivanJoined","LOCALS",0) EscapeAreaMove("AR1000",2000,2000,0)~ EXIT 
IF ~~ THEN REPLY ~Va bene, ci vedremo la'.~ DO ~SetGlobal("tb#StivanJoined","LOCALS",0)~ EXIT
END

IF ~~ THEN BEGIN StivanKickedOut1-2
SAY ~Heh. Non ne dubitavo. Saresti spacciato senza di me.~
IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~Global("tb#StivanJoined","LOCALS",0)~ THEN BEGIN StivanComesBack
SAY ~Vengano, signori e signore, vengano! Due piume al prezzo di tre! No, intendevo due piume al prezzo di quattro!~
= ~Uhm… Ho come l’impressione di star sbagliando qualcosa…~
= ~*Ahem* Guarda un po’ chi si rivede! <CHARNAME>! Come stai? Hai infine deciso di ricorrere ai servigi di Stivan, il grande cacciatore di gabbiani?~
IF ~~ THEN REPLY ~Mi hai tolto le parole di bocca. Coraggio, andiamo.~ GOTO StivanComesBack1-1
IF ~~ THEN REPLY ~Ben ritrovato, Stivan. Abbiamo sentito tutti la tua mancanza.~ GOTO StivanComesBack1-1
IF ~~ THEN REPLY ~Per il momento no. Ti lascio alla vendita delle tue piume.~ GOTO StivanComesBack1-2
END

IF ~~ THEN BEGIN StivanComesBack1-1
SAY ~Heh. Modestia a parte, sono insostituibile.~
IF ~~ THEN REPLY ~… Come non detto. Ho cambiato idea.~ GOTO StivanComesBack1-2
IF ~~ THEN REPLY ~Certo, Stivan. Vogliamo andare adesso?~ GOTO StivanComesBack1-3
IF ~~ THEN REPLY ~Muoviti, halfling, prima che perda la pazienza.~ GOTO StivanComesBack1-3
END

IF ~~ THEN BEGIN StivanComesBack1-2
SAY ~(Snort!) Allora cosa sei venuto a fare? Lasciami tornare ai miei affari!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN StivanComesBack1-3
SAY ~Eccomi, eccomi!~
IF ~~ THEN DO ~SetGlobal("tb#StivanJoined","LOCALS",1) JoinParty()~ EXIT
END
