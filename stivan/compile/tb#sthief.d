/* Variables:

tb#ShadowsThievesJobs: tracks the quests.
  1: had the banter about hopes for the future.
  2: Initial talk with to Mitsu.
  3: Trying to steal Missy's pin.
  4: Stole (and reported) Missy's pin.
  5: Sent to Vulova's.
  100: quest failed, Stivan is angry.
  101: quest failed, Stivan is understanding.

*/

CHAIN IF WEIGHT #-1 ~IsValidForPartyDialog("tb#stiv") Global("tb#ShadowsThievesJobs","GLOBAL",1)~ THEN arnman04 stivanMitsu1
~Cosa?! Da quando c'è un altro halfling tra i Ladri Tenebrosi?~
== arnman03 ~Sono i tizi mandati da Gaelan, Mitsu. Il capo dice di trattarli bene.~
== arnman04 ~Come ti chiami, maschietto?~
== tb#stivj ~Stivan il Cacciatore. E tu chi saresti?~
== arnman04 ~Il mio nome non è affar tuo. Ti basti sapere che mi sono affermata come la migliore ed unica halfling veramente capace di questa gilda. Sottolineo "l'unica".~
== tb#stivj ~*Ahem* Temo che presto non sarai più la sola, visto che sono altrettanto determinato a farmi strada nella vostra organizzazione.~
== arnman03 ~Però! Il bambino ha le idee chiare. Mi sa che ti darà del filo da torcere.~
== arnman04 ~Non penso proprio! Và a parlare con Aran di qualunque affare vi dobbiate occupare, dopodichè torna da me. Se vuoi veramente trovare il tuo posto tra i Ladri Tenebrosi, dovrai farti le ossa come dico *io*.~
DO ~SetGlobal("tb#ShadowsThievesJobs","GLOBAL",2)~
EXIT

CHAIN IF WEIGHT #-1 ~IsValidForPartyDialog("tb#stiv") Global("tb#ShadowsThievesJobs","GLOBAL",2) GlobalGT("aranjob","GLOBAL",0)~ THEN arnman04 stivanMitsu2
~Eccoti qui, ragazzino. Sei ancora sicuro di voler iniziare il tuo apprendistato sotto la guida dell'inafferrabile Mitsu?~
== arnman03 ~Ci provi fino all'ultimo, eh?~
== arnman04 ~Beh, tentar non nuoce.~
== tb#stivj ~Direi proprio di sì. Grazie a <CHARNAME> ho acquisito un pò di fiducia in me stesso e nelle mie capacità, e penso di avere la stoffa per diventare un buon Ladro Tenebroso. Magari addirittura più di te.~
== arnman03 ~Ben detto!~
== arnman04 ~E' inutile che ti riscaldi. Tante reclute hanno iniziato con la tua boria per poi rimanere nei bassi ranghi della gilda per il resto della loro vita. Prendi Cuchul, ad esempio.~
== arnman03 ~Ehm... Non stare ad ascoltarla, amico. Ogni tanto farnetica.~
== arnman04 ~Direi di cominciare con il nostro rito d'iniziazione.~
= ~Qui nella gilda c'è un'adetta alla sorveglianza delle nostre giacche, cappucci, mantelli eccetra. Ogni ladro che si rispetti deve riuscire a rubarle la sua spilla, altrimenti non vale nulla.~
== arnman03 ~Fà attenzione. Missy è diventata paranoica con tutti i furti che ha subito. Ti consiglio di essere estremamente cauto.~
== tb#stivj ~Puoi contarci. Tornerò vincitore prima di quanto vi aspettiate!~
= ~<CHARNAME>, mi darai una mano a svolgere qualche lavoretto per i Ladri Tenebrosi?~
END
IF ~~ THEN DO ~SetGlobal("tb#ShadowsThievesJobs","GLOBAL",100)~ REPLY ~Preferirei evitare. Ho già un incarico affidatomi da Aran, e non ho proprio tempo da perdere.~ EXTERN tb#stivj FirstJob1-1
IF ~~ THEN DO ~SetGlobal("tb#ShadowsThievesJobs","GLOBAL",3)~ REPLY ~Sicuro. Come ti ho già detto, appoggio la tua decisione di trovare un posto in questa organizzazione, pertanto sarò felice di aiutarti.~ EXTERN tb#stivj FirstJob1-2
IF ~~ THEN DO ~SetGlobal("tb#ShadowsThievesJobs","GLOBAL",3)~ REPLY ~Per me va bene, a condizione però che il tutto avvenga celermente. Devo salvare Imoen al più presto.~ EXTERN tb#stivj FirstJob1-2
IF ~~ THEN DO ~SetGlobal("tb#ShadowsThievesJobs","GLOBAL",3)~ REPLY ~E sia. Mentre tu ti diletti in queste cose, penserò al modo più cruento con cui farla pagare ad Irenicus per tutto ciò che mi ha fatto.~ EXTERN tb#stivj FirstJob1-2

CHAIN IF ~~ THEN tb#stivj FirstJob1-1
~(Sniff) Non è giusto. Prima mi consigli di farmi strada tra i Ladri Tenebrosi, poi mi neghi questa possibilità quando mi si presenta. Se proprio cattivo! Cattivo cattivo!~
== arnman04 ~Bene. La concorrenza è stata spazzata via senza problemi.~
== arnman03 ~A volte sei proprio tremenda, Mitsu.~
== arnman04 ~Eheheheh...~
EXIT

CHAIN IF ~~ THEN tb#stivj FirstJob1-2
~Yeah! Sapevo di poter contare su di te!~
BRANCH ~IsValidForPartyDialog("Mazzy")~ BEGIN
  == MAZZYJ ~E' proprio necessaria una simile affiliazione, Stivan?~
  == tb#stivj ~Non fare la guastafeste come al solito. Non sono un bambino da riprendere in continuazione.~
END
BRANCH ~IsValidForPartyDialog("Minsc")~ BEGIN
  == MINSCJ ~Minsc e Boo non tollerano il furto! Chi consolerà la guardarobiera quando scoprirà di non avere più la sua spilla?~
  == tb#stivj ~La sto semplicemente prendendo in prestito, Minsc. Non si accorgerà nemmeno della sua assenza.~
  == MINSCJ IF ~Global("WWBooGone","GLOBAL",0)~ THEN ~Mi assicurerò che tu mantenga la tua parola. A Minsc si spezzerebbe il cuore se gli rubassero il suo criceto o la sua spada!~
  == MINSCJ IF ~!Global("WWBooGone","GLOBAL",0)~ THEN ~Mi assicurerò che tu mantenga la tua parola. A Minsc si è quasi spezzato il cuore quando gli hanno rubato Boo, e non vuole che altri soffrano come lui!~
END
END
IF ~~ THEN UNSOLVED_JOURNAL ~Stivan e i Ladri Tenebrosi

Una Ladra Tenebrosa di nome Mitsu ha offerto a Stivan la possibilità di affermarsi all'interno della gilda svolgendo alcuni incarichi per conto suo. Prima però è necessario che l'halfling superi una sorta di rito iniziatico che prevede il furto della spilla di Missy la guardarobiera.~ EXIT

APPEND arnman04
  IF ~IsValidForPartyDialog("tb#stiv") Global("tb#ShadowsThievesJobs","GLOBAL",3)~ THEN firstjob2
    SAY ~Sei venuto a gettare la spugna, recluta?~
    IF ~PartyHasItem("tb#spin")~ THEN DO ~SetGlobal("tbShadowsThievesJobs","GLOBAL",4) TakePartyItem("tb#spin") DestroyItem("tb#spin") EraseJournalEntry(%Stivan e i Ladri Tenebrosi

Una Ladra Tenebrosa di nome Mitsu ha offerto a Stivan la possibilità di affermarsi all'interno della gilda svolgendo alcuni incarichi per conto suo. Prima però è necessario che l'halfling superi una sorta di rito iniziatico che prevede il furto della spilla di Missy la guardarobiera.%)~ EXTERN tb#stivj firstjob2-1
    IF ~!PartyHasItem("tb#spin")~ THEN EXTERN tb#stivj firstjob2-2
  END
END

CHAIN IF ~~ THEN tb#stivj firstjob2-2
~Ehm, ci sto lavorando, ti assicuro...~
== arnman03 ~Ti conviene sbrigarti, Mitsu non è famosa per la sua pazienza.~
== arnman04 ~Sì, sbrigati! Se mi fai aspettare troppo scrivo una letterina ad Aran che pregiudicherà ogni tua possibilità di arruolamento!~
== arnman03 ~Ma non eri analfabeta?~
== arnman04 ~Chi, io? So parlare e scrivere più meglio di un bardo, io!~
EXIT

CHAIN IF ~~ THEN tb#stivj firstjob2-1
~Ti sbagli, Mitsu. Torno trionfante con la spilla di Missy.~
== arnman03 ~Ci sai fare, ragazzino. Pensa che a suo tempo Mitsu ha impiegato settimane per riuscirci.~
== arnman04 ~Zitto, tu! Quanto a te, Cacciatore, non darti troppe arie. Adesso è il momento di passare a cose serie.~
== arnman04 IF ~!Dead("mook")~ ~Prima però è meglio che porti a termine la missione di Aran. Il recupero che ti ha assegnato ha la priorità. Torna quando avrai aiutato Mook con il carico che sta aspettando.~
END
IF ~Dead("mook")~ THEN EXTERN arnman04 secondJob1-1
IF ~!Dead("mook")~ THEN EXIT

CHAIN IF WEIGHT #-1 ~Dead("mook") Global("tbShadowsThievesJobs","GLOBAL",4)~ THEN arnman04 secondJob
~Dannazione. E' un bene che il carico sia stato recuperato, ma la perdita di Mook non era prevista.~
== arnman03 ~Già. Era una tipa in gamba. Ho imparato un sacco di cose da lei.~
== arnman04 ~Ascoltami bene, Cacciatore. Sto per assegnarti la tua prima missione.~
EXTERN arnman04 secondJob1-1

CHAIN IF ~~ THEN arnman04 secondJob1-1
~La nostra organizzazione ha diversi appoggi tra i nobili di Athkatla. Uno di questi è Armagaran Vulova, la cui vita è a rischio proprio mentre parliamo.~
== tb#stivj ~(Gasp!) Armagaran Vulova è a capo della più influente corporazione di mercanti dell'Amn! Chi lo vuole uccidere?~
== arnman03 ~La gilda rivale, ovviamente.~
== arnman04 ~Il Signore delle Ombre vuole che sia protetto da ogni possibile minaccia. Se accetti, diventi responsabile della sua incolumità. Se fallisci o rifiuti l'incarico, sei fuori. ~
== tb#stivj ~Se per <CHARNAME> non è un problema...~
END
IF ~~ THEN REPLY ~Ci sto. Dove posso trovare questo nobile?~ GOTO SecondJob1-2
IF ~~ THEN REPLY ~E sia. Tuttavia, sarò sordo a successive richieste, chiaro?~ GOTO SecondJob1-2
IF ~~ THEN REPLY ~Lo è. Devo ritrovare Imoen e Irenicus al più presto, e un simile incarico mi farebbe perdere troppo tempo.~ GOTO SecondJob1-3

CHAIN IF ~~ THEN arnman04 SecondJob1-2
~Sono proprio curiosa di vedere come te la caverai. La sua residenza si trova nel Quartiere Governativo. Recati lì il più presto possibile. Non indugiare, o per Armagaran sarà la fine.~
== NALIAJ IF ~IsValidForPartyDialog("Nalia")~ THEN ~Non avrei mai immaginato che Vulova appoggiasse i Ladri Tenebrosi. Zietta non ci crederebbe neanche se li vedesse abbracciati.~
== JAHEIRAJ IF ~IsValidForPartyDialog("Jaheira")~ THEN ~Stiamo ritardando un pò troppo il confronto con Irenicus. Salviamo quest'uomo e sbrighiamoci una volta per tutte.~
END IF ~~ THEN UNSOLVED_JOURNAL ~Stivan e i Ladri Tenebrosi

Mitsu ha assegnato a Stivan la sua prima missione: proteggere un nobile di nome Armagaran Vulova da un agguato della gilda rivale. La sua abitazione si trova nel Quartiere Governativo, ed è bene che mi ci rechi al più presto. Diversamente, potrebbe essere troppo tardi per lui.~ EXIT

CHAIN IF ~~ THEN arnman04 SecondJob1-3
~Sentito, maschietto? Niente missione, niente nomina. E' un peccato che finisca così.~
== tb#stivj ~Sei una vipera, Mitsu! Sai bene che <PRO_HESHE> ha degli affari importanti da sbrigare con Aran e che non può perdere altro tempo!~
== arnman04 ~... Davvero?~
== tb#stivj ~Bruttona! Un giorno... La pagherai!~
END
IF ~~ THEN SOLVED_JOURNAL ~Stivan e i Ladri Tenebrosi

Mitsu ha esposto a Stivan i dettagli della sua prima missione, ma ho dovuto declinare l'offerta per non perdere tempo. L'halfling si è arrabbiato con la ladra, ma ha riconosciuto le mie priorità e non ha protestato più di tanto.~ DO ~SetGlobal("tbShadowsThievesJobs","GLOBAL",101)~ EXIT

/*
A casa Vulova, oltre al nobile, ci sono due o tre guardie.

VULOVA ~Chi siete? Perchè siete entrati in casa mia?~
tb#stivj ~Piacere di conoscervi, signor Vulova. Io sono Stivan, e questi sono i miei amici. Siamo stati mandati dai Ladri Tenebrosi per proteggervi.~
VULOVA ~Sapevo che sarebbero giunti dei rinforzi, ma come ho già detto ai tuoi superiori, i miei uomini sono più che sufficienti.~
tb#stivj ~*Ahem* Mi permetto di contraddirvi. La minaccia che incombe su di voi è grande, sapete?~
VULOVA ~La mia scorta saprà cavarsela. Portate comunque i miei ringraziamenti al Signore delle Ombre: il suo riguardo nei miei confronti è gradito.~
= ~Uhm... Da dove viene questo freddo?~

Compaiono dei pipistrelli che si trasformano in vampiri. Uno dei tre (o del numero che ritieni più opportuno) dice:

~La tua esistenza finisce qui, mortale!~

Segue ovviamente uno scontro. Vogliamo usare dei vampiri giovani, per non renderlo troppo difficile?

Una volta uccisi, Vulova dice:

VULOVA ~Per... Per gli dei! Io... Io...~
IF ~~ THEN REPLY ~Tutto a posto, vecchio? Sei rimasto ferito?~

VULOVA ~Sto... bene, per così dire. Non ho mai visto un simile orrore in tutta la mia vita... E posso assicurarti che ne ho molti, di anni.~
= ~Grazie per il tuo aiuto, <PRO_GIRLBOY>. Ti prego, dì ai Ladri Tenebrosi che lascio Athkatla. Ora come ora, non è più un posto sicuro per me, ma rimarrò comunque in contatto con loro.~
= ~Guardie, alle Porte della Città, presto.~

Quando il gruppo riferisce il proprio successo a Mitsu, scatta questo dialogo.

arnman04 ~Sei tornato. Cos'hai da riferire?~
tb#stivj ~La gilda rivale ha mandato un bel trio di vampiri per far secco Vulova!~
arnman03 ~Per Mask! Vampiri?!~
arnman04 ~Quindi le voci che ho sentito erano vere. E' sano e salvo?~
tb#stivj ~E' ancora tutto intero. Mi ha chiesto di dirvi che lascerà la città, e non lo biasimo di certo.~
arnman04 ~Sì, meglio che esca di scena per un pò. Cuchul, manda un messaggio ad Arkanis e alla sua squadra. Dì loro di tenerlo d'occhio e di accertarsi che giunga a destinazione senza problemi.~
arnman03 ~Sicuro.~
arnman04 ~E tu, Cacciatore...~
tb#stivj ~Dica!~
arnman04 ~Levati di torno per un pò. Cuchul ed io abbiamo degli affari importanti di cui occuparci, e non ho tempo da perdere con te.~
tb#stivj ~Ehi, e la mia nomina?~
arnman04 ~Verrai contattato quando avremo bisogno di te. Ora sparisci.~
tb#stivj ~(Snort!) Arpia!~
arnman04 ~Cosa hai detto?!~
arnman03 ~Io? Ehm... Niente. Aspetto tue notizie, Mitsu.~

Stivan e i Ladri Tenebrosi

Abbiamo salvato Armagaran Vulova da un agguato della gilda rivale. Mitsu contatterà Stivan quando avrà bisogno di lui.

arnman03 ~Ehilà, amici! E' proprio vero che chi non viene colto con le mani nel sacco si rivede!~
arnman04 ~Uhm? Cosa ci fai qui, Cacciatore?~
tb#stivj ~Heh. Ti ringrazio per il benvenuto. Mi chiedevo se ti fossi finalmente decisa a darmi la nomina che merito.~
arnman04 ~Allora devi avermi letto nel pensiero, ragazzino, perchè stavo proprio pensando ad una missione adatta per te.~
arnman03 ~In realtà Mitsu ha borbottato qualcosa del tipo "Vediamo a chi riesco a rifilare questa patata bollente".~
arnman04 ~Cuchul!~
arnman03 ~Ehm... L'ho detto ad alta voce?~
arnman04 ~Allontana i tuoi amici, ragazzo. Qui ci sono troppe orecchie indiscrete, e non voglio che mi senta nessuno.~
arnman03 ~<CHARNAME> può restare. Gaelan ha detto che ci si può fidare di <PRO_HIMHER>.~
arnman04 ~E sia. Gli altri, fuori dai piedi.~

Se Yoshimo è nel gruppo, il dialogo continua con un mini flirt:

arnman04 ~Aspetta. Tu puoi rimanere. Mi ispiri simpatia.~
YOSHIMO ~La ringrazio, signorina.~
arnman03 ~Ti ha messo gli occhi addosso da quando ti ha visto, amico. Gatta ci cova...~
arnman04 ~Oh, chiudi un pò la bocca, Cuchul!~
YOSHIMO ~Sono lusingato dalle vostre attenzioni. Magari più tardi potremmo parlare in privato?
arnman03 ~Oho!~
arnman04 ~(Arrossisce) Beh, questo non me l'aspettavo...~
tb#stivj ~*Ahem* Non vorrei interrompere qualcosa, ma sto aspettando che tu mi dica qual è il mio compito.~
arnman04 ~Uh? Eh? Ah, sì, il tuo compito. Ti darò tutte le indicazioni necessarie non appena i tuoi amici saranno fuori vista.~

Quando gli altri membri del gruppo sono fuori vista, parlando con Mitsu scatta questo dialogo.

arnman04 ~Allora, ragazzino. La missione che sto per assegnarti è pericolosa. *Molto* pericolosa. Non mi stupirei se decidessi di rinunciarvi.~
tb#stivj ~Nulla può essere più pericoloso di quello stormo di gabbiani che ho affrontanto qualche mese fa proprio qui ai Moli. Quegli uccellacci erano più assetati di sangue di... di...~
arnman03 ~Gabbiani?~
arnman04 ~Assetati di sangue?~
tb#stivj ~*Ahem* Ne parleremo un'altra volta.~
arnman04 ~Negli ultimi tempi i cavalieri del Nobilissimo Ordine del Cuore Radioso hanno iniziato a darci fastidio. Hanno arrestato alcuni dei nostri mentre stavano aiutando un nobile a sbarazzarsi di suppellettili superflue, non so se mi spiego.~
arnman03 ~Quello a cui Mitsu vuole arrivare è che dobbiamo ricambiare l'offesa subita. Non possiamo permetterci altri seccatori; la gilda rivale è più che sufficiente. ~

Se Yoshimo non è nel gruppo, Mitsu prosegue dicendo:

arnman04 ~Esatto, Cuchul. Ed è qui che entrate in gioco tu e il tuo amico <CHARNAME>.~

Se invece è nel gruppo, dice:

arnman04 ~Esatto, Cuchul. Ed è qui che entrate in gioco tu, il tuo amico <CHARNAME> e l'altro giovanotto.~
arnman04 ~Per alcuni giorni il Cuore Radioso ospiterà nelle proprie sale una delegazione di seguaci di Tyr proveniente da Cormyr. Pare siano giunti in città per una delle loro celebrazioni, e portano con sè un artefatto noto come lo Scudo del Mancino.~
arnman03 ~Rubarlo è impossibile. E' sorvegliato da mattina a sera, e le guardie non permettono a nessuno al di fuori dell'Ordine e della congregrazione di avvicinarvisi.~
arnman04 ~Ciò che ti chiediamo è un massacro, Stivan. Una chiara dimostrazione del fatto che i Ladri Tenebrosi governano la città e che nessuno deve metterci i bastoni tra le ruote. Ci stai?~
tb#stivj ~Tu forse non lo sai, ma mi stai dando l'opportunità che sogno da una vita!Certo che ci sto!~

Se Yoshimo è nel gruppo, non può fare a meno di commentare:

YOSHIMO ~Questa è una pazzia. Nel caso dovessimo sopravvivere, cosa di cui dubito, le alte sfere dell'Ordine faranno il possibile per darci la caccia.~
arnman03 ~Tranquillo, amico. Mitsu non ti lascerebbe certo alla loro mercè - farebbe il possibile per proteggerti.~
arnman04 ~Beh, un compagno va sempre tutelato, no?~
arnman03 ~Compagno? Volevi dire "fratello", vero?~
arnman04 ~Ehm... Sì.~

Se Yoshimo non è nel gruppo, dopo la battuta di Stivan "Tu forse non lo sai" Mitsu risponde con questo aggancio (a cui si attacca anche la battuta "Ehm... Sì"):

arnman04 ~Hai il tuo compito, Cacciatore. Non c'è bisogno che ti dica dove si trova la base di quei maledetti paladini, pertanto và e compi la nostra vendetta!~
tb#stivj ~Heh. Agli ordini, capo!~
arnman03 ~Una volta conclusa questa missione, sarai un Ladro Tenebroso a tutti gli effetti.~
arnman04 ~Spetta a me deciderlo!~
arnman03 ~Piantala di fare la capricciosa, Mitsu, o farò rapporto a Gaelan. Mi sono spiegato?~
arnman04 ~(Urla) Dannati uomini! Fate sempre il possibile per mettere in discussione il primato di una donna! E' da quando sono qui che cercate di spodestarmi! Pensate di poter fare i prepotenti con noi soltanto perchè avete tre gambe, ma vi assicuro che...~
arnman03 ~... Vi consiglio di andare, fratelli. La mia amica ha appena iniziato uno dei suoi monologhi in cui ci accusa di essere dei maschilisti...~
Stivan e i Ladri Tenebrosi

Mitsu ha affidato a Stivan una nuova missione: recuperare uno scudo sacro in mano ad una delegazione di seguaci di Tyr da poco giunta da Cormyr e ospitata dall'Ordine del Cuore Radioso. Pare che l'artefatto sia custodito in maniera così serrata da renderne impossibile il furto. Devo ancora decidere se aiutare l'halfling in questa missione o meno.

IF ~AreaCheck("ar0903") Global(tb#stivanar0903","GLOBAL",0)~THEN ~Questo luogo è così pieno di paladini che mi viene il voltastomaco! Bah... Pronti alla strage, <CHARNAME>?~
BRANCH ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ BEGIN
== KELDORJ ~Strage? Di cosa state parlando?~
== TB#STIVJ ~Heh. Stiamo per spedire i tuoi amichetti all'altro mondo, nonno.~
== KELDORJ ~Ti consiglio di pesare attentamente le tue prossime parole - mi dispiacerebbe se fossero le ultime.~
== TB#STIVJ ~Dici a me o a <CHARNAME>?~
== KELDORJ ~Ad entrambi, ma solo per la prima parte della frase.~
== TB#STIVJ ~... Eh?~
END
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenIsNotKnight","GLOBAL",1)~ THEN ~Dovrei ucciderti all'istante solo per aver pensato un atto del genere!~
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenIsNotKnight","GLOBAL",1)~ THEN ~Una proposta allettante, ma la feccia che abita questo luogo non è degna della mia lama.~
END
IF ~!Alignment(Player1,MASK_GOOD)~ THEN REPLY ~Un'ottima idea, adesso che ci penso.~ EXTERN tb#stivj inAr0903-1
IF ~!Alignment(Player1,MASK_GOOD)~ THEN REPLY ~Non vedo l'ora di mettere le mani su quell'artefatto. Andiamo!~ EXTERN tb#stivj inAr0903-1
IF ~!Alignment(Player1,MASK_GOOD)~ THEN REPLY ~Il primo colpo è *mio*!~ EXTERN inAr0903-1
IF ~!Alignment(Player1,MASK_EVIL)~ THEN REPLY ~Scordatelo. Non ho intenzione di inimicarmi questi difensori del bene.~ EXTERN tb#stivj inAr0903-2
IF ~!Alignment(Player1,MASK_EVIL)~ THEN REPLY ~Non ho mai acconsentito ad una cosa del genere, Stivan. Non commetterò una simile mostruosità.~ EXTERN tb#stivj inAr0903-2
IF ~!Alignment(Player1,MASK_EVIL)~ THEN REPLY ~Assolutamente no. Non ci macchieremo le mani di sangue per futili motivi. ~ EXTERN tb#stivj inAr0903-2

CHAIN IF ~~ THEN tb#stivj inAr0903-1
~Yeah! Diamo inizio alle danze, gente!~ DO ~SetGlobal("TempleShout0903","GLOBAL",1)~
== KELDORJ IF ~InParty("Keldorn") !StateCheck("keldorn",CD_STATE_NOTVALID)~ THEN ~Cosa state facendo? All'armi, fratelli, all'armi!~ DO ~LeaveParty() Enemy()~
== ANOMENJ IF ~InParty("anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenIsNotKnight","GLOBAL",1)~ THEN ~Tradimento! Muori, <CHARNAME>!~ DO ~LeaveParty() Enemy()~
EXIT

IF ~~ THEN inAr0903-2
SAY ~Ma... Ma in questo modo Mitsu non mi ammetterà tra i Ladri Tenebrosi! Non aspetta altro che una simile occasione per sbarazzarsi di me!~
IF ~~ THEN REPLY ~Non è un mio problema.~ EXTERN tb#stivj inAr0903-3
IF ~~ THEN REPLY ~Mi spiace, ma non voglio avere sulla coscienza le morti di persone innocenti.~ EXTERN tb#stivj inAr0903-3
IF ~~ THEN REPLY ~Oh, già. Allora non perdiamo tempo e sbrighiamo questa cosa al più presto.~ EXTERN inAr0903-1

IF ~~ THEN inAr0903-3
SAY ~Per favore... Per favore, <CHARNAME>, vienimi incontro. Sono stato al tuo fianco per tutto questo tempo cercando di aiutarti al meglio delle mie possibilità; perchè tu non fai altrettanto? Perchè esigi che gli altri ti sostengano quando tu non fai lo stesso con loro?~ EXTERN tb#stivj inAr0903-4
IF ~~ THEN REPLY ~Ipocrita. Ti ho offerto un posto nella mia compagnia e hai il coraggio di darmi dell'ingrato?~ EXTERN tb#stivj inAr0903-4 
IF ~~ THEN REPLY ~Non cercare di abbindolarmi con i tuoi giochi di parole. Sono irremovibile nella mia decisione.~ EXTERN tb#stivj inAr0903-4
IF ~Class(Player1,ALL_PALADIN)~ THEN REPLY ~Il crimine che mi chiedi di commettere nei confronti dei miei fratelli è inaccettabile, Stivan. Non c'è altro da aggiungere.~ EXTERN tb#stivj inAr0903-4 
IF ~~ THEN REPLY ~(Sospiro) E sia. Ma smettila di fissarmi con quegli occhioni supplicanti, okay?~ EXTERN tb#stivj inAr0903-1
END

IF ~~ THEN inAr0903-4
SAY ~(Snort!) Se la metti così, il minimo che tu possa fare è convincere Mitsu a non punirmi con l'espulsione o con qualsiasi cosa abbia in serbo per coloro che non portano a termine i suoi incarichi!~
IF ~~ THEN REPLY ~Sì, non c'è problema. Ci penso io a farla ragionare.~ EXTERN tb#stivj inAr0903-5
IF ~~ THEN REPLY ~Proverò, ma non ti garantisco nulla.~ EXTERN tb#stivj inAr0903-5
IF ~~ THEN REPLY ~Non voglio più immischiarmi nelle faccende di quella dannata gilda, Stivan. Me ne lavo le mani.~ EXTERN tb#stivj inAr0903-6
END

IF ~~ THEN inAr0903-5
SAY ~Torniamo ai Moli, allora. Voglio proprio vedere come e se riuscirai a persuadere quella strega a non prendersela con me.~
Stivan e i Ladri Tenebrosi

Mi sono rifiutato di compiere il massacro necessario per recuperare lo Scudo del Mancino. Ciò nonostante, ho rassicurato Stivan promettendogli che avrei persuaso Mitsu a non interrompere il suo addestramento.

IF ~~ THEN inAr0903-6
SAY ~Dannazione a te, <CHARNAME>! Prima mi consigli di farmi strada tra i Ladri Tenebrosi, poi mi neghi questa possibilità quando si presenta. Và a sbattere la testa contro un albero per chiarirti le idee!~
IF ~~ THEN EXIT
END

IF ~AreaCheck("ar0903") Dead("Heartg1")
Dead("Heartg2")
Dead("Heartg3")
Dead("Heartg4")
Dead("Heartg5")
Global("tb#stivanClearedAR0903","GLOBAL",0)~ THEN ClearedAr0903
SAY ~(Pant) Ce... Ce l'abbiamo fatta!~
IF ~~ THEN DO ~SetGlobal("tb#stivanClearedAR0903","GLOBAL",1)~
IF ~!IsValidForPartyDialog("Korgan") StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN EXIT
IF ~IsValidForPartyDialog("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN ~Per i Nove Inferi! Quei fetenti avevano addosso più ferro delle miniere di Pietra di Sangue!~
== TB#STIVJ ~... Immagino che le considerazioni a riguardo siano scontate.~
== KORGANJ ~Che dire? Mi hai lasciato senza parole, ragazzo. Hai del fegato, quando vuoi.~
== TB#STIVJ ~E' stato uno scontro decisamente impegnativo, ma... Heh. Se lo meritavano.~
IF ~~ THEN EXIT 
END

Scudo del Mancino

Vi era un tempo in cui Tyr non era conosciuto con l'appellativo di "Il Monco". La maggiore tra le divinità della Triade, infatti, perse la mano destra nello scontro con Kezef il Segugio del Caos, ma prima di allora era solito accompagnare la sua fatale arma con questo scudo. La leggenda vuole che Tyr l'abbia tenuto ugualmente con sè sino al Periodo dei Disordini, quando decise di donarlo ai suoi seguaci di Cormyr per essere rimasti al lui fedeli anche dopo la cecità inflittagli da Lord Ao.
Sebbene sia sempre stato custodito dai paladini e dai chierici devoti al dio, lo scudo in questione viene utilizzato ogni anno in occasione di un rito propiziatorio al raccolto e alla lustrazione dei campi. Il culto di Tyr è infatti molto diffuso nelle campagne, dove viene chiamato dai più "Dio Pannocchia".

Realizzato in acciaio pesante con venature d'argento, l'artefatto pesa così tanto da essere un impedimento più che una protezione in battaglia. Pare che sino ad oggi soltanto Tyr sia stato in grado di brandirlo, tant'è che è necessaria ben più di una persona per trasportarlo.



arnman04 ~Ebbene, Cacciatore? Hai dato una lezione a quegli sbruffoni?~
tb#stivj ~(Snort!) Prego, <CHARNAME>! Spiegale cosa diavolo ti è saltato in testa!~
IF ~~ THEN REPLY ~Spiacente, Mitsu, ma non abbiamo intenzione di svolgere il tuo incarico.~ GOTO FirstJob1-5
IF ~~ THEN REPLY ~I Paladini sono vivi, e continueranno ad esserlo. Non li uccideremo per soddisfare i tuoi capricci.~ GOTO FirstJob1-5
IF ~~ THEN REPLY ~Credo che la tua vera intenzione fosse quella di sbarazzarti di noi. Altrimenti per quale motivo ci avresti mandato a sterminare un manipolo di guerrieri armati sino ai denti?~ GOTO FirstJob1-5
IF ~~ THEN REPLY ~Sei una folle se credi che avrei fatto del male ai miei fratelli.~ GOTO FirstJob1-5


IF ~~ THEN FirstJob1-5
SAY ~Davvero? Beh, questo è un peccato. Per il tuo amichetto, intendo. Un tale rifiuto ha appena fatto sfumare le sue possibilità di un futuro qui nella gilda. E pensare che mi ero quasi abituata all'idea di un altro ladro halfling tra di noi.~
tb#stivj ~Fantastico. Adesso il futuro non mi riserva altro che... che la spazzatura e lo squallore di prima!~
IF ~~ THEN REPLY ~Non è questo il posto dove troverai la tua strada, Stivan, ma posso assicurarti che non ti abbandonerò in un vicolo di Athkatla.~ GOTO FirstJob1-6
IF ~~ THEN REPLY ~Sarebbe questa la fiducia in te stesso che sostenevi di aver acquisito? Se tornerai ad essere povero, sarà per mancanza di determinazione, non per colpa mia!~ GOTO FirstJob1-6
IF ~~ THEN REPLY ~Non così in fretta. Cuchul, l'ultima volta hai detto che avresti fatto rapporto a Gaelan se la piccoletta avesse causato fastidi.~ GOTO FirstJob1-7
IF ~~ THEN REPLY ~Andiamo, Mitsu, non fare la difficile. Perchè non ci assegni un altro incarico? Possibilmente uno che non richieda massacri come il precedente.~ GOTO FirstJob1-8

IF ~~ THEN FirstJob1-6
SAY ~...~
= ~... Andiamocene. Stare qui non ha più senso ora. Ho bisogno di tempo per... pensare.~
arnman03 ~Mi dispiace, amico. Io sarò qui se avrai bisogno di una mano.~
tb#stivj ~Lo terrò a mente. Grazie.~
Stivan e i Ladri Tenebrosi

Non recuperare lo Scudo del Mancino ha significato interrompere la carriera di Stivan tra i Ladri Tenebrosi. Inizialmente furioso, l'halfling si è ora chiuso in un profondo silenzio.

Se il tutto si conclude in questo modo, per un pò di tempo farei scattare questo PID quando il giocatore gli rivolge la parola:

(Stivan ti ignora quando cerchi di parlargli. Sbuffando, ti volta le spalle per immergersi nuovamente nei sui pensieri).

IF ~~ THEN FirstJob1-7
SAY ~Ehm... L'ho detto davvero?~ GOTO FirstJob1-9

IF ~~ THEN FirstJob1-8
SAY ~Non penso proprio! Il fatto che tu sia il prediletto di Aran non significa che *io* debba accondiscendere ad ogni tuo capriccio!~


IF ~~ THEN FirstJob1-9
SAY ~Noi Ladri Tenebrosi abbiamo delle regole precise. Chi non porta a termine una missione per motivi personali è fuori, punto e basta. Non concediamo seconde possibilità.~
IF ~~ THEN REPLY ~Ti conviene essere collaborativa, sai? Dispongo delle risorse per renderti la vita difficile. Dopotutto, sono a capo di una gilda di Ladri.~
IF ~~ THEN GOTO FirstJob1-10 (Carisma inferiore ad un certo valore)
IF ~~ THEN GOTO FirstJob1-11 (Carisma superiore ad un certo valore)
IF ~~ THEN REPLY ~Come desideri. Mi limiterò a riferire al Cuore Radioso del vostro piano, dettaglio per dettaglio. Immagino ti farà piacere ricevere una loro visita.~
IF ~~ THEN REPLY ~Non ti conviene avermi come nemico. Vuoi forse provare sulla tua pelle ciò che ho fatto ai seguaci di Bodhi?~
IF ~~ THEN REPLY ~Dubito che i tuoi superiori approvino ciò che hai appena detto. Piantala di fare la prima donna, altrimenti li metterò al corrente delle tue buffonate.~
IF ~Class(Player1,MAGE_ALL)~ THEN REPLY ~Attenta a ciò che dici. Mi basta schioccare le dita per trasformarti in un topo da dare in pasto ai randagi dei Moli.~
IF ~~ THEN REPLY ~Messaggio ricevuto. Non insisterò oltre.~ GOTO FirstJob1-6

IF ~~ THEN FirstJob1-10
SAY ~Non credo che minacciare Mitsu sia stata una buona idea...~
arnman04 ~Credi davvero che sarei arrivata al punto dove oggi mi trovo se mi facessi intimorire così facilmente da un <PRO_RACE> da quattro soldi come te? Sono irremovibile. Non vi resta che farvene una ragione.~

IF ~~ THEN FirstJob1-11
SAY ~Va bene, va bene, rimaniamo CALMI. Non c'è bisogno di complicare le cose. Per questa volta potrei chiudere un occhio... ma a due condizioni.~
= ~Questa trasgressione non può passare impunita, quindi dovrete pagare una multa di circa... 500 monete d'oro.~
arnman03 ~Da quando comminiamo multe?~
arnman04 ~... Hai appena perso la tua parte, Cuchul.~
arnman03 ~Oops.~
arnman04 ~In aggiunta, dovrete risolvere una questione fastidiosa. Roba adatta per dei maschietti senza ambizioni come il mio collega.~
arnman03 ~Ehi, ti ho sentita!~
arnman04 ~C'è una tipa nel Quartiere Governativo, un'indipendente per la precisione, che si sta dedicando ad attività particolarmente redditizie senza il nostro permesso. Fatele capire che se continua a lavorare in proprio calpesterà i piedi alla gente sbagliata.~
IF ~~ THEN REPLY ~Che genere di attività gestisce?~ GOTO FirstJob1-12
IF ~~ THEN REPLY ~Come la riconosco?~ GOTO FirstJob1-13
IF ~~ THEN REPLY ~Affare fatto. Tieni, ecco il denaro per la "multa".~ GOTO FirstJob1-14
IF ~~ THEN REPLY ~Ci sto, ma non ho abbastanza monete d'oro con me.~ GOTO FirstJob1-15

IF ~~ THEN FirstJob1-12
SAY ~Prestiti di denaro con tassi d'interesse a dir poco salati. In un giorno quella donna guadagna più di quanto mi dia la Gilda in un anno!~
IF ~~ THEN REPLY ~Come la riconosco?~ GOTO FirstJob1-13
IF ~~ THEN REPLY ~Affare fatto. Tieni, ecco il denaro per la "multa".~ GOTO FirstJob1-14
IF ~~ THEN REPLY ~Ci sto, ma non ho abbastanza monete d'oro con me.~ GOTO FirstJob1-15

IF ~~ THEN FirstJob1-13
SAY ~E' così chiassosa ed eccentrica che non avrai problemi a trovarla. Fidati di Mitsu.~
IF ~~ THEN REPLY ~Che genere di attività gestisce?~ GOTO FirstJob1-12
IF ~~ THEN REPLY ~Affare fatto. Tieni, ecco il denaro per la "multa".~ GOTO FirstJob1-14
IF ~~ THEN REPLY ~Ci sto, ma non ho abbastanza monete d'oro con me.~ GOTO FirstJob1-15

IF ~~ THEN FirstJob1-14
SAY ~Perfetto. Svolgi questo compito di bassa lega e il tuo amichetto sarà uno dei nostri a tutti gli effetti.~ DO ~SetGlobal("MoneyHasBeenGiven","GLOBAL",1)~ GOTO FirstJob1-16

IF ~~ THEN FirstJob1-15
SAY ~Con che razza di accattone viaggi, Cacciatore? (Sospiro) La gambelunghe di cui ti ho parlato avrà un bel gruzzoletto con se, quindi se sei al verde potrai rifarti a sue spese. Una volta risolto il problema, ti conviene presentarti con le tasche piene, altrimenti perderò la pazienza.~ DO ~SetGlobal("MoneyHasNotBeenGiven","GLOBAL",1)~ GOTO FirstJob1-16

IF ~~ THEN FirstJob1-16
SAY ~In bocca al lupo!~

Stivan e i Ladri Tenebrosi

Sono riuscito (a fatica) a convincere Mitsu a darci un'altra missione in modo che Stivan possa rimanere all'interno della gilda. Devo recarmi nel Quartiere Governativo e convincere una ladra indipendente a lasciare la città. Pare che si tratti di una strozzina dai modi stravaganti.

Incontro con Rosalina (immagino una mezzelfa con l'avatar di una ladra) e Carlino (un mezzorco come quello che sfida Mazzy?) nel Quartiere Governativo. Sono circondati da persone: contadini, nobili ecc.

ROSALINA ~Sei un impiegato con uno stipendio così misero da non poterti permettere neanche il più modesto degli harem? Oppure sei un vecchio libidinoso che sogna di spirare tra le braccia della più seducente tra le concubine?~
ROSALINA ~Sei un nobile decaduto che vorrebbe indossare nuovamente meravigliosi abiti tessuti da bambini calimshiti ridotti in schiavitù? Oppure sei una semplice contadinotta desiderosa di disfarsi dei propri straccetti rammendati?~
ROSALINA ~Chiunque tu sia e qualsiasi cosa tu voglia, noi ti possiamo aiutare! Chiedi un prestito a Moneta Sonante!~
= ~Moneta Sonante è il tuo prestito di fiducia. Finanziamenti sino a diecimila monete d'oro in pochi minuti e senza garanzie!~
CONTADINA ~Dici sul serio? Niente pegni o ~
ROSALINA ~Sì! Ci basta sapere come ti chiami e dove vanno a scuola i tuoi figli.~
= ~Potete dirlo a voce chiara e forte: finalmente soldi facili per tutti! Le nostre rate hanno appena il quattromil... *Cough cough*... settecen... *Cough cough*... tred... *Cough cough*... tasso d'interesse. Pensate: vi costa poco più di una fortezza al minuto!~
NOBILDONNA ~Sentito, caro? Hai idea del prestigio che guadagneremmo se gli altri nobili sapessero che paghiamo così tanto?~
NOBILUOMO ~Hai ragione, cara. Gli Jyssev morirebbero d'invidia!~
ROSALINA ~Basta privazioni, basta sacrifici! Con Moneta Sonante puoi avere tutto ciò che vuoi *subito*! Inoltre non dovete nemmeno disturbarvi a venire nella nostra sede per saldare le rate: ci teniamo così tanto a voi che manderemo presso la vostra abitazione un apposito incaricato.~
= ~Lasciate che ve lo presenti. Vieni, Carlino!~
CARLINO ~Me Carlino!~
ROSALINA ~Non è amorevole?~
= ~Per ulteriori informazioni o dettagli, sentitevi liberi di consultare il nostro regolamento. E' proprio qui, affisso sul petto del nostro tenero Carlino.~
CONTADINO ~Ma è scritto in lingua goblin!~
ROSALINA ~Con Moneta Sonante puoi permetterti anche un corso intensivo di questa incomprensibile lingua. Pensa all'ebrezza e alla soddisfazione di capire ogni singola parola di goblin intenti ad appendere te e la tua famiglia ad un albero!~
CONTADINO ~...~
ROSALINA ~Coraggio, fatevi avanti!~

Quando il giocatore parla a Rosalina, scatta questo dialogo:

ROSALINA ~Tu, laggiù! Hai chiaramente bisogno di una pulita. Chiedici un prestito, e le prestigiose terme di Waterdeep toglieranno buona parte delle tue croste e muffe, se non tutte!~
tb#stivj ~(Snort!) Perchè sono tutti ossessionati dalla mia igiene personale?~
ROSALINA ~Puoi portare anche la tua compagna. Insomma, guardate come sono carini. E' proprio vero che Ao li fa e poi li accoppia!~
MAZZY ~(Arrossisce) Non sono la sua compagna! Ah, sei terribilmente fastidiosa!~
ROSALINA ~Tu, laggiù! Vuoi un prestito?~
IF ~~ THEN REPLY ~Non mi interessa il tuo sporco denaro. Sono qui per volere dei Ladri Tenebrosi.~ GOTO MonetaSonante1-1
IF ~~ THEN REPLY ~A ben pensarci... Sì. Mi servirebbero 500 monete d'oro.~ GOTO MonetaSonante1-2

IF ~~ THEN MonetaSonante1-1
SAY ~Vuoi un Ladro Tenebroso? Con Moneta Sonante *puoi*!~
IF ~~ THEN REPLY ~Non ci siamo capiti. La tua attività di strozzinaggio ha infastidito i Ladri Tenebrosi, e mi hanno chiesto di persuaderti ad andartene.~ GOTO MonetaSonante1-3

IF ~~ THEN MonetaSonante1-2
SAY ~Meraviglioso! Ecco, usale come meglio credi. Ho soltanto bisogno di sapere come ti chiami e quali luoghi sei solito frequentare.~
IF ~~ THEN REPLY ~Ne dubito. I Ladri Tenebrosi vogliono che tu ponga fine alla tua attività. Li infastidisce molto il fatto che qualcuno si dedichi a estorsioni di denaro in proprio.~ GOTO MonetaSonante1-3

IF ~~ THEN MonetaSonante1-3
SAY ~Davvero? E dimmi, chi avrei "infastidito" di preciso?~
IF ~~ THEN REPLY ~Mai sentito parlare di una certa Mitsu?~ GOTO MonetaSonante1-4

IF ~~ THEN MonetaSonante1-4
SAY ~Mi... Mitsu? Quella stupida e perfida nanetta? Ma... CARLINO?!?~
CARLINO ~S-sì, padrona?~
ROSALINA ~Non ti avevo detto di sistemare quella detestabile insolente una volta per tutte?!~
CARLINO ~Carlino provato ci ha... Ma la baby halfling bua ha fatto a Carlino!~
ROSALINA ~La bua, eh? Dovessi slogarmi il polso, ti assicuro che faranno molto più male i miei schiaffi!~
CARLINO ~Ahi! Ahi!!~
ROSALINA ~Stupido decerebrato! Quanto a te... (Sorride) Perdonami per questo *piccolo* contrattempo. Sono certa che troveremo un mutuo accordo che soddisfi entrambe le parti.~
= ~Quanto vuoi? Una? Due? Tre monete d'oro? Prendi la grana e sparisci. Ho degli affari da portare avanti.~
tb#stivj ~(Snort!) Adesso mi sono VERAMENTE stufato! Prendi questo!~
ROSALINA ~Aarghh!~
tb#stivj ~Heh. Carcassa di gabbiano fresca. Immagino faccia male riceverla in faccia.~
ROSALINA ~Ca... Carlino! Proteggi la tua padrona!~
CARLINO ~Subito! Clienti cattivi vedersela con Carlino!~

Quando Rosalina è sul punto di morire, esclama:

ROSALINA ~Ma... Maledetti! Non finisce qui!~

Per poi abbandonare l'area.

Mi resta da scrivere:
- I due dialoghi con Mitsu a completamento delle due diverse missioni;
- Il dialogo in cui Stivan invita CHARNAME ad andare da Mitsu.




*/