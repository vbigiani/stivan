BEGIN TB#STIVJ

IF ~InParty("tb#stiv")
InParty(Player1)
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0)
!Global("tb#stivanEntryTest","GLOBAL",3) 
Global("tb#UrnBroken","GLOBAL",1)~ THEN BEGIN WarnUrnBroken
SAY ~TO BE WRITTEN Hey, <CHARNAME>, ti dispiace sbrigarti a trovare un posto per la mia urna?~
IF ~~ THEN DO ~SetGlobalTimer("tb#stivanEntryTimer","GLOBAL",FOUR_DAYS) IncrementGlobal("tb#UrnBroken","GLOBAL",1)~ EXIT
END

IF ~InParty("tb#stiv")
InParty(Player1)
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0)
!Global("tb#stivanEntryTest","GLOBAL",3) 
Global("tb#UrnBroken","GLOBAL",3)~ THEN BEGIN UrnBroken
SAY ~Uhm?~
= ~C'è qualcosa che non va. C'è qualcosa di strano nel mio zaino.~
= ~Avevo disposto gli oggetti in modo che il peso fosse equamente distribuito, ma...~
= ~Eeeekkk! Eeeeeekkkkk! EEEEEKKKKK!~
IF ~~ THEN DO ~SetGlobal("tb#UrnBroken","GLOBAL",4)~ REPLY ~Tutto a posto, Stivan?~ GOTO UrnBroken1-1
IF ~~ THEN DO ~SetGlobal("tb#UrnBroken","GLOBAL",4)~  REPLY ~Per gli dei, halfling! Potresti evitare di urlare in questo modo?~ GOTO UrnBroken1-1
IF ~~ THEN DO ~SetGlobal("tb#UrnBroken","GLOBAL",4)~  REPLY ~Sistemerai i tuoi averi quando faremo una sosta. Adesso non abbiamo tempo per queste cose.~ GOTO UrnBroken1-1
END

IF ~~ THEN BEGIN UrnBroken1-1
SAY ~La... La mia urna! E' andata in mille pezzi! E' completamente in frantumi!~
= ~*SOB!* I... I miei cari... Sparsi al vento... In questo modo...~
= ~E'... E' tutta colpa tua, <CHARNAME>! Mi avevi promesso che l'avremmo riposta in un luogo sicuro, invece non ti sei minimamente interessato alla mia richiesta!~
IF ~~ THEN REPLY ~Immagino che si sia rotta nel corso dell'ultimo combattimento. Mi dispiace, Stivan.~ GOTO UrnBroken1-2
IF ~~ THEN REPLY ~Hai ragione. Me ne sono completamente dimenticato. Rimedierò subito!~ GOTO UrnBroken1-2
IF ~~ THEN REPLY ~Cerca di essere comprensivo. Ci sono così tante cose di cui devo occuparmi...~ GOTO UrnBroken1-2
END

IF ~~ THEN BEGIN UrnBroken1-2
SAY ~(Snort!) Taci! Le tue scuse non significano nulla! La memoria dei miei familiari è per sempre compromessa, e tu ne sei responsabile!~
= ~Io... Non ho la benchè minima intenzione di restare più a lungo con te. Addio, <CHARNAME>! Possano i gabbiani cibarsi dei tuoi putridi resti!~ 
IF ~~ THEN DO ~SetGlobal("StivanJoined","GLOBAL",0) LeaveParty() EscapeArea() EraseJournalEntry(%Alla ricerca di una tomba.

Mentre ci aggiravamo per i Moli abbiamo incontrato Stivan, un halfling nativo di Athkatla a cui ho chiesto di unirsi nella mia ricerca di Imoen e di Irenicus. In cambio di una tomba dove riporre l'urna contenente le ceneri dei suoi cari, Stivan si è offerto di farci da guida in città e di proteggerci dai... ehm... gabbiani. L'halfing mi ha suggerito di andare nel Quartiere Governativo e di rivolgermi a qualche impiegato nel Palazzo di Giustizia.%)~
SOLVED_JOURNAL %Alla ricerca di una tomba.

L'urna contenente le ceneri dei familiari di Stivan si è rotta prima che riuscissi a trovare un posto in cui riporla. L'halfling, infuriato, ha lasciato il gruppo.% EXIT
END
