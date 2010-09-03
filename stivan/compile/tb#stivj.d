BEGIN TB#STIVJ

///////////////////////////////////////////
// Quest related dialog
///////////////////////////////////////////

IF ~InParty("tb#stiv")
InParty(Player1)
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0)
!Global("tb#stivanEntryTest","GLOBAL",3) 
Global("tb#UrnBroken","GLOBAL",1)~ THEN BEGIN WarnUrnBroken
SAY ~(Gasp!)~
= ~Salva... per un soffio!~
= ~<CHARNAME>, l'urna dei miei familiari stava per scivolare fuori dal mio zaino! Hai promesso di aiutarmi a trovare un posto in cui metterla al sicuro, pertanto... Troviamolo, per favore!~
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
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
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
== MINSCJ IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN ~(Sniff) Un giorno anche Minsc darà una degna sepoltura alla sua dolce Dynaheir. Il luogo in cui riposerà sarà così maestoso che i criceti accorreranno da tutta Faerun per onorarla!~
== JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN ~Non capisco perché in città si senta il bisogno di seppellire i morti in simili spazi angusti. La Natura offre una grande varietà di luoghi che potrebbero fungere a tale scopo.~
== CERNDJ IF ~InParty("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN ~Le tombe non sono soltanto meri contenitori delle spoglie dei defunti. In realtà le tombe hanno anche il compito di confortare l’animo di chi è rimasto in vita.~
== AERIEJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN
~S-Sono... Sono f-felice p-per te, Stivan...~
== MAZZYJ IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN ~Che nessuno disturbi il vostro eterno sonno, amici halfling.~
== NALIAJ IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN ~Apprezzo la semplicità con cui hai dato loro il tuo ultimo saluto, Stivan. Dovrebbe essere d’esempio a quei nobili che dilapidano fortune per cerimonie funebri dall’inutile lusso.~
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN ~ Davvero commovente. Se avessi un cuore, mi sarei sciolto in lacrime.~
== HAERDAJ IF ~InParty("haerdalis") !StateCheck("haerdalis",CD_STATE_NOTVALID)~ THEN ~Ahh... La vita è la più monotona delle avventure. Finisce sempre allo stesso modo.~ 
== VICONIJ IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN ~Ne hai ancora per molto, sakphul?~
== VALYGARJ IF ~InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN ~Non ho visto molte cose nella mia vita, ma la morte è uno spettacolo che pare ripresentarsi con una certa ostinazione.~
== IMOEN2J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN ~Ecco... Io... Mi dispiace, Stivan. Non so cos’altro dirti...~
== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN ~Umpf. Detesto questi siparietti melodrammatici. Vogliamo andare a staccare la testa a qualcuno?~
== KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN ~Di fronte alla morte siamo tutti uguali, pertanto... Se siete nel giusto, possa Torm accogliervi nella Sua casa.~
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenIsNotKnight","GLOBAL",0)~ THEN ~Che la luce di Helm guidi le loro anime verso la pace.~
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenIsNotKnight","GLOBAL",1)~ THEN ~In simili frangenti esprimere la propria partecipazione all’altrui dolore può sembrare un luogo comune, ma sappi che comprendo meglio di chiunque altro la tua perdita.~
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




///////////////////////////////////////////
// Yoshimo's Katana related dialog
///////////////////////////////////////////

EXTEND_BOTTOM SLILMAT 13
IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) PartyHasItem("NPSW02")~ THEN EXTERN tb#stivj YoshiKatana1
END

EXTEND_BOTTOM SLILMAT 0
IF ~PartyHasItem("NPSW02") PartyGoldGT(999) Global("tb#YoshiKatanaIsNotUsable","GLOBAL",1)~ THEN  REPLY ~Vorrei che rendessi utilizzabile la katana di Yoshimo. Ecco le mille monete d'oro.~ EXTERN TB#STIVJ YoshiKatana1-3
END

CHAIN IF ~~ THEN TB#STIVJ YoshiKatana1
~*Ahem* Ci sarebbe un'altra richiesta, se possibile.~
== SLILMAT ~Ti ascolto, fratello. Di cosa hai bisogno?~
== TB#STIVJ ~Questa katana apparteneva all'uomo di cui ti è appena stato dato il cuore. Io... Vorrei usarla, ma non posso. Soltanto lui era in grado di farlo.~
== SLILMAT ~Per quale motivo vorresti servirtene?~
== TB#STIVJ ~Boh.~
== SLILMAT ~Guarda nel tuo cuore e chiediti il perchè. Ascolta la tua coscienza, figliolo, e interrogati sulle tue motivazioni.~
== TB#STIVJ ~...~
= ~... Yoshimo mi ricordava uno dei miei fratelli scomparsi, d'accordo. Immagino che fosse questo il motivo per cui gli ero affezionato.~
= ~Non ho potuto salvare nè l'uno nè l'altro, ma in entrambi i casi ho la possibilità di vendicarmi. Quel bruttone di un mago pagherà per aver trattato Yoshi come carne al macello!~
== SLILMAT ~Se le cose stanno così, allora le tue motivazioni sono giuste e meritevoli. In cambio di una donazione di mille monete d'oro, rimuoverò l'incantesimo dell'arma.~
== TB#STIVJ ~Aspetta un attimo, devo chiedere il permesso a <CHARNAME>.~
= ~*Ahem* <CHARNAME>, mi daresti mille monete d'oro per poter utilizzare la katana di Yoshimo? Sai bene quanto mi piacerebbe riuscire ad usarla, ma se non volessi, non insisterò più del necessario.~
= ~Perfavoreperfavoreperfavoreperfavore!~
END
IF ~~ THEN REPLY ~Mille monete d'oro per una lama che ne vale trenta? E' fuori discussione.~ EXTERN TB#STIVJ YoshiKatana1-1
IF ~PartyGoldLT(1000)~ THEN REPLY ~Mi piacerebbe, ma non ho abbastanza denaro.~ EXTERN TB#STIVJ YoshiKatana1-2
IF ~PartyGoldGT(999)~ THEN REPLY ~Immagino che Yoshimo sarebbe contento di sapere che la sua lama è passata nelle tue mani. Ecco, prendi il denaro che ti serve.~ EXTERN TB#STIVJ YoshiKatana1-3
IF ~PartyGoldGT(999)~ THEN REPLY ~Te le darò, ma ad una condizione: *non* usarla per uccidere i gabbiani. Inteso?~ EXTERN TB#STIVJ YoshiKatana1-4

APPEND TB#STIVJ

IF ~~ THEN BEGIN YoshiKatana1-1
SAY ~(Snort!) In cattiveria potresti battere persino uno stormo inferocito di gabbiani!~ 
IF ~~ THEN DO ~SetGlobal("tb#YoshiKatanaIsNotUsable","GLOBAL",1)~ EXTERN SLILMAT YoshiKatana1-1a
END

IF ~~ THEN YoshiKatana1-2
SAY ~Non preoccuparti, ci penso io! Svuoterò le tasche di tutti gli abitanti di Athkatla, se necessario!~
= ~Ehi, tu! Vedi di non scappare! Torneremo con la somma che ci hai chiesto, okay?~
IF ~~ THEN DO ~SetGlobal("tb#YoshiKatanaIsNotUsable","GLOBAL",1)~ EXTERN SLILMAT YoshiKatana1-2a
END

IF ~~ THEN YoshiKatana1-3
SAY ~Yeah! Sei un grande, <CHARNAME>! L'ho sempre detto che sei un vero amico! Grazie, grazie!~
IF ~~ THEN DO ~TakePartyGold(1000)~ EXTERN SLILMAT YoshiKatana1-3a
END

IF ~~ THEN YoshiKatana1-4
SAY ~Heh. Come vuoi. Siamo armati fino ai denti, quindi non credo che avrò problemi a trovare un'altra arma con cui sgozzare quei pennuti!~ 
= ~Ad ogni modo, grazie, <CHARNAME>. Sei un grande! L'ho sempre detto che sei mitico!~
IF ~~ THEN DO ~TakePartyGold(1000)~ EXTERN SLILMAT YoshiKatana1-3a
END
END

APPEND SLILMAT

IF ~~ THEN YoshiKatana1-1a
SAY ~Se dovessi cambiare idea, <PRO_BROTHERSISTER>, potrai trovarmi qui. Nel frattempo, tornerò ad alleviare le sofferenze altrui nel nome del Dio Piangente.~
IF ~~ THEN EXIT
COPY_TRANS SLILMAT 13
END

IF ~~ THEN YoshiKatana1-2a
SAY ~Sarò qui ad attendervi. Nel frattempo, tornerò ad alleviare le sofferenze altrui nel nome del Dio Piangente.~
IF ~~ THEN EXIT
COPY_TRANS SLILMAT 13
END

IF ~~ THEN YoshiKatana1-3a
SAY ~L'animo gentile e il buon cuore di Ilmater fanno sì che Egli non sia incline alla collera, ma dinnanzi agli autori di gravi sofferenze non risparmia la sua ira. Possa questa lama vendicare l'ingiusto dolore del tuo amico.~
IF ~~ THEN DO ~SetGlobal("tb#YoshiKatanaIsUsable","GLOBAL",1) StartCutSceneMode() ActionOverride("SLILMAT",StartCutScene("tb#syk1"))~ EXIT
END
END

CHAIN
IF WEIGHT #-1 ~Global("tb#YoshiKatanaIsUsable","GLOBAL",1) PartyHasItem("NPSW02")~ THEN SLILMAT YoshiKatanaIsUsable1
~Ecco a voi. Sarete sempre i benvenuti nella casa del Dio Piangente.~
DO ~GiveItemCreate("tb#syk1","tb#stiv",1,0,0) TakePartyItem("NPSW02") DestroyItem("NPSW02")~ 
== TB#STIVJ ~YEAH! <CHARNAME>, non so come ringraziarti! Finalmente la posso usare! Finalmente la posso usare!!~
= ~Ooohhhhooohhhaaah!~
== TB#STIVJ IF ~Global("tb#stivanCrom","GLOBAL",1)~ THEN ~Heh. Il potenziale di questa lama è incredibile. Sono sicuro che quel nano ai Moli da cui siamo già stati potrebbe addirittura migliorarla. In qualsiasi caso, sono al settimo cielo!~
== TB#STIVJ IF ~Global("tb#stivanCrom","GLOBAL",0)~ THEN ~Heh. Il potenziale di questa lama è incredibile. Se non ricordo male, ai Moli c'è un fabbro molto abile. magari potrebbe addirittura migliorarla! In qualsiasi caso, sono al settimo cielo!~
EXIT


EXTEND_BOTTOM WSMITH01 13
IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) PartyHasItem("npsw02") PartyHasItem("miscbu") Global("tb#stivanCrom","GLOBAL",0)~ THEN DO ~SetGlobal("tb#stivanCrom","GLOBAL",1)~ EXTERN tb#stivj YoshiKatana0
IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) PartyHasItem("tb#syk1") GlobalLT("tb#stivanCrom","GLOBAL",2)~ THEN DO ~SetGlobal("tb#stivanCrom","GLOBAL",2)~ EXTERN tb#stivj CromwellUpgradeKatana1
IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) PartyHasItem("tb#syk1") Global("tb#stivanCrom","GLOBAL",2)~ THEN EXTERN WSMITH01 CromwellUpgradeKatana2
END

CHAIN IF ~~ THEN TB#STIVJ YoshiKatana0
~Ehi, nano, ho una domanda per te.~
== WSMITH01 ~Cosa aspetti a farla?~
== TB#STIVJ ~Vedi questa lama? Era di una persona a cui tenevo molto. Mi piacerebbe usarla, ma è stata incantata in modo che solo il suo precedente possessore potesse impugnarla. Puoi fare qualcosa a riguardo?~
== WSMITH01 ~Hai chiesto alla persona sbagliata. Io sono un forgiatore, non un mago; per rimuovere l'incantesimo di cui parli dovrai rivolgerti a qualcun altro.~
== TB#STIVJ ~(Snort!) Grazie... di nulla.~
== WSMITH01 ~E tu invece cosa vuoi? Hai qualche richiesta assurda come quella del tuo amico?~
COPY_TRANS WSMITH01 13

CHAIN IF ~~ THEN TB#STIVJ CromwellUpgradeKatana1
~Abbiamo un lavoro per te, nano.~
== WSMITH01 ~Di che si tratta?~
== TB#STIVJ ~Potresti potenziare questa katana?~
== WSMITH01 ~Non è il genere di cose di cui mi occupo, ragazzino. Preferisco impiegare le mie abilità da fabbro per forgiare antichi artefatti o oggetti esotici, non banali armi.~
== TB#STIVJ ~Ascoltami. Ho promesso di servirmi di questa lama per vendicare la morte di un mio amico, ma ho bisogno che venga potenziata. Il nemico che ci attende è potente, e in queste condizioni non mi sarebbe di grande aiuto.~
== WSMITH01 ~Uhmmm...~
= ~Non ho mai provato una cosa simile in passato, ma penso che si possa fare senza grossi problemi.~
= ~Se vuoi che la lama del tuo defunto amico diventi uno strumento di vendetta, ho bisogno che tu mi dia qualcosa di tuo. Qualcosa che ti rappresenti. Qualcosa da cui non ti separeresti mai.~
== TB#STIVJ ~Heh. Credo di avere ciò che ti serve. Prendi; questo dovrebbe andar bene.~
== WSMITH01 ~Uhm? Cosa diavolo è questa strana poltiglia biancastra?~
== TB#STIVJ ~*Ahem* Mia mamma diceva sempre che quando i segreti vengono svelati, non sono più tali, quindi... Non chiedermelo.~
== WSMITH01 ~Va bene, va bene, da qua. Posso potenziare questa katana, se vuoi.~
END
IF ~~ THEN REPLY #59761 EXTERN WSMITH01 CromwellUpgradeKatana1-1
IF ~~ THEN REPLY #59762 EXTERN WSMITH01 CromwellUpgradeKatana1-3

APPEND WSMITH01
IF ~~ THEN CromwellUpgradeKatana1-1
SAY ~Due cose, amico. Ti costerà 15.000 monete d'oro, non di meno, e senza un apprendista, dovrai restare tu qui con me un giorno intero e aiutarmi con la forgia.~
IF ~PartyGoldGT(14999)~ THEN REPLY #59785 DO ~TakePartyGold(15000) DestroyGold(15000) TakePartyItem("tb#syk1") DestroyItem("tb#syk1") GiveItemCreate("tb#syk2","tb#stiv",1,0,0)~ GOTO CromwellUpgradeKatana1-2
IF ~~ THEN REPLY #59786 GOTO CromwellUpgradeKatana1-3
IF ~~ THEN REPLY #59791 GOTO 12
END

IF ~~ THEN CromwellUpgradeKatana1-2
SAY ~Come desideri. Per una simile commissione, cominciamo subito. Perdere tempo non ha senso, quindi... Meglio sbrigarsi.~ 
IF ~~ THEN DO ~StartCutSceneMode() StartCutScene("cromwell")~ EXIT
END

IF ~~ THEN CromwellUpgradeKatana1-3
SAY #59796
COPY_TRANS WSMITH01 13
END

IF ~~ THEN CromwellUpgradeKatana2
SAY ~Allora, vuoi potenziare l'arma del tuo amichetto o no?~
IF ~~ THEN REPLY #59761 EXTERN WSMITH01 CromwellUpgradeKatana1-1
IF ~~ THEN REPLY #59762 EXTERN WSMITH01 CromwellUpgradeKatana1-3
END
END




///////////////////////////////////////////
// Yoshimo's betrayal related dialog
///////////////////////////////////////////

APPEND TB#STIVJ
IF ~InParty("tb#stiv")
InParty("Yoshimo")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("Chapter","GLOBAL",4)
CombatCounter(0)
Global("tb#BeforeYoshiBetrayal","GLOBAL",0)~ BeforeYoshiBetrayal1
SAY ~<CHARNAME>, non ti sembra che ultimamente Yoshimo sia un pò nervoso?~
IF ~~ THEN REPLY ~Nervoso? Io credo che sia prudente e accorto come al solito.~ DO ~SetGlobal("tb#BeforeYoshiBetrayal","GLOBAL",1)~ GOTO BeforeYoshiBetrayal1-1
IF ~~ THEN REPLY ~Sì, l'ho notato anch'io. Magari l'idea di trovarsi faccia a faccia con Irenicus lo preoccupa.~ DO ~SetGlobal("tb#BeforeYoshiBetrayal","GLOBAL",1)~ GOTO BeforeYoshiBetrayal1-2
IF ~~ THEN REPLY ~No, non direi. Cosa ti spinge a pensarlo?~ DO ~SetGlobal("tb#BeforeYoshiBetrayal","GLOBAL",1)~ GOTO BeforeYoshiBetrayal1-1
END

IF ~~ THEN BeforeYoshiBetrayal1-1
SAY ~Non lo so. Yoshi è sempre stato così calmo e sicuro di sè; ultimamente, invece, lo trovo agitato.~
IF ~~ THEN REPLY ~Imoen ed io non siamo i soli ad essere stati imprigionati da Irenicus. Anche Yoshimo ha subito la stessa sorte, ma ancora ne ignoriamo il motivo.~ GOTO BeforeYoshiBetrayal1-3
IF ~~ THEN REPLY ~Conosci Yoshimo... Diventa sempre titubante quando si avvicina il pericolo.~ GOTO BeforeYoshiBetrayal1-4
IF ~~ THEN REPLY ~Anch'io non sono del tutto tranquillo. Temo per la sorte di Imoen. Spero che non sia in pericolo.~ GOTO BeforeYoshiBetrayal1-4
END

IF ~~ THEN BeforeYoshiBetrayal1-2
SAY ~Perchè dovrebbe preoccuparlo?~
IF ~~ THEN REPLY ~Imoen ed io non siamo i soli ad essere stati imprigionati da Irenicus. Anche Yoshimo ha subito la stessa sorte, ma ancora ne ignoriamo il motivo.~ GOTO BeforeYoshiBetrayal1-3
IF ~~ THEN REPLY ~Il mago che ci attende è un individuo pericoloso. *Molto* pericoloso. I suoi incantesimi sono decisamente micidiali - li ho sperimentati sulla mia pelle.~ GOTO BeforeYoshiBetrayal1-4
IF ~~ THEN REPLY ~Il pericolo è dietro l'angolo, Stivan. Credi che gli Incappucciati ci accoglieranno a braccia aperte?~ GOTO BeforeYoshiBetrayal1-4
END

IF ~~ THEN BeforeYoshiBetrayal1-3
SAY ~Davvero? Non me l'aveva detto.~
= ~E se fosse... Se fosse anche lui un figlio di Bhaal? Questo spiegherebbe tutto, no?~ 
IF ~~ THEN REPLY ~In effetti, non hai tutti i torti. La sua prigionia acquisterebbe un senso.~ GOTO BeforeYoshiBetrayal1-5
IF ~~ THEN REPLY ~Ne dubito. Anche Minsc e Jaheira sono stati catturati, pur non avendo il mio retaggio divino.~ GOTO BeforeYoshiBetrayal1-6
IF ~~ THEN REPLY ~Non credo che mio padre si sia spinto sino a Kara-Tur, anche se non è da escludere che vi abbia fatto una visita per assaggiare le specialità del posto.~ GOTO BeforeYoshiBetrayal1-6
END

IF ~~ THEN BeforeYoshiBetrayal1-5
SAY ~Heh. Come puoi vedere, dare la caccia ai gabbiani ha aumentato il mio acume. Presto scopriremo se ho ragione!~
IF ~~ THEN EXTERN YOSHJ  BeforeYoshiBetrayal1-7
END

IF ~~ THEN BeforeYoshiBetrayal1-6
SAY ~Mah... Non mi ci raccapezzo proprio. Ammazzerò qualche gabbiano per schiarirmi le idee.~
IF ~~ THEN EXTERN YOSHJ  BeforeYoshiBetrayal1-7
END 

IF ~~ THEN BeforeYoshiBetrayal1-4
SAY ~Eeeekkkk! Non mi avevi detto che avremmo corso dei pericoli! Io ci tengo alla mia pellaccia, sai?~
= ~Yoshimo! Yoshimo!! Non voglio essere ridotto in un mucchietto di ceneri! Devi... Devi ancora insegnarmi ad usare la katana come si deve!~
IF ~~ THEN EXTERN YOSHJ  BeforeYoshiBetrayal1-7
END
END

APPEND YOSHJ 

IF ~~ THEN BEGIN BeforeYoshiBetrayal1-7
SAY ~Rilassati, Stivan. Non sono preoccupato. Sono sicuro che <CHARNAME> sarà all'altezza di qualsiasi inconveniente ci attenda. Non è così?~
IF ~~ THEN REPLY ~Puoi dirlo forte, amico mio.~ EXTERN YOSHJ  BeforeYoshiBetrayal1-8
IF ~~ THEN REPLY ~Esatto. Insieme supereremo anche questo ostacolo.~ EXTERN YOSHJ  BeforeYoshiBetrayal1-8
IF ~~ THEN REPLY ~Ehm... Non esageriamo. Io farò il possibile, ma rimango sempre un <RACE>.~ EXTERN YOSHJ  BeforeYoshiBetrayal1-9
END

IF ~~ THEN BEGIN BeforeYoshiBetrayal1-8
SAY ~Direi di proseguire, allora. Perdere tempo non ha senso.~
IF ~~ THEN EXIT
END
END

CHAIN
IF ~~ THEN YOSHJ BeforeYoshiBetrayal1-9
~La paura è per gli smidollati, e tu non rientri tra questi. Non credo che tu abbia esistato quando...~
== TB#STIVJ ~EEEEEKKKKK!~
== YOSHJ  ~... E' meglio che tranquillizzi il nostro piccolo halfling, prima che le sue urla richiamino troppo l'attenzione. Facci strada, <CHARNAME>.~
EXIT

ADD_TRANS_ACTION YOSHIMOX BEGIN 0 END BEGIN END ~SetGlobal("tb#AfterYoshiBetrayal","GLOBAL",1)~

APPEND tb#stivj
IF ~InParty("tb#stiv")
InParty(Player1)
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#AfterYoshiBetrayal","GLOBAL",1)~ THEN afterYoshiBetrayal1
SAY ~*SOB!* <CHARNAME>... <CHARNAME>, perchè Yoshimo ha fatto questo? Perchè ci ha traditi?~
IF ~~ THEN DO ~SetGlobal("tb#AfterYoshiBetrayal","GLOBAL",2)~ REPLY ~Non ne ho la più pallida idea. Eppure è successo.~ GOTO AfterYoshiBetrayal1-1
IF ~~ THEN DO ~SetGlobal("tb#AfterYoshiBetrayal","GLOBAL",2)~ REPLY ~Dannato traditore! Che bruci tra le fiamme dell'inferno!~ GOTO AfterYoshiBetrayal1-1
IF ~~ THEN DO ~SetGlobal("tb#AfterYoshiBetrayal","GLOBAL",2)~ REPLY ~Forse è meglio che non lo sappia. A causa sua ho perso la mia anima e ho rischiato di perdere voi tutti!~ GOTO AfterYoshiBetrayal1-1
IF ~~ THEN DO ~SetGlobal("tb#AfterYoshiBetrayal","GLOBAL",2)~ REPLY ~Ci deve essere una spiegazione più che valida, anche se al momento mi sfugge. E' stato al mio fianco per tutto questo tempo...~ GOTO AfterYoshiBetrayal1-1
END

IF ~~ THEN AfterYoshiBetrayal1-1
SAY ~Io... Non so cosa pensare. Possibile che fosse tutto calcolato? Possibile che ogni nostra conversazione, ogni battaglia affrontata insieme, ogni congegno disattivato... servisse a questo? A metterci nel sacco?~
= ~No. Secondo me... Secondo me è tutta opera di quell'Irenicus. E' stato lui a costringerlo!~  
IF ~~ THEN REPLY ~Ciascuno di noi ha la possibilità di scegliere, Stivan. Yoshimo ha deciso di sua spontanea volontà da quale parte schierarsi, pertanto non ha scusanti.~ GOTO AfterYoshiBetrayal1-2
IF ~~ THEN REPLY ~Se mi avesse detto di essere vincolato ad una costrizione, *forse* avremmo potuto aiutarlo, non credi?!~ GOTO AfterYoshiBetrayal1-3
IF ~~ THEN REPLY ~Perchè lo difendi? Devo forse pensare che anche tu sia in combutta con quel mostro?~ GOTO AfterYoshiBetrayal1-4
IF ~~ THEN REPLY ~Tutto questo non ha più importanza. Yoshimo è morto, e le sue motivazioni con lui.~ GOTO AfterYoshiBetrayal1-5
END

IF ~~ THEN AfterYoshiBetrayal1-2
SAY ~...~
= ~... Accidenti, non so dove sbattere la testa. Tenevo molto a Yoshimo e mi dispiace che sia morto, soprattutto perchè mi è sembrato pentito. Però quel che dici è vero. La sua scelta è stata quasi fatale per noi tutti. Abbiamo seriamente rischiato di rimetterci la pelle.~
IF ~~ THEN GOTO AfterYoshiBetrayal1-5
END

IF ~~ THEN AfterYoshiBetrayal1-3
SAY ~*Forse* dovresti chiederti perchè non l'abbia fatto.~
IF ~~ THEN GOTO AfterYoshiBetrayal1-5
END

IF ~~ THEN AfterYoshiBetrayal1-4
SAY ~(Snort!) Non essere paranoico, <CHARNAME>! Non ho nulla a che fare con quel mago!~
IF ~~ THEN GOTO AfterYoshiBetrayal1-5
END

IF ~~ THEN AfterYoshiBetrayal1-5
SAY ~Voglio... Voglio tenere la lama di Yoshi.~
IF ~~ THEN REPLY ~Perchè? Sarebbe inutile. Soltanto lui poteva usarla.~ GOTO AfterYoshiBetrayal1-6
IF ~~ THEN REPLY ~Scordatelo. Non voglio avere nulla tra le mani che mi ricordi quel traditore.~ GOTO AfterYoshiBetrayal1-7
IF ~~ THEN REPLY ~Come vuoi. Prendila, è tua.~ GOTO AfterYoshiBetrayal1-8
END

IF ~~ THEN AfterYoshiBetrayal1-6
SAY ~Non chiedermi spiegazioni, <CHARNAME>. Non lo so neanch'io.~
IF ~~ THEN GOTO AfterYoshiBetrayal1-8
END

IF ~~ THEN AfterYoshiBetrayal1-7
SAY ~Ma infatti la sua katana starà tra le mie, di mani.~
IF ~~ THEN GOTO AfterYoshiBetrayal1-8
END

IF ~~ THEN AfterYoshiBetrayal1-8
SAY ~Ti ho visto mentre prendevi il suo... Il suo cuore. *SOB!* Cosa hai intenzione di farci?~
IF ~~ THEN REPLY ~Cercherò di far rimuovere la costrizione che aveva stretto con Irenicus, in modo che possa riposare in pace.~ GOTO AfterYoshiBetrayal1-9
IF ~~ THEN REPLY ~Non lo so. Al momento sono confuso, ma qualcosa dentro di me mi ha spinto a farlo.~ GOTO AfterYoshiBetrayal1-9
IF ~~ THEN REPLY ~Ha invocato Ilmater prima di lanciarsi all'attacco. Forse un sacerdote del Dio Piangente potrà dirmi qualcosa... Qualcosa su coloro che cadono in battaglia dopo essersi raccomandati alla loro divinità.~ GOTO AfterYoshiBetrayal1-9
IF ~~ THEN REPLY ~Il tempo mi dirà cosa farne. Adesso voglio soltanto lasciare questo posto, Stivan. L'aria è staura di morte, qui.~ GOTO AfterYoshiBetrayal1-9
END

IF ~~ THEN AfterYoshiBetrayal1-9
SAY ~Diversamente da te, io non avevo alcun motivo per odiare Irenicus. Ti ho aiutato a combatterlo perchè tu hai fatto molto per me. Mi hai accolto nel tuo gruppo strappandomi dalla povertà della strada, un debito che posso saldare solo aiutandoti con tutto me stesso.~
= ~(Snort!) Adesso però anch'io ho una buona ragione per stanare quel maledetto. Io... Vendicherò la morte di Yoshimo!~
= ~Mi senti, Irenicus? Oggi ti sei fatto un nuovo nemico! Stivan il Cacciatore ti troverà, ovunque tu sia! Possa l'ira dei gabbiani ricadere sulla tua testa!!~
IF ~~ THEN EXIT
END
END





///////////////////////////////////////////
// More interjections than you can wave a stick at
///////////////////////////////////////////

INTERJECT_COPY_TRANS VICG1 0 tb#stivanVicG1-0
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN 
~Oooohhh! Non avevo mai visto un elfo oscuro. Se non fosse per il colore della pelle e dei capelli, sarebbero uguali ai loro odiati cugini.~
END

INTERJECT_COPY_TRANS NALIAJ 265 tb#stivanNaliaj-265
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN 
~Miss Nalia ha ragione. Bruciamo un pò di gabbiani, piuttosto!~
END

INTERJECT_COPY_TRANS VICONI 12 tb#stivanViconi-12
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN 
~Dicono che i drow siano veramente cattivi e che mangino le persone, ma a me questa Viconia ispira simpatia. Perchè non farla venire con noi? Nella peggiore delle ipotesi scoprirò cosa significa essere bollito vivo in un pentolone.~
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN 
~(Potrei ricoprirla d'oro se lo facesse).~
END

INTERJECT_COPY_TRANS BEDWIN 50 tb#StivanBedwin-50
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN 
~(Snort!) Mia mamma mi ha sempre detto che le donne non sono oggetti sessuali!~
== BEDWIN ~Ma certo. Spesso svolgono anche la funzione di recipienti in grado di sfornare mostri (ho qui vicino a me un valido esempio).~
== TB#STIVJ ~Viconia, ti prego, dì qualcosa!~
== BVICONI IF ~!Global("EdwinRomanceActive","GLOBAL",2)~ THEN
~La superiorità del sesso femminile è indubitabile e non richiede argomentazioni, sakphul. Quanto a te, Flagello Rosso, mi aspetto che le tue parole siano seguite dai fatti.~
== BVICONI IF ~Global("EdwinRomanceActive","GLOBAL",2)~ THEN
~La superiorità del sesso femminile è indubitabile e non richiede argomentazioni, sakphul. Anche se...~
END

INTERJECT_COPY_TRANS EDWIN 49 tb#StivanEdwin49
== VICONIJ IF ~InParty("Viconia") InParty("tb#stiv") !StateCheck("Viconia",CD_STATE_NOTVALID) !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Lil alerl velve zhah lil velkyn uss. Il coltello migliore è quello non visto. Forse potresti dare un significato alla tua inutile esistenza, sakphul, e sgozzare quell'uomo senza che nessuno se ne accorga.~
== TB#STIVJ ~Heh. Qualsiasi cosa per la mia Viconia!~
END

INTERJECT_COPY_TRANS MAEVAR 31 tb#stivanMaevar-31
== VICONIJ IF ~InParty("Viconia") InParty("tb#stiv") !StateCheck("Viconia",CD_STATE_NOTVALID) !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Nindyn vel'uss kyorl nind ratha thalra elghinn dal lil alust.~
== TB#STIVJ ~*Ahem* Prego?~
== VICONIJ ~Coloro che si guardano alle spalle trovano la loro morte dal davanti. Quel rivvil ignora che la sua fine è vicina.~ 
= ~Vale anche per te, stupido marmocchio.~
END

INTERJECT_COPY_TRANS LEHTIN 10 tb#StivanLehtin-10
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Vivo ad Athkatla da quando sono nato e non ho mai saputo dell'esistenza di tutto questo.~
== VICONIJ IF ~InParty("Viconia") InParty("tb#stiv") !StateCheck("Viconia",CD_STATE_NOTVALID) !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~La tua dabbenaggine non finisce mai di stupirmi, waela.~
END


INTERJECT_COPY_TRANS C6ELHAN2 55 tb#stivanC6elhan2-55
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~(Snort!) Io non ho la benchè minima intenzione di separarmi da Viconia!~
END

INTERJECT_COPY_TRANS VICONIJ 122 tb#stivanViconij-122
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Viconia, sei impazzita? Come puoi accettare di sottoporti ad una costrizione?~
== VICONIJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Sono stanca di avere noie con gli abitanti della Superficie, Stivan. Che faccia quel che vuole... La sua paura mi diverte.~
END

INTERJECT C6ELHAN2 62 tb#stivanC6elhan2-62
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~<CHARNAME>! Perchè hai permesso una cosa simile?!~
END
IF ~~ THEN REPLY ~Non sono tenuto a spiegarti le mie ragioni, Stivan.~ EXTERN TB#STIVJ ViconiaGeas1-1
IF ~~ THEN REPLY ~Non mi sono mai fidato del tutto di Viconia. Adesso grazie ad Elhan ho la certezza che non mi tradirà.~ EXTERN TB#STIVJ ViconiaGeas1-2
IF ~Global("ViconiaRomanceActive","GLOBAL",2)~ THEN REPLY ~Io mi fido di Viconia più di chiunque altro. Questa costrizione non è altro che una mera formalità.~ EXTERN TB#STIVJ ViconiaGeas1-3
IF ~~ THEN REPLY ~Credi che abbia acconsentito volentieri?~ EXTERN TB#STIVJ ViconiaGeas1-3
IF ~~ THEN REPLY ~Come tu stesso puoi vedere, questi elfi sono tutto fuorchè collaborativi. Se avessi rifiutato avrei messo l’intero gruppo in serio pericolo.~ EXTERN TB#STIVJ ViconiaGeas1-2

APPEND TB#STIVJ
IF ~~ ViconiaGeas1-1
SAY ~Non... Non sei tenuto a spiegarmi le tue ragioni? Bene! Benissimo! Quando mi metterai un cappio intorno alla gola mi sforzerò di non chiederti il perchè!~
COPY_TRANS C6ELHAN2 62
END

IF ~~ ViconiaGeas1-2
SAY ~Ma non ti tradirebbe mai! Non dopo tutto quello che hai fatto per lei! Io...~
IF ~!Global("tb#AfterYoshiBetrayal","GLOBAL",2)~ THEN EXTERN TB#STIVJ ViconiaGeas1-4
IF ~Global("tb#AfterYoshiBetrayal","GLOBAL",2)~ THEN EXTERN TB#STIVJ ViconiaGeas1-5
END

IF ~~ ViconiaGeas1-3
SAY ~Allora perchè costringerla? Io...~
IF ~!Global("tb#AfterYoshiBetrayal","GLOBAL",2)~ THEN EXTERN TB#STIVJ ViconiaGeas1-4
IF ~Global("tb#AfterYoshiBetrayal","GLOBAL",2)~ THEN EXTERN TB#STIVJ ViconiaGeas1-5
END

IF ~~ ViconiaGeas1-4
SAY ~Bah! La tua mente è più contorta di quella di un gabbiano!~
COPY_TRANS C6ELHAN2 62
END
END

CHAIN 
IF ~~ THEN TB#STIVJ ViconiaGeas1-5
~*SOB!* Io non voglio più perdere degli amici a causa di queste orribili costrizioni! Yoshimo è morto proprio per questo motivo, ed io non posso permettere che lo stesso succeda a Viconia!~ 
== VICONIJ ~Quell'insopportabile darthiir sa bene che le promesse dei miei simili sono come le sabbie mobili. Viste da lontano sembrano solide e sicure, ma quando i tuoi piedi vi si posano si rivelano inconsistenti e insidiose.~
= ~Viconia DeVir non è così sciocca da tradirvi. Non al momento. Non ne trarrei alcun vantaggio.~
= ~...~
= ~Cosa *diavolo* stai facendo?! Toglimi le mani di dosso, iblith!~
== TB#STIV ~Heh. Ti voglio bene, Viccy.~
== VICONIJ~... Shar mi sia testimone, <CHARNAME>: pagherai per ogni affronto inflittomi dal piccoletto. Possano le tenebre inghiottirmi se non terrò fede al mio giuramento!~
COPY_TRANS C6ELHAN2 62

INTERJECT MAZZY 25 tb#StivanMazzy-25
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~(Sniff sniff) Insomma, <CHARNAME>! Emana puzza di virtuosismo da tutti i pori! Perchè le hai detto di unirsi a noi?~
END
IF ~~ THEN REPLY ~E' indubbiamente una servitrice del bene. E' per questo che le ho chiesto di venire con noi.~ EXTERN TB#STIVJ StivanDislikesMazzy1-1
IF ~~ THEN REPLY ~Sono *io* a decidere la formazione del gruppo. Qualche obiezione?~ EXTERN TB#STIVJ StivanDislikesMazzy1-2
IF ~~ THEN REPLY ~Ci aiuterà a superare i pericoli di questo posto, dopodichè sarà libera di andarsene.~ EXTERN TB#STIVJ StivanDislikesMazzy1-3

APPEND TB#STIVJ
IF ~~ THEN BEGIN StivanDislikesMazzy1-1
SAY ~(Snort!) Fantastico. Prossimamente chi arruolerai? Una legione di paladini del Cuore Radioso? Fammelo sapere per tempo, se possibile, così faccio i bagagli e vi lascio brindare in nome del bene e della giustizia!~
IF ~~ THEN EXTERN MAZZY StivanDislikesMazzy1-4
END

IF ~~ THEN BEGIN StivanDislikesMazzy1-2
SAY ~(Snort!) Il sottoscritto è più che sufficiente come illustre esponente degli halfling!~
IF ~~ THEN EXTERN MAZZY StivanDislikesMazzy1-4
END

IF ~~ THEN BEGIN StivanDislikesMazzy1-3
SAY ~Heh. Meno male!~
IF ~~ THEN EXTERN MAZZY StivanDislikesMazzy1-4
END
END

APPEND MAZZY
IF ~~ THEN BEGIN StivanDislikesMazzy1-4
SAY ~Direi di non indugiare oltre e di aprirci la strada in questo luogo di malvagità.~
COPY_TRANS MAZZY 25
END
END

INTERJECT_COPY_TRANS GORF1 0 tb#StivanGorf1-0
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN 
~Ehi, tu! Ce l'hai forse con Mazzy?~
== GORF1 ~Cos'altro è questo? Straccetto che agita spada?~
== TB#STIVJ ~Pur essendo più piccoli di te, questo non ti autorizza a trattarci come se fossimo degli insetti!~
== GORF1 ~Cosa volere te? Ti spacco la faccia, ti spacco!~
== TB#STIVJ ~Eeekkkk!~
= ~M-Mazzy... Forse è meglio che t-te ne occupi tu...~
END

INTERJECT_COPY_TRANS MAZZYJ 203 tb#StivanMazzyj-203
== MAZZYJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Quanto a te, Stivan, ho apprezzato molto il tuo gesto. Non avrei mai immaginato che saresti intervenuto in mia difesa.~
== TB#STIVJ ~Heh. Lo sai che agisco senza pensare.~
== MAZZYJ ~In realtà credo che a poco a poco tu stia diventando coraggioso. Sono sicura che presto potrai affrontare impavido persino un drago!~
== TB#STIVJ ~Un drago?! Dov'è? *Dov'è*?! DOV'E'?!?!~
== MAZZYJ ~Per Arvoreen, Stivan, cosa hai capito...~
== TB#STIVJ ~EEEKKKKK! Non voglio morireee!!~ DO ~ApplySpellRES("tb#ssca",Myself)~
== MAZZYJ ~(Sigh)~
END

INTERJECT_COPY_TRANS SASSAR 31 tb#StivanSassar-31
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~*Ahem* Tutto qui? Sai, quei cosi mono-occhio ci hanno strapazzato non poco. Per una volta penso che un semplice "Grazie" non basti. Non ho mai preteso ricompense, ma questa volta...~
= ~Ehi! Dove vai? Non ho ancora finito!~
BRANCH ~InParty("Mazzy") InParty("tb#stiv") !StateCheck("Mazzy",CD_STATE_NOTVALID) !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ BEGIN
== MAZZYJ ~Aspetta, Sassar; prendi questo denaro ed usalo per ricostruirti una vita. Non dimenticare mai quello che hai imparato da questa terribile esperienza.~
DO ~GiveGoldForce(100)~
== SASSAR ~Anche volendolo, temo che non ci riuscirei. Io... Ti ringrazio, mia Signora, per la tua generosità.~
== MAZZYJ ~Figurati. Che la benedizione di Arvoreen sia con te.~
== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN
~Sangue e dannazione, Mazzy! Non ho sudato quell'oro per darlo al primo cieco babbeo che incontriamo!~
== TB#STIVJ ~(Snort!) Sai come li spenderà tutti quei soldi? Di sicuro offrendoli alla divinità che onorava prima!~
== MAZZYJ ~Chiederà ammenda per i propri peccati, e probabilmente non esiterà a fare un sacrificio monetario in segno di espiazione. Confido che il suo dio saprà perdonarlo.~
== TB#STIVJ ~Perdono? Io non perdono i gabbiani per ciò che hanno fatto alla mia famiglia.~
== MAZZYJ ~Dovresti. Il rancore inaridisce le persone a lungo andare... E nel tuo caso, vedo che non mi sbaglio.~
END
END


INTERJECT_COPY_TRANS ANOMEN 21 tb#StivanAnomen-21
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN 
~*Ahem* Non nutro grande simpatia per i chierici, sopratutto per quelli devoti come questo qui. Dubito che andremo d'accordo...~
END

INTERJECT_COPY_TRANS BANOMEN 22 tb#StivanBanomen-22
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) !Global("AnomenIsNotKnight","GLOBAL",1)~ THEN 
~Non farmi ridere, Anomen. Non hai mai visto un solo gigante in vita tua, figuriamoci venti.~
== ANOMENJ ~Ti consiglio di tenere a freno la tua lingua, piccoletto, prima che ti faccia ingoiare uno di quei volatili per cui tanto impazzisci.~
END

INTERJECT_COPY_TRANS ANOMENJ 224 tb#StivanAnomenj-224
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) !Global("AnomenIsNotKnight","GLOBAL",1)~ THEN
~Forse se ti seppellissimo vivo cambieresti idea. Vogliamo provare?~
== ANOMENJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Tra poco ti seppellirà la mia mazza, halfling.~
END

INTERJECT_COPY_TRANS BANOMEN 60 tb#StivanAnomen-60
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~"Gente di basso rango"? Come osi, brutto--~
== BMAZZY ~Stivan, non intrometterti. Lascia che sia io a rispondergli.~
END

INTERJECT_COPY_TRANS BMAZZY 0 tb#StivanMazzy-0
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~E questa sarebbe la tua risposta? Mazzy, ad un'offesa si risponde con un'offesa!~
== BMAZZY ~Non ce n'è bisogno. A volte, certi insulti definiscono più le persone che li usano.~
END

INTERJECT_COPY_TRANS COR 5 tb#StivanCor-5
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~... Ho sentito bene? Hai detto... Saerk?~
== COR ~E' questo il nome di quel mostro!~
== TB#STIVJ ~Saerk... Farrahd?~
== COR IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Proprio lui.~
END

INTERJECT_COPY_TRANS COR 8 tb#StivanCor-8
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Non è possibile. E' un incubo. Si sta ripetendo lo stesso incubo di allora, tale e quale! Saerk è... E' l'artefice della mia rovina! E' il nobile che mi ha portato via tutto!~
END

INTERJECT_COPY_TRANS ANOMENJ 48 tb#StivanAnomenj-48
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~(Snort!) Anch'io ho quattro cosette da dirti!~
END


INTERJECT ANOMENJ 52 tb#StivanAnomenj-52
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Lo dico io cosa dobbiamo fare! E' giunto il momento che quell'infame paghi per ciò che ha fatto! Se non interveniamo *adesso*, un domani altri subiranno ciò che è successo a me e ad Anomen!~
END
IF ~Global("tb#StivanPCTalk","GLOBAL",2)~ THEN REPLY ~Mi è parso di capire che questo Saerk sia l'uomo che ti ha privato di tutti i tuoi beni, giusto?~ EXTERN TB#STIVJ SaerkStrikesAgain1-1
IF ~!Global("tb#StivanPCTalk","GLOBAL",2)~ THEN REPLY ~Ho bisogno che tu scenda nei dettagli, Stivan. Chi è questo Saerk? Che cosa ti ha fatto?~ EXTERN TB#STIVJ SaerkStrikesAgain1-2

APPEND TB#STIVJ
IF ~~ THEN BEGIN SaerkStrikesAgain1-1
SAY ~Sì, è lui.~
IF ~~ THEN EXTERN TB#STIVJ SaerkStrikesAgain1-3
END

IF ~~ THEN BEGIN SaerkStrikesAgain1-2
SAY ~Saerk è a capo dei Farrahd, una delle più ricche famiglie di Athkatla. Lui... era il socio in affari di mio padre.~
= ~Quando i miei genitori e i miei fratelli vennero uccisi dai gabbiani, gli chiesi subito aiuto. Non avevo la benchè minima idea di come gestire la mia eredità, ma pensavo che lui più di tutti mi avrebbe potuto dare una mano.~
= ~Fu un errore fatale. Quel maledetto riuscì ad impossessarsi degli atti di proprietà della mia famiglia, e fece realizzare dei falsi secondo cui le mie terre appartenevano in realtà ai Farrahd da generazioni.~
= ~Persi tutto. I vigneti, la fattoria. E infine, anche la casa.~
IF ~~ THEN EXTERN TB#STIVJ SaerkStrikesAgain1-3
END
END

CHAIN IF ~~ THEN TB#STIVJ SaerkStrikesAgain1-3
~*SOB*! Credevo di essermi lasciato alle spalle il mio burrascoso passato, ma sapere che Saerk continua a rovinare le vite altrui, esattamente come ha fatto con me... Mi fa impazzire dalla rabbia!~ 
== MINSCJ IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN ~Boo dice che chi è ingiusto ottiene sempre i migliori risultati.~
= ~Boo! Come puoi dire una cosa simile? Tutti gli anni trascorsi a dar calci nelle chiappe al male... Spazzati via da una simile affermazione!~
= ~Ohhhh! Capisco ora! Quell'uomo sta esercitando la sua malvagia influenza su di te! Dobbiamo fermarlo, prima che corrompa del tutto la bontà di questo criceto!~
== EDWINJ IF ~InParty("Edwin") InParty("Minsc") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN ~(Finalmente ho trovato il modo di impiegare quello stupido incantesimo chiamato "Dominare Animali". E pensare che stavo semplicemente cercando un valido passatempo per ignorare gli struggimenti dell'halfling).~ 
== JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN ~Vorresti portare quest'uomo di fronte alla giustizia? In assenza di prove non credo che andremmo molto lontani. Sarebbe bene rivolgersi alle autorità locali. Una collaborazione potrebbe risultare fruttuosa.~
== CERNDJ IF ~InParty("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN ~Come un ragno tesse abilmente la propria tela a spese degli ignari insetti, così quest'uomo ha costruito la sua fortuna sulle disgrazie altrui. E' nostro dovere intervenire affinchè la trama della sua ragnatela non si espanda ulteriormente.~
== VALYGARJ IF ~InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN ~Pare che il novero dei criminali abbia accolto al suo interno anche i mercanti, come se l’attuale numero non fosse già abbastanza. Forse questa è l’occasione per mostrar loro che ad Athkatla nessuno è libero di agire come meglio crede a spese degli altri.~
== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN ~Questo Saerk è schifosamente simile ai miei compagni d'un tempo. Per i Nove Inferi, io dico di ucciderlo e di prenderci tutte le sue ricchezze!~
== AERIEJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN
~E'... E' molto triste quello che ti è successo, Stivan. Io... Non pensavo che certi uomini potessero essere così cattivi.~
== HAERDAJ IF ~InParty("Haerdalis") !StateCheck("Haerdalis",CD_STATE_NOTVALID)~ THEN ~Ah, un colpo di scena! Il mandante dell'assassinio della giovane donna si rivela essere anche l'artefice della miseria del mio piccolo gabbiano. Quale sarà il prossimo sviluppo in questa tragica vicenda?~
== NALIAJ IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN
~Sono basita. Non ho mai visto simili soprusi neanche tra le più altolocate famiglie di Athkatla. E a che scopo? Mira forse ad una scalata sociale?~
= ~Non importa quali siano le sue motivazioni. Dobbiamo fare il possibile per restituire alle vittime di questo mercante ciò che è stato loro sottratto!~
== VICONIJ IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN ~Il rivvil merita di essere ripagato con la stessa moneta, sebbene non si possa negare che abbia un certo talento nel dimostrare la propria superiorità sui deboli.~
== YOSHJ IF ~InParty("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN ~Saerk Farrahd è un uomo molto potente, e il suo seguito di guardie è noto per essere poco… amichevole. Se siamo destinati ad inimicarcelo, dovremmo agire con cautela.~
== IMOEN2J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN ~<CHARNAME> ed io abbiamo già incontrato simili sbruffoni in passato, ma questo pallone gonfiato li supera tutti. Propongo una settimana rieducativa nei sotterranei di Candlekeep. Sono sicura che gli farebbe abbassare la cresta, oh sì.~
== MAZZYJ IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN ~Dobbiamo intervenire in difesa della giustizia, ma con i mezzi appropriati. Un processo di fronte ad una corte è ciò che quell'individuo merita!~
== JANJ IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN ~Per la barba di zio Scratchy! I mercanti sono per definizione dei truffatori, ma il Calimshita non conosce scrupoli! Neanche in occasione della Grande Carestia di Rape del 1348 fui così disonesto. Mi limitai a spacciare per rape delle zucchine adeguatamente incantate con un banale incantesimo d'illusione. Essendo il solo a commerciarle, feci soldi a palate, ma questo attirò l'attenzione dell'esattore delle Tasse e delle Entrate di Amn, un tale di nome Trax. Sai, proprio poco tempo fa stava per mettermi nel sacco, ma sono riuscita a cavarmela grazie al provvidenziale intervento di un gruppo di avventurieri. E' un peccato non averli più rivisti.~ 
== KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN ~Il racconto del ladro dissolve ogni dubbio sulla malvagità di quest'uomo, ma rimane il fatto che non vi sono prove della sua colpevolezza nè in uno nè nell'altro caso. No, la questione va risolta affidandoci al giudizio di Torm.~
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN ~Dovete rimuginare sulla questione ancora per molto? Non è necessario avere una mente geniale come la mia per capire che quel mercante ve la farà ancora una volta a meno che non lo uccidiate!~
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ ~I trascorsi dell'halfing non fanno altro che complicare la situazione, pertanto suggerisco di accantonarli, per il momento.~
= ~Mi trovo di fronte ad un bivio, ma non so quale sentiero percorrere. Vendicare la morte di Moira è contro i dettami dell'Ordine; non vendicarla significherebbe invece non onorare la memoria di mia sorella.~
= ~Cosa mi suggerisci di fare, <CHARNAME>?~
END
COPY_TRANS ANOMENJ 52

INTERJECT_COPY_TRANS ANOMENJ 62 tb#StivanAnomenj-62
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Anomen ha ragione. Non c'è motivo di sporcarsi le mani di sangue. Il modo migliore per fargliela pagare è ridurlo in povertà, esattamante come ha fatto con me e con voi.~
= ~Quando il magistrato riconoscerà le sue colpe, perderà ogni cosa... E l'antico e il nuovo sopruso verranno finalmente vendicati!~
END

INTERJECT_COPY_TRANS ANOMENJ 71 tb#StivanAnomenj-71
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~La morte di tua sorella non resterà impunita, Anomen. Saerk non l'avrà vinta, non questa volta!~
== ANOMENJ ~Così sia. Possa Helm assisterci nella nostra impresa.~
END

INTERJECT_COPY_TRANS COR 51 tb#StivanCor-51
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~*Ahem* Non pensi che la prigione sarebbe meglio rispetto a questa spedizione punitiva?~
== ANOMENJ ~Hai forse intenzione di opporti?~
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~No, per nulla. Mi stavo semplicemente chiedendo se la morte fosse la pena appropriata per quell'infame. Io avrei preferito vederlo dietro le sbarre per il resto della sua vita, ma se tu e <CHARNAME> pensate che ucciderlo sia la cosa più giusta, non solleverò la benchè minima obiezione.~
== ANOMENJ ~Saerk non rimarebbe in prigione per più di un giorno. Non ho dubbi che i suoi tentacoli arrivino persino al Consiglio stesso. No, vendicherò la morte di Moira con la stessa moneta.~
END

INTERJECT_COPY_TRANS KELDOR 2 tb#StivanKeldor-2
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~"Bene supremo"? "Uniamoci e cerchiamo"? Io non voglio viaggiare con questo paladino perfettino! Sarebbe una rovina per il mio commercio illegale di piume di gabbiano!~
END

INTERJECT_COPY_TRANS KELDOR 3 tb#StivanKeldor-3
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~(Sospira) ... Sono salvo!~
END

INTERJECT_COPY_TRANS KELDOR 4 tb#StivanKeldor-4
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~L'hai fatto apposta. Dillo che l'hai fatto apposta!~
END

INTERJECT_COPY_TRANS KELDORJ 11 tb#StivanKeldorj-11
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN 
~WOW! Questa sì che è una casa, vecchio! Ma le ricchezze che voi paladini acquisite con le vostre crociate non dovrebbero essere distribuite tra i poveri?~
== KELDORJ ~E' ciò che facciamo, ma una parte viene divisa tra i servitori di Torm. Anche noi abbiamo una famiglia a cui provvedere, dopotutto.~
== TB#STIVJ ~Mi chiedo a quanto ammonti questa parte. Perchè qualcosa mi dice che è decisamente più alta di quella destinata ai *veri* bisognosi?~
== KELDORJ ~NON tollererò altre simili insinuazioni. Mia moglie ed io abbiamo faticato duramente per potercela permettere.~
== TB#STIVJ ~Già... Dev'essere stata una faticaccia, soprattutto per lei.~
== KELDORJ ~La tua mancanza di rispetto è vergognosa, halfling.~
= ~(Sospira) Coraggio, <CHARNAME>; la mia famiglia ci attende.~
END

INTERJECT_COPY_TRANS BKELDOR 37 tb#StivanBkeldor-37
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Attento a quel che dici, paladino. Ho tagliato la gola a non so quante guardie che volevano sbattermi in prigione soltanto perchè dormivo per le strade. Continua a minacciare Viconia e aggiungerò anche la tua alla lista.~
== BKELDOR ~Gli amici dei miei nemici sono miei nemici, halfling. Tieni bene a mente il mio avvertimento.~
END

INTERJECT_COPY_TRANS BVICONI 111 tb#StivanBviconi-111
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Brutto energumeno, dovrai passare sul mio cadavere prima di torcerle un solo capello!~
== BVICONI ~Fatti da parte, piccoletto. Non ho bisogno di essere difesa da nessuno, tantomeno da te. Mi sbarazzerò di questo d'nilok da sola.~
END

INTERJECT_COPY_TRANS BVALYGA 6 tb#StivanBvalyga-8
== BVALYGA IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Eppure...~
= ~Stivan, dal tuo zaino proviene un odore tremendo.~
== TB#STIVJ ~Le mie cacche di gabbiano NON si toccano!~
== BVICONI ~Tsk. Gli abitanti della Superficie sono il peggior compromesso tra intelligenza e dimensioni del membro.~
END

INTERJECT_COPY_TRANS EDWINJ 12 tb#StivanEdwinj-12
== EDWINJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Trema, halfling! Tu sarai il primo ad assaggiare il mio nuovo e inarrestabile potere!~
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Eeeekk!~
END

INTERJECT_COPY_TRANS EDWINJ 13 tb#StivanEdwinj-13
== EDWINJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Trema, halfling! Tu sarai il primo ad assaggiare il mio nuovo e inarrestabile potere!~
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Eeeekk!~
END

INTERJECT_COPY_TRANS EDWINJ 14 tb#StivanEdwinj-14
== EDWINJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Trema, halfling! Tu sarai il primo ad assaggiare il mio nuovo e inarrestabile potere!~
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Eeeekk!~
END


INTERJECT_COPY_TRANS YOSHJ 145 tb#StivanYoshj-145
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Yoshimo, posso sapere cosa hai fatto per irritare quest'uomo?~
== YOSHJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Un'altra volta, forse.~
END

INTERJECT_COPY_TRANS YOSHJ 113 tb#StivanYoshj-113
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Stai dicendo... di averci portato nella tana del leone *apposta*? Yoshimo, questo... Questo è un tradimento!~
END

INTERJECT_COPY_TRANS YOSHIMOX 2 tb#StivanYoshimox-2
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Non è detta l'ultima parola, Yoshimo! Troveremo un rimedio, una cura... Si possono cambiare molte cose!~
== YOSHIMOX ~Temo di no, mio piccolo amico. Nulla può essere cambiato.~
== TB#STIVJ ~No! No! Devi darmi... *Esigo* che tu mi dia una spiegazione! Io... Non capisco... ~
== YOSHIMOX ~Ho impiegato una vita intera per capire che non è necessario capire tutto. Il tempo è un grande insegnante, ma sfortunatamente uccide tutti i suoi alunni.~
END

INTERJECT_COPY_TRANS VALYGAR 44 tb#StivanValygar-44
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~*Ahem* Non posso fare a meno di chiedermi se il gioco ne valga la candela. Ci stiamo inimicando i più potenti incantatori dell'Amn... Per cosa?~
== YOSHJ IF ~IsValidForPartyDialog("Yoshimo") IsValidForPartyDialog("tb#stiv") !StateCheck("Yoshimo",CD_STATE_NOTVALID) !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~L'halfling ha ragione. Ti ricordo, <CHARNAME>, che sono stati gli Incappucciati ad imprigionare Irenicus e la tua amica... Vogliamo andare a far loro compagnia?~
END

INTERJECT_COPY_TRANS VALYGARJ 61 tb#StivanValygarj-61
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Tsk. Ipocrita E ingrato. Un singolare connubio di attributi, Valygar, che meriti come nessun altro.~
== VALYGARJ ~Puoi dire quello che vuoi, ma non ucciderò mai un innocente per...~
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Per cosa? Per una causa meritevole come quella di <CHARNAME>? Puah! Sputo su di te e sulla tua moralità da accattoni!~
== VALYGARJ ~Pondera bene la tua prossima scelta, <CHARNAME>. La lingua velenosa di quest'halfling è già di per sè un motivo più che valido per andarmene.~
END

INTERJECT_COPY_TRANS VALYGARJ 59 tb#StivanValygarj-49
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~(Sniff sniff) Ranger, sei sicuro di non aver confuso l'odore di questo posto con quello delle tue ascelle?~
== VALYGARJ ~(Sigh) <CHARNAME>, a cosa pensavi quando gli hai chiesto di seguirti?~
END

INTERJECT_COPY_TRANS NALIAJ 226 tb#StivanNaliaj-226
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Quando mendicavo per le strade, nessuno è mai stato così generoso con me.~
== NALIAJ ~Non c'è stato un solo nobile che ti abbia dato qualche moneta d'oro? Gli Argrim, ad esempio?~
== TB#STIVJ ~No.~
== NALIAJ ~E gli Jysstev?~
== TB#STIVJ ~Nemmeno.~
== NALIAJ ~E' una vergogna! Un'indecenza! Con appena la metà delle ricchezze che possiedono potrebbero sfamare tutti gli abitanti di Athkatla, eppure non muovono un dito!~
== TB#STIVJ ~Miss Nalia, è giusto che sia così. Nè io nè i miei familiari ci siamo mai preoccupati di aiutare i mendicanti a suo tempo. Immagino che sia una sorta di... contrappasso.~
= ~*Ahem* Non che la cosa mi abbia entusiasmato. Ne avrei fatto volentieri a meno.~
END

INTERJECT_COPY_TRANS JAHEIRAJ 392 tb#StivanJaheiraj-392
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Jaheira ha ragione. Non ho mai sentito parlare di questa sede degli Arpisti.~
== JAHEIRAJ ~E perchè mai dovresti averne? I servitori dell'equilibrio non cantano ai quattro venti dove hanno stabilito le loro basi.~
== TB#STIVJ ~Ma i Ladri Tenebrosi sì. Dovresti sapere che non scorre buon sangue tra le ombre dell'Amn e gli Arpisti... Se questa tenuta fosse stata adibita a tale scopo fin da quando ero piccolo, l'intera città ormai lo saprebbe.~
END

APPEND TB#STIVJ 
IF ~AreaCheck("AR0502")
Global("EnteredTanner2","AR0502",0)~ THEN BEGIN Stivanar0502
SAY ~(Tossisce) Che... Che schifo è mai questo? Nemmeno i vicoli in cui dormivo erano così ripugnanti! Do... (Tossisce) Dobbiamo proseguire per forza? Io... Spero di no...~
IF ~~ THEN DO ~SetGlobal("EnteredTanner2","AR0502",1)~ EXIT
END
END

INTERJECT_COPY_TRANS BODHI 1 tb#StivanBodhi-1
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~*Ahem* Questa donna mi mette a disagio, <CHARNAME>. Ho la pelle d'oca...~
END

INTERJECT_COPY_TRANS BODHI 6 tb#StivanBodhi-6
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Secondo me l'importante è riuscire nella tua missione, non mi importa grazie a chi. Comunque è impressionante il fatto che tutti siano così ansiosi di aiutarti, non trovi?~
END

INTERJECT_COPY_TRANS RYLOCK 24 tb#StivanRylock-24
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~*Ahem* Dobbiamo proprio? La gente, qui ai Moli, dice che chi entra in quella casa non ne esce più vivo...~
== HAERDAJ IF ~IsValidForPartyDialog("haerdalis") IsValidForPartyDialog("tb#stiv") !StateCheck("haerdalis",CD_STATE_NOTVALID) !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~E dov'è il problema, mio gabbiano? Se ci attende la morte, avremo il piacere di fare un viaggio senza valigie.~
== TB#STIVJ IF ~IsValidForPartyDialog("haerdalis") IsValidForPartyDialog("tb#stiv") !StateCheck("haerdalis",CD_STATE_NOTVALID) !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~...~
END

CHAIN IF WEIGHT #-1 ~IsValidForPartyDialog("tb#stiv")
See("tb#stiv")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
Global("tb#StivanNobleMan","GLOBAL",0)~ THEN NOBLEM1 stivanNobleman
~Da quando fanno entrare simili lordure in un quartiere benestante come questo?~
== TB#STIVJ ~Heh. La sola lordura che vedo, signore, è quella che avete sotto i vostri piedi.~
DO ~SetGlobal("tb#StivanNobleMan","GLOBAL",1)~
EXIT

CHAIN IF WEIGHT #-1 ~IsValidForPartyDialog("tb#stiv")
See("tb#stiv")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
Global("tb#SStivanFemaleChild","GLOBAL",0)~ THEN urchin2 StivanUrchin
~MIA MAMMA DICE CHE GLI HALFLING SONO TUTTI DEI PUZZONI!~
DO ~SetGlobal("tb#SStivanFemaleChild","GLOBAL",1)~
== TB#STIVJ ~Non è vero! Lavo sempre i miei capelli almeno una volta ogni sei mesi!~
EXIT

CHAIN IF WEIGHT #-1 ~IsValidForPartyDialog("tb#stiv")
See("tb#stiv")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
Global("tb#SStivanNobleWoman","GLOBAL",0) ~THEN NOBLEW1 stivanNoblewoman
~Allontanati, accattone! La tua sola vicinanza offusca lo splendore delle mie perle!~
DO ~SetGlobal("tb#SStivanNobleWoman","GLOBAL",1)~
== TB#STIVJ ~Heh. Brillano bene, per essere finte.~
EXIT

/*
Nessuno sa perchè siamo stati attaccati... Non abbiamo fatto nulla per meritarcelo. Non siamo neppure sicuri che i druidi siano responsabili. Non hanno mai fatto una cosa simile in passato.
INTERJECT_COPY_TRANS 
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~E' senz'altro opera degli adoratori di alberi! E se... E se fossero loro i responsabili di ciò che è successo alla mia famiglia anni fa? Dobbiamo indagare, <CHARNAME>!~
END

Eccellente! Invierò parola a Lord Coprith in modo che ti aspetti. Grazie per l'aiuto.
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Conosco Trademeet - ci sono stato diverse volte con la mia famiglia. Se siamo fortunati, potremmo incontrare qualche mercante con cui eravamo soliti commerciare. Sono sicuro che farebbero il possibile per aiutarci a trovare quei puzzoni di druidi!~
END

Strumento della sfera cieca! Anche tu morirai per aver disturbato il mio riposo.
INTERJECT_COPY_TRANS BHCRYPT
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~WOW! Questa cripta è perfetta! C'è spazio anche per gli altri membri del gruppo, nel caso in cui vogliano farci un pisolino!~
== BHCRYPT ~Nessuno profanerà il luogo del mio riposo. Taglierò le vostre teste una ad una e le infilerò su una picca, cosicchè possano essere da monito agli intrusi!~
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Eeeekkk!~
END

Ben fatto! I githyanki ora sono liberi dalla rete mentale degli illithid. Il nostro potere è di nuovo libero e ora possiamo lasciare questo luogo sulle ali della volontà.
INTERJECT_COPY_TRANS
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Yeah! Non ne potevo più di quei cosi tentacolosi!~
END

INTERJECT_COPY_TRANS PLAYER1 33 TreeOfLifeStivan
== PLAYER1 IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Stivan, l'halfling nativo di Athkatla con la fissazione per i gabbiani. Sempre pronto a ribattere, spesso sornione e a tratti infantile, ti ha seguito sin dal vostro primo incontro senza esitazione, benchè non abbia alcun trascorso con colui che ti ha rubato l'anima.~
END
IF ~~ THEN REPLY ~Torna ad Athkatla, Stivan. Non hai motivo di scontrarti con Irenicus.~
IF ~!Global("EntryTest","GLOBAL",5)~ THEN EXTERN TB#STIVJ TreeOfLifeStivan1-1
IF ~Global("EntryTest","GLOBAL",5) !Global("tb#AfterYoshiBetrayal","GLOBAL",1)~ THEN EXTERN TB#STIVJ TreeOfLifeStivan1-2
IF ~Global("EntryTest","GLOBAL",5) Global("tb#AfterYoshiBetrayal","GLOBAL",1)~ THEN EXTERN TB#STIVJ TreeOfLifeStivan1-3
IF ~~ THEN REPLY ~Ti sono grato per il tuo aiuto, Stivan, ma adesso è meglio che tu te ne vada. Non hai motivo di rischiare la tua vita.~
IF ~!Global("EntryTest","GLOBAL",5)~ THEN EXTERN TB#STIVJ TreeOfLifeStivan1-1
IF ~Global("EntryTest","GLOBAL",5)~ THEN EXTERN TB#STIVJ TreeOfLifeStivan1-2
IF ~~ THEN REPLY ~Stivan, la battaglia che ci attende è molto pericolosa. Ho bisogno che tu dia il meglio di te.~
IF ~!Global("EntryTest","GLOBAL",5)~ THEN EXTERN TB#STIVJ TreeOfLifeStivan1-1
IF ~Global("EntryTest","GLOBAL",5)~ THEN EXTERN TB#STIVJ TreeOfLifeStivan1-4

APPEND TB#STIVJ 
IF ~~ THEN BEGIN TreeOfLifeStivan1-1 
SAY ~*Ahem* Non ti seguirò nella battaglia suicida che ti attende, <CHARNAME>. Non correrò il rischio di morire con l'urna dei miei familiari tra le mani.~
= ~E' stato bello viaggiare con te. Avrei continuato a seguirti volentieri, ma i miei genitori e i miei fratelli hanno la priorità. Devono riposare in pace.~
= ~Io torno ad Athkatla. In bocca al lupo!~ 
DO ~SetGlobal("StivanJoined","GLOBAL",0) LeaveParty() EscapeArea()~
END

IF ~~ THEN BEGIN TreeOfLifeStivan1-2
SAY ~Non dire sciocchezze, <CHARNAME>. Dopo tutto quello che hai fatto per me, combattere al tuo fianco è il minimo che possa fare per sdebitarmi.~ 
END
 
IF ~~ THEN BEGIN TreeOfLifeStivan1-3
SAY ~Ti sbagli, <CHARNAME>. Quel bruttone è responsabile della morte di Yoshimo, ed io ho giurato che l'avrei vendicata.~
= ~Sarò al tuo fianco sino all'ultimo respiro. Insieme pianteremo la lama del nostro defunto amico nel cuore di quel mostro!~ 
END

IF ~~ THEN BEGIN TreeOfLifeStivan1-4
SAY ~Puoi contare su di me. Sai quanta cacca di gabbiano ho messo da parte per questo scontro? TONNELLATE.~ 
END
IF ~~ THEN REPLY ~Mi raccomando: dritta in fronte.~ EXTERN TB#STIVJ TreeOfLifeStivan1-5
IF ~~ THEN REPLY ~Ottimo. Gliela faremo mangiare sino all'ultimo boccone.~ EXTERN TB#STIVJ TreeOfLifeStivan1-5
IF ~~ THEN REPLY ~Lascia che sia il ferro a parlare.~ EXTERN TB#STIVJ TreeOfLifeStivan1-6

IF ~~ THEN BEGIN TreeOfLifeStivan1-5
SAY ~Yeah!~
END

IF ~~ THEN BEGIN TreeOfLifeStivan1-6
SAY ~Heh. Gli pianterò un pugnale sulla schiena, se è questo che vuoi, ma prima mi accerterò che sia adeguatamente ricoperto di escrementi!~
END
END

Dubiti che saranno felici della loro attuale condizione, quando neppure tu sai perché ti trovi qui.
INTERJECT_COPY_TRANS PLAYER1 33 TreeOfLifeStivan
== PLAYER1 IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~(Gasp!) Il... Il mio corpo! E' ancora integro, eppure... Ho sentito una forza che tirava e tirava, e ho pensato che mi avrebbe fatto a pezzi!~
= ~*Ahem* Non capisco. Siamo vivi... O morti?~
END

Vedremo, <CHARNAME>. Vedremo!
INTERJECT_COPY_TRANS HELLJON
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~E' ora di finirla una volta per tutte, bruttone. Possano i gabbiani cibarsi dei tuoi resti!~
END

La tua anima non è mai stata veramente tua, figlio di Bhaal! Dovresti permettermi di utilizzarla meglio!
INTERJECT_COPY_TRANS HELLJON
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~E' ora di finirla una volta per tutte, bruttone! Possano i gabbiani cibarsi dei tuoi resti!~
END

Una strana situazione, ma non ho dubbi sul risultato!
INTERJECT_COPY_TRANS HELLJON
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~E' ora di finirla una volta per tutte, bruttone. Possano i gabbiani cibarsi dei tuoi resti!~
END

Non sarai così tranquillo quando ti spedirò nella non-esistenza!
INTERJECT_COPY_TRANS HELLJON
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~E' ora di finirla una volta per tutte, bruttone. Possano i gabbiani cibarsi dei tuoi resti!~
END



Allora, devi ascoltare la nostra storia. Uno dei nostri attori, Haer'Dalis, è stato rapito da uno stregone nativo di questa città... Non ha fatto alcuno sforzo per negoziare con noi.
INTERJECT_COPY_TRANS RAELIS
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Haer’Dalis sarebbe il nome di quell’attore magro magro coi capelli lunghi lunghi?~
== RAELIS ~Sì, piccolino. Sei forse un amico del nostro segugio?~
== TB#STIVJ ~Oh, no. L’ho semplicemente visto recitare qualche volta. Avete idea di dove possa essere finito?~
END

(L'uomo ti guarda senza espressione per un momento e poi parla)

Servo solo il Maestro Mekrath.
INTERJECT_COPY_TRANS HAERDA
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) !Global("RaelisJob","GLOBAL",1)~ THEN ~Ma questo, a meno che non mi sbagli, è un attore della compagnia teatrale in scena ai Cinque Boccali. Cosa ci fa qui? Soprattutto, perché ha quell’espressione inebetita?~
END

(L'uomo ti guarda senza espressione per un momento e poi parla)

Servo solo il Maestro Mekrath.
INTERJECT_COPY_TRANS HAERDA
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Global("RaelisJob","GLOBAL",1)~ THEN ~Questo è l’attore che Miss Raelis ci ha chiesto di trovare, lo riconosco. Però è strano... L’ultima volta che l’ho visto non aveva questa espressione inebetita. Che quel bruttone del mago gli abbia fatto qualcosa?~
END

Così, mio corvo... il Primo Piano Materiale sarà terreno di gioco per entrambi. Viaggeremo insieme per stupirci delle sue glorie?
INTERJECT_COPY_TRANS HAERDA
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Sarebbe bello se tu viaggiassi con noi, Haer’Dalis. Sai che ho assistito ad alcune delle tue ultime rappresentazioni?~
== HAERDA ~Davvero? E dimmi, qual è quella che ti ha maggiormente colpito?~
== TB#STIVJ ~“Via Col Cambion” mi ha commosso. La sua drammaticità non ha paragoni. E’ un peccato che Biff sia sbucato all’improvviso dalla botola del palco - il pubblico ha riso per tutto il resto dell’opera!~
== HAERDA ~Tsk. Solo gli abitanti del Primo Piano sono capaci di versare lacrime per un gorgheggio sentimentale e nel medesimo istante di ridere sgangheratamente per un piccolo contrattempo.~ 
== TB#STIVJ ~*Ahem* Visto che viaggeremo insieme, perché non mi insegni ad essere un buon bardo? Io ho provato, ma spesso la memoria mi abbandona a metà del racconto o della poesia…~
== HAERDA ~Temo proprio di no, ragazzino. L’Arte è un talento innato, un dono di cui disponiamo sin dal nostro primo gemito. Non è qualcosa che si possa insegnare.~
= ~Ebbene, <CHARNAME>, attendo l'ardita sentenza. Esploreremo fianco a fianco questa landa sconosciuta?~
END

Chi sei tu? Oh, chiunque tu sia, devi scappare da questo posto immediatamente! Lui... lui ha ucciso quasi tutti quelli che sono venuti qui! Ti prego, scappa!
INTERJECT_COPY_TRANS AERIE
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~(Sniff sniff) A meno che il mio olfatto non mi stia tradendo, quell’orco puzza di pennuto. Stà attento, <CHARNAME>: potrebbe trattarsi di un gabbiano travestito!~
END

Oh, sarei lieta di aiutarti, davvero... ma prima dobbiamo aiutare Zio Quayle! Dobbiamo!
INTERJECT_COPY_TRANS AERIE
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Bada a non camminare troppo vicino a me. Benchè tu non abbia più le tue ali, rimani pur sempre un’ex-pennuta.~
= ~Ehi! Cosa stai facendo?!~
== AERIE ~Mi-mi prendo cura di questo povero gabbiano. Guarda com’è ridotto! Ha bisogno di cure!~
== TB#STIVJ ~(Urla) Come osi liberare quello schifido uccello dalla giusta prigionia che merita? Ridammelo *subito*!~
== AERIE ~Eeekk!~
END

Mi lasceresti... Mi lasceresti viaggiare con te? Vorrei tanto ma... Oh Quayle, mi mancheresti!
INTERJECT_COPY_TRANS AERIE
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Non puoi fare una cosa simile, <CHARNAME>! Se la liberatrice di pennuti verrà con noi, i gabbiani sfuggiranno alle mie sevizie e allo spennamento che meritano!~
END

Salute! Poi via alla cripta e a ricchezze al di là della nostra comprensione!
INTERJECT_COPY_TRANS KORGANA
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Mia mamma diceva sempre che i nani sono i più abili forgiatori di tutta Faerun. Perché in cambio del nostro aiuto non realizzi qualche gingillo magico per noi?~
== KORGANA ~Io non sono un maniaco del martello e dell’incudine, bamboccio. Le sole cose che brandisco sono ascia e scudo, e presto li userò per aprirmi la strada tra le carcasse ammuffite di quella cripta!~
END

Una lingua veloce, un pratico colpo di balestra e tutti i congegni illegali che riesco  inventare.
INTERJECT_COPY_TRANS JAN
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Anch’io commerciavo merce illegale, sai? Piume di gabbiano, per la precisione. Non era un’attività particolarmente redditizia, ma di tanto in tanto riuscivo a guadagnare una moneta d’oro per mangiare almeno una pagnotta.~
== JAN ~Piume di gabbiano? Accidenti, mio cugino Eduardo potrebbe averne bisogno per perfezionare quel congegno che sostiene sia in grado di volare. Se soltanto sapessi che fine abbia fatto. Non vorrei che alla fine abbia spiccato davvero il volo.~
END

Qui... segnerò sulla tua mappa il punto. Dobbiamo dirigerci là immediatamente. Dobbiamo fare attenzione a non farci individuare. Spero che vada tutto bene!
INTERJECT_COPY_TRANS NALIA
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Sbaglio o queste sono le terre dei De’Arnise? La figlia dell’attuale Lord è nota in tutta Athkatla per la sua generosità.~
= ~A ben guardarvi, le assomigliate un pochino.~
== NALIA ~…~
== TB#STIVJ ~Che sciocco che sono! Siete *voi* la mitica Miss Nalia! Come ho fatto a non capirlo subito?~
== NALIA ~Non ho nulla di mitico, davvero. Cerco soltanto di usare i mezzi di cui dispongo per aiutare i meno fortunati.~
END

Molto bene, ma se cambi idea, ho sempre voluto viaggiare. Aiuti gli altri molto spesso? Mi piace davvero fare qualcosa per i meno fortunati. Mi hanno detto che lavorano così duramente.
INTERJECT_COPY_TRANS NALIA
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Ma questa donna... Questa donna è Miss Nalia De'Arnise! E' nota in tutta Athkatla per la sua generosità! Perchè non le hai detto di unirsi a noi, <CHARNAME>? Hai idea del prestigio sociale che avremmo acquisito in sua compagnia?~
== JAHEIRJ IF ~IsValidForPartyDialog("Jaheira") IsValidForPartyDialog("tb#stiv") !StateCheck("Jaheira",CD_STATE_NOTVALID) !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Nessuno di noi viaggia con <CHARNAME> per simili banalità, Stivan. Alcuni non hanno avuto nemmeno la possibilità di scegliere.~
== TB#STIVJ ~Ah no?~	
== JAHEIRJ ~No.~
END

No, non andar via. E' passato così tanto tempo da quando ho visto il tuo volto. Così regale e... uh... un po' sporco, ora. Sei stata ancora nei bassifondi? Birichina!
INTERJECT_COPY_TRANS ISAEA
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~(Snort!) Perchè guardi nella mia direzione?~
== ISAEA ~Nalia, non prendere troppa confidenza con i popolani, per favore. Forse tu non te ne rendi conto, ma la semplice vicinanza a quel barbone rende irriconoscibile la tua nobile discendenza.~
== TB#STIVJ ~Popolano io?! Un tempo appartenevo ad una famiglia di mercanti rispettati in tutta Athkatla!~
== ISAEA ~Quel tempo è ormai passato, a quanto vedo. Questo cicisbeo viene dai Bassifondi o da qualche altro quartiere degradato a cui hai fatto visita?~
END

Nalia! Ti chiedo di lasciare questi pazzi una volta per tutte e tornare ai tuoi doveri! Onora gli impegni che hai stipulato con me!
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Ehi, tu! Perché continui ad importunare Miss Nalia?~
== ISAEA ~Sei ancora in compagnia di quel popolano?~
== NALIAJ ~Ti ho già detto che Stivan non è un popolano. E anche se lo fosse, non ci sarebbe nulla di cui vergognarsi.~
== ISAEA ~Per quanto tu possa vestire un mendicante con gli abiti di un nobile, dai suoi modi si capirà sempre che non ha il sangue blu. Ma non ho tempo per simili disquisizioni. Allontanati da questa manica di orchetti, ora!~
END

Chi sei tu per deciderlo? Con quale diritto?
INTERJECT_COPY_TRANS NALIAJ
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Heh. Non preoccupatevi, Miss Nalia; quell'uomo sta chiaramente bluffando.~
END

No, non lo farà. Agisco con la piena approvazione dei militari. Anche se tu fossi il tipo da attaccare le guardie, non sopravvivresti al tentativo.
INTERJECT_COPY_TRANS ISAEA
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~(Snort!) E' ora di finirla con questa messinscena! Osa avvicinarti a Miss Nalia e dovrai vedertela con me!~
== ISAEA ~Un solo passo falso, *popolano*, e ti ritroverai alla forca senza neanche accorgertene.~
END

Arrivederci, <CHARNAME>. Non prendertela; sono semplicemente migliore di te. Oh, ritieniti libero di sporgere un reclamo all’autorità competente. Che sarei… io.
INTERJECT_COPY_TRANS ISAEA
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Non possiamo permettere che Miss Nalia cada nelle mani di quel manigoldo! Dobbiamo liberarla! O invocare l'ira dei gabbiani su quell'infame! <CHARNAME>, dobbiamo fare qualcosa!~
END

Questo lavoro è un semplice recupero di documenti importanti, e dovrai essere il più discreto possibile. (Come se questi goffi idioti potessero riuscirci.)
INTERJECT_COPY_TRANS EDWIN
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Heh. Se vuoi che mi occupi io di questo recupero, <CHARNAME>, non devi far altro che chiedere.~
END

Smettila di importunarmi, ho da condurre degli affari importanti.
INTERJECT_COPY_TRANS MARCUS
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Global("#tbStivanMarcus","GLOBAL",1)~ THEN ~PIUME DI GABBIANO! Andate e colpite!~
== MARCUS ~Ma cosa diavolo…?!~
== TB#STIVJ ~Yeah! L’ho presa! Ecco qui la collana che cercavi, <CHARNAME>!~ DO ~GiveItem("AMUL09")~
END
IF ~~ THEN REPLY ~(Sigh) Hai idea di come reagirebbe Edwin se gli portassi un gioiello al posto delle carte di cui aveva bisogno?~ EXTERN TB#STIVJ StivanMarcus1-1
IF ~~ THEN REPLY ~Stivan, forse non mi sono spiegato bene. Mi servono i *documenti* che quell’uomo ha con sé, non articoli di bigiotteria!~ EXTERN TB#STIVJ StivanMarcus1-1
IF ~~ THEN REPLY ~Fenomenale. Davvero. Peccato che l’oggetto del furto fosse un plico di fogli, non un pendente per il collo.~ EXTERN TB#STIVJ StivanMarcus1-1

APPEND TB#STIVJ

IF ~~ THEN StivanMarcus1-1
SAY ~Ops.~
= ~Non disperare, <CHARNAME>! Rimedio subito!~
= ~Ehi, tu!~ EXTERN TB#STIVJ StivanMarcus1-2
END

APPEND MARCUS

IF ~~ THEN StivanMarcus1-2
SAY ~Maledizione a te, halfling! Quelle piume mi hanno quasi accecato! Si può sapere cosa --~
== TB#STIVJ ~CACCA DI GABBIANO! Và e colpisci!~
== MARCUS ~Ahhh! Non vedo più nulla! Aiuto! Aiuto!!~
== TB#STIVJ ~Presi!~ DO ~GiveItem("misc4w")~
== MARCUS ~Dove sei, maledetto? Dove sei?! Se ti prendo…!!!~ DO ~EscapeArea()~
== TB#STIVJ ~Diamocela a gambe, <CHARNAME>!~
IF ~~ THEN EXIT
END
END

SAERK Cosa significa tutta questa confusione? Cosa sta succedendo qui?
SURAYAH P-padre? Ho sentito qualche rumore...?
ANOMEN Finalmente vedo il serpente strisciare fuori dal suo rifugio per rivelarsi! Vieni dunque, demonio, e preparati ad affrontare la giusta vendetta!
SAERK Che significa questo? Ah... Vedo che quella lucertola raggrinzita di Cor ha mandato il suo cucciolo ad occuparsi di me, eh?
INTERJECT_COPY_TRANS SAERK
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Anomen non è da solo! Ci sono anch'io, Saerk!~
== SAERK ~Il marmocchio dei Fristbrowfine? Cosa ci fai qui?~
== TB#STIVJ ~Sono venuto a vendicarmi! E' giunta l'ora che tu paghi per tutti i tuoi soprusi!~
== SAERK ~Cor è così disperato da mandarmi contro il figlio e questo poveraccio? Ha! Non fatemi ridere!~
END
ANOMEN Tu non pronuncerai il nome di mio padre!
YUSUF Questo è Anomen? Oh, posso ucciderlo, papà? Per favore?
SAERK Certo che puoi, Yusef. Sfrutterei qualunque occasione si presentasse pur di colpire duramente Cor, e questa arriva proprio al momento giusto.
ANOMEN Quindi lo ammetti! Ammetti la tua colpevolezza nell'omicidio di Moira!
SAERK Non ammetto niente! Ho già strappato il cuore e l'anima di tuo padre rubandogli tutti gli affari che portava avanti! L'ho abbattuto e mandato in rovina come il lurido cane mukrag che è!
SAERK Ed ecco che tu mi dai l'occasione di colpirlo ancora! Suo figlio... che irrompe nella mia casa... Avremmo tutti i diritti di difenderci, no?
YUSUF Certissimo!
INTERJECT_COPY_TRANS SAERK
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Non sei cambiato per nulla, mostro! Sei sempre lo stesso essere spregevole che gode nell'annichilire gli altri, proprio come hai fatto con me!~
== SAERK ~Ancora con quella storia? Le terre di tuo padre erano troppo redditizie per lasciarle in mano ad un incompetente come te!~
== TB#STIVJ ~(Urla) Idiota! Io stesso ti avevo detto di non esserne in grado! E' per questo che mi ero rivolto a te!~
== SAERK ~Non importa. Non puoi *nulla* contro di me. e neanche tu, Anomen.~
END
ANOMEN Demone Calimshita! So che hai assassinato la mia povera e innocente sorella! Ti vedrò morire e marcire per ciò che hai fatto, lo giuro!
SAERK Ah, sì, sappiamo bene qual è il prezzo del giuramento di un Delryn. Spero che la giovane marcisca nella sua tomba, ragazzo. E' quello che tu e la tua famiglia vi meritate!
ANOMEN Sputi sulla sua memoria? Molto bene, demone... Ti insegnerò il dolore di una simile perdita!
SAERK No! Fermo! M-molto bene, Delryn... Hai vinto! Io... Ti prego di non fare del male a questo innocente fiore del mio casato!
ANOMEN E Moira ti ha supplicato per la sua vita, prima che le venisse tolta? Era forse meno innocente di questa ragazza? Anche lei faceva parte della tua diatriba con mio padre? Penso di no!
Pagherai per questo crimine in egual misura!
SURAYAH AAAIUUUUTOOOOO!!!
YUSUF Nooo!! Cane bastardo! Ti strapperò il tuo cuore malvagio per questo!
SAERK Mia figlia! Vuoi la guerra, cucciolo? Molto bene! GUARDIE!

APPEND TRGYP02

CHAIN
IF ~!InPartySlot(LastTalkedToBy,0) Name("tb#stiv",LastTalkedToBy)~THEN 
SAY ~Presto l'avvenire ti riserverà un altro lungo decennio di solitudine, giovanotto, ma non disperare: quando la Regina Bianca cadrà, vittima del complotto ordito dalla Regina Nera per mano di un assassino dal mantello oscuro, risponderai alla chiamata del Destino, e aiuterai i Reami nella ricerca della salvezza.~ EXTERN TB#STIVJ StivanKveroslava

APPEND TB#STIVJ

IF ~~ THEN StivanKveroslava
SAY ~Oh, no! Non voglio restare di nuovo solo e senza amici! Sei sicura di aver visto bene tra i peli della mia mano?~
IF ~~ THEN EXIT
END
END
*/
