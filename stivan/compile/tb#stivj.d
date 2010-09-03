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
IF ~~ THEN DO ~SetGlobal("StivanJoined","GLOBAL",0) LeaveParty() EscapeArea()  EraseJournalEntry(%Alla ricerca di una tomba.

Mentre ci aggiravamo per i Moli abbiamo incontrato Stivan, un halfling nativo di Athkatla a cui ho chiesto di unirsi nella mia ricerca di Imoen e di Irenicus. In cambio di una tomba dove riporre l'urna contenente le ceneri dei suoi cari, Stivan si è offerto di farci da guida in città e di proteggerci dai... ehm... gabbiani. L'halfing mi ha suggerito di andare nel Quartiere Governativo e di rivolgermi a qualche impiegato nel Palazzo di Giustizia.%) EraseJournalEntry(%Alla ricerca di una tomba.

L'impiegato nel Palazzo di Giustizia ha avviato le pratiche necessarie per far acquisire legalmente a Stivan la proprietà della cripta. Ha promesso di inviarci un messaggero non appena saranno ultimate e, nel frattempo, si è offerto di custodire al sicuro l'urna dell'halfling.%) EraseJournalEntry(%Alla ricerca di una tomba.

Un impiegato del Palazzo di Giustizia ci ha spiegato che al momento non ci sono tombe disponibili. Pare, tuttavia, che ve ne sia una in cui nessuno osa mettere piede a causa di sinistre leggende sull'essere che vi dimorerebbe. Per nulla impressionato da queste storie, ho deciso di andare ad esplorarla: eliminati gli eventuali pericoli, infatti, saremo liberi di deporvi l'urna di Stivan.%) EraseJournalEntry(%Alla ricerca di una tomba.
 
Un messaggero ci ha informato che i documenti per l’acquisizione della cripta sono stati ultimati. Posso andare a ritirarli a qualsiasi ora dall’impiegato Lawrence nel Palazzo di Giustizia.%)~
SOLVED_JOURNAL %Alla ricerca di una tomba.

L'urna contenente le ceneri dei familiari di Stivan si è rotta prima che riuscissi a trovare un posto in cui riporla. L'halfling, infuriato, ha lasciato il gruppo.% EXIT
END

IF ~ InParty("tb#stiv")
InParty(Player1)
!StateCheck("Stivan",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#stivanEntryTest","GLOBAL",5)
AreaCheck("ar0806")~ THEN BEGIN FinalRest
SAY ~(Sospira) Quasi non mi sembra vero. Sto per separarmi da quest’urna. Sto per dare l’addio definitivo ai miei familiari...~
IF ~~ THEN REPLY ~Coraggio, Stivan. Fatti forza.~ GOTO FinalRest1-1
IF ~~ THEN REPLY ~Non stai avendo dei ripensamenti, vero? Proverei un *leggero* disappunto se decidessi di tenerla con te.~ GOTO FinalRest1-2
IF ~~ THEN REPLY ~Io non lo vedo come un addio definitivo. Fintantoché vivono nei nostri ricordi, le persone scomparse non muoiono mai.~ GOTO FinalRest1-3
IF ~~ THEN REPLY ~E’ giusto che i morti riposino in pace. Non immagini quanto avrei voluto dare una degna sepoltura a Gorion...~ GOTO FinalRest1-4
END

IF ~~ THEN BEGIN FinalRest1-2
SAY ~Nessun ripensamento, <CHARNAME>, solo...~
IF ~~ THEN GOTO FinalRest1-1
END

IF ~~ THEN BEGIN FinalRest1-3
SAY ~Ma questo *è* un addio definitivo, <CHARNAME>! Io... Io ho vissuto per troppo tempo intrappolato nel rimpianto della morte dei miei cari! Io... Devo andare avanti!~
IF ~~ THEN GOTO FinalRest1-1
END

IF ~~ THEN BEGIN FinalRest1-4
SAY ~Io... Capisco che per te sia stata dolorosa la scomparsa del tuo padre adottivo, e che rimpiangi di non averlo potuto seppellire, però...~
IF ~~ THEN GOTO FinalRest1-1
END 

IF ~~ THEN BEGIN FinalRest1-1
SAY ~Credi che sia facile? Credi che sia facile separarsi definitivamente dalle sole persone che mi abbiano mai voluto bene? Nel momento in cui riporrò i loro resti qui, tra queste mura silenziose, io... Io sarò solo!~
IF ~~ THEN REPLY ~Questo non è vero. Hai tanti amici intorno a te, me incluso.~ GOTO FinalRest1-5
IF ~~ THEN REPLY ~I tuoi familiari sono scomparsi anni fa , Stivan, non adesso. In questo momento non fai altro che lasciare i loro resti dov’è giusto che stiano.~ GOTO FinalRest1-5
IF ~~ THEN REPLY ~Siamo tutti soli. Fa tesoro di questa esperienza per imparare a bastare a te stesso.~ GOTO FinalRest1-5
IF ~~ THEN REPLY ~Stai forse cercando di dirmi che quell’urna ti ha fatto compagnia sino ad oggi? Non offenderti, amico, ma questa è una sciocchezza. Tra le mani non hai altro che un oggetto muto.~ GOTO FinalRest1-5
END

IF ~~ THEN BEGIN FinalRest1-5
SAY ~(Vedi gli occhi di Stivan riempirsi di lacrime).~
IF ~~ THEN REPLY ~Oh, no. Ti prego, non piangere. Non sono capace di consolare le persone...~ GOTO FinalRest1-6
IF ~~ THEN REPLY ~Sfogati pure, amico mio. Lasciati andare.~ GOTO FinalRest1-6
IF ~Gender(Player1,MALE)~ THEN REPLY ~Gli uomini non piangono mai, Stivan. Asciugati gli occhi, su.~ GOTO FinalRest1-6
IF ~ Gender(Player1,FEMALE)~ THEN REPLY ~Quindi anche gli uomini piangono. Questa scoperta è sconvolgente.~ GOTO FinalRest1-6
END

IF ~~ THEN BEGIN FinalRest1-6
SAY ~(Stivan scoppia a piangere, avvinghiandosi a te). *SOB*!~
= ~(L’halfling piange per diversi minuti, le sue braccia strette attorno alla tua vita. Ad un certo punto lo senti mormorare qualcosa).~
IF ~Gender(Player1,"FEMALE")~ THEN GOTO FinalRest1-7
IF ~Gender(Player1,"MALE")~ THEN GOTO FinalRest1-8
END

IF ~~ THEN BEGIN FinalRest1-7
SAY ~Mammina...~
IF ~~ THEN REPLY ~ (Resti in silenzio).~ GOTO FinalRest1-9
IF ~~ THEN REPLY ~ (Lo stringi a te).~ GOTO FinalRest1-9
IF ~~ THEN REPLY ~Shhh... E’ tutto a posto.~ GOTO FinalRest1-9
IF ~~ THEN REPLY ~Lasciami, Stivan. Mi sento a disagio.~ GOTO FinalRest1-10
END

IF ~~ THEN BEGIN FinalRest1-8
SAY ~Papino...~
IF ~~ THEN REPLY ~ (Resti in silenzio).~ GOTO FinalRest1-9
IF ~~ THEN REPLY ~ (Lo stringi a te).~ GOTO FinalRest1-9
IF ~~ THEN REPLY ~Shhh... E’ tutto a posto.~ GOTO FinalRest1-9
IF ~~ THEN REPLY ~Lasciami, Stivan. Mi sento a disagio.~ GOTO FinalRest1-10
END

IF ~~ THEN BEGIN FinalRest1-9
SAY ~(Dopo qualche istante, l’halfling si ritrae lentamente, asciugandosi le lacrime che rigano il suo volto).~
= ~Heh. E’ meglio che mi dia una mossa.~
IF ~~ THEN SOLVED_JOURNAL %Alla ricerca di una tomba.

Abbiamo infine riposto le ceneri dei familiari di Stivan nella cripta. Per ringraziarmi, l’halfling mi ha regalato il suo "più prezioso tesoro", ossia una strana piuma rossa strappata ad un gabbiano.%
GOTO FinalRest1-11
END

IF ~~ THEN BEGIN FinalRest1-10
SAY ~(L’halfling si ritrae di scatto, asciugandosi le lacrime che rigano il suo volto).~
= ~(Snort!) Hai un cuore più duro della pietra!~
IF ~~ THEN SOLVED_JOURNAL %Alla ricerca di una tomba.

Abbiamo infine riposto le ceneri dei familiari di Stivan nella cripta. Per ringraziarmi, l’halfling mi ha regalato il suo "più prezioso tesoro", ossia una strana piuma rossa strappata ad un gabbiano.%
GOTO FinalRest1-11
END

CHAIN
IF ~~ THEN TB#STIVJ FinalRest1-11
~(Stivan corre in fondo alla cripta e ripone l’urna dentro il forziere. Lo vedi inserire anche qualcos’altro all’altezza dell’apertura del contenitore).~
= ~Mamma... Papà... Fratelli... Addio.~
== MINSCJ IF ~IsValidForPartyDialog("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN ~(Sniff) Un giorno anche Minsc darà una degna sepoltura alla sua dolce Dynaheir. Il luogo in cui riposerà sarà così maestoso che i criceti accorreranno da tutta Faerun per onorarla!~
== JAHEIRAJ IF ~IsValidForPartyDialog("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN ~Non capisco perché in città si senta il bisogno di seppellire i morti in simili spazi angusti. La Natura offre una grande varietà di luoghi che potrebbero fungere a tale scopo.~
== CERNDJ IF ~IsValidForPartyDialog("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN ~Le tombe non sono soltanto meri contenitori delle spoglie dei defunti. In realtà le tombe hanno anche il compito di confortare l’animo di chi è rimasto in vita.~
== AERIEJ IF ~IsValidForPartyDialog("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN
~S-Sono... Sono f-felice p-per te, Stivan...~
== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN ~Che nessuno disturbi il vostro eterno sonno, amici halfling.~
== NALIAJ IF ~IsValidForPartyDialog("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN ~Apprezzo la semplicità con cui hai dato loro il tuo ultimo saluto, Stivan. Dovrebbe essere d’esempio a quei nobili che dilapidano fortune per cerimonie funebri dall’inutile lusso.~
== EDWINJ IF ~IsValidForPartyDialog("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN ~ Davvero commovente. Se avessi un cuore, mi sarei sciolto in lacrime.~
== HAERDAJ IF ~IsValidForPartyDialog("Haerdali") !StateCheck("Haerdali",CD_STATE_NOTVALID)~ THEN ~Ahh... La vita è la più monotona delle avventure. Finisce sempre allo stesso modo.~ 
== VICONIJ IF ~IsValidForPartyDialog("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN ~Ne hai ancora per molto, sakphul?~
== VALYGARJ IF ~IsValidForPartyDialog("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN ~Non ho visto molte cose nella mia vita, ma la morte è uno spettacolo che pare ripresentarsi con una certa ostinazione.~
== IMOEN2J IF ~IsValidForPartyDialog("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN ~Ecco... Io... Mi dispiace, Stivan. Non so cos’altro dirti...~
== KORGANJ IF ~IsValidForPartyDialog("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN ~Umpf. Detesto questi siparietti melodrammatici. Vogliamo andare a staccare la testa a qualcuno?~
== KELDORJ IF ~IsValidForPartyDialog("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN ~Di fronte alla morte siamo tutti uguali, pertanto... Se siete nel giusto, possa Torm accogliervi nella Sua casa.~
== ANOMENJ IF ~IsValidForPartyDialog("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenIsNotKnight","GLOBAL",0)~ THEN ~Che la luce di Helm guidi le loro anime verso la pace.~
== ANOMENJ IF ~IsValidForPartyDialog("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenIsNotKnight","GLOBAL",1)~ THEN ~In simili frangenti esprimere la propria partecipazione all’altrui dolore può sembrare un luogo comune, ma sappi che comprendo meglio di chiunque altro la tua perdita.~
== TB#STIVJ ~*Ahem* Ci tengo a farti sapere, <CHARNAME>, che ho messo una trappola per evitare che malintenzionati frughino il contenuto del forziere. Chi fosse così sciocco da provare ad aprirlo verrà investito da una montagna di cacca di gabbiano mista a piume. Geniale, eh?~
= ~Per ringraziarti del tuo aiuto, voglio farti un regalo. Tieni: è il mio più prezioso tesoro.~ DO ~GiveItemCreate("tb#srpl",Player1,0,0,0) SetGlobal("tb#stivanEntryTest","GLOBAL",6) AddXPObject(Player1,5000) AddXPObject(Player2,5000) AddXPObject(Player3,5000) AddXPObject(Player4,5000) AddXPObject(Player5,5000) AddXPObject(Player6,5000) AddXPObject("tb#Stiv",15000) TakePartyItem("tb#surn") DestroyItem("tb#surn") EraseJournalEntry(%Alla ricerca di una tomba.

Mentre ci aggiravamo per i Moli abbiamo incontrato Stivan, un halfling nativo di Athkatla a cui ho chiesto di unirsi nella mia ricerca di Imoen e di Irenicus. In cambio di una tomba dove riporre l'urna contenente le ceneri dei suoi cari, Stivan si è offerto di farci da guida in città e di proteggerci dai... ehm... gabbiani. L'halfing mi ha suggerito di andare nel Quartiere Governativo e di rivolgermi a qualche impiegato nel Palazzo di Giustizia.%) EraseJournalEntry(%Alla ricerca di una tomba.

L'impiegato nel Palazzo di Giustizia ha avviato le pratiche necessarie per far acquisire legalmente a Stivan la proprietà della cripta. Ha promesso di inviarci un messaggero non appena saranno ultimate e, nel frattempo, si è offerto di custodire al sicuro l'urna dell'halfling.%) EraseJournalEntry(%Alla ricerca di una tomba.

Un impiegato del Palazzo di Giustizia ci ha spiegato che al momento non ci sono tombe disponibili. Pare, tuttavia, che ve ne sia una in cui nessuno osa mettere piede a causa di sinistre leggende sull'essere che vi dimorerebbe. Per nulla impressionato da queste storie, ho deciso di andare ad esplorarla: eliminati gli eventuali pericoli, infatti, saremo liberi di deporvi l'urna di Stivan.%) EraseJournalEntry(%Alla ricerca di una tomba.
 
Un messaggero ci ha informato che i documenti per l’acquisizione della cripta sono stati ultimati. Posso andare a ritirarli a qualsiasi ora dall’impiegato Lawrence nel Palazzo di Giustizia.%)~
= ~Si tratta di una piuma rossa. L’ho trovata tempo fa mentre spennavo un gabbiano. Una cosa insolita, visto che il loro piumaggio è unicamente color bianco con qualche sfumatura nera o grigia.~
= ~A proposito di gabbiani, credo di averne sentito uno. Che stiano nidificando anche qui nel Quartiere del Cimitero?! Corriamo a vedere, svelti!~
DO ~ StartCutSceneMode() StartCutScene("tb#surn1")~
EXIT

BEGIN TB#SSKF
BEGIN TB#SSKM

CHAIN IF ~Global("tb#stivanEntryTest","GLOBAL",6) AreaCheck("AR0041")~ THEN TB#STIVJ QuestFinish
~Eeeeekkkk! Non era un gabbiano!~
== TB#SSKF ~Voi, dannati... Avete profanato la cripta del nostro Signore!~
== TB#SSKM ~La morte vi attende!~
DO ~SetGlobal("tb#stivanEntryTest","GLOBAL",7)~
EXIT
