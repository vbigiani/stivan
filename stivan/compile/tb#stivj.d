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
IF ~~ THEN DO ~SetGlobal("tb#StivanJoined","GLOBAL",0) LeaveParty() EscapeArea()  EraseJournalEntry(%Alla ricerca di una tomba.

Mentre ci aggiravamo per il Quartiere del Ponte abbiamo incontrato Stivan, un halfling nativo di Athkatla a cui ho chiesto di unirsi nella mia ricerca di Imoen e di Irenicus. In cambio di una tomba dove riporre l'urna contenente le ceneri dei suoi cari, Stivan si è offerto di farci da guida in città e di proteggerci dai... ehm... gabbiani. L'halfling mi ha suggerito di andare nel Quartiere Governativo e di rivolgermi a qualche impiegato nel Palazzo di Giustizia.%) EraseJournalEntry(%Alla ricerca di una tomba.

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
= ~Ora che hai riposto il peso fisico della tua tragedia, il nostro percorso si avvia verso la conclusione. L'ultima tappa ci attende.~
== AERIEJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN ~S-Sono... Sono f-felice p-per te, Stivan...~
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

Mentre ci aggiravamo per il Quartiere del Ponte abbiamo incontrato Stivan, un halfling nativo di Athkatla a cui ho chiesto di unirsi nella mia ricerca di Imoen e di Irenicus. In cambio di una tomba dove riporre l'urna contenente le ceneri dei suoi cari, Stivan si è offerto di farci da guida in città e di proteggerci dai... ehm... gabbiani. L'halfling mi ha suggerito di andare nel Quartiere Governativo e di rivolgermi a qualche impiegato nel Palazzo di Giustizia.%) EraseJournalEntry(%Alla ricerca di una tomba.

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
IF ~~ THEN REPLY ~Il tempo mi dirà cosa farne. Adesso voglio soltanto lasciare questo posto, Stivan. L'aria è satura di morte, qui.~ GOTO AfterYoshiBetrayal1-9
END

IF ~~ THEN AfterYoshiBetrayal1-9
SAY ~Diversamente da te, io non avevo alcun motivo per odiare Irenicus. Ti ho aiutato a combatterlo perchè tu hai fatto molto per me. Mi hai accolto nel tuo gruppo strappandomi dalla povertà della strada, un debito che posso saldare solo aiutandoti con tutto me stesso.~
= ~(Snort!) Adesso però anch'io ho una buona ragione per stanare quel maledetto. Io... Vendicherò la morte di Yoshimo!~
=  ~Mi senti, Irenicus? Oggi ti sei fatto un nuovo nemico! Stivan il Cacciatore ti troverà, ovunque tu sia! Possa nel frattempo l'ira dei gabbiani ricadere sulla tua testa!~
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
~(Snort!) Mia mamma diceva sempre che le donne non sono oggetti sessuali!~
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

INTERJECT C6ELHAN2 63 tb#stivanC6elhan2-63
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) InParty("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN
~<CHARNAME>! Perchè hai permesso una cosa simile?!~
END
IF ~~ THEN REPLY ~Non sono tenuto a spiegarti le mie ragioni, Stivan.~ EXTERN TB#STIVJ ViconiaGeas1-1
IF ~~ THEN REPLY ~Non mi sono mai fidato del tutto di Viconia. Adesso grazie ad Elhan ho la certezza che non mi tradirà.~ EXTERN TB#STIVJ ViconiaGeas1-2
IF ~Global("ViconiaRomanceActive","GLOBAL",2)~ THEN REPLY ~Io mi fido di Viconia più di chiunque altro. Questa costrizione non è altro che una mera formalità.~ EXTERN TB#STIVJ ViconiaGeas1-3
IF ~~ THEN REPLY ~Credi che abbia acconsentito volentieri?~ EXTERN TB#STIVJ ViconiaGeas1-3
IF ~~ THEN REPLY ~Come tu stesso puoi vedere, questi elfi sono tutto fuorchè collaborativi. Se avessi rifiutato avrei messo l’intero gruppo in serio pericolo.~ EXTERN TB#STIVJ ViconiaGeas1-2

APPEND TB#STIVJ
IF ~~ ViconiaGeas1-1
SAY ~Non... Non sei tenuto a spiegarmi le tue ragioni? Bene! Benissimo! Quando mi metterai un cappio intorno al collo mi sforzerò di non chiederti il perchè!~
COPY_TRANS C6ELHAN2 63
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
COPY_TRANS C6ELHAN2 63
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
COPY_TRANS C6ELHAN2 63

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

INTERJECT_COPY_TRANS BANOMEN 22 tb#StivanBANOMEN-22
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) !Global("AnomenIsNotKnight","GLOBAL",1)~ THEN 
~Non farmi ridere, Anomen. Non hai mai visto un solo gigante in vita tua, figuriamoci venti.~
== BANOMEN ~Ti consiglio di tenere a freno la tua lingua, piccoletto, prima che ti faccia ingoiare uno di quei volatili per cui tanto impazzisci.~
END

INTERJECT_COPY_TRANS BANOMEN 224 tb#StivanBANOMEN-224
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) !Global("AnomenIsNotKnight","GLOBAL",1)~ THEN
~Forse se ti seppellissimo vivo cambieresti idea. Vogliamo provare?~
== BANOMEN IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Tra poco ti seppellirà la mia mazza, halfling.~
END

INTERJECT_COPY_TRANS BANOMEN 60 tb#StivanBANOMEN-60
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
IF ~Global("tb#StivanPCTalk","GLOBAL",3)~ THEN REPLY ~Mi è parso di capire che questo Saerk sia l'uomo che ti ha privato di tutti i tuoi beni, giusto?~ EXTERN TB#STIVJ SaerkStrikesAgain1-1
IF ~!Global("tb#StivanPCTalk","GLOBAL",3)~ THEN REPLY ~Ho bisogno che tu scenda nei dettagli, Stivan. Chi è questo Saerk? Che cosa ti ha fatto?~ EXTERN TB#STIVJ SaerkStrikesAgain1-2

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
== EDWINJ IF ~InParty("Edwin") InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN ~(Finalmente ho trovato il modo di impiegare quello stupido incantesimo chiamato "Dominare Animali". E pensare che stavo semplicemente cercando un valido passatempo per ignorare gli struggimenti dell'halfling).~ 
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
== YOSHJ IF ~InParty("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN ~Saerk Farrahd è un uomo molto potente, e il suo seguito di guardie è noto per essere poco... amichevole. Se siamo destinati ad inimicarcelo, dovremmo agire con cautela.~
== IMOEN2J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN ~<CHARNAME> ed io abbiamo già incontrato simili sbruffoni in passato, ma questo pallone gonfiato li supera tutti. Propongo una settimana rieducativa nei sotterranei di Candlekeep. Sono sicura che gli farebbe abbassare la cresta, oh sì.~
== MAZZYJ IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN ~Dobbiamo intervenire in difesa della giustizia, ma con i mezzi appropriati. Un processo di fronte ad una corte è ciò che quell'individuo merita!~
== JANJ IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN ~Per la barba di zio Scratchy! I mercanti sono per definizione dei truffatori, ma il Calimshita non conosce scrupoli! Neanche in occasione della Grande Carestia di Rape del 1348 fui così disonesto. Mi limitai a spacciare per rape delle zucchine adeguatamente incantate con un banale incantesimo d'illusione. Essendo il solo a commerciarle, feci soldi a palate, ma questo attirò l'attenzione dell'esattore delle Tasse e delle Entrate di Amn, un tale di nome Trax. Sai, proprio poco tempo fa stava per mettermi nel sacco, ma sono riuscita a cavarmela grazie al provvidenziale intervento di un gruppo di avventurieri. E' un peccato non averli più rivisti.~ 
== KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN ~Il racconto del ladro dissolve ogni dubbio sulla malvagità di quest'uomo, ma rimane il fatto che non vi sono prove della sua colpevolezza nè in uno nè nell'altro caso. No, la questione va risolta affidandoci al giudizio di Torm.~
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN ~Dovete rimuginare sulla questione ancora per molto? Non è necessario avere una mente geniale come la mia per capire che quel mercante ve la farà ancora una volta a meno che non lo uccidiate!~
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ ~I trascorsi dell'halfling non fanno altro che complicare la situazione, pertanto suggerisco di accantonarli, per il momento.~
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
~"Bene supremo"? "Uniamoci e cerchiamo"? Io non voglio viaggiare con questo paladino perfettino, <CHARNAME>!~
== KELDOR ~Non penso di aver fatto alcunché per meritare il tuo astio, ma ascolterò le tue obiezioni senza pregiudizi.~
== TB#STIVJ ~I membri del Cuore Radioso sono degli ipocriti! Dicono di combattere il male e le ingiustizie, ma in realtà non fanno nulla per contrastare la criminalità e la povertà che dilagano ad Athkatla!~
== KELDOR ~Anch'io la pensavo così quando avevo visto trenta inverni, ma con l'età ho capito che la violenza non risolve i problemi.~
END

INTERJECT_COPY_TRANS2 KELDOR 3 tb#StivanKeldor-3
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~(Sospira) ... Sono salvo!~
END

INTERJECT_COPY_TRANS KELDOR 4 tb#StivanKeldor-4
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~L'hai fatto apposta. Dillo che l'hai fatto apposta!~
== KELDOR ~Ti consiglio di porre un freno alla tua lingua serpentina, halfling. La tua maldicenza potrebbe costarti cara con persone meno pazienti di me.~
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
Global("tb#StivanEnteredTanner2","AR0502",0)~ THEN BEGIN Stivanar0502
SAY ~(Tossisce) Che... Che schifo è mai questo? Nemmeno i vicoli in cui dormivo erano così ripugnanti! Do... (Tossisce) Dobbiamo proseguire per forza? Io... Spero di no...~
IF ~~ THEN DO ~SetGlobal("tb#StivanEnteredTanner2","AR0502",1)~ EXIT
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

INTERJECT_COPY_TRANS MESSEN 15 tb#StivanMessen-15
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~E' senz'altro opera degli adoratori di alberi! Ho sempre sospettato che fossero loro i responsabili di ciò che è successo alla mia famiglia, e questi episodi lasciano pochi dubbi a proposito! Dobbiamo indagare, <CHARNAME>!~
END

INTERJECT_COPY_TRANS MESSEN 10 tb#StivanMessen-10
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Conosco Trademeet - ci sono stato diverse volte con la mia famiglia. Se siamo fortunati, potremmo incontrare qualche mercante con cui eravamo soliti commerciare. Sono sicuro che farebbero il possibile per aiutarci a trovare quei druidi puzzoni!~
END

INTERJECT_COPY_TRANS2 BHCRYPT 0 tb#StivanBhcrypt-0
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~WOW! Questa cripta è perfetta! C'è spazio anche per gli altri membri del gruppo, nel caso in cui vogliano farci un pisolino!~
== BHCRYPT ~Nessuno profanerà il luogo del mio riposo. Taglierò le vostre teste una ad una e le infilerò su una picca, cosicchè possano essere da monito agli intrusi!~
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Eeeekkk!~
END

INTERJECT_COPY_TRANS UDSIMYAZ 26 tb#StivanUdsimyaz-26
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Yeah! Non ne potevo più di quei cosi tentacolosi!~
END

INTERJECT PLAYER1 33 tb#StivanTreeOfLife
== PLAYER1 IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Stivan, l'halfling nativo di Athkatla con la fissazione per i gabbiani. Sempre pronto a ribattere, spesso sornione e a tratti infantile, ti ha seguito sin dal vostro primo incontro senza esitazione, benchè non abbia alcun trascorso con colui che ti ha rubato l'anima.~
END
IF ~!Global("EntryTest","GLOBAL",7)~ THEN REPLY ~Torna ad Athkatla, Stivan. Non hai motivo di scontrarti con Irenicus.~ EXTERN TB#STIVJ TreeOfLifeStivan1-1
IF ~Global("EntryTest","GLOBAL",7) !Global("tb#AfterYoshiBetrayal","GLOBAL",1)~ THEN REPLY ~Torna ad Athkatla, Stivan. Non hai motivo di scontrarti con Irenicus.~ EXTERN TB#STIVJ TreeOfLifeStivan1-2
IF ~Global("EntryTest","GLOBAL",7) Global("tb#AfterYoshiBetrayal","GLOBAL",1)~ THEN REPLY ~Torna ad Athkatla, Stivan. Non hai motivo di scontrarti con Irenicus.~ EXTERN TB#STIVJ TreeOfLifeStivan1-3
IF ~!Global("EntryTest","GLOBAL",7)~ THEN REPLY ~Ti sono grato per il tuo aiuto, Stivan, ma adesso è meglio che tu te ne vada. Non hai motivo di rischiare la tua vita.~ EXTERN TB#STIVJ TreeOfLifeStivan1-1
IF ~Global("EntryTest","GLOBAL",7)~ THEN REPLY ~Ti sono grato per il tuo aiuto, Stivan, ma adesso è meglio che tu te ne vada. Non hai motivo di rischiare la tua vita.~ EXTERN TB#STIVJ TreeOfLifeStivan1-2
IF ~!Global("EntryTest","GLOBAL",7)~ THEN REPLY ~Stivan, la battaglia che ci attende è molto pericolosa. Ho bisogno che tu dia il meglio di te.~ EXTERN TB#STIVJ TreeOfLifeStivan1-1
IF ~Global("EntryTest","GLOBAL",7)~ THEN REPLY ~Stivan, la battaglia che ci attende è molto pericolosa. Ho bisogno che tu dia il meglio di te.~ EXTERN TB#STIVJ TreeOfLifeStivan1-4

APPEND TB#STIVJ 
IF ~~ THEN BEGIN TreeOfLifeStivan1-1 
SAY ~*Ahem* Non ti seguirò nella battaglia suicida che ti attende, <CHARNAME>. Non correrò il rischio di morire con l'urna dei miei familiari tra le mani.~
= ~E' stato bello viaggiare con te. Avrei continuato a seguirti volentieri, ma i miei genitori e i miei fratelli hanno la priorità. Devono riposare in pace.~
IF ~~ THEN DO ~SetGlobal("tb#StivanJoined","GLOBAL",0) LeaveParty() EscapeArea()~ GOTO TreeOfLifeStivan1-1a
END

IF ~~ THEN BEGIN TreeOfLifeStivan1-1a
SAY ~Io torno ad Athkatla. In bocca al lupo!~ 
COPY_TRANS player1 33
END

IF ~~ THEN BEGIN TreeOfLifeStivan1-2
SAY ~Non dire sciocchezze, <CHARNAME>. Dopo tutto quello che hai fatto per me, combattere al tuo fianco è il minimo che possa fare per sdebitarmi.~ 
COPY_TRANS player1 33
END
 
IF ~~ THEN BEGIN TreeOfLifeStivan1-3
SAY ~Ti sbagli, <CHARNAME>. Quel bruttone è responsabile della morte di Yoshimo, ed io ho giurato che l'avrei vendicata.~
= ~Sarò al tuo fianco sino all'ultimo respiro. Insieme pianteremo la lama del nostro defunto amico nel cuore di quel mostro!~ 
COPY_TRANS player1 33
END

IF ~~ THEN BEGIN TreeOfLifeStivan1-4
SAY ~Puoi contare su di me. Sai quanta cacca di gabbiano ho messo da parte per questo scontro? TONNELLATE.~ 
IF ~~ THEN REPLY ~Mi raccomando: dritta in fronte.~ EXTERN TB#STIVJ TreeOfLifeStivan1-5
IF ~~ THEN REPLY ~Ottimo. Gliela faremo mangiare sino all'ultimo boccone.~ EXTERN TB#STIVJ TreeOfLifeStivan1-5
IF ~~ THEN REPLY ~Lascia che sia il ferro a parlare.~ EXTERN TB#STIVJ TreeOfLifeStivan1-6
END

IF ~~ THEN BEGIN TreeOfLifeStivan1-5
SAY ~Yeah!~
COPY_TRANS player1 33
END

IF ~~ THEN BEGIN TreeOfLifeStivan1-6
SAY ~Heh. Gli pianterò un pugnale sulla schiena, se è questo che vuoi, ma prima mi accerterò che sia adeguatamente ricoperto di escrementi!~
COPY_TRANS player1 33
END
END

INTERJECT_COPY_TRANS PLAYER1 25 StivanHell
== tb#stivj IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~(Gasp!) Il... Il mio corpo! E' ancora integro, eppure... Ho sentito una forza che tirava e tirava, e ho pensato che mi avrebbe fatto a pezzi!~
= ~*Ahem* Non capisco. Siamo vivi... O morti?~
END

INTERJECT_COPY_TRANS3 HELLJON 7 tb#StivanHelljon-7
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Alignment("tb#stiv",CHAOTIC_NEUTRAL)~ THEN
~E' ora di finirla una volta per tutte, bruttone. Possano i gabbiani cibarsi dei tuoi resti!~
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Alignment("tb#stiv",CHAOTIC_NEUTRAL)~ THEN
~E' ora di finirla una volta per tutte, bruttone. I tuoi resti marciranno in questo posto per l'eternità!~
END

INTERJECT_COPY_TRANS3 HELLJON 8 tb#StivanHelljon-8
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Alignment("tb#stiv",CHAOTIC_NEUTRAL)~ THEN
~E' ora di finirla una volta per tutte, bruttone. Possano i gabbiani cibarsi dei tuoi resti!~
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Alignment("tb#stiv",CHAOTIC_NEUTRAL)~ THEN
~E' ora di finirla una volta per tutte, bruttone. I tuoi resti marciranno in questo posto per l'eternità!~
END

INTERJECT_COPY_TRANS3 HELLJON 9 tb#StivanHelljon-9
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Alignment("tb#stiv",CHAOTIC_NEUTRAL)~ THEN
~E' ora di finirla una volta per tutte, bruttone. Possano i gabbiani cibarsi dei tuoi resti!~
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Alignment("tb#stiv",CHAOTIC_NEUTRAL)~ THEN
~E' ora di finirla una volta per tutte, bruttone. I tuoi resti marciranno in questo posto per l'eternità!~
END

INTERJECT_COPY_TRANS3 HELLJON 10 tb#StivanHelljon-10
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Alignment("tb#stiv",CHAOTIC_NEUTRAL)~ THEN
~E' ora di finirla una volta per tutte, bruttone. Possano i gabbiani cibarsi dei tuoi resti!~
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Alignment("tb#stiv",CHAOTIC_NEUTRAL)~ THEN
~E' ora di finirla una volta per tutte, bruttone. I tuoi resti marciranno in questo posto per l'eternità!~
END

INTERJECT_COPY_TRANS RAELIS 41 tb#StivanRaelis-41
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Haer’Dalis sarebbe il nome di quell’attore magro magro coi capelli lunghi lunghi?~
== RAELIS ~Sì, piccolino. Sei forse un amico del nostro segugio?~
== TB#STIVJ ~Oh, no. L’ho semplicemente visto recitare qualche volta. Avete idea di dove possa essere finito?~
END

INTERJECT_COPY_TRANS HAERDA 109 tb#StivanHaerda-109
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) !Global("RaelisJob","GLOBAL",1)~ THEN ~Ma questo, a meno che non mi sbagli, è un attore della compagnia teatrale in scena ai Cinque Boccali. Cosa ci fa qui? Soprattutto, perché ha quell’espressione inebetita?~
END

INTERJECT_COPY_TRANS HAERDA 109 tb#StivanHaerda-109a
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Global("RaelisJob","GLOBAL",1)~ THEN ~Questo è l’attore che Miss Raelis ci ha chiesto di trovare, lo riconosco. Però è strano... L’ultima volta che l’ho visto non aveva questa espressione inebetita. Che quel bruttone del mago gli abbia fatto qualcosa?~
END

INTERJECT_COPY_TRANS HAERDA 103 tb#StivanHaerda-103
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Sarebbe bello se tu viaggiassi con noi, Haer’Dalis. Sai che ho assistito ad alcune delle tue ultime rappresentazioni?~
== HAERDA ~Davvero? E dimmi, qual è quella che ti ha maggiormente colpito?~
== TB#STIVJ ~“Via Col Cambion” mi ha commosso. La sua drammaticità non ha paragoni. E’ un peccato che Biff sia sbucato all’improvviso dalla botola del palco - il pubblico ha riso per tutto il resto dell’opera!~
== HAERDA ~Tsk. Solo gli abitanti del Primo Piano sono capaci di versare lacrime per un gorgheggio sentimentale e nel medesimo istante di ridere sgangheratamente per un piccolo contrattempo.~ 
== TB#STIVJ ~*Ahem* Visto che viaggeremo insieme, perché non mi insegni ad essere un buon bardo? Io ho provato, ma spesso la memoria mi abbandona a metà del racconto o della poesia...~
== HAERDA ~Temo proprio di no, ragazzino. L’Arte è un talento innato, un dono di cui disponiamo sin dal nostro primo gemito. Non è qualcosa che si possa insegnare.~
= ~Ebbene, <CHARNAME>, attendo l'ardita sentenza. Esploreremo fianco a fianco questa landa sconosciuta?~
END

INTERJECT_COPY_TRANS AERIE 26 tb#StivanAerie-26
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~(Sniff sniff) A meno che il mio olfatto non mi stia tradendo, quell’orco puzza di pennuto. So che sembra assurdo, ma il mio naso non si sbaglia mai!~
END

INTERJECT_COPY_TRANS AERIE 52 tb#StivanAerie-52
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Cerca di non camminare troppo vicino a me. Benchè tu non abbia più le tue ali, rimani pur sempre un’ex-pennuta, e il tuo odore...~
= ~Ehi! Cosa stai facendo?!~
== AERIE ~Mi-mi prendo cura di questo povero gabbiano. Guarda com’è ridotto! Ha bisogno di cure!~
== TB#STIVJ ~(Urla) Come osi liberare quello schifido uccello dalla giusta prigionia che merita? Ridammelo *subito*!~
== AERIE ~Io... Farò il possibile perchè si riprenda e torni a volare nel cielo azzurro con i suoi simili. Prima però dobbiamo salvare Quayle!~
END	

INTERJECT_COPY_TRANS AERIE 17 tb#StivanAerie-17
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Non puoi fare una cosa simile, <CHARNAME>! Se la liberatrice di pennuti verrà con noi, i gabbiani sfuggiranno alle mie sevizie e allo spennamento che meritano!~
END

INTERJECT_COPY_TRANS KORGANA 9 tb#StivanKorgana-9
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Mi stavo chiedendo, nano... Perchè in cambio del nostro aiuto non realizzi qualche gingillo magico per noi?~
== KORGANA ~Io non sono un maniaco del martello e dell’incudine, bamboccio. Le sole cose che brandisco sono ascia e scudo, e presto li userò per aprirmi la strada tra le carcasse ammuffite di quella cripta!~
END

INTERJECT_COPY_TRANS JAN 19 tb#StivanJan-19
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Anch’io commerciavo merce illegale, sai? Piume di gabbiano, per la precisione. Non era un’attività particolarmente redditizia, ma di tanto in tanto riuscivo a guadagnare una moneta d’oro per mangiare almeno una pagnotta.~
== JAN ~Piume di gabbiano? Accidenti, mio cugino Eduardo potrebbe averne bisogno per perfezionare quel congegno che sostiene sia in grado di volare. Se soltanto sapessi che fine abbia fatto. Non vorrei che alla fine abbia spiccato davvero il volo.~
END

INTERJECT_COPY_TRANS NALIA 66 tb#StivanNalia-66
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Sbaglio o queste sono le terre dei De’Arnise? La figlia dell’attuale Lord è nota in tutta Athkatla per la sua generosità.~
= ~A ben guardarvi, le assomigliate un pochino.~
== NALIA ~...~
== TB#STIVJ ~Che sciocco che sono! Siete *voi* la mitica Miss Nalia! Come ho fatto a non capirlo subito?~
== NALIA ~Non ho nulla di mitico, davvero. Cerco soltanto di usare i mezzi di cui dispongo per aiutare i meno fortunati.~
END

INTERJECT_COPY_TRANS NALIA 14 tb#StivanNalia-14
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Ma questa donna... Questa donna è Miss Nalia De'Arnise! E' nota in tutta Athkatla per la sua generosità! Perchè non le hai detto di unirsi a noi, <CHARNAME>? Hai idea del prestigio sociale che avremmo acquisito in sua compagnia?~
BRANCH ~IsValidForPartyDialog("Jaheira") IsValidForPartyDialog("tb#stiv") !StateCheck("Jaheira",CD_STATE_NOTVALID) !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ BEGIN
== JAHEIRAJ ~Nessuno di noi viaggia con <CHARNAME> per simili banalità, Stivan. Alcuni non hanno avuto nemmeno la possibilità di scegliere.~
== TB#STIVJ ~Ah no?~	
== JAHEIRAJ ~No.~
END
END

INTERJECT_COPY_TRANS ISAEA 1 tb#StivanIsaea-1
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~(Snort!) Perchè guardi nella mia direzione?~
== ISAEA ~Nalia, non prendere troppa confidenza con i popolani, per favore. Forse tu non te ne rendi conto, ma la semplice vicinanza a quel barbone rende irriconoscibile la tua nobile discendenza.~
== TB#STIVJ ~Popolano io?! Un tempo appartenevo ad una famiglia di mercanti rispettati in tutta Athkatla!~
== ISAEA ~Quel tempo è ormai passato, a quanto vedo. Questo cicisbeo viene dai Bassifondi o da qualche altro quartiere degradato a cui hai fatto visita?~
END

INTERJECT_COPY_TRANS ISAEA 21 tb#StivanIsaea-21
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Ehi, tu! Perché continui ad importunare Miss Nalia?~
== ISAEA ~Sei ancora in compagnia di quel popolano?~
== NALIAJ ~Ti ho già detto che Stivan non è un popolano. E anche se lo fosse, non ci sarebbe nulla di cui vergognarsi.~
== ISAEA ~Per quanto tu possa vestire un mendicante con gli abiti di un nobile, dai suoi modi si capirà sempre che non ha il sangue blu. Ma non ho tempo per simili disquisizioni. Allontanati da questa manica di orchetti, ora!~
END

INTERJECT_COPY_TRANS NALIAJ 220 tb#StivanNaliaj-220
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Heh. Non preoccupatevi, Miss Nalia; quell'uomo sta chiaramente bluffando.~
END

INTERJECT_COPY_TRANS ISAEA 26 tb#StivanIsaea-26
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~(Snort!) E' ora di finirla con questa messinscena! Osa avvicinarti a Miss Nalia e dovrai vedertela con me!~
== ISAEA ~Un solo passo falso, *popolano*, e ti ritroverai alla forca senza neanche accorgertene.~
END

INTERJECT_COPY_TRANS ISAEA 29 tb#StivanIsaea-29
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Non possiamo permettere che Miss Nalia cada nelle mani di quel manigoldo! Dobbiamo liberarla! O invocare l'ira dei gabbiani su quell'infame! <CHARNAME>, dobbiamo fare qualcosa!~
END

INTERJECT EDWIN 12 tb#StivanEdwin-12
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Heh. Se vuoi che mi occupi io di questo recupero, <CHARNAME>, non devi far altro che chiedere.~
END
IF ~~ THEN REPLY ~Grazie, ma ci penso io.~ EXTERN tb#stivj tb#StivanEdwin-12a
IF ~~ THEN DO ~SetGlobal("#tbStivanMarcus","GLOBAL",1)~ REPLY ~Grazie, mi hai tolto la preoccupazione di doverlo fare io stesso.~ EXTERN tb#stivj tb#StivanEdwin-12b

APPEND TB#STIVJ
IF ~~ THEN tb#StivanEdwin-12a
SAY ~Tornerai a chiedermelo in ginocchio, lo so!~
COPY_TRANS EDWIN 12
END

IF ~~ THEN tb#StivanEdwin-12b
SAY ~Yeah! Andiamo là, allora!~
COPY_TRANS EDWIN 12
END
END

INTERJECT MARCUS 0 tb#StivanMarcus-0
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Global("#tbStivanMarcus","GLOBAL",1)~ THEN ~PIUME DI GABBIANO! Andate e colpite!~
== MARCUS ~Ma cosa diavolo...?!~
== TB#STIVJ ~Yeah! L’ho presa! Ecco qui la collana che cercavi, <CHARNAME>!~ DO ~GiveItemCreate("AMUL09",Player1,1,0,0)~
END
IF ~~ THEN REPLY ~(Sigh) Hai idea di come reagirebbe Edwin se gli portassi un gioiello al posto delle carte di cui aveva bisogno?~ EXTERN TB#STIVJ StivanMarcus1-1
IF ~~ THEN REPLY ~Stivan, forse non mi sono spiegato bene. Mi servono i *documenti* che quell’uomo ha con sé, non articoli di bigiotteria!~ EXTERN TB#STIVJ StivanMarcus1-1
IF ~~ THEN REPLY ~Fenomenale. Davvero. Peccato che l’oggetto del furto fosse un plico di fogli, non un pendente per il collo.~ EXTERN TB#STIVJ StivanMarcus1-1

CHAIN IF ~~ THEN tb#stivj StivanMarcus1-1
~Oops.~
= ~Non disperare, <CHARNAME>! Rimedio subito!~
= ~Ehi, tu!~
== MARCUS ~Maledizione a te, halfling! Quelle piume mi hanno quasi accecato! Si può sapere cosa --~
== TB#STIVJ ~CACCA DI GABBIANO! Và e colpisci!~
== MARCUS ~Ahhh! Non vedo più nulla! Aiuto! Aiuto!!~
== TB#STIVJ ~Presi!~ DO ~GiveItemCreate("misc4w",Player1,1,0,0)~
== MARCUS ~Dove sei, maledetto? Dove sei?! Se ti prendo...!!!~ DO ~EscapeArea()~
== TB#STIVJ ~Diamocela a gambe, <CHARNAME>!~
EXIT

INTERJECT_COPY_TRANS SAERK 1 tb#StivanSaerk-1
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Anomen non è da solo! Ci sono anch'io, Saerk!~
== SAERK ~Il marmocchio dei Fristbrowfine? Cosa ci fai qui?~
== TB#STIVJ ~Sono venuto a vendicarmi! E' giunta l'ora che tu paghi per tutti i tuoi soprusi!~
== SAERK ~Cor è così disperato da mandarmi contro il figlio e questo poveraccio? Ha! Non fatemi ridere!~
END

INTERJECT_COPY_TRANS SAERK 4 tb#StivanSaerk-4
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Non sei cambiato per nulla, mostro! Sei sempre lo stesso essere spregevole che gode nell'annichilire gli altri, proprio come hai fatto con me!~
== SAERK ~Ancora con quella storia? Le terre di tuo padre erano troppo redditizie per lasciarle in mano ad un incompetente come te!~
== TB#STIVJ ~(Urla) Idiota! Io stesso ti avevo detto di non esserne in grado! E' per questo che mi ero rivolto a te!~
== SAERK ~Non importa. Non puoi *nulla* contro di me. E neanche tu, Anomen.~
END

INTERJECT trgyp02 2 tb#StivanTrgyp02-2
== TRGYP02 IF ~!InPartySlot(LastTalkedToBy,0) Name("tb#Stiv",LastTalkedToBy)~ THEN  ~Presto l'avvenire ti riserverà un altro lungo decennio di solitudine, giovanotto, ma non disperare: quando la Regina Bianca cadrà, vittima del complotto ordito dalla Regina Nera per mano di un assassino dal mantello oscuro, risponderai alla chiamata del Destino, e aiuterai i Reami nella ricerca della salvezza.~ 
== tb#stivj ~Oh, no! Non voglio restare di nuovo solo e senza amici! Sei sicura di aver visto bene tra i peli della mia mano?~
EXIT


INTERJECT_COPY_TRANS CELOGAN 40 tb#stivanCelogan-40
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Dobbiamo andare a fondo in questa vicenda. Sono pronto a scommettere che i druidi c'entrano qualcosa con lo sterminio dei miei familiari.~
== CELOGAN ~Accolgo con dispiacere questa triste notizia. E' successo di recente?~
== TB#STIVJ ~No, risale ad otto anni fa, ma di sicuro sono stati loro a manovrare i gabbiani che hanno ucciso i miei genitori e i miei fratelli!~
== CELOGAN ~Qui a Trademeet gli attacchi da parte degli animali sono iniziati nelle ultime settimane, pertanto dubito che siano connessi ad un episodio così remoto.~
== TB#STIVJ ~Accidenti, ero certo che... Beh, non importa. *Adesso* sono di sicuro loro i responsabili di tutto questo caos.~
END

INTERJECT_COPY_TRANS MARIA 5 tb#StivanMaria-5
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN 
~Heh. Pare che a casa Firecam tiri una brutta aria.~
END

INTERJECT_COPY_TRANS KHELLOR 6 tb#StivanKhellor-6
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~(Gasp!) Quell'uomo si è rivelato più pericoloso di quanto pensassi! C'è... C'è forse il rischio che Miss Nalia venga venduta come concubina?~
== KHELLOR ~Roenal terrà la ragazza ben stretta a sé. In fin dei conti, gli serve per ottenere le terre da lui ambite. Non escludo però che possa anche decidere di sbarazzarsene una volta conseguito il suo scopo.~
== TB#STIVJ ~Cosa?! Preferirei essere divorato da uno stormo di gabbiani piuttosto che abbandonare Miss Nalia ad un simile destino! Possibile che quell'infame sia così intoccabile come dice di essere?~
== KHELLOR ~No, non lo è. Vi darò alcune indicazioni di cui potrete servirvi per riscattare la vostra amica. Ovviamente, io non vi ho detto niente, e questo incontro non è mai avvenuto.~
END

INTERJECT_COPY_TRANS KHELLOR 6 tb#StivanKhellor-8
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Grazie a quest'uomo abbiamo una pista da seguire adesso. Se hai bisogno del mio aiuto, <CHARNAME>, sappi che farò qualsiasi cosa per salvare Miss Nalia!~
END

INTERJECT_COPY_TRANS BODHIAMB 15 tb#StivanBodhiamb-15
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~No! Non possiamo permettere che quella bruttona porti via con sè Viconia! <CHARNAME>, inseguiamola!~
END

INTERJECT_COPY_TRANS BODHIAMB 13 tb#StivanBodhiamb-13
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~No! Non possiamo permettere che quella bruttona porti via con sè Jaheira! <CHARNAME>, inseguiamola!~
END

INTERJECT_COPY_TRANS BODHIAMB 19 tb#StivanBodhiamb-19
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~No! Non possiamo permettere che quella bruttona porti via con sè Anomen! <CHARNAME>, inseguiamola!~
END

INTERJECT_COPY_TRANS BODHIAMB 17 tb#StivanBodhiamb-17
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~No! Non possiamo permettere che quella bruttona porti via con sè Aerie - soltanto io ho il diritto di maltrattarla! <CHARNAME>, inseguiamola!~
END

INTERJECT_COPY_TRANS UDSILVER 0 tb#StivanUdsilver-0
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~U... Un drago! Si salvi chi può!~
== UDSILVER IF ~!Dead("UDtrap06") Dead("UDbalor") !Dead("UDsvir03")~ THEN ~Non agitarti. Non hai motivo di temermi.~
== UDSILVER IF ~OR(3) Dead("UDtrap06") !Dead("UDbalor") Dead("UDsvir03")~ THEN ~Non agitarti. Sebbene le vostre azioni siano state turpi e vergognose, non subirete la mia ira. Le attuali circostanze, tuttavia, richiedono una collaborazione.~
END

EXTEND_BOTTOM UDSILVER 37
IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN EXTERN tb#stivj stivanisdrow
END

EXTEND_BOTTOM UDSILVER 39
IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN EXTERN tb#stivj stivanisdrow
END

APPEND TB#STIVJ
IF ~~ THEN stivanisdrow
SAY ~Non riesco a crederci, <CHARNAME>. Abbiamo le sembianze dei drow!~
IF ~Race(Player1,HALFORC)~ THEN REPLY ~Mah. Preferisco di gran lunga il mio vero corpo. E' molto più forte e muscoloso di questo.~ EXTERN TB#STIVJ StivanDrow1-1
IF ~Race(Player1,HALFLING)~ THEN REPLY ~Dove sono finiti i peli dei miei piedi?~ EXTERN TB#STIVJ StivanDrow1-2
IF ~Race(Player1,GNOME)~ THEN REPLY ~Le mie guance paffute... Sono sparite!~ EXTERN TB#STIVJ StivanDrow1-3
IF ~OR (2) Race(Player1,ELF) Race(Player1,HALF_ELF)~ THEN REPLY ~Non mi sento per nulla a mio agio con queste sembianze.~ EXTERN TB#STIVJ StivanDrow1-4
IF ~Class(Player1,MAGE_ALL)~ THEN REPLY ~Una simile magia è a dir poco portentosa. Pochissimi incantatori riuscirebbero ad emularla.~ EXTERN TB#STIVJ StivanDrow1-5
IF ~Gender(Player1,MALE)~ THEN REPLY ~Hai visto come son figo, eh?~ EXTERN TB#STIVJ StivanDrow1-6
IF ~Gender(Player1,FEMALE)~ THEN REPLY ~Cosa ne pensi, Stivan? Mi trovi più bella così o con le semianze di un <PRO_RACE>?~ EXTERN TB#STIVJ StivanDrow1-7
IF ~~ THEN REPLY ~Beh, adesso potremo vantarci di aver fatto un'esperienza decisamente unica.~ EXTERN TB#STIVJ StivanDrow1-8
IF ~~ THEN REPLY ~Non sei il solo a sentirsi disorientato. Anch'io avrò bisogno di un pò di tempo per abituarmi a questo aspetto.~ EXTERN TB#STIVJ StivanDrow1-9
END

IF ~~ THEN StivanDrow1-1
SAY ~In effetti sei irriconoscibile, <CHARNAME>.~
IF ~~ THEN EXTERN TB#STIVJ StivanDrow1-9
END

IF ~~ THEN StivanDrow1-2
SAY ~Heh. Anch'io non riesco a credere di avere dei piedi lisci.~
IF ~~ THEN EXTERN TB#STIVJ StivanDrow1-9
END

IF ~~ THEN StivanDrow1-3
SAY ~E' vero, hai un volto più scavato rispetto a prima. Sei praticamente irriconoscibile!~
IF ~~ THEN EXTERN TB#STIVJ StivanDrow1-9
END

IF ~~ THEN StivanDrow1-4
SAY ~Beh, a parte il colore della pelle, sei praticamente identico a prima.~
IF ~~ THEN EXTERN TB#STIVJ StivanDrow1-9
END

IF ~~ THEN StivanDrow1-5
SAY ~*Ahem* Avevo capito fin da subito che non aveva intenzioni ostili.~
IF ~~ THEN EXTERN TB#STIVJ StivanDrow1-9
END

IF ~~ THEN StivanDrow1-6
SAY ~Heh. A quanto pare, sei soddisfatto del tuo nuovo aspetto.~
IF ~~ THEN EXTERN TB#STIVJ StivanDrow1-9
END 

IF ~~ THEN StivanDrow1-7
SAY ~(Arrossisce) Beh, i tuoi attributi... Sono rimasti inalterati...~
IF ~~ THEN EXTERN TB#STIVJ StivanDrow1-9
END

IF ~~ THEN StivanDrow1-8
SAY ~Heh. Samuel rimarrà sbalordito quando glielo racconterò!~
IF ~~ THEN EXTERN TB#STIVJ StivanDrow1-9
END

IF ~~ THEN StivanDrow1-9
SAY ~Io... Ho un pò di vertigini. Non sono abituato a simili altezze. E' meglio procedere piano piano, senza fretta. Non voglio sbucciarmi le ginocchia a furia di cadere.~
END
END

INTERJECT_COPY_TRANS UDSILVER 48 tb#StivanUdsilver-48
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Po... Posso farvi una ri-richiesta, illustrissima e v-veneranda...~
== UDSILVER ~Non c'è tempo per inutili adulazioni. Parla, ma sii rapido.~
== TB#STIVJ ~Beh, ecco... Io... Mi stavo chiedendo s-se... Se fosse possibile m-mantenere questo... q-questo aspetto...~
== UDSILVER ~Vorresti mantenere le sembianze di un elfo dal cuore nero? Ho capito bene?~
== TB#STIVJ ~S-sì...~
== UDSILVER ~E' fuori discussione. Dissolverò l'illusione che io stessa ho creato e vi condurrò verso l'uscita. Questi erano i patti, e non intendo sentire altre assurde richieste.~
== TB#STIVJ ~Ma...~
== UDSILVER ~Silenzio! Non ammetterò repliche!~
END

INTERJECT_COPY_TRANS SLHALF01 4 tb#StivanSlhalf01-4
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") IsValidForPartyDialog("Haerdalis")!StateCheck("tb#stiv",CD_STATE_NOTVALID) !StateCheck("Haerdalis",CD_STATE_NOTVALID)~ THEN 
~Sbaglio o quell'halfling è praticamente identico a me?~
== HAERDAJ ~Le uniche copie buone sono quelle che ci fanno vedere il ridicolo nei cattivi originali.~
== TB#STIVJ ~Heh. Ho l'impressione che questo fosse un insulto, Haer'Dalis.~
== HAERDAJ ~Non oserei mai, mio gabbiano.~
END

INTERJECT_COPY_TRANS RUMAR 7 tb#StivanRumar-7
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") IsValidForPartyDialog("Yoshimo")!StateCheck("tb#stiv",CD_STATE_NOTVALID) !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN 
~(Gasp!) Quest'uomo è un infedele! Ha tradito la propria moglie!~
== YOSHJ ~Chi ha detto che l'adulterio è sinonimo di infedeltà? A volte consente di mantenersi fedele all'amante per tutta la vita.~
END

INTERJECT_COPY_TRANS NOBLEW2 1 tb#StivanNoblew2-1
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") IsValidForPartyDialog("Nalia")!StateCheck("tb#stiv",CD_STATE_NOTVALID) !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN 
~Miss Nalia, potrei giurare di aver visto quella nobildonna rubare alla Passeggiata. Com'è possibile una cosa simile?~
== NALIAJ ~Si suppone sempre che le persone facoltose non abbiano bisogno di rubare, Stivan, ma non è facile cambiare le proprie abitudini.~
END

INTERJECT_COPY_TRANS GAELAN 66 tb#StivanGaelan-66
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Ti consiglio di concludere i tuoi affari con questo Linvail il più presto possibile, <CHARNAME>. I Signori delle Ombre cambiano di continuo ad Athkatla, e non vorrei che qualcuno prendesse il suo posto prima che tu abbia raggiunto il tuo obiettivo.~
END

INTERJECT_COPY_TRANS2 FIRKRA01 9 tb#StivanFirkra01-9
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Una volta sono passato per queste colline, <CHARNAME>, ma non sono altro che una distesa brulla e deserta, se ricordo bene. Mi chiedo cosa ci facciano dei predatori in una zona simile.~
END

INTERJECT_COPY_TRANS DASLAVE1 7 tb#StivanDaslave1-7
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~(Sniff) Sei proprio una brava persona, <CHARNAME>. Hai dato un grande aiuto a queste persone, esattamente come hai fatto con me il giorno in cui mi hai accolto nella tua compagnia.~
BRANCH ~IsValidForPartyDialog("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ BEGIN
== TB#STIVJ ~Miss Nalia, avete visto che bel gesto ha fatto?~
== NALIAJ ~Sì, Stivan. Un ottimo esempio da cui trarre ispirazione, sebbene dubiti che troverebbe seguito tra le famiglie della vecchia guardia.~
== TB#STIVJ ~Se non fossi già il vostro umile sguattero, l'avrei servito e riverito a dovere, ma la vostra nobiltà ha la precedenza.~
END
END

INTERJECT_COPY_TRANS DASLAVE1 8 tb#StivanDaslave1-8
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~(Sniff) Sei proprio una brava persona, <CHARNAME>. Hai dato un grande aiuto a queste persone, esattamente come hai fatto con me il giorno in cui mi hai accolto nella tua compagnia.~
BRANCH ~IsValidForPartyDialog("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ BEGIN
== TB#STIVJ ~Miss Nalia, avete visto che bel gesto ha fatto?~
== NALIAJ ~Umpf. Penso che avrebbe anche potuto separarsi da qualche moneta d'oro e dare un aiuto più concreto a quei poveri sventurati.~
== TB#STIVJ ~Non sminuite il suo gesto.~
== NALIAJ ~Per correggere le iniquità e sradicare la povertà, non basta tendere la mano ai bisognosi, Stivan. Occorre anche aiutarli a camminare fino a quando non saranno capaci di reggersi sulle proprie gambe.~
== TB#STIVJ ~Beh, ecco... Certo, Miss Nalia. Avete sempre ragione voi.~
= ~(Bisbigliando) Non è vero, <CHARNAME>, io sono con te. Ogni tanto la nostra amica sragiona, ma non posso contraddirla davanti a tutti. La farei sfigurare.~
END
END

INTERJECT_COPY_TRANS UHMAY01 18 tb#StivanUhmay01-18
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Ehm... Io credevo che quella di Umar fosse solo una favola raccontata dalle madri halfling per spaventare i loro piccoli quando facevano i monelli o cose simili.~
= ~Ovviamente con me non ce n'è mai stato bisogno.~
END

INTERJECT_COPY_TRANS PROST1 4 tb#StivanProst1-4
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Gli Stregoni Incappucciati sono incredibilmente bravi a catturare le persone. Peccato che spesso siano quelle sbagliate.~
END

INTERJECT_COPY_TRANS PROST1 1 tb#StivanProst1-1
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Heh. Mia mamma diceva sempre che i suoi ceffoni erano più che sufficienti.~
END

INTERJECT_COPY_TRANS SLUMM3 2 tb#StivanSlumm3-2
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Non contare sul loro aiuto, perchè non arriverà. Meglio che impari a difenderti da solo, proprio come ho fatto io.~
END

INTERJECT_COPY_TRANS DHARLOT1 1 tb#StivanDharlot1-1
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~(Arrossisce) Non... Non dirlo neanche per scherzo!~
END

INTERJECT_COPY_TRANS UDSOLA01 50 tb#StivanUDSOLA01-50
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ ~Wow, esistono drow simpatici!~
== VICONIJ IF ~IsValidForPartyDialog("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ ~La sua simpatia gli sarà di ben poca utilità quando quella femmina gli strapperà la pelle di dosso per la sua insolenza.~
END

INTERJECT_COPY_TRANS UDSOLA01 114 tb#StivanUDSOLA01-114
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ ~Yeah! Diglielo in faccia!~
== UDSOLA01 ~Non ti immischiare in faccende che non ti riguardano.~
END

INTERJECT ANOMENJ 134 tb#StivanAnomenj-134
== ANOMENJ IF ~Global("tb#StivanAnomenj-52","GLOBAL",1)~ THEN ~Che sia questa la soluzione migliore? Io... Dopo aver ascoltato il racconto dell'halfling, faccio fatica ad accettare l'idea che quell'uomo sia innocente.~
END
IF ~~ THEN REPLY ~Tu stesso hai detto che i trascorsi di Stivan non devono influenzare il tuo giudizio. In questo momento non ci stiamo chiedendo se Saerk sia responsabile di un'appropriazione indebita; ci stiamo chiedendo se sia il mandante dell'assassinio di tua sorella, e a tal proposito non abbiamo nessuna prova della sua colpevolezza.~ EXTERN ANOMENJ 174
IF ~~ THEN REPLY ~Uhm... Non hai tutti torti. Attribuire la responsabilità ad un brigante qualunque non avrebbe senso. Sarebbe inverosimile. L'accesa rivalità con tuo padre è invece un movente più che valido, soprattutto se consideriamo il non trascurabile precedente con Stivan. E sia. Vendicheremo la morte di Moira.~ EXTERN ANOMENJ 135
IF ~!Global("AnomenRomanceActive","GLOBAL",2)~ THEN REPLY ~A questo punto la decisione è tua, Anomen. Non me la sento di pronunciarmi su una questione così delicata.~ EXTERN ANOMENJ AnomenDecidesHimself

EXTEND_BOTTOM ANOMENJ 134
IF ~!Global("AnomenRomanceActive","GLOBAL",2)~ THEN REPLY ~A questo punto la decisione è tua, Anomen. Non me la sento di pronunciarmi su una questione così delicata.~ EXTERN ANOMENJ AnomenDecidesHimself
END

APPEND ANOMENJ
IF ~~ THEN BEGIN AnomenDecidesHimself
SAY ~Ti capisco, <CHARNAME>. Non posso riporre sulle tue spalle il peso di una simile scelta. Spetta a me e a me solo.~
= ~E' deciso. Non lascerò che la morte di mia sorella rimanga impunita. Vieni, <CHARNAME>... Andiamo da Saerk e facciamo giustizia!~
COPY_TRANS ANOMENJ 135
END
END

INTERJECT_COPY_TRANS KALAH2 13 tb#StivanKalah2-13
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN 
~Non è giusto. Se la gente piccola fosse trattata con più rispetto e meno sufficienza, questo gnomo non avrebbe mai fatto una cosa simile.~
END

INTERJECT_COPY_TRANS2 VVAMN1 4 tb#StivanVvamn1-4
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN 
~Tsk. Le guardie non fanno nulla se non prendersela con gli innocenti. Non avete idea di quante volte mi abbiano rincorso per la città senza motivo.~
BRANCH ~IsValidForPartyDialog("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ BEGIN
== YOSHJ ~Ho il vago ricordo di averti visto inseguito da un gruppo di guardie per aver lanciato loro in faccia del guano. Mi sbaglio?~
== TB#STIVJ ~(Arrossisce) Beh, ecco... Forse quella volta sono stato io ad istigarle...~
== YOSHJ ~Quella volta, eh?~
END
END

INTERJECT_COPY_TRANS HENDAK 9 tb#StivanHendak-9
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN 
~Quest'uomo è addirittura più sporco di me. Se lo liberassimo, potrebbe farsi un bel bagno. Insomma... Almeno una volta ogni sei mesi bisogna lavarsi.~
END

INTERJECT_COPY_TRANS HENDAK 19 tb#StivanHendak-19
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN 
~Se quella nave è sempre stata la base degli schiavisti sin dal loro arrivo in città, allora... Allora sono qui da prima che nascessi!~
END

INTERJECT_COPY_TRANS sewerm1 23 tb#StivanSewerm1-23
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN 
~Speriamo che almeno qualcuno dei suoi familiari sia ancora in vita. Sarebbe triste se rimanesse del tutto solo.~
END

INTERJECT_COPY_TRANS CIVFRUS1 1 tb#StivanCivfrus1-1
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Anche papà ebbe il tuo stesso problema. Non ricordo con chi parlò, ma alla fine riuscì a spuntarla.~
END

INTERJECT_COPY_TRANS EDWIN 30 tb#StivanEdwin-30
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Mia mamma diceva sempre di non fidarsi degli Stregoni Rossi. Pare che siano noti in tutti i Reami per il loro... *Ahem*... opportunismo.~
== EDWIN ~Dove hai trovato questo scarto umano, <CHARNAME>? In una pila di rifiuti?~
== TB#STIVJ ~Non è vero! Non stavo rovistando nella spazzatura quando <PRO_HIMHER> ed io ci siamo incontrati!~
== EDWIN ~(L'halfling si è appena aggiudicato il primo posto nella lista dei seccatori da eliminare).~
END

INTERJECT_COPY_TRANS EDWIN 31 tb#StivanEdwin-31
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Mia mamma diceva sempre di non fidarsi degli Stregoni Rossi. Pare che siano noti in tutti i Reami per il loro... *Ahem*... opportunismo.~
== EDWIN ~Dove hai trovato questo scarto umano, <CHARNAME>? In una pila di rifiuti?~
== TB#STIVJ ~Non è vero! Non stavo rovistando nella spazzatura quando <PRO_HIMHER> ed io ci siamo incontrati!~
== EDWIN ~(L'halfling si è appena aggiudicato il primo posto nella lista dei seccatori da eliminare).~
END

INTERJECT_COPY_TRANS2 ARENTHIS 16 tb#StivanArenthis-16
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Bah! Meglio vivere da orfani che con un padre paladino!~
= ~...~
= ~A chi la do a bere... Sopporterei di sapere entrambi i genitori e tutti i miei fratelli nell'Ordine pur di riaverli... *SOB!*~
END

INTERJECT_COPY_TRANS SURLY 14 tb#StivanSurly-14
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Global("tb#stivanSurly","GLOBAL",0)~ THEN ~Ehi! Voglio combattere nella tua fossa!~
DO  ~SetGlobal("tb#stivanSurly","GLOBAL",1)~
== SURLY ~Non ho tempo da perdere con le tue schiocchezze, piccoletto.~
== TB#STIVJ ~Gua-~
== SURLY ~Voi altri, che volete adesso?~
END

INTERJECT SURLY 14 tb#StivanSurly-14-2
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Global("tb#stivanSurly","GLOBAL",1)~ THEN ~Voglio combattere nella tua fossa!~
DO  ~SetGlobal("tb#stivanSurly","GLOBAL",2)~
== SURLY ~Questa è bella. Con chi vorresti combattere, nanerottolo? Con delle mosche? Delle pulci?~
== TB#STIVJ ~No, con dei gabbiani.~
== SURLY ~Gabbiani? Non farmi perdere tempo.~
== TB#STIVJ ~Farti perdere tempo? Non sai che io sono Stivan il Cacciatore?~
== SURLY ~Stivan il Cacciatore? Due anni fa ti pagai una piuma di gabbiano e non me l'hai mai consegnata! Adesso io ti prendo e-~
== TB#STIVJ ~Eeeekk!~
DO ~RunAwayFrom("surly",120)~
EXIT

CHAIN IF WEIGHT #-1 ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Global("tb#stivanSurly","GLOBAL",2)~ THEN SURLY surlyStivanFinale
~Hai il coraggio di tornare qui, piccoletto?~
DO  ~SetGlobal("tb#stivanSurly","GLOBAL",3)~
== TB#STIVJ ~Sì. Ho catturato DIECI gabbiani prima di entrare, e combatterò con loro nella tua arena. I proventi saranno sufficienti a colmare il mio debito.~
== SURLY ~Hmpf. Io pensavo di ucciderti, ma il tuo modo sembra più divertente. Puoi combattere anche adesso.~
END
IF ~!Class(Player1,DRUID_ALL) !Class(Player1,RANGER_ALL) !Class(Player1,PALADIN) !IfValidForPartyDialog([PC.0.0.DRUID_ALL]) !IfValidForPartyDialog([PC.0.0.RANGER_ALL])~ THEN REPLY ~Divertiti, Stivan.~ EXTERN tb#stivj killSeagulls
IF ~!Class(Player1,DRUID_ALL) !Class(Player1,RANGER_ALL) !Class(Player1,PALADIN) OR(2) IfValidForPartyDialog([PC.0.0.DRUID_ALL]) IfValidForPartyDialog([PC.0.0.RANGER_ALL])~ THEN REPLY ~(Per fortuna gli abbraccia-alberi non sono a portata di orecchi...) Divertiti, Stivan.~ EXTERN tb#stivj killSeagulls
IF ~~ THEN REPLY ~Mi rifiuto di avere a che fare con un simile spettacolo.~ DO ~SetGlobal("tb#stivanSurly","GLOBAL",4)~ EXTERN surly surlyNoShow

APPEND TB#STIVJ
IF ~~ THEN killSeagulls
SAY ~Yeah!~
IF ~~ THEN DO ~StartCutSceneMode() StartCutScene("tb#ssurl")~ EXIT
END
END

APPEND SURLY
IF ~~ THEN surlyNoShow
SAY ~Allora vuoi fare l'eroe? L'halfling mi deve cento monete d'oro. Tirale fuori.~
IF ~PartyGoldGT(99)~ THEN DO ~TakePartyGold(100) DestroyGold(100)~ REPLY ~E sia - prendi i soldi.~ GOTO surlyPaid
IF ~~ THEN REPLY ~Scordatelo.~ GOTO surlyNotPaid
END

IF WEIGHT #-1 ~Global("tb#stivanSurly","GLOBAL",5)~ THEN surlyStivanFinale
SAY ~Hai i soldi del piccoletto?~
IF ~PartyGoldGT(99)~ THEN DO ~TakePartyGold(100) DestroyGold(100)~ REPLY ~Sì. Eccoti le cento monete.~ GOTO surlyPaid
IF ~~ THEN REPLY ~Scordatelo.~ GOTO surlyNotPaid
END

IF ~~ THEN surlyPaid
SAY ~Bene. E adesso sparite!~
IF ~~ THEN EXIT
END

IF ~~ THEN surlyNotPaid
SAY ~Sparisci dalla mia vista. Ti consiglio di avere i soldi pronti la prossima volta che mi vedi.~
IF ~~ THEN DO ~SetGlobal("tb#stivanSurly","GLOBAL",5)~ EXIT
END

IF WEIGHT #-1 ~Global("tb#StivanSurly","GLOBAL",3)~ THEN surlyAfterSeagull
SAY ~Hmpf. Complimenti, hai saldato il debito.~
IF ~~ THEN DO ~SetGlobal("tb#stivanSurly","GLOBAL",4)~ GOTO surlyEnd
END

IF ~~ THEN surlyEnd
SAY ~Avete bisogno di qualcos'altro, o volete solo farmi perdere del tempo?~
COPY_TRANS SURLY 14
END
END

INTERJECT_COPY_TRANS THIEF3 0 tb#StivanThief3-0
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Wow! Vorrei che anche le mie piume fossero così affilate!~
END

INTERJECT_COPY_TRANS THIEF5 7 tb#StivanThief5-7
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~L'hai comprata dal Pollice, vero? Quell’oste ha il brutto vizio di allungare il vino con l'acqua.~
END





///////////////////////////////////////////
// Scripted banters
///////////////////////////////////////////

CHAIN 
IF ~PartyRested()
InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanViconia","GLOBAL",1)~ THEN TB#STIVJ stivan-viconia-2
~Viconia, mia cara Viconia... Dormito bene?~
DO ~SetGlobal("tb#StivanViconia","GLOBAL",2)~
== VICONIJ ~Chiudi la bocca, stupido essere di Superficie. La tua voce è uno strazio per le mie orecchie.~
== TB#STIVJ ~Heh. Vedo che oggi sei di ottimo umore, Viccy.~
== VICONIJ ~*Non* chiamarmi con quel ridicolo nome, idiota!~
== TB#STIVJ ~Come desideri, Viccy.~
EXIT

CHAIN 
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
Global("AnomenIsNotKnight","GLOBAL",0)
OR(2)
AreaCheck("AR0901")
AreaCheck("AR0902")
CombatCounter(0)
Global("tb#StivanAnomenAboutFaith","GLOBAL",0)~ THEN TB#STIVJ stivan-anomen-temple
~Ogni volta che entro in simili posti mi sento male. La visione di questi sciocchi fedeli prostrati in adorazione è a dir poco penosa!~
DO ~SetGlobal("tb#StivanAnomenAboutFaith","GLOBAL",1)~
== ANOMENJ ~Al contrario, la devozione che provano nei confronti del loro dio è lodevole. Nulla di cui tu sia capace.~
== TB#STIVJ ~Per fortuna. Che cosa ne ricaverei, Anomen? Illusioni? False speranze? Qualche incantesimo di convenienza?~
== ANOMENJ ~Fede. Nei momenti di maggiore difficoltà, la fede dà coraggio e determinazione, speranza e conforto; ti offre un appiglio a cui aggrapparti per andare avanti.~
== TB#STIVJ ~Non vedo di che utilità possa essere per noi poveri eretici. In questo modo ne traete vantaggio soltanto voi guaritori.~
== ANOMENj ~Quando sei sul punto di esalare l'ultimo respiro in battaglia è un chierico a salvarti la pelle. Ti è forse sfuggito, ladruncolo?~
== TB#STIVJ ~Hai ragione. La prossima volta mi lascerò morire.~
== ANOMENJ ~Umpf. In quel momento non sarai così spavaldo. Fidati.~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
Global("FollowedGarren","GLOBAL",1)
CombatCounter(0)
Global("tb#StivanKeldornAboutGarren","GLOBAL",0)~ THEN KELDORJ stivanKeldornGarren
~Per fortuna quest'uomo si è offerto di mettere una buona parola su di noi. Sarebbe stato spiacevole doversi scontrare con dei compagni dell'Ordine.~
DO ~SetGlobal("tb#StivanKeldornAboutGarren","GLOBAL",1)~
== TB#STIVJ ~Spiacevole? Questo è il sogno di una vita! Ho sempre desiderato avere alle calcagne una dozzina di paladini!~
== KELDORJ ~Una fantasia piuttosto bizzarra, halfling. Grazie a Torm rimarrà per sempre tale.~
== TB#STIVJ ~Credi che il tuo dio mi impedirà di tagliuzzare i tuoi amichetti?~
== KELDORJ ~Credo che sarà sufficiente il buon senso di <CHARNAME>. Non è forse vero, mio giovane amico?~
END
IF ~~ THEN REPLY ~Verissimo, Keldorn. Non ho intenzione di scontrarmi con i membri del Cuore Radioso.~ EXTERN TB#STIVJ StivanKeldorn1-1
IF ~~ THEN REPLY ~Accetterò l'aiuto di Garren, se è questo che intendi.~ EXTERN TB#STIVJ StivanKeldorn1-1
IF ~~ THEN REPLY ~In realtà l'idea di Stivan non è niente male. Penso che sarebbe divertente massacrare qualche paladino.~ EXTERN TB#STIVJ StivanKeldorn1-2
IF ~~ THEN REPLY ~Io andrò per la mia strada, Keldorn. Se i tuoi compagni mi metteranno i bastoni tra le ruote, saprò come difendermi.~ EXTERN TB#STIVJ StivanKeldorn1-2

APPEND TB#STIVJ
IF ~~ StivanKeldorn1-1
SAY ~(Urla) Dannati guastafeste! Se non sarà la mia lama a farli a fettine, ci penseranno i gabbiani con i loro becchi!~
IF ~~ THEN EXIT
END

IF ~~ StivanKeldorn1-2
SAY ~Yeah! Così si fa!~
IF ~~ EXTERN KELDORJ StivanKeldorn1-3
END
END

APPEND KELDORJ
IF ~~ THEN StivanKeldorn1-3
SAY ~Mi auguro che le tue parole non vengano seguite dai fatti, <CHARNAME>. Sai bene che non esiterei a rivoltarmi contro di te se dovessi aggredire i miei compagni.~
IF ~~ THEN EXIT
END
END

CHAIN 
IF ~InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
AreaType(OUTDOOR)
CombatCounter(0)
Global("tb#StivanHaerdalisBesamen","GLOBAL",0)
OR(2)
Global("BesamenDead","GLOBAL",1)
Global("BesamenDead","GLOBAL",2)~ THEN TB#STIVJ stivan-dalis-qp
~Wow. Sono senza parole. Non pensavo che l'amore potesse vincere anche la morte.~
DO ~SetGlobal("tb#StivanHaerdalisBesamen","GLOBAL",1)~
== HAERDAJ ~Conosco una poesia decisamente adatta alla vicenda di quei due. Vuoi sentirla, mio uccello di mare?~
== TB#STIVJ ~Ti ascolto.~
== HAERDAJ ~"Quando bacio il tuo labbro profumato,
cara fanciulla, non posso obliare
che un bianco teschio vi è sotto celato".~
= ~"Quando a me stringo il tuo corpo vezzoso,
obliar non poss'io, cara fanciulla, 
che vi è sotto uno scheletro celato".~
= ~"E nell'orrenda visione assorto, 
dovunque o tocchi, o baci, o la man posi,
sento sporgere le fredde ossa di un morto".~
= ~Ebbene? Che cosa ne pensi?~
== TB#STIVJ ~Beh, i tuoi versi rappresentano l'amore con una gelida oggettività, lo svuotano di tutto il suo calore. Sono... freddi.~
== HAERDAJ ~Al contrario, trovo che siano una commistione di erotismo e di necrofilia, di sensualità e di decadenza. Amore e morte formano un binomio inscindibile, un nodo che nessuna forza può allentare.~
== HAERDAJ IF ~IsValidForPartyDialog("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) Global("HaerDalisRomanceActive","GLOBAL",2)~ THEN ~Non è così, mia colomba?~
== AERIEJ IF ~IsValidForPartyDialog("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) Global("HaerDalisRomanceActive","GLOBAL",2)~ THEN ~(Arrossisce)~
== TB#STIVJ ~Se lo dici tu, Haer'Dalis...~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CheckStatGT("Aerie",5,FATIGUE)
CombatCounter(0)
Global("tb#StivanAerie","GLOBAL",0)~ THEN AERIEJ stivan-aerie-1
~Sono stanca... Stiamo cammiando e lottando da tutta la giornata! Possiamo... Possiamo riposarci?~
DO ~SetGlobal("tb#StivanAerie","GLOBAL",1)~
== TB#STIVJ ~Smettila di lamentarti, Aerie! Anch'io sono esausto, ma non passo il tempo a bofonchiare frasi del tipo "Le gambe mi fanno male" o "Non ho mai camminato così tanto in tutta la mia vita"!~
== AERIEJ ~Ma... Ma io...~
== TB#STIVJ ~Hai pure il coraggio di ribattere?~
== AERIEJ ~M-ma insomma! Credo di avere il diritto di lamentarmi se sono stanca! E poi mi stavo rivolgendo a <CHARNAME>, non a te!~
== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN ~Aerie! Stivan! Cosa sta succedendo?~
== TB#STIVJ ~Tsk. Riesci a malapena ad articolare una frase di senso compiuto. Ma dove hai vissuto fin'ora? Il mondo ha posto e porrà ostacoli a ciascuno di noi, ma questo non è un motivo sufficiente per lamentarsi in continuazione!~
== AERIEJ ~C-cosa ne sai te delle difficoltà che ho dovuto affrontare in passato? Io ho perso le mie ali! Tu non hai idea di che cosa si provi a vedersi strappare ciò che si ha di più caro!~
== TB#STIVJ ~Oh, sono commosso. La nostra piccola elfa ha perso le ali... Poverina!~
== AERIEJ ~N-non... Non prendermi in giro!~
== TB#STIVJ ~Anch'io ho perso ciò che avevo di più caro, ma non mi abbandono a lamentele e a piagnistei pubblici. Il dolore è un'esperienza che si vive privatamente; declamare la propria afflizione mostra solo quanto una persona possa essere così egocentrica da voler attirare l'attenzione degli altri su di sè.~
== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN ~Per quanto difficile possa essere stata la tua vita, questo non ti autorizza a sputare veleno sugli altri!~
== TB#STIVJ IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN ~Tu fatti gli affari tuoi!~
= ~...~
= ~... Heh. Stavo scherzando, Mazzy. Non guardarmi in quel modo...~
== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN ~Spero di essere stata chiara, Stivan.~
== TB#STIVJ IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN ~Ehm... Certo. Chiarissima.~
EXIT

CHAIN 
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanJaheira","GLOBAL",0)
AreaCheck("AR2000")~ THEN TB#STIVJ stivanjaheiratrademeet
~Toglimi una curiosità, Jaheira: i tuoi amici druidi hanno forse deciso di trastullarsi con gli abitanti del luogo?~
DO ~SetGlobal("tb#StivanJaheira","GLOBAL",1)~
== JAHEIRAJ ~Sarebbe bene evitare giudizi affrettati, Stivan. Preferirei che non ci pronunciassimo su una situazione di cui sappiamo poco o nulla.~
== TB#STIVJ ~Le cose non si considerano mai per quel che sono, ma per quel che appaiono.~
== JAHEIRAJ  ~Piantala, halfling. Questo non è il momento adatto per una delle tue disquisizioni. Qualcuno o qualcosa minaccia di sconvolgere l'equilibrio di questo posto, ed io sono più che intenzionata a fermarlo!~
EXIT

CHAIN 
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
Global("JaheiraCursed","GLOBAL",3)
CombatCounter(0)
Global("tb#StivanJaheiraCursed","GLOBAL",0)~ THEN TB#STIVJ stivanjaheiracurse
~Jaheira, stai bene?~
DO ~SetGlobal("tb#StivanJaheiraCursed","GLOBAL",1)~
== JAHEIRAJ ~Sono stata meglio, grazie. Essere maledetta non è certamente un'esperienza piacevole, ma preferirei morire piuttosto che dare a quel lurido schiavista la soddisfazione di sentirmi lamentare.~
== TB#STIVJ ~Hai proprio una brutta cera, sai?~
== JAHEIRAJ ~Non sono... (Tossisce) ... Non sono dell'umore adatto per ascoltare i tuoi commenti sardonici, Stivan.~
== TB#STIVJ ~Stavo scherzando, druida. Sai bene quanto ci tenga a te.~
== JAHEIRAJ ~Vuoi che ti seppellisca insieme a Ployer o preferisci una fossa a parte?~
== TB#STIVJ ~Ehi, stavo parlando sul serio!~
== JAHEIRAJ ~Non... Non volevo essere così brusca. Questa maledizione sta avendo un brutto effetto sul mio carattere.~
== TB#STIVJ ~Davvero? Io non noto alcuna differenza.~
== JAHEIRAJ ~... Quando perderò la pazienza, Stivan, farai bene a trovarti a miglia di distanza.~
EXIT

CHAIN 
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanValygarSphere","GLOBAL",0)
Dead("obshal04")~ THEN TB#STIVJ stivanvalygarsphere
~Dannazione! Vorrei uscire integro da questo posto! Stavo per perdere le braccia sotto i morsi di quelle bestiacce!~
DO ~SetGlobal("tb#StivanValygarSphere","GLOBAL",1)~
== VALYGARJ ~Calmati, Stivan, o attirerai l'attenzione. Ci sono insidie ad ogni angolo qui, ed urlare in questo modo potrebbe essere pericoloso.~
== TB#STIVJ ~E' troppo chiedere di tornare ad Athkatla con tutti gli arti attaccati?!~
== VALYGARJ ~E' troppo chiederti di non rivelare la nostra presenza ad ogni creaura che si trova in questo posto?~
== TB#STIVJ ~Tu e il tuo dannato antenato! Finiremo per essere uccisi tutti!~
== VALYGARJ ~No, Stivan. Sarà Lavok ad essere ucciso una volta per tutte.~
EXIT

CHAIN
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
Global("u!SunaDies","GLOBAL",1)
CombatCounter(0)
Global("tb#StivanValygarAboutSuna","GLOBAL",0)~ THEN TB#STIVJ stivanvalygarsuna
~(Urla) Basta! Non ne posso più di tutti questi mostri! Le mani mi stanno sanguinando per la fatica! La testa è sul punto di scoppiarmi! Come se non bastasse, ho addirittura finito la mia scorta di piume! Tutto per colpa della tua donna, ranger!~
DO ~SetGlobal("tb#StivanValygarAboutSuna","GLOBAL",1)~
== VALYGARJ ~Cosa?! Stai accusando Suna Seni della situazione in cui ci troviamo? E' stato quel mostro di Irenicus a costringerla a lavorare per lui!~
== TB#STIVJ ~*Ahem* A me non sembra che sia stata costretta. Ha accettato in cambio di una cospicua somma, giusto?~
== VALYGARJ ~Nessuno di noi è innocente, Stivan. In questa storia siamo tutti colpevoli. Tutti. Ognuno a modo suo.~
== TB#STIVJ ~Ma io non ho fatto niente!~
== VALYGARJ ~Allora chi non ha peccato scagli la prima pietra.~
== TB#STIVJ ~... Eh?~
== VALYGARJ ~(Sigh) Lascia stare. Torniamo alla ricerca di una fuga da questo posto.~
EXIT

CHAIN 
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanMazzyObshal01","GLOBAL",0)
Dead("obshal01")
Dead("obshal02")
Dead("obshal03")~ THEN TB#STIVJ stivanmazzyhalfling
~M-Mazzy, li hai sentiti? Quei mostri volevano cibarsi delle nostre carni! Volevano banchettare con le *mie* e con le *tue* membra!~
DO ~SetGlobal("tb#StivanMazzyObshal01","GLOBAL",1)~
== MAZZYJ ~Questo incontro mi ha lasciata confusa, Stivan, e anche un pò spaventata. Non avevo mai visto degli halfling... cannibali.~
== TB#STIVJ ~Come possono voler mangiare dei loro simili?~
== MAZZYJ ~La fame è una brutta bestia. Suppongo che, se non li avessimo mai incontrati, alla fine si sarebbero divorati tra di loro.~
== TB#STIVJ ~In effetti, credo che anch'io avrei rosicchiato qualche tuo arto piuttosto che morire d'inedia.~
== MAZZYJ ~Non posso dire lo stesso, Stivan. Cinico e pungente come sei, dubito che saresti commestibile.~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
GlobalGT("A#IM5Quest","GLOBAL",3)
Global("tb#StivanMazzyAboutKram","GLOBAL",0)~ THEN MAZZYJ kram
~Sono contenta che Kram sia riuscito a trovare un lavoro onesto. Con un pò di costanza e di buona volontà, potrà finalmente costruirsi un futuro.~
DO ~SetGlobal("tb#StivanMazzyAboutMazzy","GLOBAL",1)~
== TB#STIVJ  ~Altre agili dita sottratte alla raffinata arte del borseggio... Dove andremo a finire?~
== MAZZYJ ~Con simili osservazioni, Stivan, non c'è da stupirsi se la maggior parte delle persone etichetta gli halfling come un popolo di ladri. Grazie ad Arvoreen, vicende come quella di Kram riescono a smussare questo genere di pregiudizi.~
== TB#STIVJ ~Beh, con un pò d'impegno dovrei riuscire a traviarlo...~
== MAZZYJ ~Sono convinta che non cederebbe a nessuna tentazione.~
== TB#STIVJ ~E se sgrafignassi qualcosa a Galoomp sotto i suoi occhi? Questo potrebbe risvegliare l'antica abitudine...~
== MAZZYJ ~Quando ti comporti in questo modo, Stivan, sarei tentata di prenderti a schiaffi.~
== TB#STIVJ ~Dici sul serio, venditrice di patat-- *AHIA*!~
== MAZZYJ ~Umpf. Stavolta te la sei cercata.~
EXIT


CHAIN 
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
AreaCheck("AR0202")
CombatCounter(0)
Global("tb#StivanKeldornStink","GLOBAL",0)~ THEN TB#STIVJ stivankeldornstink
~(Sniff sniff) Cos’è questo fetore?~
DO ~SetGlobal("tb#StivanKeldornStink","GLOBAL",1)~
== KELDORJ ~Ogni angolo di questo posto è impregnato dell’odore del male. Suggerisco di avanzare con cautela.~ 
== TB#STIVJ ~Heh. Io pensavo che avessi fatto una puzzetta, paladino!~
== KELDORJ ~...~
EXIT

ADD_TRANS_ACTION BAERIE BEGIN 140 END BEGIN END ~SetGlobal("tb#StivanAerieToldWIngs","GLOBAL",1)~


CHAIN 
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanMazzyDragon","GLOBAL",0)
AreaCheck("ar1402")~ THEN TB#STIVJ stivandragon
~Eeeekkk! C... Cos'è quel coso?!~
DO ~SetGlobal("tb#StivanMazzyDragon","GLOBAL",1)~
== MAZZYJ ~Eccolo. E' il drago che ha sconfitto me e i miei amici. Benchè Amuana ci abbia sconsigliato di affrontarlo, fremo dalla rabbia all'idea di risparmiare una creatura così malvagia!~
== TB#STIVJ ~Combattici te se sei abbastanza folle da farlo! Io non staccherò le mani dalla Pietra dell'Ombra neanche morto!~
== MAZZYJ ~Nessun halfling dovrebbe mai tirarsi indietro di fronte ad una prova di coraggio. Davide non ebbe alcuna esitazione ad affrontare Golia!~
== TB#STIVJ ~Svegliati, Mazzy! La realtà è ben diversa da quella stupida favola per marmocchi insonni!~
END
IF ~~ THEN REPLY ~(Resti in silenzio).~ EXTERN MAZZYJ StivanMazzyDragon1-1
IF ~~ THEN REPLY ~Davide? Golia? Di chi state parlando?~ EXTERN MAZZYJ StivanMazzyDragon1-2
IF ~~ THEN REPLY ~Affronteremo il drago, Stivan, che ti piaccia o no.~ EXTERN TB#STIVJ StivanMazzyDragon1-3
IF ~~ THEN REPLY ~Si tratta di un nemico troppo pericoloso, Mazzy. Non lo sfideremo.~ EXTERN MAZZYJ StivanMazzyDragon1-4


CHAIN IF ~~ THEN MAZZYJ StivanMazzyDragon1-1
~Quella storia, inventata o veritiera che sia, ha un insegnamento che faresti bene a ricordare. Lascia che ti rinfreschi la memoria.~
== TB#STIVJ ~Non ce n’è bisogno, la conosco meglio di te!~
EXTERN MAZZYJ StivanMazzyDragon1-5

APPEND TB#STIVJ
IF ~~ THEN BEGIN StivanMazzyDragon1-3
SAY ~Tu sei folle, <CHARNAME>, folle! Non voglio morire sbranato da quel mostro! Eeeekkkk!~
IF ~~ THEN DO ~ApplySpellRES("tb#ssca",Myself)~ EXIT
END
END

APPEND MAZZYJ
IF ~~ THEN BEGIN StivanMazzyDragon1-2
SAY ~Si tratta dei protagonisti di una leggenda che le madri halfling son solite raccontarci in tenera età.~
IF ~~ THEN EXTERN MAZZYJ StivanMazzyDragon1-5
END

IF ~~ THEN BEGIN StivanMazzyDragon1-4
SAY ~Non volevo suggerire nulla del genere, <CHARNAME>. Ho già affrontato quella bestia, e so bene quanto sia forte. Il problema è che... Sento le grida dei miei compagni caduti. Chiedono giustizia.~
IF ~~ THEN REPLY ~E l’avranno. Il Signore delle Ombre pagherà per gli orrori di cui è responsabile.~ EXIT
IF ~~ THEN REPLY ~Riconoscere i propri limiti è segno di saggezza. Non ha senso sprecare le nostre vite attaccandolo; ci rivarremo sul padrone di questa orrida bestia.~ EXIT
IF ~~ THEN REPLY ~Così sia. Preparati, Stivan: combatteremo contro il drago.~ EXTERN TB#STIVJ StivanMazzyDragon1-3
IF ~~ THEN REPLY ~Capisco cosa dici, ma è meglio proseguire. Abbiamo indugiato sin troppo qui.~ EXIT
END
END

CHAIN IF ~~ THEN MAZZYJ StivanMazzyDragon1-5
~Nei pressi di un insediamento halfling a sud del Golfo di Vilhon si era stabilito un gruppo di giganti che terrorizzava le comunità del posto. Ad essere sincera, non ricordo con esattezza il nome del villaggio.~
== TB#STIVJ ~(Snort!) Si trattava del Bosco di Chondal, ignorante!~
== MAZZYJ ~Visto che sai più dettagli di me, perché non prosegui?~
== TB#STIVJ ~Puoi starne certa!~
= ~*Ahem* Secondo questa leggenda, seguirono anni di lotte in cui gli halfling si divertivano a tagliuzzare le gambe degli avversari e i giganti a scagliare il più lontano possibile i nostri simili.~
= ~La situazione rimase invariata sino a quando il campione dei nuovi arrivati, Golia, rivolse una vera e propria sfida agli halfling degli spiriti che abitavano il posto. La sua tribù avrebbe abbandonato il Bosco di Chondal soltanto se lui fosse stato sconfitto in combattimento.~
= ~Nessuno ebbe il coraggio di accettare la sfida, ad eccezione di un tale di nome Davide.~
= ~I due si incontrarono in una valle, conosciuta come la Valle di Elah. Certo di avere la vittoria in tasca, Golia lasciò che fosse l’avversario a fare la prima mossa.~
== MAZZYJ ~La sua presunzione gli fu fatale, in quanto Davide infilò la mano nella sua bisaccia, ne trasse una pietra, la lanciò con la fionda e colpì il gigante in fronte, facendolo cadere a terra. A quel punto corse in direzione dell’avversario, prese la sua spada e lo uccise, per poi tagliargli la testa.~
== TB#STIVJ ~(Sospira) E fu così che gli halfling del Bosco di Chondal furono liberi dalla minaccia dei giganti, in quanto fuggirono alla notizia della morte del loro capo.~
== MAZZYJ ~Lo vedi, Stivan? Le idee ispirate dal coraggio sono come le pedine degli scacchi. Se da una parte possono essere mangiate, dall’altra possono anche dare avvio ad un gioco vincente.~
== TB#STIVJ ~(Snort!) Non tutti sono dei Davide scesi nella Valle di Elah per affrontare un mostro tanto più grande e forte di noi. E non tutti hanno la capacità di uccidere il gigante. Di rado i cosiddetti "buoni" vincono e vivono per raccontarlo.~
EXIT

BEGIN TB#SLIL
CHAIN 
IF ~Global("tb#StivanLarry","GLOBAL",2)~ THEN TB#SLIL StivanLarry
~Testa di latta, è da ben *due* ore che non mi lustri! Cosa stai aspettando?!~
== MINSCJ ~Abbi un attimo di pazienza, Larry: Minsc sta dando da mangiare a Boo. Tra poco si prenderà cura anche di te.~
== TB#SLIL ~Ora! Mi devi lucidare ORA, prima che la ruggine mi intacchi!~
== MINSCJ ~E va bene. Boo, finisci di mangiare le noci da solo; Minsc deve dare una pulitina alla sua spada.~
== TB#STIVJ ~Devi essere proprio stupido, ranger, per soddisfare ogni capriccio di quella lama. Se si fosse rivolta a me in questo modo, l'avrei rigirata in una pila di letame fino ad insegnarle un pò di rispetto.~
== MINSCJ ~Minsc non è stupido! Si prende cura del suo criceto e della sua spada per essere sempre pronto alla battaglia!~
== TB#SLIL ~Ora basta! Se non posso ricevere la dovuta pulizia, allora assaggerò un pò di sangue!~
== TB#STIVJ ~AHIA! Minsc, sei impazzito?!?~
== MINSCJ ~Minsc non ha fatto nulla! E' stato Larry! Vero, Boo?~
== TB#STIVJ ~Nulla? Stavi per tagliarmi in due e hai il coraggio di dire che non hai fatto nulla?! Stai brandendo TU quella dannata spada! Ti è forse sfuggito?~
== MINSCJ ~Ma Larry ogni tanto fa quel che vuole! Minsc non ha colpa se la sua spada sferra colpi da sola!~
== TB#STIVJ ~Osa solo colpirmi un'altra volta, spada, e ti rispedisco nelle fogne da cui provieni!~
== TB#SLIL ~Mwahahahahahaha!~ DO ~DestroySelf()~
EXIT

CHAIN 
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanMazzyDrow","GLOBAL",0)
GlobalGT("PhaereJob","GLOBAL",5)~ THEN TB#STIVB mazzydrow
~WOW! Questo corpo è... E' incredibile! Sto scoprendo e facendo un sacco di cose che prima non mi erano possibili! Non trovi che sia magnifico, Mazzy?~
DO ~SetGlobal("tb#StivanMazzyDrow","GLOBAL",1)~
== BMAZZY ~Non capisco il tuo entusiasmo. Io provo un gran disagio al pensiero di avere le sembianze di una creatura malvagia.~
== TB#STIVB ~Di quale disagio vai parlando? Essere alti ed essere drow ha tantissimi vantaggi!~
= ~Non hai peli sui piedi.~
= ~Non hai gambe e braccia a forma di coscia di pollo.~
= ~Non hai il torcicollo derivante dal dover alzare la testa ogni volte che parli con qualcuno.~
= ~Puoi fare dei passi incredibilmente lunghi.~
= ~Puoi brandire quelle armi che prima erano più grandi di te.~
= ~Puoi afferrare gli oggetti da un tavolo senza doverti mettere in punta di piedi.~
= ~Puoi... Puoi fare un sacco di cose!~
== BMAZZY ~(Sospira) Goditi quest'esperienza finchè puoi, allora. Presto riassumeremo le nostre vere sembianze, lo sai.~
== TB#STIVB ~Heh. Questo è quello che *tu* pensi.~
== BMAZZY ~Cosa vorresti dire?~
== TB#STIVB ~Chiederò a quel simpatico draghetto di lasciare immutata la mia forma.~
== BMAZZY ~Cosa?! Vorresti mantenere le fattezze di un drow? Sarebbe questo il tuo sogno nel cassetto?~
== TB#STIVB ~Io non ho sogni nel cassetto, Mazzy. Preferisco tenerci la biancheria!~
== BMAZZY ~Non è il momento di scherzare, Stivan! L'incantesimo lanciato da Aldalon non è altro che un'illusione. Non cambierà mai la tua natura di halfling!~
= ~Hai pensato inoltre alle conseguenze che il tuo aspetto porterebbe con sè? Una volta tornati in superficie, le persone ne saranno terrorizzate e ti eviteranno. Alcuni cercheranno addirittura di ucciderti!~
== TB#STIVB ~(Snort!) E allora? Lo scenario che dipingi non sarebbe poi tanto diverso da quello che ho vissuto sino ad oggi!~
= ~Le persone mi hanno sempre evitato per il mio aspetto trasandato, come se avessi potuto tirarmi a lucido dopo la perdita di tutti i miei beni. Quanto ai tentativi di uccisione, sono innumerevoli le guardie che hanno cercato di aggredirmi e di sbattermi in prigione soltanto perchè dormivo per strada. "Dobbiamo mantenere l'ordine e la sicurezza" dicevano, quando i problemi del distretto erano altri!~
= ~Ben venga se coloro che incontrerò avranno paura di me per le mie sembianze da drow. Il loro timore sarà sinonimo di rispetto!~
== BMAZZY ~Stivan, calmati e ascoltami.~
= ~Capisco meglio di chiunque altro quanto sia difficile per un halfling essere accettati dalla società. Agli occhi dei più non siamo altro che creature buffe e frivole, pavide e vigliacche. Eppure, io ho lottato perchè almeno nel mio mondo le cose cambiassero, perchè le persone mi vedessero per quel che sono veramente, non con le lenti dei pregiudizi che accompagnano il nome della nostra razza.~ 
= ~E' stato un cammino lungo e periglioso, non lo nego. In più occasioni mi sono sentita demoralizzata, ma ogni volta sono riuscita ad andare avanti dicendomi: "Sei caduta sette volte? Rialzati otto". Alla fine, ho dimostrato a me stessa e agli altri di essere una persona forte e coraggiosa, leale e onesta.~
== TB#STIVB ~...~
= ~... Heh. Ci hai provato, Mazzy, ma non mi lascerò intortare dalla tua storiellina. Io manterrò quest'aspetto, che ti piaccia o no!~
== BMAZZY ~Ragiona, Sti--~
== TB#STIVB ~(Urla) Basta! Non voglio sentire altro!~
EXIT

BEGIN TB#SELF

CHAIN 
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanMazzyDrow","GLOBAL",1)
AreaCheck("ar2500")~ THEN TB#STIVJ mazzypostdrow
~Vedi, Mazzy? *Vedi* come questi sbruffoni mi fissano? Se avessi mantenuto l'aspetto di un drow non mi guarderebbero con quell'espressione di sfacciata superiorità!~
DO ~SetGlobal("tb#StivanMazzyDrow","GLOBAL",2)~
== MAZZYJ ~Hai ragione. Ti avrebbero piantato al suolo con lance e frecce.~
= ~Osserva e impara.~
= ~Ehi, tu! Posso sapere perchè guardi in quel modo il mio amico? Non ti hanno insegnato che è maleducato fissare le persone senza dir nulla?~
== tb#self ~Guardo dove mi pare, donnetta.~
== MAZZYJ ~Ne sei sicuro? Vuoi che venga lì e ti faccia volgere lo sguardo altrove a suon di schiaffi?~
== tb#self ~Ehm... No. Non ce n'è bisogno...~
== MAZZYJ ~Presto fatto.~ 
= ~Sii coraggioso, Stivan. Anche gli halfling, nel cercare di scalare la più alta delle vette, possono raggiungerne la cima.~
== TB#STIVJ ~...~
= ~(Arrossisce) Grazie, Mazzy.~
== MAZZYJ ~Figurati.~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
HPPercentLT("tb#Stiv",50)
CombatCounter(0)
Global("tb#StivanAnomen","GLOBAL",6)~ THEN ANOMENJ stivananomen7
~Non dovresti esporti così tanto in battaglia, halfling. Ti mancano tattica e disciplina, due abilità fondamentali negli scontri corpo a corpo.~ 
DO ~SetGlobal("tb#StivanAnomen","GLOBAL",7)~
= ~La prossima volta lascia a me gli avversari più robusti: saprò sistemarli a dovere. Ora, è meglio che ti curi.~
== TB#STIVJ ~Heh. Grazie.~
= ~Comunque avevi ragione.~ 
== ANOMENJ ~Riguardo a cosa?~
DO ~ActionOverride("Anomen",ForceSpell("tb#Stiv",CLERIC_CURE_MEDIUM_WOUNDS))~
== TB#STIVJ ~E' solo quando cominci a temere veramente la morte che impari ad apprezzare i chierici.~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanAnomen","GLOBAL",8)
AreaCheck("ar2804")~ THEN ANOMENJ stivananomen9
~Pronto alla battaglia?~ 
DO ~SetGlobal("tb#StivanAnomen","GLOBAL",9)~
== TB#STIVJ ~Heh. Puoi contarci.~
BRANCH ~Global("AnomenRomanceActive","GLOBAL",2)~ BEGIN
== ANOMENJ ~Fà tesoro dei miei insegnamenti. Dovremo fare il possibile per proteggere <CHARNAME> - impazzirei se le dovesse succedere qualcosa.~
== TB#STIVJ ~... Perchè tieni così tanto a lei?~
== ANOMENJ ~L'amore che nutro per <CHARNAME> è una rosa che ad ogni alba mostra un petalo nuovo e un colore diverso, ma la sua bellezza è quella di sempre. Nessun artista saprebbe dipingere il sapore dei suoi baci, il profumo della sua pelle, la melodia della sua voce. Io stesso non son degno di cantare la poesia del suo nome.~
= ~Per lei sono pronto a dare la vita.~
END
BRANCH ~!Global("AnomenRomanceActive","GLOBAL",2)~ BEGIN
== ANOMENJ ~Fà tesoro dei miei insegnamenti. Dovremo fare il possibile per proteggere <CHARNAME>.~
== TB#STIVJ ~... Sono sicuro che sia in grado di cavarsela anche da sè.~
== ANOMENJ ~Non ne dubito, ma è nostro dovere difenderlo ad ogni costo.~
END
== TB#STIVJ ~(Gasp!) Non puoi promettere una cosa simile!~
== ANOMENJ ~Non preoccuparti, amico mio. Ci vuole ben altro che un mago da strapazzo per mettermi in difficoltà. Ma basta indugiare: la battaglia ci aspetta.~
== TB#STIVJ ~<CHARNAME>...! <CHARNAME>, ti prego, non lasciare che Anomen muoia! Per favore!~
END
IF ~~ THEN REPLY ~Non gli accadrà nulla. Avremo la meglio su quel folle una volta per tutte.~ EXTERN tb#stivj StivanAnomenLastTalk1-1
IF ~!Global("AnomenRomanceActive","GLOBAL",2)~ THEN REPLY ~Tranquillo, Stivan. Avrò un occhio di riguardo nei suoi confronti.~ EXTERN tb#stivj StivanAnomenLastTalk1-1
IF ~~ THEN REPLY ~Farò il possibile per proteggere ogni membro di questo gruppo. E' il minimo che possa fare dopo tutto il sostegno che mi avete dato.~ EXTERN tb#stivj StivanAnomenLastTalk1-1
IF ~Global("AnomenRomanceActive","GLOBAL",2)~ THEN REPLY ~Tranquillo, Stivan: avrò un occhio di riguardo nei suoi confronti. E' troppo importante per me.~ EXTERN tb#stivj StivanAnomenLastTalk1-1
IF ~Global("AnomenRomanceActive","GLOBAL",2)~ THEN REPLY ~Non so se riusciremo ad avere la meglio su Irenicus, ma fammi un favore: se dovesse succedermi qualcosa, non permettere che Anomen compia dei gesti avventati.~ EXTERN tb#stivj StivanAnomenLastTalk1-2

APPEND tb#stivJ
IF ~~ THEN BEGIN StivanAnomenLastTalk1-1
SAY ~(Sniff) Perchè all'improvviso provo tutta questa paura? Mi stavo dirigendo intrepido verso lo scontro e adesso... Adesso ho il terrore che quel pazzoide possa farci del male!~
= ~Se non dovessi farcela, vorrei... Vorrei riposare nella stessa cripta dove si trovano i miei familiari. Se invece dovesse succedere qualcosa ad Anomen e tu non avrai la decenza di accompagnarlo nella morte, ti ridurrò a fettine!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN StivanAnomenLastTalk1-2
SAY ~Quindi se tu dovessi morire mi autorizzi a tramortirlo e a riportarlo sano e salvo ad Athkatla? E' questo che intendi?~
IF ~~ THEN REPLY ~Esat--~ GOTO StivanAnomenLastTalk1-3
IF ~~ THEN REPLY ~In realt--~ GOTO StivanAnomenLastTalk1-3
IF ~~ THEN REPLY ~Non propr--~ GOTO StivanAnomenLastTalk1-3
END

IF ~~ THEN BEGIN StivanAnomenLastTalk1-3
SAY ~Yeah! Sei fenomenale, <CHARNAME>! Cosa aspetti lì imbambolata? Andiamo!~ 
IF ~~ THEN EXIT
END
END

CHAIN 
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanKorgan","GLOBAL",3)
Global("udDrowPlot","GLOBAL",5)~ THEN TB#STIVJ stivankorgan4
~(Gasp!) Quelle creature erano *mostruose*! Mi fa male la testa... E' come se l'avessero presa a frustrate!~
DO ~SetGlobal("tb#StivanKorgan","GLOBAL",4)~ 
== KORGANJ ~Bah! Il Sottosuolo non è un posto adatto a femminucce come te! Fatti da parte e lascia che siano i veri guerrieri a fare il lavoro sporco!~
== TB#STIVJ ~Sono perfettamente capace di cavarmela, Korgan. Ho soltanto bisogno di tempo per abituarmi a queste nuove sembianze.~
== KORGANJ ~L'aspetto non significa nulla, inutile mucchietto di sputi goblin. Anche con le fattezze di un lurido gambelunghe drow so bene dove affondare la mia ascia.~
= ~Proprio qui... All'altezza del tuo collo!~
== TB#STIVJ ~Eeeekkkk!!!~
== KORGANJ ~Har har! Guarda come corre, il bambinetto!~
BRANCH ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ BEGIN
== MAZZYJ ~Per Arvoreen, Korgan! Ti rendi conto che spaventare un membro del nostro gruppo è soltanto controproducente?~
== KORGANJ  ~Avanti, Mazzy... Goditi lo spasso!~
== MAZZYJ ~Ci sono degli sciocchi che sfruttano abilmente la loro stupidità. Mi hai appena dato l'ennesima prova di essere uno di questi.~ 
END
EXIT

CHAIN 
IF ~InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
HPPercentLT("tb#Stiv",30)
CombatCounter(0)
Global("tb#StivanHaerdalis","GLOBAL",3)~ THEN TB#STIVJ stivanhaer4
~Io... Non mi sento molto bene...~
DO ~SetGlobal("tb#StivanHaerdalis","GLOBAL",4)~
== HAERDAJ ~<CHARNAME>, spero che tu abbia intenzione di fare qualcosa per strappare il nostro amico dal gelido abbraccio della morte. Non dubito che sia una creatura troppo strana per vivere, ma è anche troppo rara per morire.~
EXIT

CHAIN 
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
HPPercentLT("tb#Stiv",40)
Global("tb#StivanMinsc","GLOBAL",2)~ THEN TB#STIVJ stivanminsc3
~Accidenti. Il sangue delle mie ferite ha addirittura insozzato le mie piume.~
DO ~SetGlobal("tb#StivanMinsc","GLOBAL",3)~
== MINSCJ ~Minsc ammira il tuo coraggio, ma non vuole che il suo piccolo amico si esponga così tanto nelle battaglie! Dovresti fare compagnia a Boo nelle retrofile, di tanto in tanto.~
== TB#STIVJ ~Perchè ti preoccupi di me, Minsc? Io... Non credo di meritare la tua apprensione.~
== MINSCJ ~Questo ranger e questo criceto credono che tu sia cattivo solo all'apparenza, e puoi star certo che hanno visto il male così tante volte da non potersi sbagliare!~
= ~Boo aggiunge che ogni tanto ti meriteresti una lavata di capo però.~
== TB#STIVJ ~Heh. Forse ho sbagliato a giudicarti, ranger. Dopo tutto... Sei una brava persona.~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanMinscDrow","GLOBAL",0)
Global("PhaereJob","GLOBAL",8)~ THEN MINSCJ stivanminscdrow
~Minsc e Boo si stanno chiedendo come mai il loro piccolo amico sia così felice ultimamente.~
DO ~SetGlobal("tb#StivanMinscDrow","GLOBAL",1)~
== TB#STIVJ ~Questo corpo è un vero spasso! Ogni semplice gesto, dal camminare al respirare, mi sembra nuovo e completamente diverso!~
== MINSCJ ~Minsc non si sente a suo agio nell'indossare i vestiti altrui. Inoltre dare i calci al male con queste gambine è molto più difficile!~
== TB#STIVJ ~E Boo cosa dice?~
== MINSCJ ~Boo teme che se i suoi piccoli amici lo vedessero così nero scapperebbero dalla paura.~
= ~*Squeak!*~
= ~Senti com'è preoccupato?~
== TB#STIVJ ~Heh. A quanto pare sono il solo ad essere così entusiasta di queste nuove sembianze. Meglio così... Non ci saranno altri che avanzeranno la mia stessa richiesta a quella simpatica lucertola troppo cresciuta!~
EXIT

CHAIN 
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
CombatCounter(0)
Global("AnomenDecide","GLOBAL",4)
Global("tb#AnomenStivanSaerk","GLOBAL",0)
AreaCheck("AR1002")~ THEN TB#STIVJ stivanpretrial
~(Gasp!) Cos'è quest'ansia improvvisa? Perchè mi sento così agitato?~
DO ~SetGlobal("tb#AnomenStivanSaerk","GLOBAL",1)~
== ANOMENJ ~Immagino che il tuo animo sia in trepidante attesa che venga fatta giustizia, esattamente come il mio. Vieni; non perdiamo altro tempo in chiacchiere.~
== TB#STIVJ ~Forse... E' meglio che ti aspetti qui. Non ho più il controllo dei battiti del mio cuore, e tempo che potrebbe scoppiarmi se sentissi con le mie orecchie le parole di condanna del magistrato.~
= ~Ti aspetterò qui. Cercherò di tranquillizzarmi, e al tuo arrivo... Ascolterò ciò che hai da dire.~
== ANOMENJ ~Come vuoi. <CHARNAME>, andiamo.~
EXIT

CHAIN 
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
CombatCounter(0)
Global("KillSaerk","GLOBAL",1)
Global("tb#AnomenStivanSaerk","GLOBAL",1)
AreaCheck("AR1000")~ THEN TB#STIVJ stivanposttrial1
~*Ahem* Com'è andata, Anomen? Cosa ti ha detto il magistrato?~
DO ~SetGlobal("tb#AnomenStivanSaerk","GLOBAL",2)~
== ANOMENJ ~Questa corte non farà nulla per vendicare la morte di Moira.~
== TB#STIVJ ~Cosa?! Il magistrato non farà nulla? Lascerà Saerk impunito?~
== ANOMENJ ~No, non lo permetterò. La morte di Moira sarà vendicata!~
== TB#STIVJ ~(Snort!) Se le cose stanno così, allora abbatteremo Saerk a colpi di ferro e piume!~
== ANOMENJ ~<CHARNAME>, al Quartiere del Ponte, presto.~
EXIT

CHAIN 
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
CombatCounter(0)
Global("KillSaerk","GLOBAL",2)
Global("tb#AnomenStivanSaerk","GLOBAL",1)
AreaCheck("AR1000")~ THEN TB#STIVJ stivanposttrial2
~*Ahem* Com'è andata, Anomen? Cosa ti ha detto il magistrato?~
DO ~SetGlobal("tb#AnomenStivanSaerk","GLOBAL",2)~
== ANOMENJ ~Questa corte non farà nulla per vendicare la morte di Moira.~
== TB#STIVJ ~Cosa?! Il magistrato non farà nulla? Lascerà Saerk impunito?~
== ANOMENJ ~Non sappiamo con certezza se sia stato veramente lui. Potrebbe trattarsi di una fantasia di mio padre, generata dal rancore che serba per lui.~
== TB#STIVJ ~(Snort!) Sei impazzito? La prova della sua colpevolezza sta proprio nel fatto che *non* ci sono prove! E' tipico di Saerk premurarsi di non lasciare tracce che conducano a lui! L'ha fatto anche con me!~
== ANOMENJ ~Non... Non lascerò che il dolore della perdita di mia sorella offuschi la mia capacità di giudizio. Una simile vendetta, basata su supposizioni, è contro i dettami dell'Ordine, ed io non la perseguirò.~
== TB#STIVJ ~Tu... Tu mi hai mentito! Avevi detto che avremmo punito quell'infame, e invece ti sei tirato indietro!~
== ANOMENJ ~Basta! Ho preso la mia decisione e non cederò ai ripensamenti! I tuoi trascorsi con quell'uomo non mi riguardano!~
== TB#STIVJ ~(Urla) Tu sia maledetto, Anomen! Hai appena negato una giusta vendetta per il tuo capriccio personale! Non ti perdonerò mai per questo!~
== ANOMENJ ~Non so che farmene dei tuoi schiamazzi, halfling. Ora vattene, prima che perda la pazienza!~
== TB#STIVJ ~(Snort!) E va bene, Anomen. Se è questo che vuoi, me ne andrò. Vedere la tua faccia da schiaffi mi fa impazzire dalla rabbia!~
END
IF ~~ THEN REPLY ~Stai commettendo un grosso errore, Stivan. Il responsabile delle vostre tragedie è il medesimo, ma i risvolti sono diversi. Se Anomen vendicasse la morte di sua sorella con l'omicidio, si macchierebbe di un reato imperdonabile per l'Ordine. Tu non avresti un simile problema.~ EXTERN TB#STIVJ StivanSaysFarewell
IF ~~ THEN REPLY ~Calmati, Stivan. La situazione è complicata, ma non risolverai nulla nè andandotene nè invocando vendetta.~ EXTERN TB#STIVJ StivanSaysFarewell
IF ~~ THEN REPLY ~Cerca di essere ragionevole, Stivan. Un tuo problema non può condizionare il problema di un altro. Devono essere ben distinti. Anomen non può vendicare un torto che non gli appartiene perchè altrimenti le conseguenze ricadrebbero su di lui.~ EXTERN TB#STIVJ StivanSaysFarewell

APPEND TB#STIVJ 

IF ~~ THEN StivanSaysFarewell
SAY ~E a me? A me non pensi?~
= ~*SOB*! Mia mamma diceva sempre che è impossibile non piangere quando si grida all'ingiustizia, e aveva ragione! Tu lo appoggi nella sua decisione, e questo mi ferisce ancor più del suo rifiuto di aiutarmi!~
= ~Il mio viaggio al tuo fianco termina qui, <CHARNAME>. Credevo che fossi mio amico, ma dalle tue parole capisco che mi sbagliavo. Addio!~
IF ~~ THEN DO ~SetGlobal("tb#StivanJoined","GLOBAL",0) LeaveParty() EscapeArea()~ EXIT
END
END

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
AreaType(OUTDOOR)
Dead("cefald01")
Global("tb#StivanCernd","GLOBAL",0)~ THEN CERNDJ stivancernd1
~Come un insidioso manto di nubi oscure si allontana dopo la tempesta, così la minaccia di Faldorn è stata scongiurata per sempre.~
= ~Ciò nonostante, pare che la Natura sia ingiustamente accusata di un altro crimine. Dico bene, Stivan?~
DO ~SetGlobal("tb#StivanCernd","GLOBAL",1)~
== TB#STIVJ ~Cos'è questo, un tentativo di socializzazione? Spiacente, ma non ho la benchè minima intenzione di sprecare fiato con te.~
= ~Aspetta un momento... Come fai a sapere il mio nome?~
== CERNDJ ~Non ha importanza. In qualità di druido, è mio dovere intervenire per ripristinare l'Equilibrio e aprire i tuoi occhi alla luce della verità. Lungo il nostro cammino crescerai, e insieme daremo senso e significato alle tue tragedie.~
== TB#STIVJ ~(Snort!) Non c'è bisogno di ricorrere a simili espedienti verbali per darmi dell'immaturo! Non sono uno stupido, e so riconoscere un insulto!~
== CERNDJ ~Ogni creazione della Madre è o è stata immatura. Esistono germogli che non giungono a fiorire? O alberi che non fruttificano?~
== TB#STIVJ ~Chiudi la bocca, druido! Stà zitto!!~
== CERNDJ ~Presto inizieremo il nostro percorso. Molto presto.~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("CerndBeggar","GLOBAL",2)
Global("tb#StivanCernd","GLOBAL",1)~ THEN TB#STIVJ stivancernd2
~Heh. Pare che le nubi siano tornate, druido, ma questa volta per addensarsi sulla tua testa. Sbaglio o la patata bollente che hai tra le mani ti impedirà di seccarmi per un pò con i tuoi stupidi discorsi?~
DO ~SetGlobal("tb#StivanCernd","GLOBAL",2)~
== CERNDJ ~Ti sbagli. Non posso permettere che la mia vita personale intralci i miei doveri di druido. Il nostro cammino comincia adesso.~
== TB#STIVJ ~Oh, no!~
== CERNDJ ~Esaminiamo l'avvenimento che ha segnato l'inizio del tuo astio nei confronti dei gabbiani. Ripercorriamo istante per istante ciò che ti successe anni fa, come se stessimo passando a setaccio i petali di un fiore.~
== TB#STIVJ ~(Snort!) Stai abusando della mia pazienza, tu! Chi diavolo credi di essere per esigere che ti racconti la storia dell'uccisione dei miei familiari?~
== CERNDJ ~Non scambiare per presunzione il mio tentativo di giungere alla verità. Al momento stai navigando nelle acque dell'ignoranza, ed è mio dovere fare in modo che i venti del destino spingano le tue vele verso il mare della conoscenza.~
== TB#STIVJ ~Ora capisco dove vuoi arrivare. Tu... Tu Stai mettendo in discussione la colpevolezza dei gabbiani!~
== CERNDJ ~Dei semplici uccelli marini non potrebbero mai macchiarsi di un crimine come l'uccisione di un'innocente famiglia. Non è nella loro natura.~
== TB#STIVJ ~Evidentemente quel giorno devono essere caduti in preda a degli istinti carnivori, dato che li ho visti pasteggiare con i resti dei miei familiari!~
== CERNDJ ~Esatto, Stivan. Tu sostieni di averli visti mentre si cibavano, non mentre uccidevano i tuoi genitori e i tuoi fratelli.~
== TB#STIVJ ~...~
= ~... Non cercare di ingannarmi con subdoli giri di parole. Sono stati i gabbiani ad ucciderli e a profanare i loro corpi! Sono stati loro!~
== CERNDJ ~Il seme del dubbio è stato gettato, e a tempo debito metterà radici.~
EXIT


CHAIN 
IF ~InParty("tb#stiv")
See("tb#stiv")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanCernd","GLOBAL",2)
GlobalGT("Chapter","GLOBAL",2)~ THEN CERNDJ stivancernd3
~Il dubbio è dipinto sul tuo volto, Stivan.~
DO ~SetGlobal("tb#StivanCernd","GLOBAL",3)~
== TB#STIVJ ~Immagino di dover ringraziare te per questo.~
== CERNDJ ~Non posso evitare che gli uccelli dell'ansia e della preoccupazione volino sulla tua testa, ma farò il possibile perchè non vi cotruiscano un nido di paure.~
== TB#STIVJ ~Questa potevi anche risparmiartela!~
== CERNDJ ~In realtà credo che ritragga con precisione il tuo stato d'animo. Sei atterrito dalla possibilità che le creature della Madre possano non essere responsabili della scomparsa dei tuoi familiari, e questo ti spaventa.~
== TB#STIVJ ~(Snort!) Se non sono stati i gabbiani ad uccidere i miei familiari, allora chi ha posto fine alla loro vita? Soprattutto, *perchè*?~
== CERNDJ ~Ecco dove volevo arrivare, Stivan. La prima tappa del nostro percorso è stata infine raggiunta.~
== TB#STIVJ ~Potrei sapere qual è lo scopo di questa conversazione delirante, a parte quello di confondermi le idee?~
== CERNDJ ~Hai appena capito che dietro ad ogni cosa si dispiega sempre un ventaglio di possibilità. Ti sei interrogato su una verità che ti appariva sicura, l'hai messa in discussione e sei giunto ad una conclusione che al momento non ti offre risposte.~
= ~Il sentiero verso la seconda tappa è aperto.~
EXIT

CHAIN 
IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanCernd","GLOBAL",3)
GlobalGT("AsylumPlot","GLOBAL",1)~ THEN TB#STIVJ stivancerd4
~(Gasp!) Questo posto... E' una colonia del nemico pennuto!~
DO ~SetGlobal("tb#StivanCernd","GLOBAL",4)~
== CERNDJ ~I gabbiani nidificano in ambienti marini quali scogliere, isole e coste, pertanto è comprensibile che qui siano numerosi.~
== TB#STIVJ ~Hanno uno sguardo feroce!~
== CERNDJ ~A dire il vero, i gabbiani di Athkatla sono molto più aggressivi, e non occorre faticare tanto per capire il perchè. Il progressivo inurbamento dei Moli ha violato il loro habitat, tant'è che i loro nidi sono comparsi addirittura sopra i tetti di alcune abitazioni dell'entroterra.~
== TB#STIVJ ~Sono di tutti i tipi!~
== CERNDJ ~E' vero. Quello è un gabbiano corallino, noto per la facilità con cui si insedia sulle scogliere più insidiose. Vedi quell'altro? E' un gabbiano roseo, facilmente avvistabile in ambienti ad altà salinità.~
= ~E per finire...~
= ~Quello che si è appena appoggiato sulla mia spalla è un comune esemplare di gabbiano. Vuoi chiedergli qualcosa?~
== TB#STIVJ ~Sei impazzito, Cernd?~
== CERNDJ ~Coraggio; vi farò da tramite.~
== TB#STIVJ ~Beh... Ecco, io... Non saprei...~
== CERNDJ ~Una domanda qualsiasi andrà bene.~
== TB#STIVJ ~D'accordo, d'accordo.~
= ~*Ahem* Sei un maschio... Oppure una femmina?~
== CERNDJ ~E' un maschio. E' in attesa che le uova della sua compagna si schiudano.~
= ~Avanti, guardalo più da vicino.~
== TB#STIVJ ~Stai scherzando? Mi perforerà la faccia!~
== CERNDJ ~Non lo farà, Stivan. Non ha motivo di esserti ostile.~
== TB#STIVJ ~...~
= ~Heh. Tutto sommato... Ha una faccia simpatica.~
END
IF ~~ THEN REPLY ~Prego, continuate pure. In fin dei conti, ho soltanto un'amica da salvare e uno stregone da ammazzare, ma che importa?~ EXTERN TB#STIVJ StivanCernd1-1
IF ~~ THEN REPLY ~Stivan, sei sicuro di stare bene?~ EXTERN TB#STIVJ StivanCernd1-1
IF ~~ THEN REPLY ~Stento a crederci, Cernd. Sei riuscito a placare il suo odio per i gabbiani!~ EXTERN TB#STIVJ StivanCernd1-1
IF ~~ THEN REPLY ~"E fu così che l'halfling depose il suo odio per il nemico pennuto". Potrei scriverci un romanzo, eh?~ EXTERN TB#STIVJ StivanCernd1-1

CHAIN IF ~~ THEN tb#stivj StivanCernd1-1
~Co...~
= ~Cosa diavolo sta succedendo? Cosa ci fa quest'uccellaccio ad un palmo dal mio naso? Via, via!~
== CERNDJ ~No!~
== TB#STIVJ ~(Gasp!) Stavo per essere assoggettato al nemico pennuto!~
= ~I gabbiani! Ci hanno circondati! All'attacco!!~
== CERNDJ ~(Sospira) <CHARNAME>, tu... Tu hai appena vanificato tutti i miei sforzi. So bene che non era tua intenzione e non voglio fartene una colpa, ma ti pregherei di non interferire più in futuro.~
== CERNDJ IF ~OR(2) Class(Player1,DRUID_ALL) Class(Player1,RANGER_ALL)~ THEN ~In qualità di servo della Natura, mi aspetto che tu capisca quanto sia importante difendere queste creature dal rancore esacerbante di Stivan. Se il nostro percorso procederà senza intoppi, presto anche lui verrà educato all'Equilibrio.~
== CERNDJ IF ~!Class(Player1,DRUID_ALL) !Class(Player1,RANGER_ALL)~ THEN ~Non sei un servo della Natura, pertanto non mi aspetto che tu capisca quanto sia importante difendere queste creature dal rancore esacerbante di Stivan. Ad ogni modo, se il nostro percorso procederà senza intoppi, presto verrà educato all'Equilibrio e al rispetto delle creature della Madre, com'è giusto che sia.~
EXIT

CHAIN IF ~InParty("cernd")
See("Cernd")
!StateCheck("cernd",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanCernd","GLOBAL",4)
GlobalGT("SolaufeinJob","GLOBAL",7)
PartyHasItem("misc9w")
Dead("udsola01")
~ THEN TB#STIVJ killedSola
~Non posso credere che tu abbia ucciso l'unico drow amichevole in questo posto!~
== CERNDJ ~I gabbiani che uccidi sono ugualmente amichevoli, e alle mie orecchie giungono grida simili ogni volta che ne uccidi uno.~
EXTERN TB#STIVJ postSola

CHAIN IF ~InParty("cernd")
See("cernd")
!StateCheck("cernd",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanCernd","GLOBAL",4)
Global("SolaufeinJob","GLOBAL",9)
!Dead("udsola01")
~ THEN TB#STIVJ savedSola
~Mi stava simpatico. Grazie, CHARNAME, di averlo risparmiato nonostante il rischio che correvi.~
== CERNDJ ~Cosi' come CHARNAME ha risparmiato una vita correndo un rischio cosi' grave, non dovresti allo stesso modo risparmiare le vite dei gabbiani?~
EXTERN TB#STIVJ postSola

CHAIN IF ~InParty("cernd")
See("cernd")
!StateCheck("cernd",CD_STATE_NOTVALID)
Global("tb#StivanCernd","GLOBAL",4)
AreaCheck("ar2401")~ THEN TB#STIVJ noSola
~Non vedo l'ora di tornare alla superficie! Prepara il fuoco, <CHARNAME>, stasera vado a caccia e poi stufato di gabbiano per tutti!~
== CERNDJ ~E' nella natura dell'uomo uccidere per nutrirsi. Tuttavia, dubito che quello sia il vero scopo delle tue uccisioni.~
EXTERN TB#STIVJ postSola

CHAIN IF ~~ THEN TB#STIVJ postSola
~Fatti gli affari tuoi, Cernd!~
== CERNDJ ~La Natura e' affare mio, cosi' come e' insegnarne il rispetto.~
= ~E' ora di riprendere il nostro cammino.~
DO ~SetGlobal("tb#StivanCernd","GLOBAL",5)~
== TB#STIVJ ~No, non lo e'!~
== CERNDJ ~Dimmi, Stivan, quando sono morti i tuoi genitori?~
== TB#STIVJ ~Morirono otto anni fa, e lo ricordo come se fosse ieri!~
== CERNDJ ~E chi li ha uccisi?~
== TB#STIVJ ~Ma che domande fai? Fu uno stormo di gabbiani, e lo sai meglio di me!~
== CERNDJ ~Ammettiamo anche che cio' sia vero - ebbene, sappi che i gabbiani non vivono mai piu' di tre anni.~
= ~Anche se tu uccidessi tutti i gabbiani che vivono oggi, non ucciderai mai quelli che tu ritieni abbiano ucciso i tuoi genitori.~
== TB#STIVJ ~Io...~
== CERNDJ ~Di' quello che pensi, anche se temi di dirlo.~
== TB#STIVJ ~Io mi vendichero' uccidendo i loro figli! E i figli dei loro figli! E...~
== CERNDJ ~Come le radici di una pianta divorano la piu' dura delle rocce con la sola forza della pazienza, cosi' i miei insegnamenti divoreranno il tuo odio. Abbiamo seminato abbastanza per oggi.~
EXIT

CHAIN IF ~InParty("tb#stiv")
See("tb#stiv")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanCernd","GLOBAL",5)
Global("Chapter","GLOBAL",6)
AreaType(OUTDOOR)
!AreaCheck("AR2500")
!AreaCheck("AR2601")
~ THEN CERNDJ StivanCernd6
~E' ora di riprendere il nostro cammino.~
= ~Il tuo primo dialogo con un gabbiano e' stato bruscamente interrotto.~
= ~...~
= ~Ecco, questo e' un gabbiano dalla testa rosa, noto per legarsi per tutta la vita ai suoi parenti - legami piu' saldi di quelli tra parenti umani. Hai qualche domanda da porgli, Stivan?~
DO ~SetGlobal("tb#StivanCernd","GLOBAL",6)~
== TB#STIVJ ~Ecco, io...~
== CERNDJ ~Non esitare, Stivan. Solo parlando col tuo nemico potrai conoscerlo e terminare il tuo conflitto.~
== TB#STIVJ ~(Snort!) Lo faccio a condizione che dopo tu chiuda la bocca una volta per tutte.~ 
= ~Allora... Tu sei un maschio o una femmina?~
== CERNDJ ~E' una femmina. Ha appena lasciato i cuccioli sotto la cura del maschio ed e' andata in cerca di cibo.~
== TB#STIVJ ~Ah si'? E dove lo cerchi, uccidendo i bambini nelle culle? O preferisci attaccare gli uomini adulti?~
= ~...~
= ~Perche' scappa? Si vergogna delle sue colpe?~
== CERNDJ ~(sigh) Ha detto che non puo' cercare cibo vicino a dove abitano gli uomini, a causa del Cacciatore. Ti deve aver riconosciuto.~
== TB#STIVJ ~Yeah! Allora la mia reputazione si sta diffondendo! Presto Atkhatla sara' libera dalla minaccia!~
== CERNDJ ~Come l'ora piu' scura e' quella che precede l'alba, cosi' l'odio e' piu' profondo prima della riconciliazione. Il nostro percorso sta per terminare.~
EXIT

CHAIN IF ~InParty("cernd")
See("cernd")
!StateCheck("cernd",CD_STATE_NOTVALID)
!StateCheck("Stivan",CD_STATE_NOTVALID)
Global("tb#StivanCernd","GLOBAL",7)
AreaType(OUTDOOR)
RealGlobalTimerExpired("tb#StivanCerndTimer","global")~ THEN TB#STIVJ StivanCernd7
~Cernd, potresti attirare un'altro gabbiano? Ora so che cosa dirgli.~
DO ~SetGlobal("tb#StivanCernd","GLOBAL",8)~
== CERNDJ ~Vedo che i nostri semi stanno germogliando. Soddisfero' subito la tua richiesta.~
= ~...~
= ~Ecco. Questo gabbiano dalla coda nera ha fatto un viaggio estremamente lungo nella sua vita - e' solito nidificare nelle remote terre di Halruaa. E' estremamente longevo, vi sono esemplari che raggiungono i cinquanta anni.~
== TB#STIVJ ~...~
= ~Mi hai mentito! Quando mi avevi detto che i gabbiani non vivono mai piu' di tre anni, mi hai mentito!~
= ~Potrebbe essere stato lui ad aver attaccato i miei genitori!~
== CERNDJ ~La menzogna non e' un atto malvagio se e' commesso a fin di bene.~
== TB#STIVJ ~Taci! Non ti voglio sentire!~
== CERNDJ ~Come la Natura perdona il leone per le sue uccisioni, così possa la Grande Madre perdonare me per questo inammissibile errore. Spero che i semi piantati fin'ora siano piu' forti di questo sbaglio.~
EXIT

CHAIN IF ~InParty("cernd")
See("cernd")
!StateCheck("cernd",CD_STATE_NOTVALID)
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
Global("tb#StivanCernd","GLOBAL",8)
PartyHasItem("miscb2")~ THEN TB#STIVJ StivanCernd8
~Cernd, scusami per averti attaccato. Se hai mentito, lo hai fatto solo a fin di bene.~
== CERNDJ ~Ti ringrazio per la tua comprensione.~
= ~Ora dim---~
== TB#STIVJ ~*splash*~
= ~In faccia me l'hai fatta, uccellaccio? Allora volete la guerra! Vieni qui che ti spenno, tu e il tuo amico!~
== CERNDJ ~Come una mattina di gelo non uccide il germoglio sano, cosi' i tuoi germogli di pieta' non verranno uccisi da questo incidente. La fioritura e' ormai prossima.~
EXIT

CHAIN 
IF ~InParty("Stivan")
See("Stivan")
!StateCheck("Stivan",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanCernd","GLOBAL",9)
Global("tb#StivanSawHell","GLOBAL",1)
AreaCheck("AR2900")~ THEN CERNDJ stivanCernd9
~Sei pronto, Stivan? Stiamo per raggiungere l’ultima tappa del nostro lungo percorso. Non avrei mai immaginato che avresti tratto le tue ultime considerazioni qui, all’Inferno, ma se tale è il volere del destino, io non mi opporrò.~
DO ~SetGlobal("tb#StivanCernd","GLOBAL",8)~
== TB#STIVJ ~Dobbiamo proprio, Cernd? Questo posto... Mi mette i brividi.~
== CERNDJ ~Come <CHARNAME> sta affrontando delle prove che lo porteranno ad interrogarsi su se stesso e sul suo ruolo, così è di fondamentale importanza che tu faccia altrettanto.~
= ~Ripercorriamo un’ultima volta le considerazioni maturate nel corso del nostro cammino.~
= ~Dimmi, Stivan: hai idea di chi abbia posto fine alla vita dei tuoi familiari?~
== TB#STIVJ ~*Ahem* No.~
== CERNDJ ~Non erano forse i gabbiani?~
== TB#STIVJ ~Non sono stati loro, Cernd. Questo ormai l’ho capito.~
== CERNDJ ~E lascerai irrisolto il mistero della loro morte?~
== TB#STIVJ ~Probabilmente non saprò mai chi è il responsabile della loro morte, ma non posso restare ancorato al passato. Ho trascurato fin troppo il presente, e ho capito che è il momento di guardare al futuro. Me ne sono reso conto quando ho riposto le ceneri dei miei familiari nella cripta.~
== CERNDJ ~Cosa ti attende ora?~
== TB#STIVJ ~Heh. Questa è una bella domanda.~
== CERNDJ ~Non mi basta come risposta.~
== TB#STIVJ ~Cernd, siamo all'Inferno. Devo ancora capire se son vivo o morto!~
== CERNDJ ~Immagina un domani in cui i rami degli alberi ti accarezzano con le loro verdi foglie; un domani in cui la primavera scrive nell'umidità il delirante alfabeto del tempo che ritorna, mentre l'alba fa spuntare primule e tulipani attorno a te. Riesci a vederti in uno scenario come questo?~
== TB#STIVJ ~Probabilmente all'inizio starnutirò tutto il tempo, ma quando mi ci sarò abituato potrei trovarmi a mio agio.~
== CERNDJ ~Un’ultima domanda. ~
== TB#STIVJ ~Mi fa male la testa, Cernd. Non sono abituato a pensare così tanto.~
== CERNDJ ~Abbiamo quasi terminato. Cosa ne pensi della vita?~
== TB#STIVJ ~Heh. Questa è difficile. Un'aiutino?~
== CERNDJ ~Tua è la risposta.~
== TB#STIVJ ~Beh, ecco… Sino a poco tempo fa, ti avrei detto che è il più aspro dei campi di battaglia; adesso, invece, considero la vita come un palcoscenico dove ciascuno deve recitare la sua parte.~
== CERNDJ ~E tu sei intenzionato a prendere tra le mani un copione?~
== TB#STIVJ ~Penso di sì.~
== CERNDJ ~Molto bene, Stivan. Non c'è altro da aggiungere. La meta del nostro cammino è stata infine raggiunta. Possano la saggezza della Madre, Chauntea, e del Padre, Silvanus, accompagnarti verso ciò che ti attende.~
== TB#STIVJ ~...~
= ~... Posso dirti una cosa, Cernd?~
== CERNDJ ~Certamente.~
== TB#STIVJ ~I tuoi capelli sono più lunghi delle liane. Posso dargli un'accorciata?~
== CERNDJ ~Prima dovremmo aiutare <CHARNAME> a recuperare le Lacrime di Bhaal e la sua anima. Poi... Vedremo.~
== TB#STIVJ ~Yeah!~
DO ~ApplySpellRES("tb#scg","tb#stiv") ChangeAlignment("tb#stiv",CHAOTIC_GOOD) StartCutscene("tb#sfix2")~
EXIT

CHAIN
IF ~InParty("tb#stiv")
InParty(Player1)
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0)
OR(2)
	AreaCheck("AR0509")
	AreaCheck("AR0522")
Global("tb#StivanPCTalk","GLOBAL",1)~ THEN TB#STIVJ inAR0509
~Eccoci! Era da un pezzo che non mettevo i miei piedini pelosi in questo posto. Samuel, l'halfling di cui ti parlavo, è lì al bancone. Andiamo a salutarlo.~
DO ~SetGlobal("tb#StivanPCTalk","GLOBAL",2)~
EXIT

CHAIN
IF WEIGHT #-1 ~InParty("tb#stiv")
InParty(Player1)
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanPCTalk","GLOBAL",2)~ THEN FFBART StivanSamuel1
~Salve, miei buon amici, e benv... Stivan! E' da un pezzo che non ti vedevo! Mi stavo proprio chiedendo che fine avessi fatto.~
DO ~SetGlobal("tb#StivanPCTalk","GLOBAL",3)~
== TB#STIVJ ~Ehilà, Samuel! Scusami se non passo a salutarti con la stessa frequenza di prima, ma adesso viaggio con una compagnia di avventurieri e siamo sempre impegnati in qualche impresa eroica da una parte o dall'altra.~
== FFBART ~Oho! Questa è una buona notizia! Finalmente Tymora ti sorride!~
END
IF ~Global("InteractMazzy","LOCALS",1)~ THEN EXTERN FFBART StivanSamuel1-1
IF ~!Global("InteractMazzy","LOCALS",1)~ THEN EXTERN FFBART StivanSamuel1-2

CHAIN 
IF ~~ THEN FFBART StivanSamuel1-1
~Ti avrei fatto dono degli stivali che indossavo ai tempi in cui erravo lungo la Costa della Spada, ma li ho già dati alla dolce Mazzy.~
BRANCH ~InParty("mazzy")~ BEGIN
== FFBART ~Mi raccomando, tratta bene la mia paladina preferita.~
== TB#STIVJ ~*Ahem* Certo, Samuel. Lei ed io andiamo d'amore e d'accordo.~
== FFBART ~Uhmm... C'è forse del tenero tra voi due?~
== TB#STIVJ ~Tra me e la venditrice di patate? Sei forse impazzito?~
== FFBART ~Se ti sentisse chiamarla in questo modo, Stivan, credo che te la vedresti brutta.~
== TB#STIVJ ~Heh. Cercherò di trattenermi, allora.~
== FFBART ~Se aspetti qualche istante, ho una sorpresa per te. Non scappare via!~
END
EXTERN TB#STIVJ StivanSamuel1-3

CHAIN 
IF ~~ THEN FFBART StivanSamuel1-2
~Se le cose stanno così, lasciami recuperare gli stivali che indossavo quando erravo lungo la Costa della Spada. Serviranno più a te che a me. Dunque, dove li ho messi...? Ah, eccoli qui. Tieni. Spero che ti vadano bene.~
DO ~GiveItemCreate("BOOT02",Player1,0,0,0)~
== TB#STIVJ ~Wow! Grazie, Samuel. Sei veramente gentile.~
= ~Ehi, mi calzano alla perfezione!~
== FFBART ~Non avevo dubbi. Se aspetti qualche istante, ho un'altra sorpresa per te. Non scappare via!~
EXTERN TB#STIVJ StivanSamuel1-3

APPEND TB#STIVJ
IF ~~ THEN StivanSamuel1-3
SAY ~D'accordo, ti aspettiamo.~
= ~Hai visto quant'è gentile, <CHARNAME>? Mi ha aiutato molto dopo la morte dei miei genitori e dei miei fratelli.~
IF ~GlobalGT("AnomenDecide","GLOBAL",0)~ THEN REPLY ~L'alta considerazione che hai di lui è palese.~ EXTERN TB#STIVJ StivanSamuel1-5
IF ~Global("AnomenDecide","GLOBAL",0)~ THEN REPLY ~L'alta considerazione che hai di lui è palese.~ EXTERN TB#STIVJ StivanSamuel1-6
IF ~!Race(Player1,HALFLING) GlobalGT("AnomenDecide","GLOBAL",0)~ THEN REPLY ~Avevo sentito dire che tra gli halfling c'è grande solidarietà, e ne ho appena avuto conferma.~ EXTERN TB#STIVJ StivanSamuel1-5
IF ~!Race(Player1,HALFLING) Global("AnomenDecide","GLOBAL",0)~ THEN REPLY ~Avevo sentito dire che tra gli halfling c'è grande solidarietà, e ne ho appena avuto conferma.~ EXTERN TB#STIVJ StivanSamuel1-6
IF ~~ THEN REPLY ~Che sorpresa pensi abbia in mente?~ EXTERN TB#STIVJ StivanSamuel1-4
IF ~GlobalGT("AnomenDecide","GLOBAL",0)~ THEN REPLY ~In che modo ti ha aiutato?~ EXTERN TB#STIVJ StivanSamuel1-5
IF ~Global("AnomenDecide","GLOBAL",0)~ THEN REPLY ~In che modo ti ha aiutato?~ EXTERN TB#STIVJ StivanSamuel1-6
END

IF ~~ THEN StivanSamuel1-4
SAY ~Boh. Non ci resta che aspettare e vedere.~
IF ~GlobalGT("AnomenDecide","GLOBAL",0)~ THEN EXTERN TB#STIVJ StivanSamuel1-5
IF ~Global("AnomenDecide","GLOBAL",0)~ THEN EXTERN TB#STIVJ StivanSamuel1-6
END

IF ~~ THEN StivanSamuel1-5
SAY ~Questo caro amico di famiglia fu il solo ad offirmi una spalla su cui appoggiarmi dopo che quel bruttone di Saerk ebbe commesso le schifezze che ti ho già raccontato.~
IF ~~ THEN EXTERN TB#STIVJ StivanSamuel1-7
END

IF ~~ THEN StivanSamuel1-6
SAY ~Quando i miei genitori e i miei fratelli vennero uccisi dai gabbiani, chiesi subito aiuto al socio in affari di mio padre. Non avevo la benchè minima idea di come gestire la mia eredità, ma pensavo che lui più di tutti mi avrebbe potuto dare una mano.~
= ~Fu un errore fatale. Quel maledetto riuscì ad impossessarsi degli atti di proprietà della mia famiglia, e fece realizzare dei falsi secondo cui le mie terre appartenevano in realtà ai Farrahd da generazioni.~
= ~Persi tutto. I vigneti, la fattoria. E infine, anche la casa.~
IF ~~ THEN EXTERN TB#STIVJ StivanSamuel1-7
END

IF ~~ THEN StivanSamuel1-7
SAY ~Samuel mi offrì alloggio qui, alla Locanda dei Cinque Boccali, ma quando iniziai la mia giusta campagna contro i gabbiani dovetti andarmene. Pare che alcuni clienti non ne apprezzassero la visione, ed io non volevo certo rovinargli gli affari, soprattutto dopo tutto quello che aveva fatto per me.~
IF ~~ THEN REPLY ~Questo spiega tutto. Si vede che è una brava persona.~ EXTERN FFBART StivanSamuel1-10
IF ~~ THEN REPLY ~Sarebbe stato più saggio rivolgersi a lui anzichè al socio di tuo padre, non credi?~ EXTERN TB#STIVJ StivanSamuel1-8
IF ~~ THEN REPLY ~Non avresti potuto smettere di ammazzare quei poveri uccelli? Almeno in questo modo avresti avuto un tetto sotto la testa.~ EXTERN TB#STIVJ StivanSamuel1-9
END

IF ~~ THEN StivanSamuel1-8
SAY ~(Snort!) E' facile giudicare a posteriori, <CHARNAME>! Non c'era nulla che mi inducesse a pensare che sarebbe successo quello che è successo!~
IF ~~ THEN EXTERN FFBART StivanSamuel1-10
END

IF ~~ THEN StivanSamuel1-9
SAY ~Heh. Ti adoro quando fai lo spiritoso.~
IF ~~ THEN EXTERN FFBART StivanSamuel1-10
END
END

CHAIN 
IF ~~ THEN FFBART StivanSamuel1-10
~Eccomi di ritorno - scusatemi per avervi fatto attendere!~
== TB#STIVJ ~Ma quello... Quello è...~
== FFBART ~Sì! E' uno degli ultimi fiaschi di vino prodotto dalla tua famiglia. Li conservo come se fossero i più preziosi tra i tesori, ma direi che è il caso di gustarne uno per festeggiare la tua nuova vita da avventuriero!~
== TB#STIVJ ~(Sniff) Grazie, Samuel. Sono commosso...~
== FFBART ~Oh, non piangere. Sarebbe un peccato se le tue lacrime salate finissero in un buon bicchiere di vino. Ecco, prendete; uno per te, ed uno per il tuo amico.~
== TB#STIVJ ~Coraggio, <CHARNAME>, bevine un sorso. Sono sicuro che ti piacerà!~
END
IF ~~ THEN REPLY ~Ehm... Veramente sono astemio...~ EXTERN TB#STIVJ StivanSamuel1-11
IF ~~ THEN REPLY ~Ti ringrazio, ma il vino proprio non mi piace.~ EXTERN TB#STIVJ StivanSamuel1-11
IF ~~ THEN REPLY ~Io adoro il vino, soprattutto quello rosso. Stivan, Samuel, alla salute!~ EXTERN TB#STIVJ StivanSamuel1-12

CHAIN
IF ~~ THEN tb#stivj StivanSamuel1-11
~Davvero? Che peccato. Allora brinderemo solo Samuel ed io. Alla salute, amico!~
== FFBART ~Alla salute!~
EXTERN TB#STIVJ StivanSamuel1-12

CHAIN
IF ~~ THEN TB#STIVJ StivanSamuel1-12
~Yeah!~
== FFBART ~Semplicemente divino!~
EXTERN FFWENCH StivanSamuel1-13

CHAIN
IF ~~ THEN FFWENCH StivanSamuel1-13
~Samuel, vuoi darti una mossa o no?! Per quale motivo te ne stai lì a chiacchierare quando io mi ammazzo di lavoro tra un tavolo e l'altro?~
== FFBART ~Ehm... Il dovere mi chiama, amici. Adesso devo proprio lasciarvi, ma tornate a trovarmi presto!~
== TB#STIVJ ~Puoi contarci, Samuel! Grazie di tutto e stammi bene!~
= ~...~
= ~... Grazie anche a te, <CHARNAME>. Questa sosta mi ha decisamente ringalluzzito, e ora mi sento pronto a tornare all'avventura con le gote belle rosse. Heh.~
EXIT


///////////////////////////////////////////
// Drow encounters
///////////////////////////////////////////

CHAIN
IF WEIGHT #0 ~InParty("tb#stiv") InParty("Viconia") !StateCheck("tb#stiv",CD_STATE_NOTVALID) !StateCheck("viconia",CD_STATE_NOTVALID) Global("tb#sdr1","GLOBAL",0)~ THEN TB#SDR1 StivanDrow1
~Seguimi, maschio. Appagherai i miei desideri sino a quando ne avrò voglia!~
DO ~SetGlobal("tb#sdr1","GLOBAL",1)~
== TB#STIVJ ~(Arrossisce) Mia mamma diceva sempre che certe cose si fanno solo da sposati...~
== TB#SDR1 ~Cosa diavolo stai blaterando?~
== VICONIJ ~Lui appartiene a me, femmina. Fatti da parte, o assaggerai la mia ira.~
== TB#SDR1 ~Perdonami, sorella. Non sapevo fosse di tua proprietà.~
== TB#STIVJ ~...~
= ~... Quella donna voleva appropriarsi della mia innocenza!~
== VICONIJ ~E' proprio per questo che sono intervenuta. *LE* ho risparmiato un fato invero terribile.~
EXIT

CHAIN
IF WEIGHT #0 ~InParty("tb#stiv") InParty("jaheira") !StateCheck("tb#stiv",CD_STATE_NOTVALID) !StateCheck("jaheira",CD_STATE_NOTVALID) Global("tb#sdr2","GLOBAL",0)~ THEN TB#SDR2 StivanDrow2
~Abbassa il tuo sguardo al mio cospetto, maschio!~
DO ~SetGlobal("tb#sdr2","GLOBAL",1)~
== TB#STIVJ ~Se abbasso la testa, come faccio a vedere dove vado?~
== TB#SDR2 ~Osi contraddirmi?! Le Ancelle della Regina dei Ragni ti strapperanno il cuore per questo affronto!~
== JAHEIRAJ ~Non c'è bisogno di scomodarle. Punirò io questo insolente.~
== TB#SDR2 ~Lascio a te il piacere, femmina. Possano i tentacoli della tua verga affondare nella carne di quel verme!~
== TB#STIVJ ~...~
= ~... Me la sono vista brutta. Grazie, Jaheria.~
== JAHEIRAJ ~Presta attenzione a ciò che dici e a come ti comporti, Stivan. In futuro potrei non riuscire ad aiutarti.~
EXIT

CHAIN
IF WEIGHT #0 ~InParty("tb#stiv") InParty("anomen") !StateCheck("tb#stiv",CD_STATE_NOTVALID) !StateCheck("anomen",CD_STATE_NOTVALID) Global("tb#sdr3","GLOBAL",0)~ THEN TB#SDR2 StivanDrow3
~Tu, laggiù. Sembri dotato, per essere un maschio di Ched Nasad. Avanti, seguimi nei miei alloggi.~
DO ~SetGlobal("tb#sdr3","GLOBAL",1)~
== ANOMENJ ~Io, ah... Devo svolgere dei compiti per la Matrona. Compiti di fondamentale importanza.~
== TB#SDR3 ~Non abusare della mia pazienza, miserabile! Ti aspetterò presso la Società delle Femmine Guerriere, e farai bene a non tardare!~
== ANOMENJ ~Sì, mia signora. Sarò da voi... non appena possibile.~
== TB#SDR3 ~Cos... Chi ha osato lanciarmi in faccia una simile schifezza? Chi?! Se trovo il responsabile di questo affronto lo getterò nella Fossa dei Ragni!~
== TB#STIVJ ~Heh. La cacca di gabbiano non perdona.~
EXIT
