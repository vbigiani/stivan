/* Variables:

tb#ShadowsThievesJobs: tracks the quests.
    1: had the banter about hopes for the future.
    2: Initial talk with to Mitsu.
    3: Trying to steal Missy's pin.
    4: Stole (and reported) Missy's pin.
    5: Sent to Vulova's.
    6: Saved Vulova.
    7: Reported about Vulova.
    8: Sent to Mitsu in CH6.
    9: 'get snoopers out'
   10: Sent to Most Holy Radiant Heart.
   11: Killed MHRP.
   20: Refused to kill the MHRH.
   21: Sent to Rosalina.
   22: Rosalina created.
   23: Rosalina fleed.
  100: quest failed, Stivan is angry.
  101: quest failed, Stivan is understanding.
  102: quest finished.
*/

BEGIN tb#sros
BEGIN tb#scar
BEGIN tb#sros1
BEGIN tb#sros2
BEGIN tb#sros3
BEGIN tb#sros4

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

CHAIN IF WEIGHT #-1 ~IsGabber("tb#stiv") Global("tb#ShadowsThievesJobs","GLOBAL",2) GlobalGT("aranjob","GLOBAL",0)~ THEN arnman04 stivanMitsu2
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
IF ~~ THEN DO ~SetGlobal("tb#ShadowsThievesJobs","GLOBAL",100) SetGlobalTimer("tb#StivanAngry","GLOBAL",ONE_DAY)~ REPLY ~Preferirei evitare. Ho già un incarico affidatomi da Aran, e non ho proprio tempo da perdere.~ EXTERN tb#stivj FirstJob1-1
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

CHAIN IF WEIGHT #-1 ~NumTimesTalkedToGT(2) Global("tb#ShadowsThievesJobs","GLOBAL",3) !PartyHasItem("tb#spin") IsGabber("tb#stiv")~ THEN ARNGRL01 firstjob
~Ancora qui? QUALCUNO ha una GIACCA da affidarmi?~
== tb#stivj ~Ora che ci penso ho un po' caldo. Tieni la mia tunica!~
== ARNGRL01 ~Ewww! Cosa sono queste macche di cui è piena?~
== tb#stivj ~Oh, solo un po' di cacca di gabbiano, niente di cui preoccuparsi.~
== ARNGRL01 ~Cosa...~
== tb#stivj ~Ora che ci penso, sono solito dormire per strada, magari si è impregnata del piscio di qualche cane randagio.~
== ARNGRL01 ~Ewww, stà zitto! Mi stai facendo venire venendo la nausea...~
== tb#stivj ~Oh, che sbadato! Ecco cosa sono quelle macchie! Un anno fa un mezzorco ci ha vomitato sopra uscendo dal Diadema di Rame, e non ho ancora fatto in tempo a lavarla.~
== ARNGRL01 ~Uurgkh!~
== tb#stivj ~Ecco, proprio come adesso! (Yoink, presa!)~
END
IF ~~ THEN DO ~CreateItem("tb#spin",1,0,0)~ EXIT

APPEND arnman04
  IF WEIGHT #-1 ~IsGabber("tb#stiv") Global("tb#ShadowsThievesJobs","GLOBAL",3)~ THEN firstjob2
    SAY ~Sei venuto a gettare la spugna, recluta?~
    IF ~PartyHasItem("tb#spin")~ THEN DO ~SetGlobal("tb#shadowsThievesJobs","GLOBAL",4) TakePartyItem("tb#spin") DestroyItem("tb#spin") EraseJournalEntry(~Stivan e i Ladri Tenebrosi

Una Ladra Tenebrosa di nome Mitsu ha offerto a Stivan la possibilità di affermarsi all'interno della gilda svolgendo alcuni incarichi per conto suo. Prima però è necessario che l'halfling superi una sorta di rito iniziatico che prevede il furto della spilla di Missy la guardarobiera.~)~ EXTERN tb#stivj firstjob2-1
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

CHAIN IF WEIGHT #-1 ~IsGabber("tb#stiv") Dead("mook") Global("tb#shadowsThievesJobs","GLOBAL",4)~ THEN arnman04 secondJob
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
END IF ~~ THEN DO ~SetGlobal("tb#shadowsThievesJobs","GLOBAL",5)~ UNSOLVED_JOURNAL ~Stivan e i Ladri Tenebrosi

Mitsu ha assegnato a Stivan la sua prima missione: proteggere un nobile di nome Armagaran Vulova da un agguato della gilda rivale. La sua abitazione si trova nel Quartiere Governativo, ed è bene che mi ci rechi al più presto. Diversamente, potrebbe essere troppo tardi per lui.~ EXIT

CHAIN IF ~~ THEN arnman04 SecondJob1-3
~Sentito, maschietto? Niente missione, niente nomina. E' un peccato che finisca così.~
== tb#stivj ~Sei una vipera, Mitsu! Sai bene che <PRO_HESHE> ha degli affari importanti da sbrigare con Aran e che non può perdere altro tempo!~
== arnman04 ~... Davvero?~
== tb#stivj ~Bruttona! Un giorno... La pagherai!~
END
IF ~~ THEN SOLVED_JOURNAL ~Stivan e i Ladri Tenebrosi

Mitsu ha esposto a Stivan i dettagli della sua prima missione, ma ho dovuto declinare l'offerta per non perdere tempo. L'halfling si è arrabbiato con la ladra, ma ha riconosciuto le mie priorità e non ha protestato più di tanto.~ DO ~SetGlobal("tb#shadowsThievesJobs","GLOBAL",101)~ EXIT

CHAIN IF WEIGHT #-1 ~InParty("tb#stiv") InMyArea("tb#stiv") Global("tb#shadowsThievesJobs","GLOBAL",5) !Dead("tb#svam1")~ THEN VULOVA vulova-1
~Chi siete? Perchè siete entrati in casa mia?~
== tb#stivj ~Piacere di conoscervi, signor Vulova. Io sono Stivan, e questi sono i miei amici. Siamo stati mandati dai Ladri Tenebrosi per proteggervi.~
== VULOVA ~Sapevo che sarebbero giunti dei rinforzi, ma come ho già detto ai tuoi superiori, i miei uomini sono più che sufficienti.~
== tb#stivj ~*Ahem* Mi permetto di contraddirvi. La minaccia che incombe su di voi è grande, sapete?~
== VULOVA ~La mia scorta saprà cavarsela. Portate comunque i miei ringraziamenti al Signore delle Ombre: il suo riguardo nei miei confronti è gradito.~
= ~Uhm... Da dove viene questo freddo?~
END
IF ~~ THEN DO ~CreateCreatureObject("vamflf01","Vulova",1,0,0) CreateCreatureObject("tb#svam1","Vulova",1,0,0) CreateCreatureObject("vamflm01","Vulova",1,0,0)~ EXIT

APPEND Vulova
  IF WEIGHT #-1 ~Dead("tb#svam1") CombatCounter(0)~ THEN vulova-2
  SAY ~Per... Per gli dei! Io... Io...~
  IF ~~ THEN REPLY ~Tutto a posto, vecchio? Sei rimasto ferito?~ GOTO vulova-3
  END
  
  IF ~~ THEN vulova-3
  SAY ~Sto... bene, per così dire. Non ho mai visto un simile orrore in tutta la mia vita... E posso assicurarti che ne ho molti, di anni.~
  = ~Grazie per il tuo aiuto, <PRO_GIRLBOY>. Ti prego, dì ai Ladri Tenebrosi che lascio Athkatla. Ora come ora, non è più un posto sicuro per me, ma rimarrò comunque in contatto con loro.~
  = ~Guardie, alle Porte della Città, presto.~
  IF ~~ THEN DO ~SetGlobal("tb#ShadowsThievesJobs","GLOBAL",6) EscapeArea()~ EXIT
  END
END

CHAIN IF WEIGHT #-1 ~IsGabber("tb#stiv") Global("tb#ShadowsThievesJobs","GLOBAL",6)~ THEN arnman04 SecondJob4
~Sei tornato. Cos'hai da riferire?~
== tb#stivj ~La gilda rivale ha mandato un bel trio di vampiri per far secco Vulova!~
== arnman03 ~Per Mask! Vampiri?!~
== arnman04 ~Quindi le voci che ho sentito erano vere. E' sano e salvo?~
== tb#stivj ~E' ancora tutto intero. Mi ha chiesto di dirvi che lascerà la città, e non lo biasimo di certo.~
== arnman04 ~Sì, meglio che esca di scena per un pò. Cuchul, manda un messaggio ad Arkanis e alla sua squadra. Dì loro di tenerlo d'occhio e di accertarsi che giunga a destinazione senza problemi.~
== arnman03 ~Sicuro.~
== arnman04 ~E tu, Cacciatore...~
== tb#stivj ~Dica!~
== arnman04 ~Levati di torno per un pò. Cuchul ed io abbiamo degli affari importanti di cui occuparci, e non ho tempo da perdere con te.~
== tb#stivj ~Ehi, e la mia nomina?~
== arnman04 ~Verrai contattato quando avremo bisogno di te. Ora sparisci.~
== tb#stivj ~(Snort!) Arpia!~
== arnman04 ~Cosa hai detto?!~
== arnman03 ~Io? Ehm... Niente. Aspetto tue notizie, Mitsu.~
END IF ~~ THEN SOLVED_JOURNAL ~Stivan e i Ladri Tenebrosi

Abbiamo salvato Armagaran Vulova da un agguato della gilda rivale. Mitsu contatterà Stivan quando avrà bisogno di lui.~ DO ~SetGlobal("tb#ShadowsThievesJobs","GLOBAL",7) EraseJournalEntry(~Stivan e i Ladri Tenebrosi

Mitsu ha assegnato a Stivan la sua prima missione: proteggere un nobile di nome Armagaran Vulova da un agguato della gilda rivale. La sua abitazione si trova nel Quartiere Governativo, ed è bene che mi ci rechi al più presto. Diversamente, potrebbe essere troppo tardi per lui.~)~ EXIT

APPEND tb#stivj
IF WEIGHT #-1 ~Global("tb#ShadowsThievesJobs","GLOBAL",7) Dead("c6Bodhi")~ THEN bodhidead
SAY ~Non riesco a crederci! Abbiamo sconfitto la bruttona!~
IF ~~ THEN REPLY ~Già. I suoi canini affilati non minacceranno più le nostre gole. Direi che il prossimo sulla mia lista è Irenicus.~ GOTO AfterBodhiDeath1-1
IF ~~ THEN REPLY ~Non ancora, Stivan. Ormai dovresti sapere che un vampiro muore definitivamente soltanto se trafitto al cuore da un paletto benedetto. Vuoi occupartene tu?~ GOTO AfterBodhiDeath1-2
IF ~~ THEN REPLY ~Fe... Festeggeremo più tardi. Adesso... Ho bisogno di riprendere fiato.~ GOTO AfterBodhiDeath1-3
END

IF ~~ THEN AfterBodhiDeath1-1
SAY ~Lo stregone mi spaventa di più. Quello che ha fatto a te e a tua sorella... E' semplicemente terribile.~
IF ~~ THEN  GOTO AfterBodhiDeath1-3
END

IF ~~ THEN AfterBodhiDeath1-2
SAY ~Ehm... Lascio a te l'onore. L'ultima volta che l'ho fatto quella bestia ha lanciato un urlo così forte che ho rischiato di cadere dentro il sarcofago. Brrr...~
IF ~~ THEN  GOTO AfterBodhiDeath1-3
END

IF ~~ THEN AfterBodhiDeath1-3
SAY ~Ancora non capisco come tu riesca a stare in piedi. Credevo che l'anima fosse essenziale per vivere, ma tu mi smentisci ad ogni respiro. Da cosa dipende allora la scintilla della vita?~
IF ~~ THEN REPLY ~Dipende proprio dall'anima. Anche se all'apparenza sembro star bene, ti assicuro che non è così. Mi sento come se le mie energie fossero i granelli di sabbia di una clessidra. Mentre scivolano lentamente verso il basso, io divento sempre più vuoto.~ GOTO AfterBodhiDeath1-4
IF ~~ THEN REPLY ~E' impossibile vivere senza la propria anima, ma io non faccio testo perchè non sono un comune mortale. Tu probabilmente a quest'ora saresti già morto.~ GOTO AfterBodhiDeath1-5
IF ~~ THEN REPLY ~Ai filosifi l'ardita sentenza.~ GOTO AfterBodhiDeath1-6
END

IF ~~ THEN AfterBodhiDeath1-4
SAY ~... Se questo è il prezzo da pagare per avere dei natali divini, preferisco tenermi stretta la mia mediocrità.~
IF ~~ THEN GOTO AfterBodhiDeath1-7
END

IF ~~ THEN AfterBodhiDeath1-5
SAY ~Sì, sì, ho capito che sei speciale, ma anche tu hai difetti. Ti ho visto ieri sera mentre ti scaccolavi il naso, cosa credi?~
IF ~~ THEN  GOTO AfterBodhiDeath1-7
END

IF ~~ THEN AfterBodhiDeath1-6
SAY ~Mia mamma diceva sempre che chiunque abbia una visione del mondo è filosofo. Non è necessaria un'etichetta per pronunciarsi su interrogativi universali.~
IF ~~ THEN  GOTO AfterBodhiDeath1-7
END

IF ~~ THEN AfterBodhiDeath1-7
SAY ~Ad ogni modo, direi che è tempo di spedire nell'Abisso quella perfida meretrice, giusto? Inoltre dobbiamo riportare ai gambelunghe la loro lampada tascabile, anche se vorrei andare a trovare Mitsu prima di lasciare nuovamente la città.~
= ~Siamo stati lontani da Athkatla per molto tempo, ma dubito che durante la nostra assenza mi abbia cercato. Di sicuro quell'arpia starà facendo carte false per non darmi la nomina che merito!~
IF ~~ THEN DO ~SetGlobal("tb#ShadowsThievesJobs","GLOBAL",8)~ UNSOLVED_JOURNAL ~Stivan e i Ladri Tenebrosi

Dal momento che non ha più ricevuto notizie da Mitsu, Stivan vorrebbe fare un salto alla Gilda per reclamare la nomina che gli spetta.~ EXIT
END
END

CHAIN IF WEIGHT #-2 ~IsGabber("tb#stiv") Global("tb#ShadowsThievesJobs","GLOBAL",8)~ THEN arnman03 ThirdJob
~Ehilà, amici! E' proprio vero che chi non viene colto con le mani nel sacco si rivede!~
== arnman04 ~Uhm? Cosa ci fai qui, Cacciatore?~
== tb#stivj ~Heh. Ti ringrazio per il benvenuto. Mi chiedevo se ti fossi finalmente decisa a darmi la nomina che merito.~
== arnman04 ~Allora devi avermi letto nel pensiero, ragazzino, perchè stavo proprio pensando ad una missione adatta per te.~
== arnman03 ~In realtà Mitsu ha borbottato qualcosa del tipo "Vediamo a chi riesco a rifilare questa patata bollente".~
== arnman04 ~Cuchul!~
== arnman03 ~Ehm... L'ho detto ad alta voce?~
== arnman04 ~Allontana i tuoi amici, ragazzo. Qui ci sono troppe orecchie indiscrete, e non voglio che mi senta nessuno.~
== arnman03 ~<CHARNAME> può restare. Gaelan ha detto che ci si può fidare di <PRO_HIMHER>.~
== arnman04 ~E sia. Gli altri, fuori dai piedi.~
DO ~SetGlobal("tb#ShadowsThievesJobs","GLOBAL",9)~
BRANCH ~IsValidForPartyDialog("Yoshimo")~ BEGIN
== arnman04 ~Aspetta. Tu puoi rimanere. Mi ispiri simpatia.~
== YOSHJ ~La ringrazio, signorina.~
== arnman03 ~Ti ha messo gli occhi addosso da quando ti ha visto, amico. Gatta ci cova...~
== arnman04 ~Oh, chiudi un pò la bocca, Cuchul!~
== YOSHJ ~Sono lusingato dalle vostre attenzioni. Magari più tardi potremmo parlare in privato?~
== arnman03 ~Oho!~
== arnman04 ~(Arrossisce) Beh, questo non me l'aspettavo...~
== tb#stivj ~*Ahem* Non vorrei interrompere qualcosa, ma sto aspettando che tu mi dica qual è il mio compito.~
== arnman04 ~Uh? Eh? Ah, sì, il tuo compito. Ti darò tutte le indicazioni necessarie non appena i tuoi amici saranno fuori vista.~
END
EXIT

CHAIN IF WEIGHT #-1 ~IsGabber("tb#stiv") Global("tb#ShadowsThievesJobs","GLOBAL",9)
OR(3) !IsValidForPartyDialog(Player2) Name("Yoshimo",Player2) Name("tb#stiv",Player2)
OR(3) !IsValidForPartyDialog(Player3) Name("Yoshimo",Player3) Name("tb#stiv",Player3)
OR(3) !IsValidForPartyDialog(Player4) Name("Yoshimo",Player4) Name("tb#stiv",Player4)
OR(3) !IsValidForPartyDialog(Player5) Name("Yoshimo",Player5) Name("tb#stiv",Player5)
OR(3) !IsValidForPartyDialog(Player6) Name("Yoshimo",Player6) Name("tb#stiv",Player6)
~ THEN arnman04 ThirdJob1
~Allora, ragazzino. La missione che sto per assegnarti è pericolosa. *Molto* pericolosa. Non mi stupirei se decidessi di rinunciarvi.~
== tb#stivj ~Nulla può essere più pericoloso di quello stormo di gabbiani che ho affrontanto qualche mese fa proprio qui ai Moli. Quegli uccellacci erano più assetati di sangue di... di...~
== arnman03 ~Gabbiani?~
== arnman04 ~Assetati di sangue?~
== tb#stivj ~*Ahem* Ne parleremo un'altra volta.~
== arnman04 ~Negli ultimi tempi i cavalieri del Nobilissimo Ordine del Cuore Radioso hanno iniziato a darci fastidio. Hanno arrestato alcuni dei nostri mentre stavano aiutando un nobile a sbarazzarsi di suppellettili superflue, non so se mi spiego.~
== arnman03 ~Quello a cui Mitsu vuole arrivare è che dobbiamo ricambiare l'offesa subita. Non possiamo permetterci altri seccatori; la gilda rivale è più che sufficiente. ~
== arnman04 IF ~!IsValidForPartyDialog("Yoshimo")~ THEN ~Esatto, Cuchul. Ed è qui che entrate in gioco tu e il tuo amico <CHARNAME>.~
== arnman04 IF ~IsValidForPartyDialog("Yoshimo")~ THEN ~Esatto, Cuchul. Ed è qui che entrate in gioco tu, il tuo amico <CHARNAME> e l'altro giovanotto.~
== arnman04 ~Per alcuni giorni il Cuore Radioso ospiterà nelle proprie sale una delegazione di seguaci di Tyr proveniente da Cormyr. Pare siano giunti in città per una delle loro celebrazioni, e portano con sè un artefatto noto come lo Scudo del Mancino.~
== arnman03 ~Rubarlo è impossibile. E' sorvegliato da mattina a sera, e le guardie non permettono a nessuno al di fuori dell'Ordine e della congregrazione di avvicinarvisi.~
== arnman04 ~Ciò che ti chiediamo è un massacro, Stivan. Una chiara dimostrazione del fatto che i Ladri Tenebrosi governano la città e che nessuno deve metterci i bastoni tra le ruote. Ci stai?~
== tb#stivj ~Tu forse non lo sai, ma mi stai dando l'opportunità che sogno da una vita!Certo che ci sto!~
BRANCH ~IsValidForPartyDialog("Yoshimo")~ BEGIN
== YOSHJ ~Questa è una pazzia. Nel caso dovessimo sopravvivere, cosa di cui dubito, le alte sfere dell'Ordine faranno il possibile per darci la caccia.~
== arnman03 ~Tranquillo, amico. Mitsu non ti lascerebbe certo alla loro mercè - farebbe il possibile per proteggerti.~
== arnman04 ~Beh, un compagno va sempre tutelato, no?~
== arnman03 ~Compagno? Volevi dire "fratello", vero?~
== arnman04 ~Ehm... Sì.~
END
== arnman04 ~Hai il tuo compito, Cacciatore. Non c'è bisogno che ti dica dove si trova la base di quei maledetti paladini, pertanto và e compi la nostra vendetta!~
== tb#stivj ~Heh. Agli ordini, capo!~
== arnman03 ~Una volta conclusa questa missione, sarai un Ladro Tenebroso a tutti gli effetti.~
== arnman04 ~Spetta a me deciderlo!~
== arnman03 ~Piantala di fare la capricciosa, Mitsu, o farò rapporto a Gaelan. Mi sono spiegato?~
== arnman04 ~(Urla) Dannati uomini! Fate sempre il possibile per mettere in discussione il primato di una donna! E' da quando sono qui che cercate di spodestarmi! Pensate di poter fare i prepotenti con noi soltanto perchè avete tre gambe, ma vi assicuro che...~
== arnman03 ~... Vi consiglio di andare, fratelli. La mia amica ha appena iniziato uno dei suoi monologhi in cui ci accusa di essere dei maschilisti...~
END IF ~~ THEN UNSOLVED_JOURNAL ~Stivan e i Ladri Tenebrosi

Mitsu ha affidato a Stivan una nuova missione: recuperare uno scudo sacro in mano ad una delegazione di seguaci di Tyr da poco giunta da Cormyr e ospitata dall'Ordine del Cuore Radioso. Pare che l'artefatto sia custodito in maniera così serrata da renderne impossibile il furto. Devo ancora decidere se aiutare l'halfling in questa missione o meno.~ DO ~SetGlobal("tb#ShadowsThievesJobs","GLOBAL",10)~
EXIT

CHAIN IF WEIGHT #-1 ~AreaCheck("ar0903") Global("tb#stivanar0903","GLOBAL",0) Global("tb#ShadowsThievesJobs","GLOBAL",10)~ THEN tb#stivj inar0901
~Questo luogo è così pieno di paladini che mi viene il voltastomaco! Bah... Pronti alla strage, <CHARNAME>?~
DO ~SetGlobal("tb#stivanar0903","GLOBAL",1)~
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
IF ~!Alignment(Player1,MASK_GOOD)~ THEN REPLY ~Il primo colpo è *mio*!~ EXTERN tb#stivj inAr0903-1
IF ~!Alignment(Player1,MASK_GOOD)~ THEN REPLY ~Scordatelo. Piacerebbe anche a me, ma questo è un suicidio.~ EXTERN tb#stivj inAr0903-2
IF ~!Alignment(Player1,MASK_EVIL)~ THEN REPLY ~Scordatelo. Non ho intenzione di inimicarmi questi difensori del bene.~ EXTERN tb#stivj inAr0903-2
IF ~!Alignment(Player1,MASK_EVIL)~ THEN REPLY ~Non ho mai acconsentito ad una cosa del genere, Stivan. Non commetterò una simile mostruosità.~ EXTERN tb#stivj inAr0903-2
IF ~!Alignment(Player1,MASK_EVIL)~ THEN REPLY ~Assolutamente no. Non ci macchieremo le mani di sangue per futili motivi. ~ EXTERN tb#stivj inAr0903-2

CHAIN IF ~~ THEN tb#stivj inAr0903-1
~Yeah! Diamo inizio alle danze, gente!~ DO ~SetGlobal("TempleShout0903","GLOBAL",1)~
== KELDORJ IF ~InParty("Keldorn") !StateCheck("keldorn",CD_STATE_NOTVALID)~ THEN ~Cosa state facendo? All'armi, fratelli, all'armi!~ DO ~LeaveParty() Enemy()~
== ANOMENJ IF ~InParty("anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenIsNotKnight","GLOBAL",1)~ THEN ~Tradimento! Muori, <CHARNAME>!~ DO ~LeaveParty() Enemy()~
EXIT

APPEND tb#stivj
IF ~~ THEN inAr0903-2
SAY ~Ma... Ma in questo modo Mitsu non mi ammetterà tra i Ladri Tenebrosi! Non aspetta altro che una simile occasione per sbarazzarsi di me!~
IF ~~ THEN REPLY ~Non è un mio problema.~ EXTERN tb#stivj inAr0903-3
IF ~~ THEN REPLY ~Mi spiace, ma non voglio avere sulla coscienza le morti di persone innocenti.~ EXTERN tb#stivj inAr0903-3
IF ~~ THEN REPLY ~Oh, già. Allora non perdiamo tempo e sbrighiamo questa cosa al più presto.~ EXTERN tb#stivj inAr0903-1
END

IF ~~ THEN inAr0903-3
SAY ~Per favore... Per favore, <CHARNAME>, vienimi incontro. Sono stato al tuo fianco per tutto questo tempo cercando di aiutarti al meglio delle mie possibilità; perchè tu non fai altrettanto? Perchè esigi che gli altri ti sostengano quando tu non fai lo stesso con loro?~
IF ~~ THEN REPLY ~Ipocrita. Ti ho offerto un posto nella mia compagnia e hai il coraggio di darmi dell'ingrato?~ EXTERN tb#stivj inAr0903-4 
IF ~~ THEN REPLY ~Non cercare di abbindolarmi con i tuoi giochi di parole. Sono irremovibile nella mia decisione.~ EXTERN tb#stivj inAr0903-4
IF ~Class(Player1,PALADIN)~ THEN REPLY ~Il crimine che mi chiedi di commettere nei confronti dei miei fratelli è inaccettabile, Stivan. Non c'è altro da aggiungere.~ EXTERN tb#stivj inAr0903-4 
IF ~~ THEN REPLY ~(Sospiro) E sia. Ma smettila di fissarmi con quegli occhioni supplicanti, okay?~ EXTERN tb#stivj inAr0903-1
END

IF ~~ THEN inAr0903-4
SAY ~(Snort!) Se la metti così, il minimo che tu possa fare è convincere Mitsu a non punirmi con l'espulsione o con qualsiasi cosa abbia in serbo per coloro che non portano a termine i suoi incarichi!~
IF ~~ THEN REPLY ~Sì, non c'è problema. Ci penso io a farla ragionare.~ EXTERN tb#stivj inAr0903-5
IF ~~ THEN REPLY ~Proverò, ma non ti garantisco nulla.~ EXTERN tb#stivj inAr0903-5
IF ~~ THEN REPLY ~Non voglio più immischiarmi nelle faccende di quella dannata gilda, Stivan. Me ne lavo le mani.~ EXTERN tb#stivj inAr0903-6
IF ~~ THEN REPLY ~Mi hai convinto, preferisco uccidere uomini innocenti piuttosto che ragionare con Mitsu. Preparati alla battaglia.~ EXTERN tb#stivj inAr0903-1
END

IF ~~ THEN inAr0903-5
SAY ~Torniamo ai Moli, allora. Voglio proprio vedere come e se riuscirai a persuadere quella strega a non prendersela con me.~
IF ~~ THEN UNSOLVED_JOURNAL ~Stivan e i Ladri Tenebrosi

Mi sono rifiutato di compiere il massacro necessario per recuperare lo Scudo del Mancino. Ciò nonostante, ho rassicurato Stivan promettendogli che avrei persuaso Mitsu a non interrompere il suo addestramento.~
DO %SetGlobal("tb#ShadowsThievesJobs","GLOBAL",20) EraseJournalEntry(~Stivan e i Ladri Tenebrosi

Mitsu ha affidato a Stivan una nuova missione: recuperare uno scudo sacro in mano ad una delegazione di seguaci di Tyr da poco giunta da Cormyr e ospitata dall'Ordine del Cuore Radioso. Pare che l'artefatto sia custodito in maniera così serrata da renderne impossibile il furto. Devo ancora decidere se aiutare l'halfling in questa missione o meno.~)%
EXIT
END

IF ~~ THEN inAr0903-6
SAY ~Dannazione a te, <CHARNAME>! Prima mi consigli di farmi strada tra i Ladri Tenebrosi, poi mi neghi questa possibilità quando si presenta. Và a sbattere la testa contro un albero per chiarirti le idee!~
IF ~~ THEN 
DO %EraseJournalEntry(~Stivan e i Ladri Tenebrosi

Mitsu ha affidato a Stivan una nuova missione: recuperare uno scudo sacro in mano ad una delegazione di seguaci di Tyr da poco giunta da Cormyr e ospitata dall'Ordine del Cuore Radioso. Pare che l'artefatto sia custodito in maniera così serrata da renderne impossibile il furto. Devo ancora decidere se aiutare l'halfling in questa missione o meno.~) SetGlobal("tb#ShadowsThievesJobs","GLOBAL",100) SetGlobalTimer("tb#StivanAngry","GLOBAL",ONE_DAY)% EXIT
END
END

CHAIN IF WEIGHT #-1 ~AreaCheck("ar0903") Dead("Heartg1")
Dead("Heartg2")
Dead("Heartg3")
Dead("Heartg4")
Dead("Heartg5")
Global("tb#stivanClearedAR0903","GLOBAL",0)~ THEN tb#stivj ClearedAr0903
~(Pant) Ce... Ce l'abbiamo fatta!~
DO ~SetGlobal("tb#stivanClearedAR0903","GLOBAL",1) SetGlobal("tb#ShadowsThievesJobs","GLOBAL",11)~
BRANCH ~IsValidForPartyDialog("Korgan")~ BEGIN
== KORGANJ ~Per i Nove Inferi! Quei fetenti avevano addosso più ferro delle miniere di Pietra di Sangue!~
== TB#STIVJ ~... Immagino che le considerazioni a riguardo siano scontate.~
== KORGANJ ~Che dire? Mi hai lasciato senza parole, ragazzo. Hai del fegato, quando vuoi.~
== TB#STIVJ ~E' stato uno scontro decisamente impegnativo, ma... Heh. Se lo meritavano.~
END
EXIT

CHAIN IF WEIGHT #-1 ~Global("tb#ShadowsThievesJobs","GLOBAL",20)~ THEN arnman04 FourthJob
~Ebbene, Cacciatore? Hai dato una lezione a quegli sbruffoni?~
== tb#stivj ~(Snort!) Prego, <CHARNAME>! Spiegale cosa diavolo ti è saltato in testa!~
END
IF ~~ THEN REPLY ~Spiacente, Mitsu, ma non abbiamo intenzione di svolgere il tuo incarico.~ EXTERN arnman04 FourthJob1-5
IF ~~ THEN REPLY ~I Paladini sono vivi, e continueranno ad esserlo. Non li uccideremo per soddisfare i tuoi capricci.~ EXTERN arnman04 FourthJob1-5
IF ~~ THEN REPLY ~Credo che la tua vera intenzione fosse quella di sbarazzarti di noi. Altrimenti per quale motivo ci avresti mandato a sterminare un manipolo di guerrieri armati sino ai denti?~ GOTO FourthJob1-5
IF ~Class(Player1,PALADIN)~ THEN REPLY ~Sei una folle se credi che avrei fatto del male ai miei fratelli.~ EXTERN arnman04 FourthJob1-5


CHAIN IF ~~ THEN arnman04 FourthJob1-5
~Davvero? Beh, questo è un peccato. Per il tuo amichetto, intendo. Un tale rifiuto ha appena fatto sfumare le sue possibilità di un futuro qui nella gilda. E pensare che mi ero quasi abituata all'idea di un altro ladro halfling tra di noi.~
== tb#stivj ~Fantastico. Adesso il futuro non mi riserva altro che... che la spazzatura e lo squallore di prima!~
END
IF ~~ THEN REPLY ~Non è questo il posto dove troverai la tua strada, Stivan, ma posso assicurarti che non ti abbandonerò in un vicolo di Athkatla.~ EXTERN tb#stivj FourthJob1-6
IF ~~ THEN REPLY ~Sarebbe questa la fiducia in te stesso che sostenevi di aver acquisito? Se tornerai ad essere povero, sarà per mancanza di determinazione, non per colpa mia!~ EXTERN tb#stivj FourthJob1-6
IF ~~ THEN REPLY ~Non così in fretta. Cuchul, l'ultima volta hai detto che avresti fatto rapporto a Gaelan se la piccoletta avesse causato fastidi.~ EXTERN arnman03 FourthJob1-7
IF ~~ THEN REPLY ~Andiamo, Mitsu, non fare la difficile. Perchè non ci assegni un altro incarico? Possibilmente uno che non richieda massacri come il precedente.~ EXTERN arnman04 FourthJob1-8

CHAIN IF ~~ THEN tb#stivj FourthJob1-6
~...~
= ~... Andiamocene. Stare qui non ha più senso ora. Ho bisogno di tempo per... pensare.~
== arnman03 ~Mi dispiace, amico. Io sarò qui se avrai bisogno di una mano.~
== tb#stivj ~Lo terrò a mente. Grazie.~
END IF ~~ THEN
SOLVED_JOURNAL ~Stivan e i Ladri Tenebrosi

Non recuperare lo Scudo del Mancino ha significato interrompere la carriera di Stivan tra i Ladri Tenebrosi. Inizialmente furioso, l'halfling si è ora chiuso in un profondo silenzio.~
DO %EraseJournalEntry(~Stivan e i Ladri Tenebrosi

Mitsu ha affidato a Stivan una nuova missione: recuperare uno scudo sacro in mano ad una delegazione di seguaci di Tyr da poco giunta da Cormyr e ospitata dall'Ordine del Cuore Radioso. Pare che l'artefatto sia custodito in maniera così serrata da renderne impossibile il furto. Devo ancora decidere se aiutare l'halfling in questa missione o meno.~) SetGlobal("tb#ShadowsThievesJobs","GLOBAL",100) SetGlobalTimer("tb#StivanAngry","GLOBAL",ONE_DAY)%
EXIT

APPEND arnman03
IF ~~ THEN FourthJob1-7
SAY ~Ehm... L'ho detto davvero?~
IF ~~ THEN EXTERN arnman04 FourthJob1-9
END
END

APPEND arnman04
IF ~~ THEN FourthJob1-8
SAY ~Non penso proprio! Il fatto che tu sia il prediletto di Aran non significa che *io* debba accondiscendere ad ogni tuo capriccio!~
IF ~~ THEN GOTO FourthJob1-9
END

IF ~~ THEN FourthJob1-9
SAY ~Noi Ladri Tenebrosi abbiamo delle regole precise. Chi non porta a termine una missione per motivi personali è fuori, punto e basta. Non concediamo seconde possibilità.~
IF ~Global("PlayerThiefGuild","GLOBAL",1) Global("PGFailed","GLOBAL",1) CheckStatLT(Player1,13,CHR)~ THEN REPLY ~Ti conviene essere collaborativa, sai? Dispongo delle risorse per renderti la vita difficile. Dopotutto, sono a capo di una gilda di Ladri.~ EXTERN arnman03 FourthJob1-10
IF ~Global("PlayerThiefGuild","GLOBAL",1) Global("PGFailed","GLOBAL",1) CheckStatGT(Player1,12,CHR)~ THEN REPLY ~Ti conviene essere collaborativa, sai? Dispongo delle risorse per renderti la vita difficile. Dopotutto, sono a capo di una gilda di Ladri.~ GOTO FourthJob1-11
IF ~~ THEN REPLY ~Come desideri. Mi limiterò a riferire al Cuore Radioso del vostro piano, dettaglio per dettaglio. Immagino ti farà piacere ricevere una loro visita.~ GOTO FourthJob1-11
IF ~~ THEN REPLY ~Non ti conviene avermi come nemico. Vuoi forse provare sulla tua pelle ciò che ho fatto ai seguaci di Bodhi?~ GOTO FourthJob1-11
IF ~CheckStatLT(Player1,13,CHR)~ THEN REPLY ~Dubito che i tuoi superiori approvino ciò che hai appena detto. Piantala di fare la prima donna, altrimenti li metterò al corrente delle tue buffonate.~ EXTERN arnman03 FourthJob1-10
IF ~CheckStatGT(Player1,12,CHR)~ THEN REPLY ~Dubito che i tuoi superiori approvino ciò che hai appena detto. Piantala di fare la prima donna, altrimenti li metterò al corrente delle tue buffonate.~ GOTO FourthJob1-11
IF ~Class(Player1,MAGE_ALL)~ THEN REPLY ~Attenta a ciò che dici. Mi basta schioccare le dita per trasformarti in un topo da dare in pasto ai randagi dei Moli.~ GOTO FourthJob1-11
IF ~~ THEN REPLY ~Messaggio ricevuto. Non insisterò oltre.~ EXTERN tb#stivj FourthJob1-6
END
END

CHAIN IF ~~ THEN arnman03 FourthJob1-10
~Non credo che minacciare Mitsu sia stata una buona idea...~
== arnman04 ~Credi davvero che sarei arrivata al punto dove oggi mi trovo se mi facessi intimorire così facilmente da un <PRO_RACE> da quattro soldi come te? Sono irremovibile. Non vi resta che farvene una ragione.~
EXTERN tb#stivj FourthJob1-6

CHAIN IF ~~ THEN arnman04 FourthJob1-11
~Va bene, va bene, rimaniamo CALMI. Non c'è bisogno di complicare le cose. Per questa volta potrei chiudere un occhio... ma a due condizioni.~
= ~Questa trasgressione non può passare impunita, quindi dovrete pagare una multa di circa... 500 monete d'oro.~
== arnman03 ~Da quando comminiamo multe?~
== arnman04 ~... Hai appena perso la tua parte, Cuchul.~
== arnman03 ~Oops.~
== arnman04 ~In aggiunta, dovrete risolvere una questione fastidiosa. Roba adatta per dei maschietti senza ambizioni come il mio collega.~
== arnman03 ~Ehi, ti ho sentita!~
== arnman04 ~C'è una tipa nel Quartiere Governativo, un'indipendente per la precisione, che si sta dedicando ad attività particolarmente redditizie senza il nostro permesso. Fatele capire che se continua a lavorare in proprio calpesterà i piedi alla gente sbagliata.~
END
IF ~~ THEN REPLY ~Che genere di attività gestisce?~ EXTERN arnman03 FourthJob1-12
IF ~~ THEN REPLY ~Come la riconosco?~ EXTERN arnman03 FourthJob1-13
IF ~PartyGoldGT(499)~ THEN DO ~TakePartyGold(500) DestroyGold(500)~ REPLY ~Affare fatto. Tieni, ecco il denaro per la "multa".~ GOTO FourthJob1-14
IF ~PartyGoldLT(500)~ THEN REPLY ~Ci sto, ma non ho abbastanza monete d'oro con me.~ GOTO FourthJob1-15

APPEND arnman03
IF ~~ THEN FourthJob1-12
SAY ~Prestiti di denaro con tassi d'interesse a dir poco salati. In un giorno quella donna guadagna più di quanto mi dia la Gilda in un anno!~
IF ~~ THEN REPLY ~Come la riconosco?~ GOTO FourthJob1-13
IF ~PartyGoldGT(499)~ THEN DO ~TakePartyGold(500) DestroyGold(500)~ REPLY ~Affare fatto. Tieni, ecco il denaro per la "multa".~ EXTERN arnman04 FourthJob1-14
IF ~PartyGoldLT(500)~ THEN REPLY ~Ci sto, ma non ho abbastanza monete d'oro con me.~ EXTERN arnman04 FourthJob1-15
END

IF ~~ THEN FourthJob1-13
SAY ~E' così chiassosa ed eccentrica che non avrai problemi a trovarla. Fidati di Mitsu.~
IF ~~ THEN REPLY ~Che genere di attività gestisce?~ GOTO FourthJob1-12
IF ~PartyGoldGT(499)~ THEN DO ~TakePartyGold(500) DestroyGold(500)~ REPLY ~Affare fatto. Tieni, ecco il denaro per la "multa".~ EXTERN arnman04 FourthJob1-14
IF ~PartyGoldLT(500)~ THEN REPLY ~Ci sto, ma non ho abbastanza monete d'oro con me.~ EXTERN arnman04 FourthJob1-15
END
END

APPEND arnman04
IF ~~ THEN FourthJob1-14
SAY ~Perfetto. Svolgi questo compito di bassa lega e il tuo amichetto sarà uno dei nostri a tutti gli effetti.~
IF ~~ THEN DO ~SetGlobal("tb#ShadowThiefFinePaid","GLOBAL",1)~ GOTO FourthJob1-16
END

IF ~~ THEN FourthJob1-15
SAY ~Con che razza di accattone viaggi, Cacciatore? (Sospiro) La gambelunghe di cui ti ho parlato avrà un bel gruzzoletto con se, quindi se sei al verde potrai rifarti a sue spese. Una volta risolto il problema, ti conviene presentarti con le tasche piene, altrimenti perderò la pazienza.~
IF ~~ THEN GOTO FourthJob1-16
END

IF ~~ THEN FourthJob1-16
SAY ~In bocca al lupo!~
IF ~~ THEN UNSOLVED_JOURNAL ~Stivan e i Ladri Tenebrosi

Sono riuscito (a fatica) a convincere Mitsu a darci un'altra missione in modo che Stivan possa rimanere all'interno della gilda. Devo recarmi nel Quartiere Governativo e convincere una ladra indipendente a lasciare la città. Pare che si tratti di una strozzina dai modi stravaganti.~ DO ~SetGlobal("tb#shadowsthievesJobs","GLOBAL",21)~
EXIT
END
END

CHAIN IF ~NumTimesTalkedTo(0)~ THEN TB#sros Rosalina
~Sei un impiegato con uno stipendio così misero da non poterti permettere neanche il più modesto degli harem? Oppure sei un vecchio libidinoso che sogna di spirare tra le braccia della più seducente tra le concubine?~
= ~Sei un nobile decaduto che vorrebbe indossare nuovamente meravigliosi abiti tessuti da bambini calimshiti ridotti in schiavitù? Oppure sei una semplice contadinotta desiderosa di disfarsi dei propri straccetti rammendati?~
= ~Chiunque tu sia e qualsiasi cosa tu voglia, noi ti possiamo aiutare! Chiedi un prestito a Moneta Sonante!~
= ~Moneta Sonante è il tuo prestito di fiducia. Finanziamenti sino a diecimila monete d'oro in pochi minuti e senza garanzie!~
== tb#sros1 ~Dici sul serio? Niente pegni o ~
== tb#sros ~Sì! Ci basta sapere come ti chiami e dove vanno a scuola i tuoi figli.~
= ~Potete dirlo a voce chiara e forte: finalmente soldi facili per tutti! Le nostre rate hanno appena il quattromil... *Cough cough*... settecen... *Cough cough*... tred... *Cough cough*... tasso d'interesse. Pensate: vi costa poco più di una fortezza al minuto!~
== tb#sros3 ~Sentito, caro? Hai idea del prestigio che guadagneremmo se gli altri nobili sapessero che paghiamo così tanto?~
== tb#sros4 ~Hai ragione, cara. Gli Jyssev morirebbero d'invidia!~
== tb#sros ~Basta privazioni, basta sacrifici! Con Moneta Sonante puoi avere tutto ciò che vuoi *subito*! Inoltre non dovete nemmeno disturbarvi a venire nella nostra sede per saldare le rate: ci teniamo così tanto a voi che manderemo presso la vostra abitazione un apposito incaricato.~
= ~Lasciate che ve lo presenti. Vieni, Carlino!~
== TB#SCAR ~Me Carlino!~
== tb#sros ~Non è amorevole?~
= ~Per ulteriori informazioni o dettagli, sentitevi liberi di consultare il nostro regolamento. E' proprio qui, affisso sul petto del nostro tenero Carlino.~
== tb#sros2 ~Ma è scritto in lingua goblin!~
== tb#sros ~Con Moneta Sonante puoi permetterti anche un corso intensivo di questa incomprensibile lingua. Pensa all'ebrezza e alla soddisfazione di capire ogni singola parola di goblin intenti ad appendere te e la tua famiglia ad un albero!~
== tb#sros2 ~...~
== tb#sros ~Coraggio, fatevi avanti!~
DO ~ActionOverride("tb#sros1",EscapeArea()) ActionOverride("tb#sros2",EscapeArea()) ActionOverride("tb#sros3",EscapeArea()) ActionOverride("tb#sros4",EscapeArea()) ~
EXIT

CHAIN IF ~IsValidForPartyDialog("tb#stiv") !Allegiance(Myself,ENEMY)~ THEN tb#sros rosalina2
~Tu, laggiù! Hai chiaramente bisogno di una pulita. Chiedici un prestito, e le prestigiose terme di Waterdeep toglieranno buona parte delle tue croste e muffe, se non tutte!~
== tb#stivj ~(Snort!) Perchè sono tutti ossessionati dalla mia igiene personale?~
BRANCH ~IsValidForPartyDialog("Mazzy")~ BEGIN
== tb#sros ~Puoi portare anche la tua compagna. Insomma, guardate come sono carini. E' proprio vero che Ao li fa e poi li accoppia!~
== MAZZYJ ~(Arrossisce) Non sono la sua compagna! Ah, sei terribilmente fastidiosa!~
END
== tb#sros ~Tu, laggiù! Vuoi un prestito?~
END
IF ~~ THEN REPLY ~Non mi interessa il tuo sporco denaro. Sono qui per volere dei Ladri Tenebrosi.~ GOTO MonetaSonante1-1
IF ~~ THEN REPLY ~A ben pensarci... Sì. Mi servirebbero 500 monete d'oro.~ GOTO MonetaSonante1-2

APPEND TB#sros
IF ~~ THEN MonetaSonante1-1
SAY ~Vuoi un Ladro Tenebroso? Con Moneta Sonante *puoi*!~
IF ~~ THEN REPLY ~Non ci siamo capiti. La tua attività di strozzinaggio ha infastidito i Ladri Tenebrosi, e mi hanno chiesto di persuaderti ad andartene.~ GOTO MonetaSonante1-3
END

IF ~~ THEN MonetaSonante1-2
SAY ~Meraviglioso! Ecco, usale come meglio credi. Ho soltanto bisogno di sapere come ti chiami e quali luoghi sei solito frequentare.~
IF ~~ THEN REPLY ~Ne dubito. I Ladri Tenebrosi vogliono che tu ponga fine alla tua attività. Li infastidisce molto il fatto che qualcuno si dedichi a estorsioni di denaro in proprio.~ GOTO MonetaSonante1-3
END

IF ~~ THEN MonetaSonante1-3
SAY ~Davvero? E dimmi, chi avrei "infastidito" di preciso?~
IF ~~ THEN REPLY ~Mai sentito parlare di una certa Mitsu?~ GOTO MonetaSonante1-4
END

IF ~Dead("tb#scar") HPLT(Myself,2)~ THEN flee
SAY ~Ma... Maledetti! Non finisce qui!~
IF ~~ THEN DO ~SetGlobal("tb#ShadowsThievesJobs","GLOBAL",23) EscapeArea()~ EXIT
END
END

CHAIN IF ~~ THEN tb#sros MonetaSonante1-4
~Mi... Mitsu? Quella stupida e perfida nanetta? Ma... CARLINO?!?~
== TB#SCAR ~S-sì, padrona?~
== tb#sros  ~Non ti avevo detto di sistemare quella detestabile insolente una volta per tutte?!~
== TB#SCAR ~Carlino provato ci ha... Ma la baby halfling bua ha fatto a Carlino!~
== tb#sros  ~La bua, eh? Dovessi slogarmi il polso, ti assicuro che faranno molto più male i miei schiaffi!~
== TB#SCAR ~Ahi! Ahi!!~
== tb#sros  ~Stupido decerebrato! Quanto a te... (Sorride) Perdonami per questo *piccolo* contrattempo. Sono certa che troveremo un mutuo accordo che soddisfi entrambe le parti.~
= ~Quanto vuoi? Una? Due? Tre monete d'oro? Prendi la grana e sparisci. Ho degli affari da portare avanti.~
== tb#stivj ~(Snort!) Adesso mi sono VERAMENTE stufato! Prendi questo!~
== tb#sros  ~Aarghh!~
== tb#stivj ~Heh. Carcassa di gabbiano fresca. Immagino faccia male riceverla in faccia.~
== tb#sros  ~Ca... Carlino! Proteggi la tua padrona!~
== TB#SCAR ~Subito! Clienti cattivi vedersela con Carlino!~
END
IF ~~ THEN DO ~ActionOverride("tb#scar",Enemy()) ActionOverride("tb#sros",Enemy())~ EXIT

CHAIN IF WEIGHT #-1 ~OR(2) Global("tb#ShadowsThievesJobs","GLOBAL",23) PartyHasItem("tb#sshi")~ THEN arnman04 final
~Posso sapere perchè continui a lamentarti, Cuchul?~
== arnman03 ~Perchè mi sto annoiando! Non faccio altro che scrivere lettere di condoglianze da ore, quando le mie abili dita vorrebbero dedicarsi a ben altro!~
== arnman04 ~La guerra con la gilda rivale ha mietuto molte vittime. Preferisci che ti mandi di casa in casa ad annunciare la morte di questo o quell'altro compagno?~
BRANCH ~Global("tb#ShadowsThievesJobs","GLOBAL",23)~ BEGIN
== arnman04 ~(Sospiro) Hai qualcosa da dirmi, Cacciatore? Ti sei occupato della strozzina?~
== tb#stivj ~L’abbiamo convinta ad andarsene, anche se "eccentrica" non rende giustizia alla sua personalità. "Matta" mi sembra più appropriato.~
== arnman03 ~E il suo bestione?~
== tb#stivj ~Se ti riferisci all’addetto alla riscossione, non rappresenta più un problema.~
== arnman04 ~Buono a sapersi. Quei due erano una vera spina nel fianco. Spettava al mio collega occuparsene, ma ovviamente ha fallito.~
== arnman03 ~Era impossibile resistere ad una simile promessa di denaro!~
== arnman04 ~A proposito di denaro, hai con te la somma necessaria per la multa?~
== tb#stivj ~Sì. Direttamente dalle mani di quel’amabile strozzina.~
END
BRANCH ~PartyHasItem("tb#sshi")~ BEGIN
== arnman04 ~(Sospiro) Hai qualcosa da dirmi, Cacciatore? Hai recuperato lo Scudo del Mancino?~
== tb#stivj ~*Noi* l'abbiamo recuperato. Da solo sarebbe stata un'impresa impossibile.~
== arnman03 ~Per il pugnale di Mask! <CHARNAME> e il ragazzino hanno davvero rubato quell'ammasso di latta!~
== arnman04 ~Sono esterrefatta. Non avrei mai pensato che ci sareste riusciti. Hai idea di quanto valga un simile artefatto sul mercato nero?~
== tb#stivj ~So soltanto che è tanto pesante quanto inutile. Piuttosto, non credi che i paladini cercheranno di riprenderselo?~
== arnman04 ~Non hai nulla da temere. Ho intenzione di darlo in custodia a Booter - con lui sarà decisamente al sicuro.~
DO ~TakePartyItem("tb#sshi") DestroyItem("tb#sshi")~
END
== arnman04 ~Beh, a questo punto... Se le cose stanno così... Voglio dire...~
== arnman03 ~Quello che Mitsu sta cercando di dirti è che sei ufficialmente un Ladro Tenebroso. Benvenuto tra noi, fratello!~
== tb#stivj ~Yeah! Finalmente ce l'ho fatta! Sììì!~
== arnman03 ~Quando iniziamo?~
== tb#stivj ~Tornerò quando <CHARNAME> avrà recuperato una cosa di cui non proprio può fare a meno. Heh.~
== arnman04 ~Sì, Aran mi ha parlato di questa eventualità. Cerca di non farti ammazzare, Cacciatore. Ormai mi sono abituata all'idea di averti in squadra.~
== tb#stivj ~Farò del mio meglio per non deluderti. Al mio ritorno formeremo il più temibile dei terzetti! Ci chiameremo...~
= ~*Ahem* Il nome non è una priorità al momento.~
= ~<CHARNAME>, io... Non so cos'altro dirti se non grazie. Di cuore.~
== arnman03 ~Abbiate cura di voi!~
END
IF ~~ THEN SOLVED_JOURNAL ~Stivan e i Ladri Tenebrosi

Mitsu è al corrente del nostro successo. Ora Stivan è un Ladro Tenebroso a tutti gli effetti, e finalmente ha un posto da poter chiamare casa.~ DO ~SetGlobal("tb#ShadowsThievesJobs","GLOBAL",102)~
EXIT

