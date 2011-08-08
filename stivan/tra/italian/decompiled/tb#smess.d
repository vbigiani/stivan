BEGIN TB#SMESS

IF ~Global("tb#stivanEntryTest","GLOBAL",3)~ THEN BEGIN DocumentsAreReady
SAY ~Perdonatemi per il disturbo, <PRO_SIRMAAM>. E’ forse questo il gruppo in cui viaggia l’halfling Stivan?~
IF ~~ THEN REPLY ~Esatto. Si vede dalle nostre facce stravolte, eh?~ EXTERN TB#STIVJ DocumentsAreReady1-1
IF ~~ THEN REPLY ~Stivan, quest’uomo chiede di te.~ EXTERN TB#STIVJ DocumentsAreReady1-2
IF ~~ THEN REPLY ~Non ho idea di chi tu stia parlando.~ EXTERN TB#STIVJ DocumentsAreReady1-3
END

CHAIN IF ~~ THEN TB#SMESS DocumentsAreReady1-4
~Finalmente vi ho trovato. Siete stato irreperibile per lungo tempo. Avevo quasi iniziato a temere il peggio.~
= ~Sono stato incaricato di informarvi che i documenti da voi richiesti sono pronti. Li potrete ritirare presso il Palazzo di Giustizia a qualsiasi ora. Signor Lawrence lavora anche di notte pur di riuscire a vincere il premio come miglior impiegato dell’anno.~
= ~Non ho altro da aggiungere. Vi auguro una buona <DAYNIGHT>.~ 
== TB#STIVJ ~Finalmente i resti dei miei familiari potranno riposare in pace. Non dobbiamo far altro che andare al Quartiere Governativo, prendere urna e scartoffie e recarci nella cripta che ho appena acquisito a tutti gli effetti.~
END
IF ~~ THEN REPLY ~Allora non perdiamo altro tempo in chiacchiere.~ EXTERN TB#STIVJ DocumentsAreReady1-5
IF ~~ THEN REPLY ~Non ora, Stivan. Devo dare priorità alla ricerca di alleati per combattere Bodhi.~ EXTERN TB#STIVJ DocumentsAreReady1-6
IF ~~ THEN REPLY ~Perché non ci precedi? Mentre ultimiamo i preparativi per la battaglia contro Bodhi, potresti andare a prenderli te.~ EXTERN TB#STIVJ DocumentsAreReady1-7

APPEND TB#STIVJ
IF ~~ THEN BEGIN DocumentsAreReady1-1
SAY ~Heh. Ho come la sensazione che ci fosse dello spiccio sarcasmo nella tua risposta, <CHARNAME>…~
IF ~~ THEN EXTERN TB#SMESS DocumentsAreReady1-4
END

IF ~~ THEN BEGIN DocumentsAreReady1-2
SAY ~Heh. Di sicuro sarà uno dei miei acquirenti rimasto senza piume durante la mia assenza. ~
IF ~~ THEN EXTERN TB#SMESS DocumentsAreReady1-4
END

IF ~~ THEN BEGIN DocumentsAreReady1-3
SAY ~<CHARNAME>, sono forse diventato invisibile ai tuoi occhi? Eccomi, sono io Stivan!~
IF ~~ THEN EXTERN TB#SMESS DocumentsAreReady1-4
END

IF ~~ THEN BEGIN DocumentsAreReady1-5
SAY ~Yeah! Andiamo!~
IF ~~ THEN DO ~SetGlobal("tb#stivanEntryTest","GLOBAL",4) ActionOverride("tb#smess",DestroySelf())~
UNSOLVED_JOURNAL ~Alla ricerca di una tomba.
 
Un messaggero ci ha informato che i documenti per l’acquisizione della cripta sono stati ultimati. Posso andare a ritirarli a qualsiasi ora dall’impiegato Lawrence nel Palazzo di Giustizia.~ EXIT
END

IF ~~ THEN BEGIN DocumentsAreReady1-6
SAY ~(Snort!) Stivan il Cacciatore è più che sufficiente per abbattere quella bruttona! Ad ogni modo, se proprio vuoi cercare qualcuno che ci aiuti, cerca di fare in fretta.~
IF ~~ THEN DO ~SetGlobal("tb#stivanEntryTest","GLOBAL",4) ActionOverride("tb#smess",DestroySelf())~
UNSOLVED_JOURNAL ~Alla ricerca di una tomba.
 
Un messaggero ci ha informato che i documenti per l’acquisizione della cripta sono stati ultimati. Posso andare a ritirarli a qualsiasi ora dall’impiegato Lawrence nel Palazzo di Giustizia.~ EXIT
END

IF ~~ THEN BEGIN DocumentsAreReady1-7
SAY ~Preferisco che tu venga con me, <CHARNAME>. In tua assenza potrei mettere le mani al collo a quell’impiegato...~
IF ~~ THEN DO ~SetGlobal("tb#stivanEntryTest","GLOBAL",4) ActionOverride("tb#smess",DestroySelf())~
UNSOLVED_JOURNAL ~Alla ricerca di una tomba.
 
Un messaggero ci ha informato che i documenti per l’acquisizione della cripta sono stati ultimati. Posso andare a ritirarli a qualsiasi ora dall’impiegato Lawrence nel Palazzo di Giustizia.~ EXIT
END
END
