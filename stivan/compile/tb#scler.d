BEGIN tb#scler

IF ~NumTimesTalkedTo(0) !GlobalGT("tb#StivanEntryTest","GLOBAL",1)~ THEN BEGIN pre_quest1
SAY ~Perdonatemi, <PRO_LADYLORD>, ma sono terribilmente indaffarato. Vi pregherei di tornare in un altro momento.~
IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0) !GlobalGT("tb#StivanEntryTest","GLOBAL",1)~ THEN BEGIN pre_quest2
SAY ~Uff... Anche questo è sistemato. Adesso mi restano soltanto altri trecentoquaranta cadaveri a cui trovare una collocazione!~
IF ~~ THEN EXIT
END

IF ~Global("tb#StivanEntryTest","GLOBAL",1)~ THEN BEGIN FirstDialogueClerk
SAY ~Salute a voi, <PRO_LADYLORD>. Come posso esservi d'aiuto?~
IF ~~ THEN REPLY ~Io... Ecco... Avrei bisogno di una tomba.~ GOTO FirstDialogueClerk1
IF ~~ THEN REPLY ~Il mio amico sta cercando una tomba dove riporre le ceneri dei suoi cari. Potete dirmi all'incirca quanto costerebbe?~ GOTO FirstDialogueClerk1
IF ~~ THEN REPLY ~Strano... Non siete isterico come gli altri impiegati nell'edificio.~ GOTO FirstDialogueClerk2
IF ~~ THEN REPLY ~Un'altra volta, magari.~ EXIT
END

IF ~~ THEN BEGIN FirstDialogueClerk2
SAY ~A differenza di quei pazzi scriteriati, io adoro il mio lavoro. Essere scortese con i cittadini, inoltre, lederebbe la mia immagine e manderebbe in fumo le mie possibilità di vincere il primo premio come miglior impiegato del <YEAR>.~
= ~(Wink wink) Posso aiutarvi in qualche modo?~
IF ~~ THEN REPLY ~Io... Ecco... Avrei bisogno di una tomba.~ GOTO FirstDialogueClerk1
IF ~~ THEN REPLY ~Il mio amico sta cercando una tomba dove riporre le ceneri dei suoi cari. Potete dirmi all'incirca quanto costerebbe?~ GOTO FirstDialogueClerk1
IF ~~ THEN REPLY ~Un'altra volta, magari.~ EXIT
END

IF ~~ THEN BEGIN FirstDialogueClerk1
SAY ~Sono desolato, ma giungete in un brutto momento. Attualmente siamo a corto di lapidi e affini.~
IF ~~ THEN REPLY ~Prego? Mi state forse dicendo di non avere più spazio per seppellire i morti?~ GOTO FirstDialogueClerk3
IF ~~ THEN REPLY ~Ma io ne ho bisogno. Cosa possiamo fare?~ GOTO FirstDialogueClerk3
IF ~~ THEN REPLY ~Capisco. Ritornerò tra qualche giorno, allora.~ GOTO FirstDialogueClerk4
IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN REPLY ~Sentito, Stivan? Temo che dovrai fare a meno della tua tomba. La faccenda è chiusa.~ EXTERN TB#STIVJ FirstDialogueClerk5
END

IF ~~ THEN BEGIN FirstDialogueClerk3
SAY ~Purtroppo è così. Da un mese a questa parte il numero dei morti è aumentato drasticamente, anche se quello dei cittadini scomparsi è ancora più alto. In genere muoiono una dozzina di persone al giorno - vuoi per la fame, vuoi perchè aggredite da un borseggiatore - ma adesso dobbiamo gestire una quantità di decessi incredibilmente alta.~
IF ~~ THEN GOTO FirstDialogueClerk4
END

IF ~~ THEN BEGIN FirstDialogueClerk4
SAY ~Dubito che la situazione cambierà tra qualche giorno. Il Consiglio dei Sei avrebbe dovuto approvare un piano di ampliamento del Cimitero, ma le recenti insurrezioni di Matzica stanno ritardando il tutto. Non vi resta nient'altro da fare che attendere come gli altri.~
IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN REPLY ~Sentito, Stivan? Temo che dovrai fare a meno della tua tomba. La faccenda è chiusa.~ EXTERN TB#STIVJ FirstDialogueClerk5
IF ~~ THEN REPLY ~E' possibile che non ci sia nemmeno una piccola nicchia, un buco dove infilare questa dannata urna?~ GOTO FirstDialogueClerk6
IF ~~ THEN REPLY ~Siete proprio sicuro di non potermi aiutare in nessun modo?~ GOTO FirstDialogueClerk6
END

IF ~~ THEN BEGIN FirstDialogueClerk6
SAY ~Beh... In realtà ci sarebbe un'alternativa, mio <PRO_LADYLORD>, ma è piuttosto disperata. Ve ne parlo soltanto perchè mi sembrate un <RACE> capace.~
= ~La maggior parte delle persone sta aspettando la costruzione di nuove cripte o l'ampliamento di altre. Tra quest'ultime, tuttavia, ve n'è una dove nemmeno gli Incappucciati osano mettere piede. Si vocifera che al suo interno riposi un re di antica stirpe noto per la sua sanguinarietà in vita, ma potrebbe semplicemente trattarsi di una leggenda.~
= ~Se siete abbastanza intrepido da andare a perquisirla o, nel peggior dei casi, da ripulirla da qualsiasi cosa si trovi al suo interno, la cripta è vostra. Gli abitanti di Athkatla sono molto superstiziosi, quindi dubito che qualcuno avrebbe il coraggio di comprarla.~
IF ~~ THEN REPLY ~E va bene. Andrò a dare un'occhiata allora.~ GOTO FirstDialogueClerk7
IF ~~ THEN REPLY ~Non mi sembra di avere molta scelta. Dov'è questa tomba?~ GOTO FirstDialogueClerk7
IF ~~ THEN REPLY ~Spiacente, ma non ho intenzione di profanare una tomba. La faccenda è chiusa, Stivan.~ EXTERN TB#STIVJ FirstDialogueClerk5
END

IF ~~ THEN BEGIN FirstDialogueClerk7
SAY ~La tomba si trova a nord ovest, vicino ad un lugubre monumento dedicato a Kelemvor.~
= ~Fate attenzione, mio <PRO_LADYLORD>. Sarebbe spiacevole se dovesse accadervi qualcosa.~
IF ~~ THEN DO ~SetGlobal("tb#stivanEntryTest","GLOBAL",2)~ UNSOLVED_JOURNAL %Alla ricerca di una tomba.

Un impiegato del Palazzo di Giustizia ci ha spiegato che al momento non ci sono tombe disponibili. Pare, tuttavia, che ve ne sia una in cui nessuno osa mettere piede a causa di sinistre leggende sull'essere che vi dimorerebbe. Per nulla impressionato da queste storie, ho deciso di andare ad esplorarla: eliminati gli eventuali pericoli, infatti, saremo liberi di deporvi l'urna di Stivan.% EXIT
END

APPEND TB#STIVJ
IF ~~ THEN BEGIN FirstDialogueClerk5
SAY ~Pensavo che ti saresti sforzato di più per aiutarmi, <CHARNAME>! Invece getti la spugna di fronte alla prima difficoltà! Puah! Non ho nulla da spartire con uno come te! Me ne vado!~
IF ~~ THEN DO ~SetGlobal("tb#StivanJoined","GLOBAL",0) LeaveParty() EscapeArea() EraseJournalEntry(%Alla ricerca di una tomba.

Mentre ci aggiravamo per i Moli abbiamo incontrato Stivan, un halfling nativo di Athkatla a cui ho chiesto di unirsi nella mia ricerca di Imoen e di Irenicus. In cambio di una tomba dove riporre l'urna contenente le ceneri dei suoi cari, Stivan si è offerto di farci da guida in città e di proteggerci dai... ehm... gabbiani. L'halfing mi ha suggerito di andare nel Quartiere Governativo e di rivolgermi a qualche impiegato nel Palazzo di Giustizia.%)~ SOLVED_JOURNAL %Alla ricerca di una tomba.

Non essendo riuscito a trovare una tomba in cui Stivan potesse riporre le ceneri dei suoi familiari, gli ho consigliato di rinunciarci. L’halfling ha quindi lasciato il gruppo infuriato, sostenendo che avrei potuto fare di più per aiutarlo.% EXIT
END
END