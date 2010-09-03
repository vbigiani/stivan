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
