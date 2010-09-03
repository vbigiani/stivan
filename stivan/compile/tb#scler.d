BEGIN tb#scler

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

IF ~GlobalGT("tb#StivanEntryTest","GLOBAL",2)~ THEN BEGIN SecondDialogueClerk
SAY ~E' sempre un piacere rivedervi, mio <PRO_LADYLORD>. Ci sono novità?~
IF ~~ THEN REPLY ~Non ancora.~ GOTO SecondDialogueClerk1
IF ~Dead("bhcrypt")~ THEN REPLY ~Sì. Ho eliminato il precedente occupante della cripta.~ GOTO SecondDialogueClerk6
IF ~~ THEN REPLY ~Mi stavo chiedendo se posso rivolgerti qualche domanda.~ GOTO SecondDialogueClerk2
END

IF ~~ THEN BEGIN SecondDialogueClerk1
SAY ~Capisco. Tornerò al mio lavoro, allora.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SecondDialogueClerk2
SAY ~Ma certo. Non esitate a chiedere.~
IF ~~ THEN REPLY ~Cosa sai dei Ladri Tenebrosi?~ GOTO SecondDialogueClerk3
IF ~~ THEN REPLY ~A chi devo rivolgermi per poter ricorrere alla magia?~ GOTO SecondDialogueClerk4
IF ~~ THEN REPLY ~Una mia amica è stata rapita dagli Stregoni Incappucciati. Hai idea di dove tengano i loro prigionieri?~ GOTO SecondDialogueClerk5
END

IF ~~ THEN BEGIN SecondDialogueClerk3
SAY ~Brutta gente. Spero che non abbiate mai a che fare con quegli individui.~
IF ~~ THEN REPLY ~A chi devo rivolgermi per poter ricorrere alla magia?~ GOTO SecondDialogueClerk4
IF ~~ THEN REPLY ~Una mia amica è stata rapita dagli Stregoni Incappucciati. Hai idea di dove tengano i loro prigionieri?~ GOTO SecondDialogueClerk5
IF ~~ THEN REPLY ~Ora devo andare.~ GOTO SecondDialogueClerk1
END

IF ~~ THEN BEGIN SecondDialogueClerk4
SAY ~Parlate con Corneil. E' lui ad occuparsi di queste pratiche, anche se meriterebbe di andare a zappare la terra per la sua arroganza.~
IF ~~ THEN REPLY ~Cosa sai dei Ladri Tenebrosi?~ GOTO SecondDialogueClerk3
IF ~~ THEN REPLY ~Una mia amica è stata rapita dagli Stregoni Incappucciati. Hai idea di dove tengano i loro prigionieri?~ GOTO SecondDialogueClerk5
IF ~~ THEN REPLY ~Ora devo andare.~ GOTO SecondDialogueClerk1
END

IF ~~ THEN BEGIN SecondDialogueClerk5
SAY ~Temo di non poter esservi d'aiuto su questo. Io mi occupo unicamente di tombe.~
IF ~~ THEN REPLY ~Cosa sai dei Ladri Tenebrosi?~ GOTO SecondDialogueClerk3
IF ~~ THEN REPLY ~A chi devo rivolgermi per poter ricorrere alla magia?~ GOTO SecondDialogueClerk4
IF ~~ THEN REPLY ~Ora devo andare.~ GOTO SecondDialogueClerk1
END

IF ~~ THEN BEGIN SecondDialogueClerk6
SAY ~Quindi le voci di cui vi avevo parlato erano fondate. Molto bene... Ora dovrò semplicemente occuparmi delle pratiche burocratiche del caso. Nel giro di qualche settimana diventerete legittimi proprietari della tomba e ne potrete liberamente usufruire.~ 
IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN 
UNSOLVED_JOURNAL %Alla ricerca di una tomba.

L'impiegato nel Palazzo di Giustizia ha avviato le pratiche necessarie per far acquisire legalmente a Stivan la proprietà della cripta. Ha promesso di inviarci un messaggero non appena saranno ultimate e, nel frattempo, si è offerto di custodire al sicuro l'urna dell'halfling.% EXTERN TB#STIVJ SecondDialogueClerk8
IF ~OR(2) !IsValidForPartyDialog("tb#stiv") StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN GOTO SecondDialogueClerk7
END

IF ~~ THEN BEGIN SecondDialogueClerk7
SAY ~Ma vedo che il vostro amico non è qui con voi. Se non sbaglio, aveva parlato di un'urna che voleva riporre al suo interno. Tornate in sua compagnia, mio <PRO_LADYLORD>: potrei avere una soluzione al suo... ehm... "dilemma" in attesa che i documenti del caso siano ultimati.~
IF ~~ THEN EXIT
END

IF ~Global("EntryTest","GLOBAL",4)~ THEN BEGIN ThirdDialogueClerk
SAY ~Aspettavo con ansia di rivedervi, mio <PRO_LADYLORD>!~
IF ~OR(2) !IsValidForPartyDialog("tb#stiv") StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN GOTO ThirdDialogueClerk1-1
IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN GOTO ThirdDialogueClerk1-2
END 

IF ~~ THEN BEGIN ThirdDialogueClerk1-1
SAY ~I documenti per l’acquisizione della cripta sono stati ultimati, ma ho bisogno che il vostro amico li firmi. Tornate in sua compagnia.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ThirdDialogueClerk1-3
SAY ~Scrivete Lawrence! Lawrence Cutterwere!~
IF ~~ THEN EXIT
END


IF ~GlobalLT("tb#StivanEntryTest","GLOBAL",4)~ THEN BEGIN pre_quest1
SAY ~Perdonatemi, <PRO_LADYLORD>, ma sono terribilmente indaffarato. Vi pregherei di tornare in un altro momento.~
IF ~~ THEN EXIT
END

IF ~GlobalGT("tb#StivanEntryTest","GLOBAL",4)~ THEN BEGIN pre_quest2
SAY ~Uff... Anche questo è sistemato. Adesso mi restano soltanto altri trecentoquaranta cadaveri a cui trovare una collocazione!~
IF ~~ THEN EXIT
END


APPEND TB#STIVJ
IF ~~ THEN BEGIN FirstDialogueClerk5
SAY ~Pensavo che ti saresti sforzato di più per aiutarmi, <CHARNAME>! Invece getti la spugna di fronte alla prima difficoltà! Puah! Non ho nulla da spartire con uno come te! Me ne vado!~
IF ~~ THEN DO ~SetGlobal("tb#StivanJoined","GLOBAL",0) LeaveParty() EscapeArea()  EraseJournalEntry(%Alla ricerca di una tomba.

Mentre ci aggiravamo per i Moli abbiamo incontrato Stivan, un halfling nativo di Athkatla a cui ho chiesto di unirsi nella mia ricerca di Imoen e di Irenicus. In cambio di una tomba dove riporre l'urna contenente le ceneri dei suoi cari, Stivan si è offerto di farci da guida in città e di proteggerci dai... ehm... gabbiani. L'halfing mi ha suggerito di andare nel Quartiere Governativo e di rivolgermi a qualche impiegato nel Palazzo di Giustizia.%) EraseJournalEntry(%Alla ricerca di una tomba.

L'impiegato nel Palazzo di Giustizia ha avviato le pratiche necessarie per far acquisire legalmente a Stivan la proprietà della cripta. Ha promesso di inviarci un messaggero non appena saranno ultimate e, nel frattempo, si è offerto di custodire al sicuro l'urna dell'halfling.%) EraseJournalEntry(%Alla ricerca di una tomba.

Un impiegato del Palazzo di Giustizia ci ha spiegato che al momento non ci sono tombe disponibili. Pare, tuttavia, che ve ne sia una in cui nessuno osa mettere piede a causa di sinistre leggende sull'essere che vi dimorerebbe. Per nulla impressionato da queste storie, ho deciso di andare ad esplorarla: eliminati gli eventuali pericoli, infatti, saremo liberi di deporvi l'urna di Stivan.%) EraseJournalEntry(%Alla ricerca di una tomba.
 
Un messaggero ci ha informato che i documenti per l’acquisizione della cripta sono stati ultimati. Posso andare a ritirarli a qualsiasi ora dall’impiegato Lawrence nel Palazzo di Giustizia.%)~ SOLVED_JOURNAL %Alla ricerca di una tomba.

Non essendo riuscito a trovare una tomba in cui Stivan potesse riporre le ceneri dei suoi familiari, gli ho consigliato di rinunciarci. L’halfling ha quindi lasciato il gruppo infuriato, sostenendo che avrei potuto fare di più per aiutarlo.% EXIT
END
END

CHAIN IF ~~ THEN tb#stivj SecondDialogueClerk8
~Cosa?! Non posso aspettare così tanto tempo! La mia urna ha già corso il rischio di andare in frantumi non so quante volte!~
== TB#SCLER ~(Tossisce) In via del tutto eccezionale, signorino, potrei riporla nel magazzino dove gli Stregoni Incappucciati conservano i manufatti magici confiscati. Lì sarebbe indubbiamente al sicuro.~ 
== TB#STIVJ ~(Snort!) E sia. Tieni. Ma trattala con il dovuto riguardo, capito?~
== TB#SCLER ~Uhm... Decisamente di pessimo gusto...~
== TB#STIVJ ~A nessuno interessa il tuo parere!~
== TB#SCLER ~Allora a presto, mio <PRO_LADYLORD>. Sarete avvisato da un messaggero quando i documenti saranno pronti. Ricordatevi di passare dal sottoscritto per ritirare l'urna del vostro... ehm... "amico".~ DO ~SetGlobal("EntryTest","GLOBAL",3) TakePartyItem("tb#surn") AddXPObject(Player1,2000) AddXPObject(Player2,2000) AddXPObject(Player3,2000) AddXPObject(Player4,2000) AddXPObject(Player5,2000) AddXPObject(Player6,2000) AddXPObject("tb#Stiv",3000)~ 
EXIT

CHAIN IF ~~ THEN TB#SCLER ThirdDialogueClerk1-2
~I documenti per l’acquisizione della cripta sono stati ultimati. Ho soltanto bisogno di qualche firma del vostro amico.~
= ~Ehm… Siete capace di scrivere, mezzo uomo?~
== TB#STIVJ ~Certo! Dove devo firmare?~
== TB#SCLER ~Qui, qui e… Anche qui, prego.~
== TB#STIVJ ~…~
= ~… Fatto.~ 
== TB#SCLER ~Tsk. Che brutta calligrafia. Avreste fatto meglio a spacciarvi per analfabeta e a mettere una X.~
= ~Ed ecco a voi l’urna. Se volete accettare il mio consiglio, cambiatela: è un affronto al decoro e al gusto. Assomiglia ad un vaso da notte!~
== TB#STIVJ ~ (Snort!) Dà qui!~
DO ~GiveItemCreate("tb#sdocu","tb#stiv",0,0,0) GiveItemCreate("tb#surn","tb#stiv",0,0,0) SetGlobal("EntryTest","GLOBAL",5)~
== TB#SCLER ~(Wink wink) Mio <PRO_LADYLORD>, se la qualità del mio lavoro vi soddisfa, non esitate a votarmi quando verrà nominato il miglior impiegato di Athkatla del <YEAR>.~
END 
IF ~~ THEN REPLY ~Ehm... Certo, potete contarci.~ EXTERN TB#SCLER ThirdDialogueClerk1-3
IF ~~ THEN REPLY ~Hai semplicemente fatto il tuo dovere.~ EXTERN TB#SCLER ThirdDialogueClerk1-3
IF ~~ THEN REPLY ~Andiamocene da questo posto *immediatamente*. Rischio di morire soffocato dalla burocrazia che aleggia in queste sale!~ EXTERN TB#SCLER ThirdDialogueClerk1-3
