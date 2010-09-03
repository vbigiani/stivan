BEGIN TB#STIVB

IF ~InParty("tb#stiv")
InParty(Player1)
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanPCTalk","GLOBAL",0)~ THEN StivanPC1
SAY ~Sai, <CHARNAME>, sono veramente contento che tu mi abbia chiesto di viaggiare al tuo fianco. Grazie a te non soffro più la fame e potrò dare ai miei familiari un luogo in cui riposare indisturbati. Non mi sentivo così carico da anni, ormai!~
IF ~~ THEN DO ~SetGlobal("tb#StivanPCTalk","GLOBAL",1)~ REPLY ~Sei sempre stato povero, Stivan?~ GOTO StivanPC1-1
IF ~~ THEN DO ~SetGlobal("tb#StivanPCTalk","GLOBAL",1)~ REPLY ~Eppure mi sembrava che ti piacesse vendere piume.~ GOTO StivanPC1-2
IF ~~ THEN DO ~SetGlobal("tb#StivanPCTalk","GLOBAL",1)~ REPLY ~Mi fa piacere saperlo. La tua conoscenza della città si è rivelata estremamente utile.~ GOTO StivanPC1-3
IF ~~ THEN DO ~SetGlobal("tb#StivanPCTalk","GLOBAL",1)~ REPLY ~Ottimo. Continuiamo il nostro cammino ben determinati, allora.~ GOTO StivanPC1-4
END

IF ~~ THEN  StivanPC1-1
SAY ~Oh no. Un tempo vivevo in condizioni di gran lunga migliori!~
IF ~~ THEN GOTO StivanPC1-5
END

IF ~~ THEN StivanPC1-2
SAY ~*Ahem* Vendere piume era un espediente di cui mi servivo per sopravvivere. Preferivo di gran lunga le occupazioni di un tempo.~
IF ~~ THEN GOTO StivanPC1-5
END

IF ~~ THEN StivanPC1-3
SAY ~Heh. La mia conoscenza non si limita alla capitale di Amn, sai? Sono stato in molti altri posti, e adesso ti spiego come e perché.~
IF ~~ THEN GOTO StivanPC1-5
END

IF ~~ THEN StivanPC1-4
SAY ~Yeah! Andiamo!~
= ~Ah, un’ultima cosa. Quando vuoi fare una sosta, potremmo andare alla Locanda dei Cinque Boccali nel Quartiere del Ponte a bere un buon bicchiere di vino. Il proprietario è un halfling come me, anche se io sono molto più simpatico. Heh.~
IF ~~ THEN EXIT
END

IF ~~ THEN StivanPC1-5
SAY ~La mia famiglia gestiva dei vigneti poco fuori Athkatla che venivano tramandati da generazioni. Tutti gli aspetti legati alla coltivazione venivano curati da un socio di mio papà, mentre noi ci occupavamo della vendita del prodotto finale: un vino a dir poco fenomenale!~ 
= ~Ogni anno, dopo la stagione della vendemmia, i miei fratelli ed io partivamo insieme a papino per vendere le nostre botti, mentre la mamma restava a casa per commerciarne una piccola parte con i mercanti locali. Al nostro ritorno, dividevamo le entrate con i Farrahd.~
IF ~~ THEN REPLY ~Quindi hai una certa conoscenza in materia di vini, giusto?~ GOTO StivanPC1-6
IF ~~ THEN REPLY ~Percorrevate sempre le stesse rotte o cambiavate percorso di anno in anno?~ GOTO StivanPC1-7
IF ~~ THEN REPLY ~Non ho capito se abitavate in campagna o in città.~ GOTO StivanPC1-8
IF ~~ THEN REPLY ~E’ stato molto interessante ascoltarti. Adesso però dobbiamo ritornare alle nostre occupazioni.~ GOTO StivanPC1-4
END
 
IF ~~ THEN StivanPC1-6
SAY ~Esatto. Tutto merito di papà!~
IF ~~ THEN GOTO StivanPC1-9
END

IF ~~ THEN StivanPC1-7
SAY ~Un po’ e un po’. I posti dove la vendita era particolarmente proficua costituivano una tappa fissa; quelli che invece non avevano fruttato un granchè li scartavamo a favore di altri in cui non eravamo mai andati.~
IF ~~ THEN GOTO StivanPC1-9
END

IF ~~ THEN StivanPC1-8
SAY ~Abitavamo in città, in una casetta nel Quartiere del Ponte. In campagna invece c’era una grande fattoria dove vivevano i braccianti che lavoravano per noi.~
IF ~~ THEN GOTO StivanPC1-9
END

IF ~~ THEN StivanPC1-9
SAY ~La nostra vita era scandita da un calendario di eventi che mi hanno sempre rassicurato. Tutto si ripeteva secondo una certa ciclicità… Almeno sino a quando non vennero i gabbiani.~
= ~(Snort!) Maledetti uccellacci! Mi sale la bile al sol pronunciare il loro nome! Porto ancora oggi i segni di quell’incontro!~
= ~A giudicare dalle tue cicatrici, anche tu devi aver avuto qualche esperienza turbolenta in passato. Sei forse stato assalito da uno stormo di gabbiani?~ 
IF ~~ THEN REPLY ~Non cambiare discorso, Stivan. Cosa successe?~ GOTO StivanPC1-10
IF ~~ THEN REPLY ~Com’è possibile che dei gabbiani abbiano aggredito la tua famiglia? Non è nella loro natura essere così aggressivi.~ GOTO StivanPC1-11
IF ~Gender(Player1,MALE)~ THEN REPLY ~Queste? Sono il frutto delle torture di Irenicus, il mago che stiamo cercando.~ GOTO StivanPC1-12
IF ~ Gender(Player1,FEMALE)~ THEN REPLY ~Queste? Sono il frutto delle torture di Irenicus, il mago che stiamo cercando.~ GOTO StivanPC1-13
IF ~Gender(Player1,MALE)~ THEN REPLY ~Dunque, vediamo… Questa mi è stata inferta da un coboldo nelle miniere di Nashkel, mentre questa l’ho riportata nella battaglia contro Sarevok a Baldur’s Gate. Oh, dimenticavo *questa*: un regalo di Irenicus, il mago che mi ha catturato e torturato.~ GOTO StivanPC1-12
IF ~ Gender(Player1,FEMALE)~ THEN REPLY ~Dunque, vediamo… Questa mi è stata inferta da un coboldo nelle miniere di Nashkel, mentre questa l’ho riportata nella battaglia contro Sarevok a Baldur’s Gate. Oh, dimenticavo *questa*: un regalo di Irenicus, il mago che mi ha catturato e torturato.~ GOTO StivanPC1-13
IF ~Gender(Player1,MALE)~ THEN REPLY ~Nessun incontro ravvicinato con i gabbiani, per fortuna. Queste sono semplicemente i segni delle ferite riportate nelle ultime battaglie. Le vere cicatrici sono quelle che Irenicus ha inferto al mio animo torturandomi.~ GOTO StivanPC1-12
IF ~ Gender(Player1,FEMALE)~ THEN REPLY ~Nessun incontro ravvicinato con i gabbiani, per fortuna. Queste sono semplicemente i segni delle ferite riportate nelle ultime battaglie. Le vere cicatrici sono quelle che Irenicus ha inferto al mio animo torturandomi.~ GOTO StivanPC1-13 
END

IF ~~ THEN StivanPC1-10
SAY ~(Stivan estrae l’urna con le ceneri dei suoi familiari dallo zaino). Successe *questo*.~
= ~Stavo dicendo: come ti sei procurato quelle cicatrici? Sono forse opera di gabbiani?~
IF ~Gender(Player1,MALE)~ THEN REPLY ~Queste? Sono il frutto delle torture di Irenicus, il mago che stiamo cercando.~ GOTO StivanPC1-12
IF ~ Gender(Player1,FEMALE)~ THEN REPLY ~Queste? Sono il frutto delle torture di Irenicus, il mago che stiamo cercando.~ GOTO StivanPC1-13
IF ~Gender(Player1,MALE)~ THEN REPLY ~Dunque, vediamo… Questa mi è stata inferta da un coboldo nelle miniere di Nashkel, mentre questa l’ho riportata nella battaglia contro Sarevok a Baldur’s Gate. Oh, dimenticavo *questa*: un regalo di Irenicus, il mago che mi ha catturato e torturato.~ GOTO StivanPC1-12
IF ~ Gender(Player1,FEMALE)~ THEN REPLY ~Dunque, vediamo… Questa mi è stata inferta da un coboldo nelle miniere di Nashkel, mentre questa l’ho riportata nella battaglia contro Sarevok a Baldur’s Gate. Oh, dimenticavo *questa*: un regalo di Irenicus, il mago che mi ha catturato e torturato.~ GOTO StivanPC1-13
IF ~Gender(Player1,MALE)~ THEN REPLY ~Nessun incontro ravvicinato con i gabbiani, per fortuna. Queste sono semplicemente i segni delle ferite riportate nelle ultime battaglie. Le vere cicatrici sono quelle che Irenicus ha inferto al mio animo torturandomi.~ GOTO StivanPC1-12
IF ~ Gender(Player1,FEMALE)~ THEN REPLY ~Nessun incontro ravvicinato con i gabbiani, per fortuna. Queste sono semplicemente i segni delle ferite riportate nelle ultime battaglie. Le vere cicatrici sono quelle che Irenicus ha inferto al mio animo torturandomi.~ GOTO StivanPC1-13 
END

IF ~~ THEN StivanPC1-11
SAY ~Poco importa quale sia la loro natura, il risultato è sempre lo stesso!~
= ~Se l’occhio non mi inganna, le tue cicatrici sembrerebbero proprio opera di gabbiani. Non è forse così?~
IF ~Gender(Player1,MALE)~ THEN REPLY ~Queste? Sono il frutto delle torture di Irenicus, il mago che stiamo cercando.~ GOTO StivanPC1-12
IF ~ Gender(Player1,FEMALE)~ THEN REPLY ~Queste? Sono il frutto delle torture di Irenicus, il mago che stiamo cercando.~ GOTO StivanPC1-13
IF ~Gender(Player1,MALE)~ THEN REPLY ~Dunque, vediamo… Questa mi è stata inferta da un coboldo nelle miniere di Nashkel, mentre questa l’ho riportata nella battaglia contro Sarevok a Baldur’s Gate. Oh, dimenticavo *questa*: un regalo di Irenicus, il mago che mi ha catturato e torturato.~ GOTO StivanPC1-12
IF ~ Gender(Player1,FEMALE)~ THEN REPLY ~Dunque, vediamo… Questa mi è stata inferta da un coboldo nelle miniere di Nashkel, mentre questa l’ho riportata nella battaglia contro Sarevok a Baldur’s Gate. Oh, dimenticavo *questa*: un regalo di Irenicus, il mago che mi ha catturato e torturato.~ GOTO StivanPC1-13
IF ~Gender(Player1,MALE)~ THEN REPLY ~Nessun incontro ravvicinato con i gabbiani, per fortuna. Queste sono semplicemente i segni delle ferite riportate nelle ultime battaglie. Le vere cicatrici sono quelle che Irenicus ha inferto al mio animo torturandomi.~ GOTO StivanPC1-12
IF ~ Gender(Player1,FEMALE)~ THEN REPLY ~Nessun incontro ravvicinato con i gabbiani, per fortuna. Queste sono semplicemente i segni delle ferite riportate nelle ultime battaglie. Le vere cicatrici sono quelle che Irenicus ha inferto al mio animo torturandomi.~ GOTO StivanPC1-13 
END

IF ~~ THEN StivanPC1-12
SAY ~Ti ha torturato? E perché mai?~
IF ~~ THEN REPLY ~Essere un figlio di Bhaal comporta questo e ben altro.~ GOTO StivanPC1-16
IF ~~ THEN REPLY ~E’ quello che sto cercando di scoprire. Imoen, la ragazza che è stata imprigionata con me, mi ha detto che voleva esplorare il mio potenziale di figlio di Bhaal, anche se non ho idea di cosa questo significhi.~ GOTO StivanPC1-16
END

IF ~~ THEN StivanPC1-13
SAY ~Cosa?! Stai scherzando, vero? Mia mamma mi ripeteva sempre che le signorine non si toccano neanche con un fiore!~
IF ~~ THEN REPLY ~E’ quello che dico anch’io.~ GOTO StivanPC1-14
IF ~~ THEN REPLY ~Temo che i genitori di Irenicus non abbiano fatto altrettanto.~ GOTO StivanPC1-14
IF ~~ THEN REPLY ~Ehm… Non credo che Irenicus conosca la cavalleria…~ GOTO StivanPC1-14
END

IF ~~ THEN StivanPC1-14
SAY ~Hai idea del perché ti abbia torturata?~
IF ~~ THEN REPLY ~Essere una figlia di Bhaal comporta questo e ben altro.~ GOTO StivanPC1-16
IF ~~ THEN REPLY ~E’ quello che sto cercando di scoprire. Imoen, la ragazza che è stata imprigionata con me, mi ha detto che voleva esplorare il mio potenziale di figlia di Bhaal, anche se non ho idea di cosa questo significhi.~ GOTO StivanPC1-16
END

IF ~~ THEN StivanPC1-16
SAY ~Bhaal? Ho già sentito questo nome…~
= ~Ma certo! E’ quel dongiovanni che durante il Periodo dei Disordini seduceva tutte le donne che incontrava sulla sua strada, giusto?~
IF ~~ THEN REPLY ~Come fai a conoscere quel periodo?~ GOTO StivanPC1-17
IF ~~ THEN REPLY ~Ehm… Non proprio. Bhaal era una divinità malvagia che, conscia della sua futura caduta, ha lasciato una prole che sperava alimentasse la sua rinascita.~ GOTO StivanPC1-18
IF ~~ THEN REPLY ~Io lo chiamerei “Bhaal: dongiovanni nel tempo libero, Signore dell’Omicidio di professione”.~ GOTO StivanPC1-18
END

IF ~~ THEN StivanPC1-17
SAY ~*Ahem* Dall’aspetto non si direbbe, ma io sono più grande di te, sai?~
= ~Ricordo quegli anni. Papà era preoccupatissimo a causa della scomparsa di Waukeen, la dea del commercio. Temeva che gli affari ne avrebbero risentito, e in effetti per un po’ di tempo fu così.~
IF ~~ THEN GOTO StivanPC1-18
END

IF ~~ THEN StivanPC1-18
SAY ~Questo significa che non tu sei un comune <RACE> come gli altri! Vali qualcosa, sotto sotto!~ 
= ~E cosa mi dici di tua madre?~
IF ~~ THEN REPLY ~Non l’ho mai conosciuta. Non so nulla di lei. Né il nome, né l’aspetto… Nulla.~ GOTO StivanPC1-19
IF ~~ THEN REPLY ~Non ho idea di chi sia. Gorion, il mio patrigno, ha sempre evitato l’argomento.~ GOTO StivanPC1-19
IF ~~ THEN REPLY ~Merita solo il mio più profondo disprezzo. Mi ha abbandonato dopo avermi dato alla luce.~ GOTO StivanPC1-19
END

IF ~~ THEN StivanPC1-19
SAY ~Accidenti. La storia della tua vita è più complicata delle trame degli spettacoli che danno alla Locanda dei Cinque Boccali. Ci sei mai stato? E’ nel Quartiere del Ponte. Magari lì potremmo continuare a parlare davanti a un buon bicchiere di vino. Il proprietario è un halfling come me, anche se io sono molto più simpatico. Heh.~ 
IF ~~ THEN EXIT
END







/*

Nei banter di Viconia ho apportato delle modifiche soltanto al primo dialogo: davo per scontato che Stivan fosse presente al momento della liberazione della drow.

CHAIN 
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanViconia","GLOBAL",0)~ THEN BTB#STIV
~Sono contento che tu sia stata salvata da quel gruppo di fanatici, Viconia. Non riesco a credere che avessero intenzione di farti del male soltanto per il colore della tua pelle. L’ho sempre detto che i chierici sono degli scellerati e che meriterebbero...~
= ~... Viconia, non guardarmi in quel modo. Mi metti soggezione.~
DO ~SetGlobal("tb#StivanViconia","GLOBAL",1)~
== BVICONI ~Non so ancora in che modo inquadrarti, sakphul. C'è qualcosa in te che ti rende diverso dai tuoi simili.~
== BTB#STIV ~Questo è vero. Potresti definirmi un halfing "urbano", visto che sono nato e cresciuto qui, ad Athkatla, e non in uno dei villaggi tipici della mia razza.~
== BVICONI ~Ma per molti aspetti sei tale e quale ai tuoi amichetti dai piedi pelosi. Prendi il tuo aspetto fisico: è addirittura peggiore di quello degli abitanti degli alberi. Persino il più inetto tra i drow sarebbe in grado di spezzarti come un esile ramoscello.~
== BTB#STIV ~Ti ringrazio per il complimento, Viconia.~
== BVICONI ~E la tua fastidiosa abitudine a maneggiare grimaldelli e altri arnesi da scasso? Non è forse tipico di quelli della tua razza dedicarsi a simili rozze attività?~
== BTB#STIV ~Andiamo... Così mi fai arrossire.~
== BVICONI ~Per non parlare della tua ridicola avversione per quei poveri pennuti che chiami gabbiani. Non hai nient'altro di meglio da fare che rincorrerli a perdifiato ad ogni ora del giorno?~
== BTB#STIV ~*Ahem* Sai bene che ho dei motivi più che validi, Viconia. Se qualcuno avesse ucciso i tuoi familiari, non cercheresti vendetta?~
== BVICONI ~No.~
== BTB#STIV ~... No? Credevo che... Sì, insomma...~
== BVICONI ~Stai iniziando a infastidirmi, piccoletto. Parli troppo per i miei gusti.~
EXIT

Questo dialogo dovrebbe aver luogo dopo il riposo.

CHAIN 
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanViconia","GLOBAL",1)~ THEN BTB#STIV
~Viconia, mia cara Viconia... Dormito bene?~
DO ~SetGlobal("tb#StivanViconia","GLOBAL",2)~
== BVICONI ~Chiudi la bocca, stupido essere di Superficie. La tua voce è uno strazio per le mie orecchie.~
== BTB#STIV ~Heh. Vedo che oggi sei di ottimo umore, Viccy.~
== BVICONI ~*Non* chiamarmi con quel ridicolo nome, idiota!~
== BTB#STIV ~Come desideri, Viccy.~
EXIT

CHAIN 
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanViconia","GLOBAL",2)~ THEN BTB#STIV 
~Viconia, ti hanno mai detto che sei una bellissima drow?~
DO ~SetGlobal("tb#StivanViconia","GLOBAL",3)~
== BVICONI ~Hmmm... Ti senti bene, sakphul? Non mi sarei mai aspettata un'osservazione del genere da... da uno come te.~
== BTB#STIV ~Ti stavo soltanto rivolgendo un complimento, elfa scura. Pensi forse che un halfing non sia capace di apprezzare la bellezza di una drow?~
== BVICONI ~No, anzi. Il mio aspetto è così maestoso da abbagliare chiunque. Tappetti inclusi.~
== BTB#STIV ~Ehm... La modestia non è una delle tue qualità...~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanViconia","GLOBAL",3)~ THEN BEGIN BVICONI 
~Non ho potuto fare a meno di notare, piccoletto, che non sei solito concederti alcun piacere lussurioso. Sei uno di quei maschi che agiscono solo su iniziativa femminile, forse?~
DO ~SetGlobal("tb#StivanViconia","GLOBAL",4)~ EXTERN BTB#STIV
~(Arrossisce) Sto semplicemente aspettando di trovare la persona giusta.~
== BVICONI ~Ma certo. Anche tu appartieni a quel branco d'idioti che sostengono di cercare... Come dite voi esseri di Superficie?~
== BTB#STIV ~L'anima gemella?~
== BVICONI ~Esatto. Un individuo con cui trascorrere tutta la vita e condividere... Cosa? I dolori di ogni giorno? La vecchiaia?~
== BTB#STIV ~Non essere sempre così riduttiva, Viconia. La vita è fatta anche di altre cose: sogni, emozioni, speranze...~
== BVICONI ~Bah. Per quanto mi riguarda, trovo che non ci sia niente di più stupido e noioso dell'unirsi sempre con la stessa persona.~
== BTB#STIV ~Ah sì?~
== BVICONI ~Nel Sottosuolo le donne sono libere di servirsi di qualsiasi maschio vogliano per soddisfare i loro desideri carnali. Noi non ci leghiamo a nessuno per sempre: i nostri protettori, infatti, rimangono tali fino a quando non si rivelano inutili in battaglia o incapaci di appagarci sessualmente.~
== BTB#STIV ~All'improvviso, sono felice di non essere un maschio drow.~
== BVICONI ~Dovresti dispiacertene, invece. La mia razza è in grado di procurare un piacere fisico così intenso da lasciare inermi gli abitanti della Superficie come te. Un giorno, quando ne avrò voglia...~
== BTB#STIV ~(Glom) ... Sì?~
== BVICONI ~... ti racconterò alcune astuzie erotiche sperimentate dalla sottoscritta. Sono sicura che rimarrai senza parole.~
== BTB#STIV ~Oh, ehm... D'accordo, Viconia. Certo. Quando vuoi.~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
InParty("Anomen")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
Global("AnomenIsNotKnight","GLOBAL",1)
CombatCounter(0)
Global("tb#StivanViconia","GLOBAL",3)~ THEN BEGIN BVICONI
~... E così, giunto all'apice del piacere, ha avuto un infarto. Le sue guardie erano convinte che lo avessi ucciso di proposito, così fui costretta a fuggire. Un imprevisto decisamente fastidioso, ma mi ha insegnato quanto poco resistenti siano a letto i rivvil.~
= IF ~Player1(RACE,Uman) Global("SleptViconia","GLOBAL",1)~ THEN ~Vero, <CHARNAME>?~
DO ~SetGlobal("tb#StivanViconia", "GLOBAL",4)~ EXTERN BTB#STIV
~Ehm... Complimenti, Viconia. Davvero notevole.~
== BVICONI ~Suppongo che a questo punto tu voglia una dimostrazione di quanto ti ho raccontato, hmmm? Magari su di te...?~
== BTB#STIV ~(Gasp!) Veramente io...~
== BVICONI ~Vuoi che le mie abili mani scivolino lungo il tuo corpo, facendolo ardere di un desiderio incontenibile?~
== BTB#STIV ~Ma... Magari un'altra volta, eh?~
== BVICONI ~Cosa?! Mi stai respingendo?~
== BTB#STIV ~Ehm... Ti assicuro che la tua è un'offerta allettante, Viccy, ma...~
== BVICONI ~Sparisci dalla mia vista, sakphul, prima che mi decida a fare di te un eunuco! La tua mancanza di virilità mi disgusta!~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
OR(2)
!InParty("Anomen")
Global("AnomenIsKnight","GLOBAL",1)
Global("tb#StivanViconia","GLOBAL",3)~ THEN BEGIN BVICONI
~... E così, giunto all'apice del piacere, ha avuto un infarto. Le sue guardie erano convinte che lo avessi ucciso di proposito, così fui costretta a fuggire. Un imprevisto decisamente fastidioso, ma mi ha insegnato quanto poco resistenti siano a letto i rivvil.~
= IF ~Player1(RACE,Uman) Global("SleptViconia","GLOBAL",1)~ THEN ~Vero, <CHARNAME>?~
DO ~SetGlobal("tb#StivanViconia","GLOBAL",4)~ EXTERN BTB#STIV
~Ehm... Complimenti, Viconia. Davvero notevole.~
== BVICONI ~Suppongo che a questo punto tu voglia una dimostrazione di quanto ti ho raccontato, hmmm? Magari su di te...?~
== BTB#STIV ~(Gasp!) Veramente io...~
== BVICONI ~Vuoi che le mie abili mani scivolino lungo il tuo corpo, facendolo ardere di un desiderio incontenibile?~
== BTB#STIV ~Di... Dici sul serio...?~
== BVICONI ~(Ride in maniera sprezzante) Puoi scordartelo, sakphul. Preferirei la castità a vita piuttosto che andare a letto con una caricatura d'uomo. Credevi davvero che fossi interessata ad uno come te?~
== BTB#STIV ~Ma... Ma tu...~
== BVICONI ~Tsk. Povero idiota.~
EXIT

CHAIN 
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanViconia","GLOBAL",4)~ THEN BTB#STIV
~A giudicare dalle occhiate furtive che continui a lanciarmi, Viconia, suppongo che tu non abbia il coraggio di scusarti per il modo vergognoso in cui mi hai trattato.~
DO ~SetGlobal("tb#StivanViconia","GLOBAL",5)~
== BVICONI ~Io non ho la benchè minima intenzione di scusarmi, illuso. E per cosa, poi? Per essere stata franca?~
== BTB#STIV ~Allora potresti spiegarmi perchè continui ad avvicinarti a me come se volessi dirmi qualcosa?~
== BVICONI ~Il fatto che talvolta sia costretta a camminare vicino a te non significa che voglia conversare, stupido idiota.~
== BTB#STIV ~E quando apri la bocca per poi richiuderla senza proferir parola? Devo forse pensare che tu stia respirando a pieni polmoni?~
== BVICONI ~Il tuo olezzo è tale, sakphul, da farmi boccheggiare.~
== BTB#STIV ~(Sospiro) Quando vuoi, Viconia. Io non ho fretta.~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanViconia","GLOBAL",5)~ THEN BEGIN BVICONI
~Credo... Credo che dovrei scusarmi per ciò che ti ho detto la scorsa volta, Stivan.~
DO ~SetGlobal("tb#StivanViconia","GLOBAL",6)~ EXTERN BTB#STIV
~Umpf. Sarei tentato di risponderti con un bel "Era ora!" ma, conoscendoti, è meglio che lo tenga per me.~
== BVICONI ~L'hai appena detto, imbecille.~
== BTB#STIV ~Ops... Chiedo scusa. Amici come prima?~
== BVICONI ~Godrai nuovamente della mia considerazione, se è questo che intendi.~
== BTB#STIV ~Heh. Sono felice che le cose tra noi si siano sistemate, Viccy.~
== BVICONI ~Iniziamo male, sakphul. Molto male.~
EXIT

CHAIN 
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
Global("AnomenIsKnight","GLOBAL",0)
Global("AnomenIsNotKnight","GLOBAL",0)
OR(2)
AreaCheck("AR0901")
AreaCheck("AR0902")
CombatCounter(0)
Global("tb#StivanAnomenAboutFaith","GLOBAL",0)~ THEN BTB#STIV
~Ogni volta che entro in simili posti mi sento male. La visione di questi sciocchi fedeli prostrati in adorazione è a dir poco penosa!~
DO ~SetGlobal("tb#StivanAnomenAboutFaith","GLOBAL",1)~
== BANOMEN ~Al contrario, la devozione che provano nei confronti del loro dio è lodevole. Nulla di cui tu sia capace.~
== BTB#STIV ~Per fortuna. Che cosa ne ricaverei, Anomen? Illusioni? False speranze? Qualche incantesimo di convenienza?~
== BANOMEN ~Fede. Nei momenti di maggiore difficoltà, la fede dà coraggio e determinazione, speranza e conforto; ti offre un appiglio a cui aggrapparti per andare avanti.~
== BTB#STIV ~Non vedo di che utilità possa essere per noi poveri eretici. In questo modo ne traete vantaggio soltanto voi guaritori.~
== BANOMEN ~Quando sei sul punto di esalare l'ultimo respiro in battaglia è un chierico a salvarti la pelle. Ti è forse sfuggito, ladruncolo?~
== BTB#STIV ~Hai ragione. La prossima volta mi lascerò morire.~
== BANOMEN ~Umpf. In quel momento non sarai così spavaldo. Fidati.~
EXIT

CHAIN 
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
Global("AnomenIsKnight","GLOBAL",0)
Global("AnomenIsNotKnight","GLOBAL",0)
CombatCounter(0)
Global("tb#StivanAnomen","GLOBAL",0)~ THEN BTB#STIV
~Mi sono sempre chiesto, Anomen, per quale motivo combatti nel nome di Helm. Tra tutti gli dei, credo che sia il più freddo e distaccato.~
DO ~SetGlobal("tb#StivanAnomen", "GLOBAL",1)~
== BANOMEN ~Fesserie! Ti posso assicurare, halfing, che nel corso di una battaglia lo spirito di Helm infiamma il mio cuore e guida la mia mano!~
== BTB#STIV ~"Lo spirito di Helm"? Sei sicuro che non si tratti dei tuoi ormoni?~
== BANOMEN ~Non presterò attenzione ai tuoi sarcastici commenti.~
== BTB#STIV ~Ma certo. L'impavido Anomen non si abbasserebbe mai a rispondere a simili affermazioni. Toglimi una curiosità, allora: rimanevi impassibile anche quando i tuoi superiori ti chiedevano di pulire il deretano dei loro destrieri?~
== BANOMEN ~Ripetilo e ti troverai senza lingua.~
== BTB#STIV ~Infatti. Mi chiedevo fino a quando avresti resistito.~
EXIT

CHAIN 
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
Global("AnomenIsKnight","GLOBAL",0)
Global("AnomenIsNotKnight","GLOBAL",0)
CombatCounter(0)
Global("tb#StivanAnomen","GLOBAL",1)~ THEN BTB#STIV
~Anomen, pare che la tua "rispettabile" etica clericale non ti permetta di ricorrere ad armi come la spada. Non pensi sia un peccato?~
DO ~SetGlobal("tb#StivanAnomen","GLOBAL",2)~
== BANOMEN ~Per niente. Posso servire Helm in maniera degna del suo nome anche con una mazza.~
== BTB#STIV ~Dopo tutta la fatica che hai fatto per imparare a tenere una lama in mano... Un vero spreco di tempo e di energie, oserei dire.~
== BANOMEN ~Nulla mi impedisce di rispolverare le mie antiche abilità ed ucciderti seduta stante.~
== BKELDOR IF ~IsValidForPartyDialog("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN ~Mi sembra di averti ripetuto più volte, giovane Anomen, che devi imparare a controllarti. L'Ordine non approverebbe mai simili scatti d'ira.~
== BANOMEN IF ~IsValidForPartyDialog("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN ~Sir Keldorn, anche a me sembra di averti già detto che *non* ho bisogno dei tuoi suggerimenti!~
== BTB#STIV ~(Yawn) Stai iniziando ad annoiarmi con le tue minacce... Avanti, Anomen: non perdere tempo con le formalità e porgimi le tue scuse.~
== BANOMEN ~Che cosa?! Sei stato *tu* ad iniziare ad insultarmi!~
== BTB#STIV ~Uhm... Può darsi. Eppure credevo che gli zelanti servitori del bene come te non si facessero tanti scrupoli per sotterrare l'ascia di guerra...~
== BANOMEN ~Puoi scordartelo, halfing! Chiedere scusa significherebbe stendere le fondamenta per un'offesa futura!~
EXIT


CHAIN 
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
Global("AnomenIsNotKnight","GLOBAL",1)
CombatCounter(0)
Global("tb#StivanAnomen","GLOBAL",2)~ THEN BTB#STIV 
~Ti trovo diverso da quando non hai superato la Prova, Anomen. Mi sembri più rilassato, più sereno... Come se ti fossi liberato di un abito troppo stretto.~
DO ~SetGlobal("tb#StivanAnomen","GLOBAL",3)~
== BANOMEN ~Già, hai ragione. Sono ancora un pò amareggiato per la mia esclusione dall'Ordine, ma adesso mi sento...~
== BTB#STIV ~Libero?~
== BANOMEN ~Libero da vincoli d'obbedienza, sì. Rispettare e conformarmi a quelle regole era più soffocante di quanto pensassi.~
== BTB#STIV ~Se avessi ascoltato fin da subito le critiche pungenti che rivolgevo a quegli sciocchi...~
== BANOMEN ~C'è un vecchio adagio che dice: "Meglio tardi che mai".~
== BTB#STIV ~Giusto. Eppure continui a servire Helm.~
== BANOMEN ~L'Onniveggente non mi ha privato dei miei poteri, halfing, il che significa che con le mie azioni non l'ho disonorato.~
== BTB#STIV ~L'Ordine sembra pensarla diversamente...~
== BANOMEN ~Al diavolo l'Ordine! La sola cosa che conta sono i fatti. E parlano più che bene.~
EXIT


CHAIN 
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanKeldorn","GLOBAL",0)~ THEN BTB#STIV
~Sei avanti negli anni, Keldorn. Capisco che per un sessant'enne sia un'idea difficile da accettare, ma... Cerca di rendertene conto: è giunto il momento di riporre la tua spada nel fodero.~
DO ~SetGlobal("tb#StivanKeldorn","GLOBAL",1)~
== BKELDOR ~La lotta contro il male non ha mai fine, halfing. Continuerò a combattere finchè Torm mi darà la forza necessaria a farlo.~
= ~Per inciso: io non ho sessant'anni.~
== BTB#STIV ~E' vero: ho voluto ringiovanirti di cinque anni per motivi di... tatto.~ 
= ~Ad ogni modo, vista la tua determinazione, ti consiglio di stare attento. Potresti essere sconfitto in qualsiasi momento da un nemico più forte o, nel peggiore dei casi, restar schiacciato dalla tua stessa armatura.~
== BKELDOR ~Spiritoso. Io, almeno, sono riuscito e riesco tutt'ora a portarla. Dubito che le tue gracili spalline ne sarebbero capaci.~
EXIT

Questo dialogo lo farei partire quando gli NPC si trovano davanti alla casa di Garren. 

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
Global("FollowedGarren","GLOBAL",1)
CombatCounter(0)
Global("tb#StivanKeldornAboutGarren","GLOBAL",0)~ THEN BEGIN BKELDOR
~Per fortuna quest'uomo si è offerto di mettere una buona parola su di noi. Sarebbe stato spiacevole doversi scontrare con dei compagni dell'Ordine.~
DO ~SetGlobal("tb#StivanKeldornAboutGarren","GLOBAL",1)~ EXTERN BTB#STIV
~Spiacevole? Questo è il sogno di una vita! Ho sempre desiderato avere alle calcagne una dozzina di paladini!~
== BKELDOR ~Una fantasia piuttosto bizzarra, halfing. Grazie a Torm rimarrà per sempre tale.~
== BTB#STIV ~Credi che il tuo dio mi impedirà di tagliuzzare i tuoi amichetti?~
== BKELDOR ~Credo che sarà sufficiente il buon senso di <CHARNAME>. Non è forse vero, mio giovane amico?~
IF ~~ THEN REPLY ~Verissimo, Keldorn. Non ho intenzione di scontrarmi con i membri del Cuore Radioso.~ EXTERN BTB#STIV StivanKeldorn1-1
IF ~~ THEN REPLY ~Accetterò l'aiuto di Garren, se è questo che intendi.~ EXTERN BTB#STIV StivanKeldorn1-1
IF ~~ THEN REPLY ~In realtà l'idea di Stivan non è niente male. Penso che sarebbe divertente massacrare qualche paladino.~ EXTERN BTB#STIV StivanKeldorn1-2
IF ~~ THEN REPLY ~Io andrò per la mia strada, Keldorn. Se i tuoi compagni mi metteranno i bastoni tra le ruote, saprò come difendermi.~ EXTERN BTB#STIV StivanKeldorn1-2

APPEND BTB#STIV
   IF ~~ StivanKeldorn1-1
     SAY ~Dannati guastafeste! Se non sarà la mia lama a farli a fettine, ci penseranno i gabbiani con i loro becchi! (Urla)~
       IF ~~ THEN EXIT
     END

APPEND BTB#STIV
   IF ~~ StivanKeldorn1-2
     SAY ~Yeah! Così si fa!~
       IF ~~ EXTERN BKELDORN StivanKeldorn1-3
     END

APPEND BKELDORN StivanKeldorn1-3
~Mi auguro che le tue parole non vengano seguite dai fatti, <CHARNAME>. Sai bene che non esiterei a rivoltarmi contro di te se dovessi aggredire i miei compagni.~
       IF ~~ THEN EXIT
     END
   END


CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
AreaType(DUNGEON)
CombatCounter(0)
Global("tb#StivanEdwinInDungeon","GLOBAL",0)~ THEN BEGIN BEDWIN
~Posso sapere cosa ci trovi di tanto interessante in quella parete, halfing? Trovi che sia normale accarezzarla mormorando parole indistinte?~
DO ~SetGlobal("tb#StivanEdwinInDungeon","GLOBAL",1)~ EXTERN BTB#STIV
~A me piace parlare al muro, Edwin. E' il solo che non mi contraddica.~
== BEDWIN ~(E' un individuo pericoloso. Lo sostengo fin dall'inizio).~
EXIT

CHAIN 
IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanEdwin","GLOBAL",0)~ THEN BTB#STIV
~Edwin, perchè non mi parli un pò della tua Thay? E' una regione in cui non sono mai stato e mi piacerebbe saperne di più.~
DO ~SetGlobal("tb#StivanEdwin","GLOBAL",1)~
== BEDWIN ~Thay non è "mia", stupido halfing (anche se lo sarà presto). In ogni caso, se vuoi delle informazioni su quella terra dove non sopravviveresti neanche un giorno, dovresti rivolgerti all'ufficio per i giretti turistici riservati alle scimmie.~
== BTB#STIV ~Quanto astio, quanto astio... Ti sei mai chiesto da dove provenga la tua scontrosità?~
== BEDWIN ~Io mi chiedo molte cose, Stivan, ma temo che trascendano tutte la tua limitata comprensione da gibberling. (Edwin, come puoi sperare che questo scarto umano conosca il significato del termine "trascendere"? Dovrò cercarne uno più semplice...)
= ~(Bah! Stare tra queste scimmie sta limitando sempre di più le mie raffinatezze linguistiche!)~
== BTB#STIV ~Sei un uomo frustrato, Edwin.~
== BEDWIN ~Cara la mia scimmia sodomita, vuoi che ti insegni in che altri modi utilizzare le banane? Vedi, nel tuo corpo ci sono dei buchi dove--~
== BTB#STIV ~Questo è un interessante consiglio, stregone. Devi certamente averlo provato di persona per raccomandarmelo.~
== BEDWIN ~NO! (Quella dannata sgualdrina dei Moli ha parlato! Le avrei dovuto sigillare la bocca con una sana palla di fuoco, altro che stordirla!)~
== BTB#STIV ~Povero Edwin... Tradito da una parola di troppo. Non dovresti mai bere prima di andare a letto con una cortigiana...~
== BEDWIN ~Ti consiglio di tapparti la bocca, halfing, prima che... che... (Dei! Mi stanno incastrando!)~
== BTB#STIV ~... <CHARNAME>, sarebbe meglio ritornare a qualsiasi cosa stessimo facendo prima di interromperci. Edwin... Sta perdendo il controllo.~
EXIT

CHAIN 
IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
Global("FoundScroll","LOCALS",1)
Global("ScrollStudy","LOCALS",1)
CombatCounter(0)
Global("tb#StivanEdwin","GLOBAL",1)~ THEN BTB#STIV
~Uhm... Dove diavolo ha messo quella pergamena? E' la quinta volta che frugo nel suo zaino, ma non sono ancora riuscito a trovarla...~
DO ~SetGlobal("tb#StivanEdwin","GLOBAL",2)~
= ~Uh? E questo cos'è? Potrei giurare che la volta scorsa non -- *EEKKK*!~
== BEDWIN ~Persino una banale trappola per topi può essere estremamente efficace contro certi ficcanaso.~
== BTB#STIV ~Da... Dannazione a te, stregone! Guarda com'è gonfia la mia mano!~
== BEDWIN ~Osa rovistare ancora una volta tra i miei averi, halfing, e ti assicuro che troverai ben altro genere di sorprese.~
== BTB#STIV ~(Urla) <CHARNAME>, mi appello a te! Dal momento che la pergamena appartiene a questo gruppo, ho il diritto di poterla consultare a mio piacimento!~
IF ~~ THEN REPLY ~Stivan ha ragione, Edwin. Tira fuori il maltolto.~ EXTERN BTB#STIV StivanEdwin1
IF ~("EdwinRomanceActive")~ THEN REPLY ~Anch'io sono interessata a quell'artefatto, Edwin. Fà la brava zucchina e mostracela.~ EXTERN BTB#STIV StivanEdwin2
IF ~~ THEN REPLY ~Un'obiezione interessante, Stivan. Sbaglio o ti ricordi di far parte di questo gruppo soltanto quando ti fa comodo?~ EXTERN BTB#STIV StivanEdwin3
IF ~~ THEN REPLY ~Non voglio essere coinvolto in questioni che non mi riguardano. Sbrigatevela da soli.~ EXTERN BTB#STIV StivanEdwin1
END

APPEND BEDWIN
   IF ~~ StivanEdwin1
     SAY ~No! Non permetterò che una stupida scimmia metta le mani sulla mia pergamena!~
       IF ~~ THEN EXTERN BEDWIN StivanEdwin5
     END 

APPEND BTB#STIV
   IF ~~ StivanEdwin2
     SAY ~Zu... Zucchina?~
       IF ~~ THEN EXTERN BEDWIN StivanEdwin2-1
     END

APPEND BEDWIN
   IF ~~ StivanEdwin2-1
     SAY ~Stupida donna, non hai ancora capito che non sono il tuo ortaggio?!~
       IF ~~ THEN EXTERN BTB#STIV StivanEdwin4
     END

APPEND BTB#STIV
   IF ~~ StivanEdwin3
     SAY ~Ehm... Ecco, io...~
       = ~Non divaghiamo! Edwin, tira fuori quella pergamena!~
       IF ~~ THEN EXTERN BEDWIN StivanEdwin5
     END

APPEND BTB#STIV
   IF ~~ StivanEdwin4
     SAY ~Non divaghiamo! Edwin, tira fuori quella pergamena!~
       IF ~~ THEN EXTERN BEDWIN StivanEdwin5
     END
   END

CHAIN BEDWIN StivanEdwin5
~Fruga nel mio zaino quanto vuoi, patetica creatura. Non la troverai *mai*. (Per motivi più che ovvi, oserei dire. Solo un genio come me poteva pensare di nasconderla nelle mie mutande).~
== BEDWIN IF ~("EdwinRomanceActive")~ THEN ~(Sei proprio un figo, Edwin. Guarda l'espressione di <CHARNAME>... Bocca spalancata, occhi sgranati... Persino un idiota capirebbe che questi sono chiari segnali dell'ammirazione sconfinata che prova per me).~
= ~(... Beh, ora potrebbe anche chiudere la bocca. Sembra una deficiente impalata in quel modo).~
== BTB#STIV ~...~
= ~...~
= ~... Ebbene? Perchè mi stai fissando con quell'espressione? Gli ingranaggi del tuo cervello si sono forse incastrati?~
== BTB#STIV ~Heh. E' proprio vero che bisogna sempre cercare dove meno te l'aspetti.~
== BEDWIN ~Per... Perchè ti stai avvicinando? Allontanati!~
== BTB#STIV ~Stà un pò fermo, Edwin...~
== BEDWIN ~Cosa... Cosa *diavolo* stai facendo?! Giù le mani, brutto porco! Non toccarmi! Non toccare il mio... No! NO! NOOOOO!~
== BTB#STIV ~Yeah! Finalmente è mia!!~
== BEDWIN ~NON OSARE...!!!~
== BTB#STIV ~Manus... Entis... Pa!~

(Stivan evoca una donna)

CHAIN BTB#SUSAN 
~... mi devi dare...~
= ~Uh? Dove... Dove sono?~
== BTB#STIV ~Wow! E tu chi saresti?~
== BEDWIN ~E' lei! E' la prostituta dei Moli!!~
== BTB#SUSAN ~Ehi, bellezza. Vuoi dare un'occhiata alle mie tettine?~
== BEDWIN ~Scordatelo! Stai per scoprire cosa succede a chi parla troppo!~

(Edwin trasforma Susan in un topo.)

CHAIN BEDWIN 
~Giustizia è fatta. Quanto a te, halfing...~
== BTB#STIV ~Il potere... Ho avuto tra le mani... il potere...~
== BEDWIN ~Sarei tentato di farti implodere seduta stante, ma terrò a bada la mia ira per il momento. Subirai la giusta punizione non appena avrò compreso ogni segreto di questa pergamena (e ti assicuro che allora saranno cavoli amari).~
EXIT

Questo dialogo lo farei partire prima che il gruppo riposi.

CHAIN 
IF ~InParty("Edwin")
InParty("tb#Stiv")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0)
Global("TalkedDegardan","GLOBAL",4)
Global("EdwinComplainsOfStivan","GLOBAL",0)~ THEN BEGIN EDWINJ
~<CHARNAME>, la situazione sta diventando insostenibile!~
DO ~("EdwinComplainsOfStivan","GLOBAL",1)~
IF ~~ THEN REPLY ~(Yawn) Cosa vuoi, Edwin? Stavo dormendo...~ GOTO EdwinComplainsOfStivan1
IF ~~ THEN REPLY ~Spero che tu mi abbia svegliato per un valido motivo, stregone.~ GOTO EdwinComplainsOfStivan3
IF ~("EdwinRomanceActive")~ THEN REPLY ~Quando vuoi passare una notte in mia compagnia, Edwin, è sufficiente che tu me lo dica prima che mi metta a dormire. Adesso sono assonnata...~ GOTO EdwinComplainsOfStivan2
IF ~("EdwinRomanceActive")~ THEN REPLY ~Finalmente! Ho atteso tutto questo tempo per farti arrivare al culmine della passione! Adesso lascia che esploda e che ci travolga!!~ GOTO EdwinComplainsOfStivan2
IF ~~ THEN REPLY ~Stà zitto e dormi…~ GOTO EdwinComplainsOfStivan3
END

CHAIN
IF ~~ THEN EDWINJ EdwinComplainsOfStivan1
~Non sbadigliarmi in faccia, idiota dalla testa di legno! (Forse è meglio fermarsi qui. Non vorrei ritrovarmi con il mio repertorio d'insulti esaurito).~ GOTO EdwinComplainsOfStivan4
END

CHAIN
IF ~~ THEN EDWINJ EdwinComplainsOfStivan3
~Come osi rispondermi in questo modo, razza di insolente? Devo forse ricordarti che hai davanti a te il grande Edwin Odessoiron? Alla prossima offesa ti riduco in cenere!~ GOTO EdwinComplainsOfStivan4
END

CHAIN
IF ~~ THEN EDWINJ EdwinComplainsOfStivan2
~Cosa *diavolo* stai dicendo, donna? Non ho desideri sessuali e, anche se li avessi, dubito che una scimmia maldestra come te riuscirebbe a soddisfarli! (Continua così, Edwin. Trattandola in questo modo la renderai più disponibile e vogliosa).~ GOTO EdwinComplainsOfStivan4
END
CHAIN
IF ~~ THEN EDWINJ EdwinComplainsOfStivan4
~Quell'halfing è un problema per noi tutti. Non c'è notte in cui non sia agitato o mormori frasi sconnesse e senza senso. Come credi che possa riposare se il mio sonno viene disturbato da quell'invertito?~
IF ~~ THEN REPLY ~Infastidisce anche gli altri? E come mai loro non si sono lamentati?~ GOTO EdwinComplainsOfStivan5
IF ~~ THEN REPLY ~D'accordo, ho afferrato il concetto: al risveglio scambierò quattro chiacchere con lui.~ GOTO EdwinComplainsOfStivan6
IF ~("EdwinRomanceActive")~ THEN REPLY ~Se vuoi, posso parlarci e dirgli che il suo sonno inquieto disturba il mio meloncino.~ GOTO EdwinComplainsOfStivan7
END
CHAIN
IF ~~ THEN EDWINJ EdwinComplainsOfStivan5
~Chi, queste scimmie? Ovviamente non hanno il coraggio di dirtelo. (Non mi aspettavo una simile domanda... Che stia iniziando a comprendere qualcosa del mondo circostante? No, dev'essere un barlume d'intelligenza apparso all'improvviso nella sua testa vuota).~ 
IF ~~ THEN REPLY ~Messaggio ricevuto, Edwin: domani gli parlerò e vedrò se si può fare qualcosa.~ GOTO EdwinComplainsOfStivan6
END
CHAIN
IF ~~ THEN EDWINJ EdwinComplainsOfStivan7
~... Meloncino? <CHARNAME>, hai preso un colpo in testa o stai regredendo al livello di un troglodita?~
IF ~~ THEN REPLY ~Messaggio ricevuto, Edwin: domani gli parlerò e vedrò se si può fare qualcosa.~ GOTO EdwinComplainsOfStivan6
END
CHAIN
IF ~~ THEN EDWINJ EdwinComplainsOfStivan6
~Uff... Finalmente l'hai capito! (Per le ossa di Elminster. Questo <MAN_WOMAN> ha la tenacia di una banshee!)~
IF ~~ THEN EXIT
END
END

Questo dialogo dovrebbe aver luogo prima che il gruppo riposi in una qualsiasi taverna.

CHAIN 
IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
Gender("Edwin",Female)
CombatCounter(0)
Global("tb#StivanEdwinaDrunk","GLOBAL",0)~ THEN BTB#STIV
~Posso offrirvi da bere, signorina Odesseiron? Gradite del vino scuro di Berduska o preferite quello raffinato e soave di Tehtyr?~
DO ~SetGlobal("tb#StivanEdwinaDrunk","GLOBAL",1)~
== BEDWIN ~Portami un boccale di birra, halfing, e non lasciare la mancia.~
== BTB#STIV ~Ma Miss Edwina! Quante volte vi ho già detto di non insozzarvi la bocca con simili espressioni?~
== BEDWIN ~Tra poco insozzerò il pavimento di questa bettola col tuo sangue se non stai zitto! Io-voglio-una-birra!~
== BTB#STIV ~Assolutamente no. Quello che ci vuole per voi è un'ottima degustazione di vini accuratamente scelti da me.~
== BEDWIN ~Non ho mai dubitato che le scimmie in miniatura avessero un cervello limitato, ma pare che nella tua scatola cranica vi sia una voragine abissale. E' così difficile ANDARE al bancone, ORDINARE una birra e PORTARMELA?~
== BTB#STIV ~Voi parlate troppo, Miss Edwina, e per giunta male. Lasciatevi guidare da un intenditore quale il sottoscritto.~
== BEDWIN ~Neanche mor--~
== BTB#STIV ~Dal momento che siete così entusiasta, direi di iniziare con un bicchierino di vino rosso. Perfettamente in tinta con la vostra vestaglia, eh?~
== BEDWIN ~E' una tunica, idio-- Gulp!~
== BTB#STIV ~Buono, vero? Quello che servono in questa taverna è tra i più amabili. Vogliamo passare a del brandy cormyriano?~
== BEDWIN ~Scordatelo! Non ho intenzione di continuare ad ingurgitare gli intrugli di questa stamberga!~
== BTB#STIV ~(Sospiro) E va bene. Sono stanco d'insistere. La prossima volta farò meglio a rivolgermi ad un uomo. Uno *vero*.~
== BEDWIN ~Il prossimo.~
== BTB#STIV ~Eccellente. Che ne dite di assaggiare del vino secco di Arabella?~
== BEDWIN ~Dà qua.~
== BTB#STIV ~Un ippopotamo ha più grazia di voi, Miss Edwina.~
== BEDWIN ~Gulp!~
== BTB#STIV ~Uhm... E questo cos'è? Vino Alurlyath?~
== BEDWIN ~Che razza di nome è "Alurlyath"?~
== BTB#STIV ~Non ne ho idea, non l'ho mai assaggiato. (Sniff sniff) A giudicare dall'odore, dev'essere molto forte. E' meglio che lo allunghi con un pò d'acqua.~
== BEDWIN ~Versamene un bicchiere così com'è, halfing. Non sono una donnetta.~
== BTB#STIV ~Ah no?~
== BEDWIN ~Versa!~
== BTB#STIV ~Avete dimenticato la parolina magica, Miss Edwina.~
== BEDWIN ~Ma certo.~
= ~*Subito*!~
== BTB#STIV ~(Sospiro) Siete un caso senza speranza. Ecco, a voi.~
== BEDWIN ~Gulp!~
= ~C'è *HIC!*... dell'altro?~
== BTB#STIV ~No, questo era l'ultimo a loro disposizione. Tutto sommato, hanno una discreta scelta.~
= ~Ma... Miss Edwina, siete tutta rossa in viso! Avete forse bevuto un pò troppo?~
== BEDWIN ~Io non ho bevuto troppo. Sono solo *HIC!* stanco e *HIC!* stanco e *HIC!* stanco e...~
== BTB#STIV ~Ho capito che siete stanca. In effetti, anch'io ho un cerchio alla testa... Lasciate che vi accompagni in camera, mia diletta.~
EXIT

… E questo dovrebbe essere al risveglio.

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
Gender("Edwin",Female)
CombatCounter(0)
Global("tb#StivanEdwinaDrunk","GLOBAL",1)~ THEN BEGIN BEDWIN 
~(Che nottataccia... Ho sognato di aver trascorso la serata a rotolarmi con quell'halfing. Per fortuna era solo un incubo).~
DO ~SetGlobal("tb#StivanEdwinaDrunk","GLOBAL",2)~
= ~(Uhmmm... Tra poco dovrei alzarmi, ma mi sento come se avessi un peso che grava sul mio petto... Bah! Devo aver mangiato qualcosa di pesante, senza dubbio).~
= ~(Appunti della giornata: sgridare adeguatamente la cuoca di questa stamberga).~
= ~(Ma...)~
= ~(Aspetta...)~
= ~(Ieri sera io *non* ho mangiato! Allora perchè ho questa sensazione di pesantezza? L'avverto lungo tutto il corpo...)~
= ~(Calmati, Edwin. Respira profondamente e fà mente locale su tutto ciò che è successo in questo buco di taverna).~
= ~(...)~
= ~(... L'halfing ti ha fatto bere fino ad ubriacarti, d'accordo. Ma dopo? Cos'è successo? Mi ha portato in camera e...)~
= ~(...)~
= ~(Bah! Non riesco a ricordarmi nulla! E' un peccato che non sappia servirmi della divinazione - questa è una delle rare occasioni in cui mi sarebbe utile).~
= ~(Ma questa pesantezza non mi abbandona. Inizia proprio qui, all'altezza del seno... Tra l'altro avverto anche un certo prurito tra le cavità. Più dal lato di Patricia che da quello di Thelma...)~
== BTB#STIV ~... Patricia? Hai chiamato una delle tue tette Patricia?~
== BEDWIN ~AHHHHHH!~
== BTB#STIV ~*Ouch!* Non c'era bisogno di scaraventarmi per terra in questo modo!~
== BEDWIN ~C-C-C-COSA...?!~
== BTB#STIV ~Al risveglio siete più bella che mai, Miss Edwina.~
== BEDWIN ~COSA *DIAVOLO* STAVI FACENDO SOPRA DI ME?!~
== BTB#STIV ~Dormivo, prima che iniziaste uno dei vostri soliti monologhi.~
== BEDWIN ~A... Abbiamo dormito insieme? E' questo che stai dicendo?~
== BTB#STIV ~Esattamente.~
== BEDWIN ~MI-~
= ~MISERICORDIA! Sono andato a letto con l'halfing!~
== BTB#STIV ~Beh, in effetti non avevo mai dormito con una donna prima d'ora.~
== BEDWIN ~NOOOOOOO!!!!!!!~
== BTB#STIV ~Nulla di così drammatico, Miss Edwina. In futuro cercherò di appisolarmi al vostro fianco anzichè sopra di voi.~
== BEDWIN ~La... La mia prima volta da donna... Deflorato da un halfing...~
== BTB#STIV ~Deflorato? Ma cosa state dicendo? Siamo stati semplicemente sopraffatti dalla stanchezza mentre ci stavamo azzuffando. Non avrete di certo pensato che...~
== BEDWIN ~...~
== BTB#STIV ~Ma che orrore! Come vi possono venire in mente certe idee?~
== BEDWIN ~Sarebbe stato un privilegio, *idiota*! In ogni caso, tu non me la conti giusta. Tu hai abusato di *me*.~
== BTB#STIV ~Sapete bene che non farei mai una cosa simile. Soprattutto con voi.~
== BEDWIN ~Bah! Credi di potertela cavare con così poco? Tu sei un pervertito. Tu mi hai posseduto.~
== BTB#STIV ~Edwin... Miss Edwina, se non credete alle mie parole siete libera di accertarvi della vostra integrità in prima persona.~
== BEDWIN ~E' proprio quello che stavo per fare! (Ispeziona flora e fauna, Edwin, *subito*).~
= ~(Tap tap)~
= ~(Strish strish)~
= ~(Paf paf)~
= ~(Strush strush)~
= ~... Uhh...~
== BTB#STIV ~Miss Edwina! Vi sembra questo il momento di dialogare con la vostra mano destra?~
== BEDWIN ~Oh mio dio... Altro che...~
== BTB#STIV ~*Ahem* Miss Edwina?~
== BEDWIN ~Cosa c'è?!~
== BTB#STIV ~Vi siete accertata di non essere stata violata dal sottoscritto?~
== BEDWIN ~Violata? Di cosa stai parlando, stupida scimmia?~
== BTB#STIV ~Fino a qualche istante fa mi stavate accusando di avervi violentata!~
== BEDWIN ~Piantala di dire fesserie, halfing, o ti spedisco in qualche piano infernale!~
== BTB#STIV ~Basta. Io ci rinuncio.~
== BEDWIN ~(Dei... Questo corpo riserva sorprese di ogni tipo... O sono le mie mani d'incantatore a fare il miracolo?)~
EXIT

CHAIN
IF ~InParty("Edwin")
InPart("Minsc")
See("Edwin")
See("Minsc")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("Minsc",CD_STATE_NOTVALID)
Gender("Edwin",Female)
CombatCounter(0)
Global("tb#StivanEdwina","GLOBAL",1)~ THEN BTB#STIV
~Voi e Minsc siete proprio una bella coppia, Miss Edwina. Ma guardatevi: vi compensate a vicenda! Uno ha i muscoli, l'altra ha il cervello.~
DO ~SetGlobal("tb#StivanEdwina","GLOBAL",2)~
== BEDWIN ~Stà zitto!!~
== BTB#STIV ~A quando le nozze?~
== BEDWIN ~Preferirei vivere nelle giungle del Chault piuttosto che sposarmi con quel gorilla!~
== BMINSC ~Ohh, questo è un gran giorno, Boo! La signorina in rosso vuole sposare Minsc! Ma perchè non l'ha detto subito?~
== BEDWIN ~Non ci sarà nessun matrimonio, beota!~
== BMINSC ~Boo dice che le donne aspettano che sia sempre l'uomo a fare la prima mossa. Minsc si chiede se la sorella di Edwin voglia ascoltare un'altra poesia.~
== BEDWIN ~NOO!!!~
== BTB#STIV ~Dal vostro nervosismo deduco che sono ormai prossime. Avete già scelto l'abito?~
== BEDWIN ~Ho scelto il modo in cui ucciderti, halfing! Strangolandoti!~
== BTB#STIV ~Un'altra curiosità, Miss Edwina: vestirete rosso o bianco?~
== BEDWIN ~Di rosso, ovv... Ma cosa diavolo mi fai dire?!?~
== BTB#STIV ~Non ne dubitavo. Sarà un onore farvi da testimone.~
EXIT

Questo dovrebbe aver luogo dopo che è stato ritrovato Boo (si riferisce alla missione “Il rapimento di Boo” del mod Unfinished Business).

CHAIN 
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
TimeOfDay(Night)
CombatCounter(0)
Global("tb#StivanMinscUB","GLOBAL",0)~ THEN BTB#STIV
~(Sospiro) "Le stelle nascondono nuovamente il loro volto luminoso intorno alla luna... E mentre essa rifulge al culmine del suo splendore, sulla terra tutto tace".~
= ~Beh... *Quasi* tutto...~
DO ~SetGlobal("tb#StivanMinscUB","GLOBAL",1)~
== BMINSC ~Tieni gli occhi bene aperti, Boo! Anche quando cala la notte, i difensori della giustizia devono restare svegli per opporsi al male!~
= ~Minsc è contento di averti ritrovato, Boo. Senza di te si addormentava come un ghiro.~
== BTB#STIV ~Io ti preferivo quando eri depresso, ranger. Per quanto breve, è stato il solo periodo di tempo in cui dalla tua bocca non uscivano fesserie.~
== BMINSC ~Minsc si è stufato di ascoltare i tuoi commenti malevoli, halfing! E' giunto il momento di raddrizzarti la schiena e di darti un pò di calci nel sedere! In guardia, male: Minsc sta per...~
= ~Cosa, Boo? Vuoi affrontarlo da solo? Ma... Minsc capisce, ma...~
= ~D'accordo, Boo: Minsc lascerà a te la gloria della battaglia! Preparati ad affrontare la giustizia dei criceti, Stivan!~
== BTB#STIV ~Tremo dalla paura.~
== BMINSC ~COLPISCI AGLI OCCHI, BOO! COLPISCI AGLI OCCHI! RAARGHHH!!!!~
== BTB#STIV ~...~
= ~... Ebbene? Dov'è finito il tuo terribile criceto?~
= ~Oh, ma...~
= ~Ahia! *Ahia*!~
= ~Quella bestia mi è entrata nell'armatura! *Ahi!* Mi sta morsicando - AHIA! - da tutte le parti!~
= ~Adesso ti sistemo io, topo!~
= ~(Stonf)~
= ~(Doppio stonf)~
== BEDWIN IF ~IsValidForPartyDialog("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN ~(L'halfing si sta picchiando da solo? Quindi è masochista... Uhm... Buono a sapersi. Vediamo se sarà così eccitato anche quando gli darò fuoco!)~
== BTB#STIV ~No! Lì no, lì no, lì no!~
= ~(Stonf!)~
= ~Uhi...~
== BMINSC ~Ben fatto, Boo! Hai dato al male una lezione che non dimenticherà facilmente! Adesso torna da Minsc... Ti sei meritato due belle noci!~
EXIT

Questo dialogo chiama in causa Lilarcor. Bisognerebbe aggiungere nelle conditions PartyHasItem(“”) con il codice corrispondente alla spada. 

CHAIN 
IF ~InParty("Minsc")
InParty("tb#Stiv")
See("Minsc")
See("tb#Stiv")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
Global("tb#StivanMinscLilarcor","GLOBAL",0) THEN FWLILCOR
~Testa di latta, è da ben *due* ore che non mi lustri! Cosa stai aspettando?!~
== BMINSC ~Abbi un attimo di pazienza, Larry: Minsc sta dando da mangiare a Boo. Tra poco si prenderà cura anche di te.~
== FWLILCOR ~Ora! Mi devi lucidare ORA, prima che la ruggine mi intacchi!~
== BMINSC ~E va bene. Boo, finisci di mangiare le noci da solo; Minsc deve dare una pulitina alla sua spada.~
== BTB#STIV ~Devi essere proprio stupido, ranger, per soddisfare i capricci di quella lama. Se si fosse rivolta a me in questo modo, l'avrei rigirata in una pila di letame fino ad insegnarle un pò di rispetto.~
== BMINSC ~Minsc non è stupido! Si prende cura del suo criceto e della sua spada per essere sempre pronto alla battaglia!~
== FWLILCOR ~Ora basta! Se non posso ricevere la dovuta pulizia, allora assaggerò un pò di sangue!~
== BTB#STIV ~Ahh! Minsc, sei impazzito?!?~
== BMINSC ~Minsc non ha fatto nulla! E' stato Larry! Vero, Boo?~
== BTB#STIV ~Nulla? Stavi per tagliarmi in due e hai il coraggio di dire che non hai fatto nulla?! Stai brandendo TU quella dannata spada! Ti è forse sfuggito?~
== BMINSC ~Ma Larry ogni tanto fa quel che vuole! Minsc non ha colpa se la sua spada sferra colpi da sola!~
== FWLILCOR ~(Ghigna)~ DO ~DestroySelf()~
== BTB#STIV ~Osa solo colpirmi un'altra volta, spada, e ti rispedisco nelle fogne da cui provieni!~
EXIT

Credo di aver scritto anche un altro banter con Minsc. Potresti guardare per favore nei messaggi che ti ho mandato su SHS?

CHAIN 
IF ~InParty("Haerdali")
See("Haerdalis")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
AreaType(OUTDOOR)
CombatCounter(0)
Global("tb#StivanHaerdalis","GLOBAL",0)~ THEN BTB#STIV
~Muori, fetido gabbiano! E anche tu, schifido volatile! Tu non sei da meno, vomitevole pennuto!~
DO ~SetGlobal("tb#StivanHaerdalis","GLOBAL",1)~
== BHAERDA ~Devo riconoscere che il tuo approccio verso i gabbiani è all'insegna dell'affetto, Stivan. Potresti dirmi, di grazia, perchè li disprezzi così tanto?~
== BTB#STIV ~Hanno ucciso i miei familiari! Hanno pasteggiato con i loro corpi e si sono appoiallati sulle loro carcasse! Come potrei non odiarli?!~
== BHAERDA ~Hmm... Comportamento piuttosto insolito per dei pennuti. Ad ogni modo, chi odia ama, mio gabbiano.~
== BTB#STIV ~*Non* chiamarmi gabbiano!~
== BHAERDA ~Ormai è deciso, Stivan. Tu sarai il mio uccello di mare.~
== BTB#STIV ~Ti ho detto che non vogl--~
== BHAERDA ~Sì sì sì. Non avrei potuto scegliere un nome migliore.~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanHaerdalis","GLOBAL",1)~ THEN BHAERDA
~Mi par di arguire, mio gabbiano, che hai viaggiato molto per questa terra chiamata Faerun. E' così?~
DO ~SetGlobal("tb#StivanHaerdalis","GLOBAL",2)~
== BTB#STIV ~Sì, Haer'Dalis. Sono stato in molti posti finora, alcuni più belli e più suggestivi di altri, ma non ho ancora messo piede in diverse località.~
== BHAERDA ~Mai stato a Sigil?~
== BTB#STIV ~No, e non so nemmeno come arrivarci. Tutta questa storia dei condotti, delle sfere interplanari, delle dimensioni parallele... E' un pò troppo complicato per me.~
== BHAERDA ~Ti assicuro che un viaggio di tal tipo non è paragonabile neanche lontanamente a quelli terra-terra a cui sei abituato. Non c'è nulla di più emozionante!~
== BTB#STIV ~Eppure ho sentito dire che possono verificarsi degli incidenti.~
== BHAERDA ~In effetti è vero. Una volta, ad esempio, un mio amico è entrato in un condotto instabile. Non l'avesse mai fatto: il suo busto è rimasto attaccato all'entrata del condotto, mentre le sue gambe sono arrivate più o meno integre all'uscita. Se non fosse stato così fesso da non ascoltarmi...~
== BTB#STIV ~Ehm... Penso che continuerò a viaggiare a piedi. E' molto più sicuro...~ 
EXIT

Questo dovrebbe aver luogo alla fine di un combattimento.

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanHaerdalis","GLOBAL",2)~ THEN BHAERDA
~Per l'ennesima volta, abbiamo bagnato le nostre lame nel sangue. Presto gli avvoltoi si ciberanno delle carcasse che ci siamo lasciati alle spalle e dei nostri nemici non resterà traccia alcuna...~
DO ~SetGlobal("tb#StivanHaerdalis","GLOBAL",3)~
== BTB#STIV ~La morte è spesso al centro dei tuoi pensieri, Haer'Dalis. Non trovi che la vita sia altrettanto degna di considerazione?~
== BHAERDA ~E perchè mai, mio gabbiano? La nostra esistenza non è altro che un lungo cammino costellato di affanni e di tormenti. Percorriamo questo sentiero al solo scopo di raggiungere la tanto ambita meta - l'oblio, la fine del nostro travaglio.~
== BTB#STIV ~Lungi da me criticare le tue cupe e fosche considerazioni, ma... Non ti sembra di aver delineato un quadro piuttosto pessimistico?~
== BHAERDA ~No, mio giovane halfing. Mi sono unicamente limitato a descrivere la realtà per quel che è.~
== BTB#STIV ~Ossia?~
== BHAERDA ~Una nave che, stremata dalle incessanti tempeste, raggiunge un porto di fatale quiete.~
EXIT

Questo dovrebbe avere tra le conditions un certo avanzamento della romance tra HD e Aerie.

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanHaerDalisAerie","GLOBAL",0)~ THEN BHAERDA
~Ti sarei grato, Stivan, se la smettessi di maltrattare la mia colombella. Non mi piace vederla sempre con tutte le piume arruffate.~
DO ~SetGlobal("tb#StivanHaerdalisAerie","GLOBAL",1)~
== BTB#STIV ~*Ahem* Haer'Dalis, potresti dirmi cosa ci trovi di così tanto attraente in lei? Io... Proprio non capisco.~
== BHAERDA ~Ciò che non è allettante per uno può essere fonte di grande interesse per un altro. Detto in parole povere, mio gabbiano, fatti gli affari tuoi.~
EXIT

Questo dialogo dovrebbe aver luogo una volta conclusa la missione “La tragedia di Besamen” del mod Quest pack.

CHAIN 
IF ~InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
AreaType(OUTDOOR)
CombatCounter(0)
Global("tb#StivanHaerdalisBesamen","GLOBAL",0)~ THEN BTB#STIV
~Wow. Sono senza parole. Non pensavo che l'amore potesse vincere anche la morte.~
DO ~SetGlobal("tb#StivanHaerdalisBesamen","GLOBAL",1)~
== BHAERDA ~Conosco una poesia decisamente adatta alla vicenda di quei due. Vuoi sentirla, mio uccello di mare?~
== BTB#STIV ~Ti ascolto.~
== BHAERDA ~"Quando bacio il tuo labbro profumato,
cara fanciulla, non posso obliare
che un bianco teschio vi è sotto celato".~
= ~"Quando a me stringo il tuo corpo vezzoso,
obliar non poss'io, cara fanciulla, 
che vi è sotto uno scheletro celato".~
= ~"E nell'orrenda visione assorto, 
dovunque o tocchi, o baci, o la man posi,
sento sporgere le fredde ossa di un morto".~
= ~Ebbene? Che cosa ne pensi?~
== BTB#STIV ~Beh, i tuoi versi rappresentano l'amore con una gelida oggettività, lo svuotano di tutto il suo calore. Sono... freddi.~
== BHAERDA ~Al contrario, trovo che siano una commistione di erotismo e di necrofilia, di sensualità e di decadenza. Amore e morte formano un binomio inscindibile, un nodo che nessuna forza può allentare.~
= IF~IsValidForPartyDialog("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN ~Non è così, mia colomba?~
== BAERIE IF~IsValidForPartyDialog("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN ~(Arrossisce)~
== BTB#STIV ~Se lo dici tu, Haer'Dalis...~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CheckStatGT("Aerie",5,FATIGUE)
CombatCounter(0)
Global("tb#StivanAerie","GLOBAL",0)~ THEN BEGIN BAERIE
~Sono stanca... Stiamo cammiando e lottando da tutta la giornata! Possiamo... Possiamo riposarci?~
DO ~SetGlobal("tb#StivanAerie","GLOBAL",1)~ EXTERN BTB#STIV
~Smettila di lamentarti, Aerie! Anch'io sono esausto, ma non passo il tempo a bofonchiare frasi del tipo "Le gambe mi fanno male" o "Non ho mai camminato così tanto in tutta la mia vita"!~
== BAERIE ~Ma... Ma io...~
== BTB#STIV ~Hai pure il coraggio di ribattere?~
== BAERIE ~M-ma insomma! Credo di avere il diritto di lamentarmi se sono stanca! E poi mi stavo rivolgendo a <CHARNAME>, non a te!~
== BMAZZY IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN ~Aerie! Stivan! Cosa sta succedendo?~
== BTB#STIV ~Tsk. Riesci a malapena ad articolare una frase di senso compiuto. Ma dove hai vissuto fin'ora? Il mondo ha posto e porrà ostacoli a ciascuno di noi, ma questo non è un motivo sufficiente per lamentarsi in continuazione!~
== BAERIE ~C-cosa ne sai te delle difficoltà che ho dovuto affrontare in passato? Io ho perso le mie ali! Tu non hai idea di che cosa si provi a vedersi strappare ciò che si ha di più caro!~
== BTB#STIV ~Oh, sono commosso. La nostra piccola elfa ha perso le ali... Poverina!~
== BAERIE ~N-non... Non prendermi in giro!~
== BTB#STIV ~Anch'io ho perso ciò che avevo di più caro, ma non mi abbandono a lamentele e a piagnistei pubblici. Il dolore è un'esperienza che si vive privatamente; declamare la propria afflizione mostra solo quanto una persona possa essere così egocentrica da voler attirare l'attenzione degli altri su di sè.~
== BMAZZY IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN ~Per quanto difficile possa essere stata la tua vita, questo non ti autorizza a sputare veleno sugli altri!~
== BTB#STIV IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN ~Tu fatti gli affari tuoi!~
= ~...~
= ~... Heh. Stavo scherzando, Mazzy. Non guardarmi in quel modo...~
== BMAZZY IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN ~Spero di essere stata chiara, Stivan.~
== BTB#STIV IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN ~Ehm... Certo. Chiarissima.~
EXIT

CHAIN
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
TimeOfDay(Night)
AreaType(OUTDOOR)
CombatCounter(0)
Global("tb#StivanAerie","GLOBAL",1)~ THEN BEGIN BAERIE
~Uh? Mi è sembrato di sentire un rumore...~
DO ~SetGlobal("tb#StivanAerie","GLOBAL",2)~
= ~...~
= ~... Mi sarò sbagliata.~
= ~Eppure... Eppure ho l'impressione che qualcuno...~
== BTB#STIV ~Buh.~
== BAERIE ~Ahhhh!~
== BTB#STIV ~Heh. Fin troppo facile.~
== BAERIE ~B-basta, Stivan! Io... Io non ti sopporto più! Sono stufa delle tue frecciatine acide, sono stufa dei tuoi scherzi, sono stufa di te! <CHARNAME>... <CHARNAME>, ti prego, digli qualcosa!~
IF ~~ THEN REPLY ~Shhh... Vieni qui, Aerie. Non dargli retta.~ EXTERN BAERIE AerieScared1
IF ~~ THEN REPLY ~Mi aspetto che tu sia più coraggiosa. Non puoi spaventarti per così poco.~ EXTERN BAERIE AerieScared1
IF ~~ THEN REPLY ~Il tuo comportamento è a dir poco infantile, Stivan.~ EXTERN BTB#STIVAerieScared2
IF ~~ THEN REPLY ~Halfing, osa importunare ancora una volta Aerie e ti gonfio la faccia!~ EXTERN BTB#STIVAerieScared2
IF ~~ THEN REPLY ~Presto avrò una crisi di nervi. Non vi sopporto più...~ EXTERN BAERIEAerieScared2

APPEND BAERIE
   IF ~~ AerieScared1
     SAY ~Io... Non vorrei sembrarti sciocca, ma lui continua ad insultarmi, a rendermi nervosa... Non... Non so se riuscirò a mantenere la calma ancora per molto. Io... Ho bisogno di un pò di riposo adesso...~
       IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN EXTERN BMAZZY AerieScared3
       IF ~!IsValidForPartyDialog("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN EXIT
     END

APPEND BTB#STIV
   IF ~~ AerieScared2
     SAY ~(Ghigna) Scusami, <CHARNAME>. Resisto a tutto, ma non alle tentazioni.~
       IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN EXTERN BMAZZY AerieScared3
       IF ~!IsValidForPartyDialog("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN EXIT
     END

APPEND BMAZZY
    IF ~~ AerieScared3
     SAY ~Mi chiedo fino a quando resisterò alla tentazione di riempirti di schiaffi!~
== BTB#STIV ~Heh. La pazienza è la virtù dei forti, Mazzy.~
== BMAZZY ~Sappi che io la sto esaurendo!~
       IF ~IsValidForPartyDialog("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN EXTERN BKORGAN AerieScared4
       IF ~!IsValidForPartyDialog("Korgan") StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN EXIT
     END

APPEND BKORGAN
    IF ~~ AerieScared4
     SAY ~Ben fatto, ragazzino! Io stesso non avrei saputo fare di meglio!~
== BMAZZY ~E' proprio vero che uno sciocco trova sempre uno più sciocco che lo ammira.~
== BKORGAN ~Andiamo, Mazzy... Non ha fatto nulla di male!~
== BMAZZY ~(Sospira) Il buon senso, dunque, non avrà mai degli eroi.~
     END
    END

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanJan","GLOBAL",0)~ THEN BTB#STIV
~Ti ho mai detto, Jan, che aspiravo a diventare un bardo?~
DO ~SetGlobal("tb#StivanJan","GLOBAL",1)~               
== BJAN ~Davvero? Anch'io avevo la tua stessa ambizione! Tutto questo mi ricorda gli anni in cui la mia altezza era ancora lontana dal raggiungere il metro e una rapa di adesso...~
== BTB#STIV ~"Un metro e una rapa"? Che unità di misura è mai questa?~
== BJAN ~Cosa?! Non sapevi che gli gnomi misurano la loro statura con il rapometro? Zio Scratchy potrebbe seppellirti in un campo di fave per questo!~
== BTB#STIV ~Allora illuminami, Jan. Non desidero diventare fertilizzante per il terreno.~                                                                                                                                                                                                   == BJAN ~Prima devo finire di raccontarti la mia storia. Dunque, stavo dicendo..~                                                                                        = ~Uh...~
= ~Ehm...~
= ~L'ho dimenticato...~
== BTB#STIV ~Me lo dirai non appena ti verrà in mente.~
== BJAN ~Se vuoi, posso descriverti il modo in cui si misurano le unghie dei piedi! Vedi, devi sapere che noi gnomi...~
== BTB#STIV ~(Sigh)~
EXIT

Anche nel caso di Jan mi manca un dialogo… 
CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanJan","GLOBAL",2)~ THEN BJAN
~Un bardo! Volevo diventare un bardo! Ecco cosa continuavo a dimenticarmi di dirti!~
DO ~SetGlobal("tb#StivanJan","GLOBAL",3)~
== BTB#STIV ~Tu... un bardo?~
== BJAN ~Esatto! Che ne dici di darmi una mano a realizzare il mio sogno, Stivy? Sono un abile narratore. Conosco un sacco di storie. Ho una voce forte e squillante. Sarei il primo menestrello di casa Jansen!~
== BTB#STIV ~Jan, ehm... Ognuno di noi ha le proprie attitudini... Tu sei un abile illusionista e un ladro provetto, quindi non dovresti aspirare a qualcosa per cui non sei... adatto.~
= ~Senza offesa, ovviamente.~
== BJAN ~...~
= ~... Quando iniziamo?~
== BTB#STIV ~(Sigh) Smussare il tuo entusiasmo è un'impresa a dir poco impossibile. E va bene, Jan. Alla prima occasione ti insegnerò quello che so.~
EXIT

In questo dialogo bisognerà aggiungere una conditions – è necessario che abbia avuto luogo un dialogo con Anomen che devo ancora ultimare.
CHAIN
IF ~InParty("Jan")
InParty("Anomen")
See("Jan")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("Anomen",CD_STATE_NOTVALID)
CombatCounter(0)
Global("StivanFeelsStrange","GLOBAL",0)~ THEN BTB#STIV
~Jan...~
DO ~SetGlobal("StivanFeelsStrange","GLOBAL",1)~
== BJAN ~Sì, mio buon amico?~
== BTB#STIV ~Jan, mi sento un pò... strano.~
== BJAN ~Eh, ti capisco! Anch'io tempo fa, dopo aver mangiato una zuppa di rape avariata, non mi sentivo in me. Accadde nel lontano 1348, quando zia Petunia si convinse che il nome Petunia non era poi così male. Fu un anno terribile, quello. Le rape appassivano nel momento stesso in cui venivano dissotterrate, senza un perchè. Poi scoprimmo che la causa erano le flatulenze emesse da cugino Jowen. L'intero clan decise quindi di sigillargli, mentre dormiva, l'orifizio da cui provenivano quelle terribili esalazioni. Povero cugino! Il giorno seguente, quando cercò di rilasciare l'aria pestilenziale del suo stomaco, morì soffocato dal suo stesso tanfo. Una storia triste, questa.~
== BTB#STIV ~*Ahem* Il mio problema non ha niente a che fare con vegetali e flatulenze. Io... Sto provando qualcosa che non ho mai provato prima. E' una sensazione strana... Mi stordisce, mi rende... confuso...~
== BJAN ~Te l'avevo detto ieri sera di non esagerare con la salsa di rape.~
== BTB#STIV ~Ma quale salsa di rape! Io... Non capisco proprio cosa mi stia succedendo. Sento un odore, a volte, ma non so cosa sia... So soltanto che mi piace inebriarmene, che è il solo profumo che vorrei sentire sulla mia pelle...~
== BJAN ~In effetti, l'eau de toilette di Ma Jansen non conosce paragoni.~
== BTB#STIV ~E questo nodo alla gola... Che sia...~
== BJAN ~... Una rapa andata di traverso?~
== BTB#STIV ~...~
EXIT

CHAIN 
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
AreaType(OUTDOOR)
CombatCounter(0)
Global("tb#StivanJaheira","GLOBAL",0)~ THEN BTB#STIV 
~Yeah! Colpito! E con questo siamo a quota centodieci e mezzo!~
DO ~SetGlobal("tb#StivanJaheira","GLOBAL",1)~
== BJAHEIR ~Sto iniziando a stancarmi di vederti uccidere tutti gli uccelli che vedi, Stivan. Non hai ancora capito che così facendo non riporterai in vita i tuoi genitori?~
== BTB#STIV ~Io me la prendo solo con i gabbiani!~
== BJAHEIR ~Questi sono dettagli, e tu lo sai bene. Un ramo di pazzia abbellisce l'albero della saggezza, ma il tuo comportamento è ai limiti della ragionevolezza.~
== BTB#STIV ~Heh. Non a caso, si dice che la linea di confine tra genio e follia sia sottile.~
== BJAHEIR ~Già. Molto sottile.~
EXIT

CHAIN 
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanJaheira","GLOBAL",1)~ THEN BTB#STIV 
~Jaheira, posso chiederti perchè hai deciso di seguire <CHARNAME>? Sebbene all'epoca non potessi immaginartelo, questa scelta ha avuto delle notevoli ripercussioni sulla tua vita.~
DO ~SetGlobal("tb#StivanJaheira","GLOBAL",2)~
== BJAHEIR ~Quando Khalid ed io l'abbiamo incontrato per la prima volta, <CHARNAME> era un giovane inesperto e bisognoso di una guida. Gorion ci aveva raccomandato più volte di prendercene cura se gli fosse successo qualcosa, e così è stato.~
== BTB#STIV ~Hai pagato un alto prezzo per tener fede alla tua parola. Non voglio attribuir<PRO_HIMHER> alcuna responsabilità, ma il suo retaggio ha attirato Irenicus e--~
== BJAHEIR ~Dove vuoi arrivare con il tuo ragionamento, Stivan? A chiedermi se <PRO_HIMHER> avrei aiutato pur sapendo che in questo modo mio marito sarebbe morto?~
== BTB#STIV ~Esattamente.~
== BJAHEIR ~Questa domanda non è degna di risposta. L'uccisione di Khalid... era il tassello di un disegno più grande e al di là della nostra comprensione. Soprattutto della tua!~
== BTB#STIV ~Ehi, non c'è bisogno di essere così aggressivi. Anch'io ho perso i miei genitori, ma--~
== BJAHEIR ~Ma cosa? Hanno assassinato Khalid! Hanno profanato il suo corpo! Mi hanno divisa per sempre da mio marito! Come potrei non essere adirata?~
= ~Mi addolora solo... Il fatto di non essermi potuta offrire al suo posto.~
== BTB#STIV ~...~
= ~... Jaheira, io--~
== BJAHEIR ~No. Non voglio essere consolata.~
EXIT

Questo dialogo dovrebbe aver luogo una volta terminata la missione di Xzar.

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanJaheiraBalance","GLOBAL",0)~ THEN BEGIN BJAHEIR
~Stivan, ti sei mai chiesto se le tue azioni hanno contribuito a mantenere l'Equilibrio?~
DO ~SetGlobal("tb#StivanJaheiraBalance","GLOBAL",1)~
== BTB#STIV ~L'Equilibrio? Io non penso che esista una via di mezzo, Jaheira. Se il compito di un sovrano è quello di governare, adempirà al suo dovere con il pugno di ferro o nel più generoso dei modi. Non vedo altre alternative.~
== BJAHEIR ~Oltre alla tirannia e alla prodigalità esiste anche la saggezza, l'agire nel nome del bene collettivo.~
== BTB#STIV ~Ma con quali criteri giudichi giusta o sbagliata una decisione? Ciò che è un bene per me può essere un male per te.~
== BJAHEIR ~Esistono delle basi etiche universalmente riconosciute, Stivan. La vita, ad esempio, è il più prezioso dei beni e deve essere preservato a tutti i costi.~
== BTB#STIV ~Un'affermazione piuttosto ipocrita. Sbaglio o i tuoi compagni Arpisti non hanno esitato ad assassinare quello Zhentarim?~
== BJAHEIR ~E' proprio a questo punto che subentra la saggezza. Dal momento che Xzar minacciava la vita di più persone, è stato necessario ucciderlo.~
== BTB#STIV ~Jaheira, alle nostre spalle ci siamo lasciati una scia di cadaveri. Devo pensare che presto saremo fatti sparire dalla circolazione anche noi?~
== BJAHEIR ~Abbiamo tolto la vita soltanto per difesa. Il conflitto, purtroppo, è inevitabile.~
== BTB#STIV ~... Temo che non riuscirò mai a capire fino in fondo ciò che vuoi dirmi.~
== BJAHEIR ~E' normale che sia così. Io stessa penso di dover imparare ancora molto sull'Equilibrio.~
EXIT


Questo dialogo dovrebbe aver luogo una volta giunti a Trademeet dopo lo scontro con gli animali.

CHAIN 
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanJaheira","GLOBAL",0)~ THEN BTB#STIV
~Toglimi una curiosità, Jaheira: i tuoi amici druidi hanno forse deciso di trastullarsi con gli abitanti del luogo?~
DO ~SetGlobal("tb#StivanJaheira","GLOBAL",1)~
== BJAHEIR ~Sarebbe bene evitare giudizi affrettati, Stivan. Preferirei che non ci pronunciassimo su una situazione di cui sappiamo poco o nulla.~
== BTB#STIV ~Le cose non si considerano mai per quel che sono, ma per quel che appaiono.~
== BJAHEIR ~Piantala, halfing! Questo non è il momento adatto per una delle tue disquisizioni! Qualcuno o qualcosa minaccia di sconvolgere l'equilibrio di questo posto ed io sono più che intenzionata a fermarlo!~
EXIT

CHAIN 
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
Global("JaheiraCursed","GLOBAL",3)
CombatCounter(0)
Global("tb#StivanJaheiraCursed","GLOBAL",0)~ THEN BTB#STIV
~Jaheira, stai bene?~
DO ~SetGlobal("tb#StivanJaheiraCursed","GLOBAL",1)~
== BJAHEIR ~Sono stata meglio, grazie. Essere maledetta non è certamente un'esperienza piacevole, ma preferirei morire piuttosto che dare a quel lurido schiavista la soddisfazione di sentirmi lamentare.~
== BTB#STIV ~Hai proprio una brutta cera, sai?~
== BJAHEIR ~Non sono... (Tossisce) ... Non sono dell'umore adatto per ascoltare i tuoi commenti sardonici, Stivan.~
== BTB#STIV ~Stavo scherzando, druida. Sai bene quanto ci tenga a te.~
== BJAHEIR ~Vuoi che ti seppellisca insieme a Ployer o preferisci una fossa a parte?~
== BTB#STIV ~Ehi, stavo parlando sul serio!~
== BJAHEIR ~Non... Non volevo essere così brusca. Questa maledizione sta avendo un brutto effetto sul mio carattere.~
== BTB#STIV ~Davvero? Io non noto alcuna differenza.~
== BJAHEIR ~... Quando perderò la pazienza, Stivan, farai bene a trovarti a miglia di distanza.~
EXIT

CHAIN 
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
Global("JaheiraCursed","GLOBAL",10)
CombatCounter(0)
Global("tb#StivanJaheiraCursed","GLOBAL",1)~ THEN BTB#STIV
~Allora, Jaheira, come ti senti adesso?~
DO ~SetGlobal("tb#StivanJaheiraCursed","GLOBAL",2)~
== BJAHEIR ~Per la barba di Silvanus, Stivan! Vuoi lasciarmi in pace?~
== BTB#STIV ~Ehi! Ti ho soltanto chiesto come stai!~
== BJAHEIR ~Credi che sia una sciocca? So bene che non aspetti altro che l'occasione per prenderti gioco di me!~
== BTB#STIV ~No, non stavolta. Io... Sono rimasto molto colpito dalla tua forza d'animo. Ultimamente ti sono capitate un sacco di sciagure, come la perdita di tuo marito o la maledizione di Ployer, eppure reagisci sempre con grinta e tenacia.~
== BJAHEIR ~Mi limito ad andare avanti, Stivan. C'è una vendetta che attende di essere compiuta.~
== BTB#STIV ~Sì, ma... Io non riesco ad essere forte come te. Sono passati molti anni dalla... dalla morte dei miei familiari, ma ancora non riesco a darmi pace.~
== BJAHEIR ~...~
= ~... Spesso accadono cose che sono come domande. Passano i giorni, oppure gli anni, e la vita risponde.~
= ~Dopo un pò impari che l'amore non è appoggiarsi a qualcuno, che la compagnia non è sicurezza. Impari che i baci non sono contatti, che i doni non sono promesse.~
= ~Dopo un pò impari a costruire le strade oggi, perchè il terreno di domani è troppo incerto per fare piani. Impari che nella vita l'unica certezza è la morte, la sola cosa di cui non si può sapere nulla con certezza.~
= ~E cominci ad accettare le sconfitte a testa alta, con gli occhi aperti e la grazia di un adulto, non con il dolore di un bambino.~
= ~E impari che non puoi far altro che essere forte.~
= ~...~
= ~Khalid...~
== BTB#STIV ~*SOB*!~
== BJAHEIR ~Non... Non era mia intenzione rattristarti, Stivan. Faresti meglio a rivolgerti ad altri per ottenere il conforto che cerchi. Io... Temo di non essere la persona più adatta.~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanYoshimo","GLOBAL",0)~ THEN BEGIN BYOSHIM Athkatla
~Se ho capito bene, Stivan, Athkatla è la tua città natale.~
DO ~SetGlobal("tb#StivanYoshimo","GLOBAL",1)~ EXTERN BTB#STIV Athkatla
~Esattamente. Vivo nella capitale dell'Amn da quasi trent'anni ormai e nessuno conosce le sue strade meglio di me.~
== BYOSHIM ~E cosa ne pensi della Città della Moneta? Noti qualche differenza rispetto al passato?~
== BTB#STIV ~Uhm... Devo essere sincero?~
== BYOSHIM ~La sincerità è un concetto piuttosto complesso, amico. Limitati a dire quello che pensi.~
== BTB#STIV ~Come vuoi. Athkatla non è mai cambiata di una virgola: criminosa, degradata e sempre nelle mani di quei folli degli Incappucciati.~ 
== BYOSHIM ~In altre parole, un luogo ameno.~
== BTB#STIV ~Già. Posso sapere, Yoshimo, perchè tra tante città hai scelto di venire proprio qui?~
== BYOSHIM ~Diciamo che... avevo i miei motivi.~
== BTB#STIV ~Un'altra risposta da annotare nel lungo elenco delle frasi ambigue che escono dalla tua bocca. Lo fai apposta?~
== BYOSHIM ~Oh, no. Mi vengono... naturali.~
EXIT

CHAIN 
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanYoshimo","GLOBAL",1)~ THEN BTB#STIV
~La tua abilità con la katana è davvero sorprendente, Yoshi. Sbaglio o è un'arma che a Kara-Tur viene preferita a molte altre?~
DO ~SetGlobal("tb#StivanYoshimo","GLOBAL",2)~
== BYOSHIM ~Non proprio, mio piccolo amico. Innanzitutto, quella spada a lama curva e taglio singolo che tu chiami katana in realtà porta il nome di uchigatana. Viene brandita unicamente dai samurai o da altri membri della classe guerriera, mentre a tutti gli altri è vietato l'utilizzo.~
= ~Nel corso di un combattimento ci si può servire di diversi modi di questa lama. Io, ad esempio, preferisco impugnarla con una sola mano; altri, invece, sono soliti combinarla col wakizashi, formando così una combinazione di spade che prende il nome di daisho; altri ancora, infine, la tengono con due mani.~
== BTB#STIV ~Wow!~
== BYOSHIM ~Questi particolari stupiscono sempre. Devo ancora scoprire il perchè.~
== BTB#STIV ~Mi insegneresti ad utilizzare la katana come un vero samurai, Yoshi?~
== BYOSHIM ~Se i tempi non fossero così lunghi ne sarei lieto.~
== BTB#STIV ~Ti prego! Sono disposto ad allenarmi duramente per tutti i mesi che sarà necessario!~
== BYOSHIM ~Mesi? Imparare a servirsi della katana come un guerriero di Kara-Tur richiede anni, Stivan.~
== BTB#STIV ~Ma... Ma io non ho tutto questo tempo!~
== BYOSHIM ~(Sorride) Allora imparerai che ci sono tante altre cose che vale la pena apprendere. Se in questo mondo non ci fosse nient'altro d'interessante, sarebbe un posto piuttosto noioso.~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanYoshimo","GLOBAL",2)~ THEN BEGIN BYOSHIM
~Vedo che continui a fissare la mia lama, Stivan. Hai forse notato qualche macchia sfuggita alla mia attenzione?~
DO ~SetGlobal("tb#StivanYoshimo","GLOBAL",3)~
== BTB#STIV ~No, anzi. La tua katana brilla come se fosse stata appena forgiata. E' magica, vero?~
== BYOSHIM ~Già.~
== BTB#STIV ~Come te la sei procurata?~
== BYOSHIM ~La storia di questa lama è tutto fuorchè intrigante. Se te la raccontassi, non sentiresti alcuna vicenda tragica o gloriosa su di essa.~
== BTB#STIV ~Heh. Sai bene che la voglio ascoltare lo stesso.~
== BYOSHIM ~Come vuoi. La katana che vedi mi venne regalata diversi anni fa da un mio amico Wu Jen a Kara-Tur.~
== BTB#STIV ~Ehm... Cosa significa Wu Jen?~
== BYOSHIM ~E' il modo con cui vengono chiamati i maghi nella mia terra. Il Wu Jen in questione mi doveva un favore e, in mancanza di alternative, decise di sdebitarsi forgiando questa lama.~
== BTB#STIV ~Una scelta azzeccata, direi.~
== BYOSHIM ~Più di quanto pensi.~
== BTB#STIV ~E l'arma di cui ti servivi prima di ricevere questa? Che fine ha fatto?~
== BYOSHIM ~Era una spada comune. Per un pò ho continuato ad usarla durante gli allenamenti, ma col tempo si è rovinata.~
= ~(Yoshimo diventa improvvisamente cupo.)~
== BTB#STIV ~Tutto bene, Yoshi?~
== BYOSHIM ~Pare che tu abbia il potere di rievocare memorie sopite, mio piccolo amico... O forse sarebbe il caso di dire che la tua sfacciata curiosità riapre vecchie ferite. In ogni caso, abbiamo indugiato abbastanza per oggi. E' ora di proseguire.~
EXIT

CHAIN 
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanYoshimo","GLOBAL",3)~ THEN BTB#STIV Yoshitaciturno
~Ultimamente sei diventato taciturno, Yoshi. Perchè non mi parli un pò di te e di Kara-Tur?~
DO ~SetGlobal("tb#StivanYoshimo","GLOBAL",4)~
== BYOSHIM ~Il silenzio è essenziale per chi svolge un mestiere come il mio. In ogni caso, ho ben poco da dire su di me. Il paese in cui vivevo non era alla mia altezza e quindi ho deciso di venire qui ad Athkatla.~
= ~Il resto, come si dice, è storia.~
== BTB#STIV ~Mi hai riassunto la tua vita in quattro parole! Suvvia, dimmi qualcosa di più: perchè non ti trovavi a tuo agio a Kara-Tur?~
== BYOSHIM ~Poni troppe domande, Stivan. E' proprio vero che la curiosità è donna.~
== BTB#STIV ~Heh. Sarai laconico nelle tue risposte, Yoshimo, ma il senso dell'umorismo non ti manca. E sia. Se preferisci stare sulle tue, non ti costringerò a parlare, ma... Ricordati che aprirsi agli altri può essere liberatorio.~
== BYOSHIM ~Non sempre, amico mio. Non sempre.~
EXIT

CHAIN 
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
Global("ShadDead","LOCALS",1)
Global("KorganNoKillShag","GLOBAL",1)
CombatCounter(0)
Global("tb#StivanKorgan","GLOBAL",0)~ THEN BTB#STIV
~Sai, Korgan, oggi è l'anniversario della morte dei miei familiari. Sono trascorsi ben otto anni dal giorno della loro scomparsa.~
DO ~SetGlobal("tb#StivanKorgan","GLOBAL",1)~
== BKORGAN ~Ringrazia il cielo di non aver avuto come fautori dei tuoi giorni dei gambelunghe. In tal caso, ti assicuro che non avrei esitato a lanciarti un'ascia in faccia.~
== BTB#STIV ~Devo ritenermi fortunato, allora. I tuoi genitori sono ancora vivi?~
== BKORGAN ~Bah! Per quanto mi riguarda, possono anche marcire all'inferno!~
== BTB#STIV ~E i tuoi fratelli?~
== BKORGAN ~Tsk. Un mucchio di bastardi.~
== BTB#STIV ~Uhm... Ecco un raro esempio di devozione filiale. Come mai nutri una così profonda avversione per la tua famiglia?~
== BKORGAN ~Non ficcare il naso in affari che non ti riguardano, halfing. Ti basti sapere che se dovessi incontrare uno solo di loro, non tornerà a casa vivo. E se dovesse riuscirci, avrà qualche arto in meno.~
EXIT

CHAIN 
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
Global("ShadDead","LOCALS",1)
Global("KorganNoKillShag","GLOBAL",1)
CombatCounter(0)
Global("tb#StivanKorgan","GLOBAL",1)~ THEN BTB#STIV
~Korgan, hai mai perso la testa per una donna?~
DO ~SetGlobal("tb#StivanKorgan","GLOBAL",2)~
== BKORGAN ~Sono le donne a perdere la testa per me! Sotto i colpi della mia ascia, ovviamente! Har har!~
== BTB#STIV ~Ehm... Forse è meglio che riformuli la mia domanda. Ti sei mai innamorato di qualcuno?~
== BKORGAN ~Ti sembro il genere di persona che striscia ai piedi di una femmina?~
== BTB#STIV ~Direi proprio di no, ma mi hanno insegnato che, quando una donna solletica il tuo interesse, bisogna saperla conquistare.~
== BKORGAN ~Lascia che ti parli delle mie conquiste, allora. Tempo fa, quando stavo con quel gruppo di mercenari che abbiamo affettato, mi intrigava una puttanella che batteva i moli. Aveva due meloni così grossi, amico, che con un abbraccio avrebbe potuto soffocarti!~
== BTB#STIV ~Ehm... Sì. Qual era il suo nome?~
== BKORGAN ~Cosa vuoi che ne sappia? Non mi preoccupo mai di dettagli così insignificanti.~
== BTB#STIV ~... Ma certo.~
== BKORGAN ~Quella sgualdrina era ambita da dozzine di persone e per trascorrere una notte con lei gli uomini non esitavano a sfidarsi. Non avevo voglia di combattere: in quel periodo, infatti, i miei compagni ed io eravamo al soldo di un nobile che dovevamo proteggere ad ogni suo spostamento ed io volevo divertirmi senza troppa fatica.~
= ~Una notte proposi quindi agli uomini che se la contendevano di risolvere la questione non con il ferro, ma con un altro genere di sfida. Quella donna sarebbe andata a letto con chi, tra di noi, avrebbe pisciato più lontano.~
== BTB#STIV ~Una prova eroica. Lasciami indovinare: sei stato tu a vincere?~
== BKORGAN ~Sicuro! Avevo proposto questa sfida proprio perchè sapevo che la vittoria sarebbe stata mia. Non c'è nano che--~
== BTB#STIV ~Che ti eguagli, sì. Ho afferrato il concetto, Korgan: non hai mai perso la testa per una donna. In effetti, ancora non capisco perchè ti abbia fatto una simile domanda...~
EXIT

CHAIN 
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanValygar","GLOBAL",0)~ THEN BTB#STIV
~Valygar, per quale motivo hai deciso di diventare un ranger? La tua famiglia è di nobile origine; avresti potuto servirti del tuo buon nome e delle tue ricchezze per condurre una vita agiata.~
DO ~SetGlobal("tb#StivanValygar","GLOBAL",1)~
== BVALYGA ~Avrei potuto, ma non l'ho fatto per diversi motivi. In primo luogo, i Corthala non godono di grande considerazione: quale nobile si avvicinerebbe ad una famiglia maledetta da generazioni?~
= ~Secondariamente, sono un uomo sobrio. Il lusso e gli sfarzi non mi hanno mai attirato.~
== BTB#STIV ~Devi avere qualche rotella fuori posto per non essere attratto dal mondo aristocratico.~ 
== BVALYGA ~Se lo conoscessi quanto basta, Stivan, non diresti una cosa simile.~
EXIT

CHAIN 
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanValygar", "GLOBAL",1)~ THEN BTB#STIV
~Valygar, mi hai spiegato perchè non eri attratto dalla vita mondana, ma... Cosa ti ha spinto a diventare un ranger?~
DO ~SetGlobal("tb#StivanValygar", "GLOBAL",2)~
== BVALYGA ~Sarebbe più corretto chiamarmi esploratore anzichè ranger: quest'ultimo, infatti, è un titolo che viene conferito soltanto a coloro che si sono distinti nella difesa della natura.~
== BTB#STIV IF ~IsValidForPartyDialog("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN ~Beh, se Minsc l'ha ottenuto, immagino che questo titolo non sia difficile da conseguire.~
== BMINSC IF ~IsValidForPartyDialog("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN ~Minsc ha un udito più fine di quello di Boo e ti ha sentito! Sono diventato ranger perchè nessuno ha dato al male tanti calci nel sedere come me!~
== BTB#STIV IF ~IsValidForPartyDialog("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN ~Ti ringrazio, Minsc: hai appena confermato le mie supposizioni. Stavi dicendo, Valygar?~
== BVALYGA ~Ho prestato servizio tra le guardie dell'Amn per diversi anni. Sono stato impiegato come esploratore nelle foreste e nei luoghi selvaggi per le mie capacità di mimetizzazione, ed è nel corso di una delle mie missioni che ho avvertito il richiamo della natura.~
== BTB#STIV ~Capisco. In altre parole, proteggi i cespugli e i ciuffi d'erba per dare un senso alla tua vita.~
== BVALYGA ~Non penso proprio di aver detto questo, Stivan.~
== BTB#STIV ~Oh, ma non preoccuparti. Io non critico niente e nessuno. Penso soltanto che questa storia del servire Madre Natura sia una grande scemenza.~
== BVALYGA ~Definire "scemenza" qualcosa che non conosci è capisci non ti fà onore, soprattutto visto e considerato che sei stato te a chiedermi di raccontarti come sono diventato ciò che sono.~
== BTB#STIV ~Il problema è che--~
== BVALYGA ~Io non vedo nessun problema, Stivan, ad eccezione dei tuoi stereotipi e pregiudizi.~
== BTB#STIV ~Io non--~
== BVALYGA ~Basta così. Gli stolti non capiscono mai quando è il momento di tacere, quindi è meglio che sia io ad interrompere questa conversazione. Tu ed io non abbiamo più nulla da dirci, almeno finchè non avrai imparato a pensare prima di parlare.~
EXIT

Queso dialogo lo farei attivare dopo lo scontro con gli halfing nella sfera planare che si trovano ad ovest dei paladini di Solamnia.

CHAIN 
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanValygarSphere","GLOBAL",0)~ THEN BTB#STIV
~Dannazione! Vorrei uscire integro da questo posto! Stavo per perdere le braccia sotto i morsi di quelle bestiacce!~
DO ~SetGlobal("tb#StivanValygarSphere","GLOBAL",1)~
== BVALYGA ~Calmati, Stivan, o attirerai l'attenzione. Ci sono insidie ad ogni angolo qui, ed urlare in questo modo potrebbe essere pericoloso.~
== BTB#STIV ~E' troppo chiedere di tornare ad Athkatla con tutti gli arti attaccati?!~
== BVALYGA ~E' troppo chiederti di non rivelare la nostra presenza ad ogni creaura che si trova in questo posto?~
== BTB#STIV ~Tu e il tuo dannato antenato! Finiremo per essere uccisi tutti!~
== BVALYGA ~No, Stivan. Sarà Lavok ad essere ucciso una volta per tutte.~
EXIT

CHAIN 
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
Dead("Lavok02")
CombatCounter(0)
Global("tb#StivanValygar","GLOBAL",2)~ THEN BTB#STIV
~Valygar, è da diverso tempo che medito su una cosetta...~
DO ~SetGlobal("tb#StivanValygar","GLOBAL",3)~
== BVALYGA ~Sarebbe?~
== BTB#STIV ~Ehm... Hai presente la sfera del tuo antenato?~
== BVALYGA ~Difficilmente potrei dimenticarmene.~
== BTB#STIV ~Ecco, vedi... Il punto è che... Insomma, non pensi sia un peccato lasciarla inutilizzata? Lì, in mezzo ai rifiuti dei Bassifondi, tutta sola soletta...
== BVALYGA ~Utilizzarla a che scopo, scusa?~
== BTB#STIV ~Beh, questi sono dettagli.~
== BVALYGA ~Dettagli, eh? Spiacente, ma non voglio avere più nulla a che fare con quella sfera. Nella mia mente è ancora vivido il ricordo della distruzione e della sofferenza che ha causato, e nelle mani di persone incaute potrebbe ritornare ad essere pericolosa.~
== BTB#STIV ~Ma potresti fare un sacco di cose con quell'aggeggio!~
== BVALYGA ~Ad esempio?~
== BTB#STIV ~Beh, potremmo servircene per eliminare tutti i gabbiani nel Faerun. Sì, mi pare un'ottima idea!~
== BVALYGA ~... Per oggi ne hai dette fin troppe, Stivan. Il mio no è definitivo.~
EXIT

Questo dialogo lo farei partire dopo la morte di Suna Seni (se è stato installata la componente “La relazione tra Valygar/Suna Seni del mod UB)

CHAIN
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
AreaCheck("AR1514")
CombatCounter(0)
Global("tb#StivanValygarAboutSuna","GLOBAL",0)~ THEN BTB#STIV
~(Urla) Basta! Non ne posso più di tutti questi mostri! Le mani mi stanno sanguinando per la fatica! La testa è sul punto di scoppiarmi! Come se non bastasse, ho addirittura finito la mia scorta di piume! Tutto per colpa della tua donna, ranger!~
DO ~SetGlobal("tb#StivanValygarAboutSuna","GLOBAL",1)~
== BVALYGA ~Cosa?! Stai accusando Suna Seni della situazione in cui ci troviamo? E' stato quel mostro di Irenicus a costringerla a lavorare per lui!~
== BTB#STIV ~*Ahem* A me non sembra che sia stata costretta. Ha accettato in cambio di una cospicua somma, giusto?~
== BVALYGA ~Nessuno di noi è innocente, Stivan. In questa storia siamo tutti colpevoli. Tutti. Ognuno a modo suo.~
== BTB#STIV ~Ma io non ho fatto niente!~
== BVALYGA ~Allora chi non ha peccato scagli la prima pietra.~
== BTB#STIV ~... Eh?~
== BVALYGA ~(Sigh) Lascia stare. Torniamo alla ricerca di una fuga da questo posto.~
EXIT


Questo dialogo lo farei partire dopo lo sconto con gli halfing che si trovano nella stanza con le fornaci da cui escono gli elementali del fuoco.

CHAIN 
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanMazzy","GLOBAL",0)~ THEN BTB#STIV
~M-Mazzy, li hai sentiti? Quei mostri volevano cibarsi delle nostre carni! Volevano banchettare con le *mie* e con le *tue* membra!~
DO ~SetGlobal("tb#StivanMazzy","GLOBAL",1)~
== BMAZZY ~Questo incontro mi ha lasciata confusa, Stivan, e anche un pò spaventata. Non avevo mai visto degli halfing... cannibali.~
== BTB#STIV ~Come possono voler mangiare dei loro simili?~
== BMAZZY ~La fame è una brutta bestia. Suppongo che, se non li avessimo mai incontrati, alla fine si sarebbero divorati tra di loro.~
== BTB#STIV ~In effetti, credo che anch'io avrei rosicchiato qualche tuo arto piuttosto che morire d'inedia.~
== BMAZZY ~Non posso dire lo stesso, Stivan. Cinico e pungente come sei, dubito che saresti commestibile.~
EXIT

Questo dialogo dovrebbe aver luogo una volta risolta la missione di Kram.

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanMazzyAboutKram","GLOBAL",0)~ THEN BEGIN BMAZZY
~Sono contenta che Kram sia riuscito a trovare un lavoro onesto. Con un pò di costanza e di buona volontà, potrà finalmente costruirsi un futuro.~
DO ~SetGlobal("tb#StivanMazzyAboutMazzy","GLOBAL",1)~ EXTEND BTB#STIV 
~Altre agili dita sottratte alla raffinata arte del borseggio... Dove andremo a finire?~
== BMAZZY ~Con simili osservazioni, Stivan, non c'è da stupirsi se la maggior parte delle persone etichetta gli halfing come un popolo di ladri. Grazie ad Arvoreen, vicende come quella di riescono a smussare questo genere di pregiudizi.~
== BTB#STIV ~Beh, con un pò d'impegno dovrei riuscire a traviarlo...~
== BMAZZY ~Sono convinta che non cederebbe a nessuna tentazione.~
== BTB#STIV ~E se sgrafignassi qualcosa a Galoomp sotto i suoi occhi? Questo potrebbe risvegliare l'antica abitudine...~
== BMAZZY ~Quando ti comporti in questo modo, Stivan, sarei tentata di prenderti a schiaffi.~
== BTB#STIV ~Dici sul serio, venditrice di patat-- *AHIA*!~
== BMAZZY ~Umpf. Stavolta te la sei cercata.~
EXIT


CHAIN 
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
AreaCheck("AR0202")
CombatCounter(0)
Global("tb#StivanKeldornStink","GLOBAL",0)~ THEN BTB#STIV
~(Sniff sniff) Cos’è questo fetore?~
DO ~SetGlobal("tb#StivanKeldornStink","GLOBAL",1)~
== BKELDOR ~Ogni angolo di questo posto è impregnato dell’odore del male. Suggerisco di avanzare con cautela.~ 
== BTB#STIV ~Heh. Io pensavo che avessi fatto una puzzetta, paladino!~
== BKELDOR ~…~
EXIT

Un dialogo in cui Stivan prende nuovamente Aerie di mira se CHARNAME ha avuto il dialogo in cui l’elfa racconta del modo in cui ha perso le ali - credo che quel dialogo sia Global("BAerie10","LOCALS",1). 

CHAIN 
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
Global("BAerie10","LOCALS",1)
!Global("tb#StivanAerie","GLOBAL",2)
CombatCounter(0)
Global("tb#StivanDislikesAerie","GLOBAL",0)~ THEN BTB#STIV
~Quindi, elfa, hai perso le tue ali nel patetico tentativo di salvare un bambino. Piuttosto stupido da parte tua, ma non mi sorprende.~
DO ~SetGlobal("tb#StivanDislikesAerie","GLOBAL",1)~
== BAERIE ~Come... Come fai a saperlo? Hai origliato di nuovo la mia conversazione con <CHARNAME>?~
== BTB#STIV ~Non ho origliato proprio nulla, io. Sono i tuoi lamenti a giungere alle mie orecchie. Povero ragazzo... Mi chiedo come riesca a sopportarti.~
== BAERIE ~<CHARNAME> non avrebbe motivo di essere infastidito dai miei sfoghi e dai miei racconti! Tu... Tu non lo sei, vero?~
END
IF ~~ THEN REPLY ~Assolutamente no. (Rivolgendoti a Stivan) Vuoi chiudere la bocca o preferisci che sia io a sigillartela?~ EXTERN BTB#STIV StivanDislikesAerie1-1
IF ~~ THEN REPLY ~Sai bene che ti ascolto più che volentieri. Non prestare attenzione a quello che dice.~ EXTERN BTB#STIV StivanDislikesAerie1-1
IF ~~ THEN REPLY ~E' sempre un piacere sentire ciò che hai da dire, ma vorrei che tu riuscissi ad essere un pò più forte.~ EXTERN BAERIE StivanDislikesAerie1-2
IF ~~ THEN REPLY ~Beh, Stivan non ha tutti i torti. A volte sei piuttosto noiosa e ripetitiva.~ EXTERN BAERIE StivanDislikesAerie1-3

CHAIN BAERIE StivanDislikesAerie1-2
SAY ~Io… Cerco solo di essere me stessa… Con i miei pregi e i miei difetti. Ma cercherò di… di essere più coraggiosa e autonoma, se è questo che vuoi.~
IF ~~ THEN EXIT
END

CHAIN BAERIE StivanDislikesAerie1-3
SAY ~Ah sì? V-va bene, <CHARNAME>: s-s-se sono così noiosa e rip-petitiva, non ti seccherò più! Io… Non credevo di essere un peso per te!~
IF ~~ THEN EXIT
END

CHAIN BTB#STIV StivanDislikesAerie1-1
SAY ~Heh. A volte c’è bisogno che siano le labbra altrui a confessare verità che non ammetti a te stesso. Dovresti ringraziarmi!~
END
IF ~~ THEN REPLY ~Stivan, ho capito che a te non piace Aerie, ma questo non significa che tu debba metterti in mezzo a noi.~ EXTERN BTB#STIV StivanDislikesAerie1-4
IF ~~ THEN REPLY ~Non ho certo bisogno che *tu* mi dica cosa provo per lei! Chi credi di essere?~ EXTERN BTB#STIV StivanDislikesAerie1-4
IF ~~ THEN REPLY ~Sono stanco del modo in cui la tratti, halfing. Osa ancora una volta infastidirla e ti sbatto fuori dal gruppo.~ EXTERN BTB#STIV StivanDislikesAerie1-4

CHAIN BTB#STIV StivanDislikesAerie1-4
SAY ~Povero <CHARNAME>… Sei la dimostrazione vivente del fatto che l’uomo è imperfetto. Eppure bisogna capire e scusare, considerando l’epoca in cui è stato creato.~
= ~(Stivan ti fa una pernacchia).~
END
IF ~~ THEN REPLY ~Tu vuoi proprio morire, halfing.~ EXTERN BTB#STIV StivanDislikesAerie1-5
IF ~~ THEN REPLY ~Ti lascio in vita soltanto perché apprezzo le tue frasi proverbiali.~ EXTERN BTB#STIV StivanDislikesAerie1-5
IF ~~ THEN REPLY ~(Sigh) E’ peggio di un poppante.~ EXTERN BTB#STIV StivanDislikesAerie1-5

CHAIN BTB#STIV StivanDislikesAerie1-5
SAY ~Heh. E’ uno spasso viaggiare con te, ragazzo.~
IF ~~ THEN EXIT
END
END

CHAIN 
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanImoen","GLOBAL",0)~ THEN BTB#STIV
~E così tu saresti la sorella di <CHARNAME>, nonché figlia di Bhaal. Sai che anche Stivan appartiene ad una progenie divina?~
DO ~SetGlobal("tb#StivanImoen","GLOBAL",1)~
== BIMOEN2 ~Sospettavo che il Signore dell’Omicidio non fosse il solo ad aver sparso il suo seme qua e là. A quanto pare va di moda tra gli dei fecondare ogni donna che capita a tiro.~
== BTB#STIV ~Heh. La mia mammina è stata fortunata ad incontrare il grande Brandobaris.~
== BIMOEN2 ~Brandobaris? Il dio della furtività e dei ladri halfing?~
== BTB#STIV ~Esatto! E’ stato lui ad affidare a Stivan il gravoso compito di sterminare i gabbiani di tutta Faerun! Inoltre il mio retaggio fa di me il miglior ladro di questo gruppo, pertanto… fatti da parte!~
== BIMOEN2 ~Aspetta, ma… Non hai iniziato a dar loro la caccia soltanto dopo la morte dei tuoi familiari?
== BTB#STIV ~Accidenti! La ragazzina è più sveglia di quanto pensassi… 
= ~*Ahem* Ad ogni modo, sono io il più abile ladro di questa compagnia di scapestrati!~
== BIMOEN2 ~Non penso proprio. Forse non sai che, prima di dedicarmi alle arti arcane, ero nota lungo tutta la Costa della Spada come “Imoen La Svelta”.~
== BTB#STIV ~Se la metti così allora sarà il ferro a stabilire chi di noi due è il migliore! Preparati ad ass…
= ~Ehi, ma…~
= ~Dov’è la mia arma?!~
== BIMOEN2 ~Questa qui? Oh, scusami, Stivan… L’ho presa senza neanche dirtelo. O forse dovrei dire che te l’ho soffiata da sotto il naso?~
== BTB#STIV ~ (Snort!) E va bene, ragazzina. Se vuoi la guerra, che guerra sia!~
== BIMOEN2 ~Come vuoi… Ho già un punto in tasca!~
EXIT
 
CHAIN 
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanImoen","GLOBAL",1)~ THEN BTB#STIV
~Ed ecco l’intrepido Stivan scivolare silenziosamente verso la sua acerrima nemica. Con passo felpato si avvicina all’ignara vittima, fa scorrere senza il minimo rumore la sua micidiale arma tra le dita e…~
DO ~SetGlobal("tb#StivanImoen","GLOBAL",2)~
== BIMOEN2 ~Imoen la Svelta non ha bisogno di voltarsi per schivare la fatale piuma di gabbiano scagliatale addosso dal suo rivale e, con un agile piroetta, estrae la sua lama e scatta in direzione dell’avversario!~ 
== BTB#STIV ~Nell’aria rieccheggia lo sfrigolio dell’acciaio, con fendenti che cercano ferite da aprire!~
== BIMOEN2 ~Imoen la Svelta disarma l’avversario con uno sgambetto…~
== BTB#STIV ~Non val -- *Ouch*!~
== BIMOEN2 ~… E punta la sua lama alla gola del nemico!~
== BTB#STIV ~Prendi questo!~
== BIMOEN2 ~Arghh! Ma cosa…?~
== BTB#STIV ~Heh. La cacca di gabbiano negli occhi è micidiale.~ 
== BIMOEN2 ~Bleah! Che schifo!~
== BTB#STIV ~E con questo siamo uno pari! Con il prossimo round la vittoria sarà mia, strega!~
== BIMOEN2 ~Non contarci, piccoletto.~
EXIT


CHAIN 
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanImoen","GLOBAL",2)~ THEN BTB#STIV
~(Pant pant) Sono stremato…~
DO ~SetGlobal("tb#StivanImoen","GLOBAL",3)~
== BIMOEN2 ~ (Pant pant) A chi lo dici!~
== BTB#STIV ~Rassegnati, Imoen… Sono io il migliore!~
== BIMOEN2 ~Aspetta… Mi è venuta un’idea.~
== BTB#STIV ~Credi che sia così sciocco da cascare nella tua trappola?~
== BIMOEN2 ~No, parlo sul serio. Il nostro confronto potrebbe non finire mai. Perché non rimettere il giudizio al nostro leader?~
== BTB#STIV ~…~
= ~… Abbiamo un leader?~
== BIMOEN2 ~Mi riferisco a <CHARNAME>…~
== BTB#STIV IF~Gender(Player1,MALE)~ THEN ~Non vale! Lui è tuo fratello, come potrebbe essere obiettivo?~
== BTB#STIV IF~Gender(Player1,FEMALE)~ THEN ~Non vale! Lei è tua sorella, come potrebbe essere obiettiva?~
== BIMOEN2 ~<CHARNAME> è un ottimo arbitro. Non lascerebbe mai che dei semplici legami di parentela oscurassero la sua capacità di giudizio.~
== BIMOEN2 IF~Gender(Player1,MALE)~ THEN ~(Bisbigliando) Mi raccomando, fratellino, scegli me!~
== BIMOEN2 IF~Gender(Player1,FEMALE)~ THEN ~ (Bisbigliando) Mi raccomando, sorellina, scegli me!~
== BTB#STIV ~*Ahem* Ebbene, <PROGIRLBOY>? Qual è  il miglior ladro? Il Grande Cacciatore di Gabbiani… oppure la Streghetta della Costa?~
END
IF ~Class(Player1,THIEF)~ THEN REPLY ~E’ ovvio che sia io il numero uno.~ GOTO tb#StivanImoen1-1
IF ~~ THEN REPLY ~ (Sigh) Perché mi avete tirato in mezzo?~ EXTERN BIMOEN2 tb#StivanImoen1-1
IF ~~ THEN REPLY ~Io direi entrambi.~ EXTERN BIMOEN2 tb#StivanImoen1-1
IF ~~ THEN REPLY ~Nessuno dei due.~ EXTERN BIMOEN2 tb#StivanImoen1-1
IF ~~ THEN REPLY ~Imoen combina i molteplici usi della magia con le sue abilità furtive. E’ lei la migliore.~ EXTERN BIMOEN2 tb#StivanImoen1-1
IF ~~ THEN REPLY ~Stivan combina l’arte della guerra con una buona rapidità di mano. E’ lui il migliore.~ EXTERN BIMOEN2 tb#StivanImoen1-1

CHAIN BIMOEN2
~Sei soddisfatto della sua risposta?~
== BTB#STIV ~Heh. Dovrei?~
== BIMOEN2 ~Assaggia questo! Biscotto alla cannella!!~
== BTB#STIV ~Prendi questo! Piuma di gabbiano!!~
EXIT
 

CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanMinsc","GLOBAL",0)~ THEN BTB#STIV
~Noto che parli spesso al tuo criceto, Minsc. Non pensavo che quelle palline di pelo fossero degli interessanti interlocutori.~
DO ~SetGlobal("tb#StivanMinsc","GLOBAL",1)~
== BMINSC ~Boo è un gran chiaccherone! E anche un gran bardo! Compone fior fior di poemi ogni volta che riempiamo il male di calci nel sedere!~
== BTB#STIV ~... Non mi risulta che i criceti compongano suonate o altro.~
== BMINSC ~E invece sì! Boo canta sempre qualcosa quando è di buon umore, come il trionfo della giustizia sulle meschinità del male, le vittorie di noi paladini del bene sui marrani o i brindisi a cui ci abbandoniamo nel nome della bontà! Celebra anche le volte in cui gli cambio i trucioli, ogni tanto.~
== BTB#STIV ~Voi ranger avete una fervida immaginazione.~
== BMINSC ~Ma è vero! Boo, il nostro amico Stivan mette in dubbio le tue abilità canore!~
= ~Cosa dici, Boo? Vuoi dimostrargli che sei uno dei migliori bardi criceto di Rasheman? Vuoi dargli prova delle tue capacità? Benissimo! Preparati, halfing: stai per assistere all'esibizione del mio criceto!!~
= ~*Squeak!*~
= ~Sentito?!~
== BTB#STIV ~...~
EXIT

CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanMinsc","GLOBAL",1)~ THEN BTB#STIV
~Boo, saresti così gentile da non urlare come uno scalmanato in battaglia? I miei timpani rischiano di essere sfondati dai tuoi schiamazzi!~
DO ~SetGlobal("tb#StivanMinsc","GLOBAL",2)~
== BMINSC ~Haha! Hai sentito, Boo? Il tuo fiato è così potente da stordire il nostro amico halfing! Continua così!~
== BTB#STIV ~... Mi stavo rivolgendo a te, ranger. Benchè abbia confuso i vostri nomi, mi sembra ovvio che tra voi due sia tu a far tremare il suolo con i tuoi ruggiti.~
== BMINSC ~Ma Minsc non può restare muto come un pesce! Deve riempire i polmoni d'aria per abbattere i nemici con i suoi tonanti ruggiti! In guardia, male: Minsc sta per dar fiato alle sue trombe vocali!!~
== BTB#STIV ~Volevi dire *corde* vocali.~
== BMINSC ~Ehm... "Trombe" è una parola di Boo! Vero, Boo?~
== BTB#STIV ~Già... Ad ogni modo, ti sarei grato se la smettessi di stordirmi. Possiamo affrontare il male anche con discrezione, sai?~
== BMINSC ~Ma Minsc deve tenere alto il morale!~
== BTB#STIV ~Ti assicuro che sarà alle stelle in assenza dei tuoi gorgheggi.~
EXIT


CHAIN
IF ~InParty("Jan")
See("Jan")
!StateCheck("Jan",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanJan","GLOBAL",1)~ THEN BTB#STIV
~Jan, mi sono appena ricordato quello che volevi dirmi la volta scorsa.~
DO ~SetGlobal("tb#StivanJan","GLOBAL",2)~
== BJAN ~Sul serio? Questo è un bene, Stivan, perchè da poco tempo a questa parte tendo a scordarmi le cose. A proposito di smemoratezza, ti ho mai detto che zio Scratchy dimenticava persino il suo nome?~
== BTB#STIV ~No, non me ne hai mai parlato. Ciò di cui volevi discutere...~
== BJAN ~Visto che ci siamo, perchè accantonare il discorso? Stavo dicendo, povero zietto! Era un vero malandrino. Rubava rape e gioielli qua e là, ma poi non si ricordava più dove avesse nascosto la sua refurtiva, ortaggi o monili che fossero.~
= ~In famiglia si vocifera che abbia accumulato una quantità così grande di ricchezze da far gola a qualsiasi avventuriero! La mia cara zia Petunia sta progettando da diverso tempo di mettersi alla ricerca di questo tesoro con l'aiuto del suo draghetto d'ombra. E' una simpatica bestiola, sai?~
== BTB#STIV ~... Ti riferisci al drago, vero?~
== BJAN ~No, a mia zia.~
== BTB#STIV ~Ah.~
= ~Se mai dovessi incontrarla, eviterò di metterle i bastoni tra le ruote.~
== BJAN ~Ora, cosa mi stavi dicendo?~
== BTB#STIV ~Finalmente arriviamo al punto. Dunque, la volta scorsa avevi iniziato la conversazione dicendomi che...~
= ~Dicendomi che...~
= ~...~
= ~Jan... Temo di essermene dimenticato...~
== BJAN ~Lascia che te lo dica, Stivan: sei proprio uno smemorato! A confronto lo zio Scratchy aveva una memoria invidiabile. Secondo me dovresti bere un pò di succo di rapa. Lascia che te ne elenchi le proprietà benefiche!~
== BTB#STIV ~…~
EXIT
// ?
CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanAerie", "GLOBAL",1)~ THEN BAERIE
~Oh! Stivan, una farfalla si è posata sui tuoi capelli!~
DO ~SetGlobal("tb#StivanAerie", "GLOBAL",2)~
== BTB#STIV ~...~
= ~... Ora non più.~
== BAERIE ~NO! L'hai... L'hai uccisa! Perchè? Perchè l'hai fatto?!~
== BTB#STIV ~La prossima volta non scambierà più la mia chioma per un fiore.~
== BAERIE ~C-come potrà esserci un'altra volta se l'hai uccisa? Sei... Sei un mostro!~
== BTB#STIV ~Visto che questa farfalla ti stava particolarmente a cuore, prendine pure i resti e seppelliscili. Tieni: sono qui nella mia mano. Penso che faticherai non poco a ricomporli...~
== BAERIE ~AHHH! N-non avvicinarti!~
== BTB#STIV ~Ebbene? Non vuoi più i resti di questa creaturina dalle ali sfaldate? A proposito, che ironica coincidenza: è la stessa fine che hanno fatto le tue, giusto?~
== BAERIE ~N-no!~
== BTB#STIV ~Hai ragione: sono appassite, sono marcite!~
== BAERIE ~~(Singhiozzando) S-smettila!~
== BMAZZY IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN ~Aerie, ignoralo. L'indifferenza è il miglior atteggiamento da assumere in questi casi. Quanto a te, Stivan, stai iniziando a stamcarmi col tuo comportamento infantile.~
== BTB#STIV ~Lo sai che non ricresceranno più?~
== BAERIE ~Ahhh!~
== BTB#STIV ~"E fu così che Aerie scoppiò in lacrime e corse via". Quando voglio sbarazzarmi di una persona fastidiosa so essere *così* crudele... Mwahahahah!~
== BMAZZY IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN ~
EXIT 
Questo dialogo dovrebbe aver luogo nella sala dove si trova il Drago d’Ombra.

CHAIN 
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanMazzyDragon","GLOBAL",0)~ THEN BTB#STIV
~Eeeekkk! C... Cos'è quel coso?!~
DO ~SetGlobal("tb#StivanMazzyDragon","GLOBAL",1)~
== BMAZZY ~Eccolo. E' il drago che ha sconfitto me e i miei amici. Benchè Amuana ci abbia sconsigliato di affrontarlo, fremo dalla rabbia all'idea di risparmiare una creatura così malvagia!~
== BTB#STIV ~Combattici te se sei abbastanza folle da farlo! Io non staccherò le mani dalla Pietra dell'Ombra neanche morto!~
== BMAZZY ~Nessun halfing dovrebbe mai tirarsi indietro di fronte ad una prova di coraggio. Davide non ebbe alcuna esitazione ad affrontare Golia!~
== BTB#STIV ~Svegliati, Mazzy! La realtà è ben diversa da quella stupida favola per marmocchi insonni!~
END
IF ~~ THEN REPLY ~(Resti in silenzio).~ EXTERN BMAZZY StivanMazzyDragon1-1
IF ~~ THEN REPLY ~Davide? Golia? Di chi state parlando?~ EXTERN BMAZZY StivanMazzyDragon1-2
IF ~~ THEN REPLY ~Affronteremo il drago, Stivan, che ti piaccia o no.~ EXTERN BTB#STIV StivanMazzyDragon1-3
IF ~~ THEN REPLY ~Si tratta di un nemico troppo pericoloso, Mazzy. Non lo sfideremo.~ EXTERN BMAZZY StivanMazzyDragon1-4

IF ~~ THEN BEGIN StivanMazzyDragon1-1
SAY ~Quella storia, inventata o veritiera che sia, ha un insegnamento che faresti bene a ricordare. Lascia che ti rinfreschi la memoria.~
== BTB#STIV ~Non ce n’è bisogno, la conosco meglio di te!~ EXTERN BMAZZY StivanMazzyDragon1-5
END

IF ~~ THEN BEGIN StivanMazzyDragon1-2
SAY ~Si tratta dei protagonisti di una leggenda che le madri halfing son solite raccontarci in tenera età.~ EXTERN BMAZZY StivanMazzyDragon1-5
END

IF ~~ THEN BEGIN StivanMazzyDragon1-3
SAY ~Tu sei folle, <CHARNAME>, folle! Non voglio morire sbranato da quel mostro! Eeeekkkk!~ DO ~Panic()~ THEN EXIT
END

IF ~~ THEN BEGIN StivanMazzyDragon1-4
SAY ~Non volevo suggerire nulla del genere, <CHARNAME>. Ho già affrontato quella bestia, e so bene quanto sia forte. Il problema è che... Sento le grida dei miei compagni caduti. Chiedono giustizia.~
END
IF ~~ THEN REPLY ~E l’avranno. Il Signore delle Ombre pagherà per gli orrori di cui è responsabile.~ EXIT
IF ~~ THEN REPLY ~Riconoscere i propri limiti è segno di saggezza. Non ha senso sprecare le nostre vite attaccandolo; ci rivarremo sul padrone di questa orrida bestia.~ EXIT
IF ~~ THEN REPLY ~Così sia. Preparati, Stivan: combatteremo contro il drago.~ EXTERN BTB#STIV StivanMazzyDragon1-3
IF ~~ THEN REPLY ~Capisco cosa dici, ma è meglio proseguire. Abbiamo indugiato sin troppo qui.~ EXIT

IF ~~ THEN BEGIN StivanMazzyDragon1-5
SAY ~Nei pressi di un insediamento halfing a sud del Golfo di Vilhon si era stabilito un gruppo di giganti che terrorizzava le comunità del posto. Ad essere sincera, non ricordo con esattezza il nome del villaggio.~
== BTB#STIV ~(Snort!) Si trattava del Bosco di Chondal, ignorante!~
== BMAZZY ~Visto che sai più dettagli di me, perché non prosegui?~
== BTB#STIV ~Puoi starne certa!~
= ~*Ahem* Secondo questa leggenda, seguirono anni di lotte in cui gli halfing si divertivano a tagliuzzare le gambe degli avversari e i giganti a scagliare il più lontano possibile i nostri simili.~
= ~La situazione rimase invariata sino a quando il campione dei nuovi arrivati, Golia, rivolse una vera e propria sfida agli halfing degli spiriti che abitavano il posto. La sua tribù avrebbe abbandonato il Bosco di Chondal soltanto se lui fosse stato sconfitto in combattimento.~
= ~Nessuno ebbe il coraggio di accettare la sfida, ad eccezione di un tale di nome Davide.~
= ~I due si incontrarono in una valle, conosciuta come la Valle di Elah. Certo di avere la vittoria in tasca, Golia lasciò che fosse l’avversario a fare la prima mossa.~
== BMAZZY ~La sua presunzione gli fu fatale, in quanto Davide infilò la mano nella sua bisaccia, ne trasse una pietra, la lanciò con la fionda e colpì il gigante in fronte, facendolo cadere a terra. A quel punto corse in direzione dell’avversario, prese la sua spada e lo uccise, per poi tagliargli la testa.~
== BTB#STIV ~(Sospira) E fu così che gli halfing del Bosco di Chondal furono liberi dalla minaccia dei giganti, in quanto fuggirono alla notizia della morte del loro capo.~
== BMAZZY ~Lo vedi, Stivan? Le idee ispirate dal coraggio sono come le pedine degli scacchi. Se da una parte possono essere mangiate, dall’altra possono anche dare avvio ad un gioco vincente.~
== BTB#STIV ~(Snort!) Non tutti sono dei Davide scesi nella Valle di Elah per affrontare un mostro tanto più grande e forte di noi. E non tutti hanno la capacità di uccidere il gigante. Di rado i cosiddetti “buoni” vincono e vivono per raccontarlo.~
IF ~~ THEN EXIT
END
END

Questo dialogo dovrebbe aver luogo nel Sottosuolo dopo aver svolto qualcuna delle missioni drow – direi dopo il salvataggio di Phaere.

CHAIN 
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanMazzyDrow","GLOBAL",0)~ THEN BTB#STIV
~WOW! Questo corpo è... E' incredibile! Sto scoprendo e facendo un sacco di cose che prima non mi erano possibili! Non trovi che sia magnifico, Mazzy?~
DO ~SetGlobal("tb#StivanMazzyDrow","GLOBAL",1)~
== BMAZZY ~Non capisco il tuo entusiasmo. Io provo un gran disagio al pensiero di avere le sembianze di una creatura malvagia.~
== BTB#STIV ~Di quale disagio vai parlando? Essere alti ed essere drow ha tantissimi vantaggi!~
= ~Non hai peli sui piedi.~
= ~Non hai gambe e braccia a forma di coscia di pollo.~
= ~Non hai il torcicollo derivante dal dover alzare la testa ogni volte che parli con qualcuno.~
= ~Puoi fare dei passi incredibilmente lunghi.~
= ~Puoi brandire quelle armi che prima erano più grandi di te.~
= ~Puoi afferrare gli oggetti da un tavolo senza doverti mettere in punta di piedi.~
= ~Puoi... Puoi fare un sacco di cose!~
== BMAZZY ~(Sospira) Goditi quest'esperienza finchè puoi, allora. Presto riassumeremo le nostre vere sembianze, lo sai.~
== BTB#STIV ~Heh. Questo è quello che *tu* pensi.~
== BMAZZY ~Cosa vorresti dire?~
== BTB#STIV ~Chiederò a quel simpatico draghetto di lasciare immutata la mia forma.~
== BMAZZY ~Cosa?! Vorresti mantenere le fattezze di un drow? Sarebbe questo il tuo sogno nel cassetto?~
== BTB#STIV ~Io non ho sogni nel cassetto, Mazzy. Preferisco tenerci la biancheria!~
== BMAZZY ~Non è il momento di scherzare, Stivan! L'incantesimo lanciato da Aldalon non è altro che un'illusione. Non cambierà mai la tua natura di halfing!~
= ~Hai pensato inoltre alle conseguenze che il tuo aspetto porterebbe con sè? Una volta tornati in superficie, le persone ne saranno terrorizzate e ti eviteranno. Alcuni cercheranno addirittura di ucciderti!~
== BTB#STIV ~(Snort!) E allora? Lo scenario che dipingi non sarebbe poi tanto diverso da quello che ho vissuto sino ad oggi!~
= ~Le persone mi hanno sempre evitato per il mio aspetto trasandato, come se avessi potuto tirarmi a lucido dopo la perdita di tutti i miei beni. Quanto ai tentativi di uccisione, sono innumerevoli le guardie che hanno cercato di aggredirmi e di sbattermi in prigione soltanto perchè dormivo per strada. "Dobbiamo mantenere l'ordine e la sicurezza" dicevano, quando i problemi del distretto erano altri!~
= ~Ben venga se coloro che incontrerò avranno paura di me per le mie sembianze da drow. Il loro timore sarà sinonimo di rispetto!~
== BMAZZY ~Stivan, calmati e ascoltami.~
= ~Capisco meglio di chiunque altro quanto sia difficile per un halfing essere accettati dalla società. Agli occhi dei più non siamo altro che creature buffe e frivole, pavide e vigliacche. Eppure, io ho lottato perchè almeno nel mio mondo le cose cambiassero, perchè le persone mi vedessero per quel che sono veramente, non con le lenti dei pregiudizi che accompagnano il nome della nostra razza.~ 
= ~E' stato un cammino lungo e periglioso, non lo nego. In più occasioni mi sono sentita demoralizzata, ma ogni volta sono riuscita ad andare avanti dicendomi: "Sei caduta sette volte? Rialzati otto". Alla fine, ho dimostrato a me stessa e agli altri di essere una persona forte e coraggiosa, leale e onesta.~
== BTB#STIV ~...~
= ~... Heh. Ci hai provato, Mazzy, ma non mi lascerò intortare dalla tua storiellina. Io manterrò quest'aspetto, che ti piaccia o no!~
== BMAZZY ~Ragiona, Sti--~
== BTB#STIV ~(Urla) Basta! Non voglio sentire altro!~
EXIT

Questo dovrebbe aver luogo una volta usciti dal Sottosuolo, dopo aver parlato con Elan. Il dialogo chiama in causa anche uno degli elfi nelle vicinanze (nel banter ho scritto ELFO per farti capire quali sarebbero le sue battute).

CHAIN 
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanMazzyDrow","GLOBAL",1)~ THEN BTB#STIV
~Vedi, Mazzy? *Vedi* come questi sbruffoni mi fissano? Se avessi mantenuto l'aspetto di un drow non mi guarderebbero con quell'espressione di sfacciata superiorità!~
DO ~SetGlobal("tb#StivanMazzyDrow","GLOBAL",2)~
== BMAZZY ~Hai ragione. Ti avrebbero piantato al suolo con lance e frecce.~
= ~Osserva e impara.~
= ~Ehi, tu! Posso sapere perchè guardi in quel modo il mio amico? Non ti hanno insegnato che è maleducato fissare le persone senza dir nulla?~
== ELFO ~Guardo dove mi pare, donnetta.~
== BMAZZY ~Ne sei sicuro? Vuoi che venga lì e ti faccia volgere lo sguardo altrove a suon di schiaffi?~
== ELFO ~Ehm... No. Non ce n'è bisogno...~
== BMAZZY ~Presto fatto.~ 
= ~Sii coraggioso, Stivan. Anche gli halfing, nel cercare di scalare la più alta delle vette, possono raggiungerne la cima.~
== BTB#STIV ~...~
= ~(Arrossisce) Grazie, Mazzy.~
== BMAZZY ~Figurati.~
EXIT

CHAIN 
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanAnomen","GLOBAL",3)~ THEN BTB#STIV 
~Non trovi che sia incredibile, Anomen? Chi avrebbe mai detto che quell'infido di Saerk fosse responsabile della mia rovina e di quella di tuo padre?~
DO ~SetGlobal("tb#StivanAnomen","GLOBAL",4)~
== BANOMEN ~La cosa non mi sorprende. Quell'uomo è sempre stato noto per la sua viltà e per il suo opportunismo. Com'è possibile che l'Ordine mi abbia cacciato per avere ucciso una simile feccia?~
= ~Se non avessi agito come tu e <CHARNAME> mi avete consigliato, sono sicuro che a quest'ora sarei tormentato dal rimorso per aver lasciato impunita l'uccisione di Moira. Dopo tutto quello che ha passato... Dopo essersi presa cura di quell'ubriacone di mio padre... Come avrei potuto far finta di nulla e aspettare a braccia conserte che la Giustizia facesse il suo corso?~ 
= ~Non ha senso. Per la barba di Helm, perchè una ragazza nobile e altruista come lei è morta così prematuramente? Perchè?~
== BTB#STIV ~*Ahem* Non ho una risposta, ma posso immaginare come tu ti senta. Quando ripenso ai miei familiari, mi sembra sempre di non aver mai trascorso abbastanza tempo in loro compagnia o di essere stato troppo pestifero. Per non parlare del senso di colpa per essere la sola persona rimasta in vita...~
== BANOMEN ~Io... Non so come siamo giunti a parlare di questo, ma non mi sento a mio agio.~
== BTB#STIV ~Invece dovresti. Noi due abbiamo molte più cose in comune di quanto pensassi.~ 
== BANOMEN ~Cose in comune? Non paragonarmi a te, canaglia!~
== BTB#STIV ~... Canaglia?~
== BANOMEN ~Sarò anche stato escluso dall'Ordine, ma questo non fa di me un miserabile!~
== BTB#STIV ~Ehi! Si può sapere che ti è preso?~
== BANOMEN ~Allontanati! Via dalla mia vista!~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanAnomen","GLOBAL",4)~ THEN EXTERN BANOMEN
~Temo di essere stato troppo precipitoso, l'altra volta. Non era mia intenzione offenderti. Forse è meglio che mi spieghi.~
DO ~SetGlobal("tb#StivanAnomen","GLOBAL",5)~
== BTB#STIV ~(Snort!) E' il minimo che tu possa fare!~
== BANOMEN ~Tu ed io abbiamo molte cose in comune, hai ragione. Nella nostra vita abbiamo conosciuto la privazione sotto varie forme, e avrei dovuto ascoltarti e chiederti consiglio anzichè aggredirti. Il problema è che...~
== BTB#STIV ~Hai tanta rabbia in corpo e questa scoppia all'improvviso.~
== BANOMEN ~Esatto. Ci sono dei momenti in cui mi sento come se una forza disumana si facesse strada dentro di me. Se in quegli istanti mi lasciassi andare, potrei distruggere tutto. Tale è il potere del rancore accumulato negli anni, immagino.~
== BTB#STIV ~Il passare degli anni mi ha insegnato a sfogare la mia rabbia in diversi modi. Ad esempio, quando sono incredibilmente su di giri spenno un gabbiano. Subito dopo mi sento molto meglio!~
== BANOMEN ~Umpf. Si fa presto a cantare che il tempo sistema le cose. Si fa un pò meno presto a convincersi che sia così.~
= ~Ad ogni modo... Grazie.~
== BTB#STIV ~Non ho capito. Cosa hai detto?~
== BANOMEN ~... Non farmelo ripetere una seconda volta.~
== BTB#STIV ~Heh. Prego.~
EXIT

CHAIN 
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanAnomen","GLOBAL",5)~ THEN BTB#STIV
~Uhm? Cosa stai rigirando tra le dita, Anomen?~
DO ~SetGlobal("tb#StivanAnomen","GLOBAL",6)~
== BANOMEN ~Questo? E' un anello. Un anello dal grande valore.~
== BTB#STIV ~Strano. In genere controllo sempre per primo i forzieri in cui ci imbattiamo. Se avessimo trovato un simile oggetto, l'avrei tenuto per... Ehm, voglio dire, l'avrei esaminato attentamente prima di darlo a <CHARNAME>. Heh.~
== BANOMEN ~Non è il frutto di un bottino, è... Un lascito.~
= ~Quando mi trasferii negli alloggi dell'Ordine, mia sorella ed io iniziammo a scriverci e a confidarci. Eravamo sempre andati d'accordo noi due, ma dopo che Syr Ryan Trawl mi ebbe preso sotto la sua protezione, il nostro affiatamento crebbe. Non avrei mai pensato che la lontananza avesse un potere simile.~
= ~Nelle sue lettere Moira accennava le difficoltà che erano subentrate nella gestione della casa. Mio padre aveva iniziato a vendere alcuni beni e a licenziare diverse guardie per sanare i debiti che aveva contratto, ma erano troppi, ormai. Troppi.~
= ~Mia sorella fu costretta a svolgere quei compiti che spettavano alla servitù. Lavare, preparare i pasti... Attività che erano al di sotto di lei e a cui non era abituata.~
== BTB#STIV ~*Ahem* So bene quanto sia dura e amara la discesa verso la povertà.~
== BANOMEN ~Ciò nonostante, non si lamentò mai della propria condizione. In seguito, scoprii che aveva addirittura venduto alcuni dei suoi gioielli e dei suoi capi per aiutare mio padre a fronteggiare i suoi problemi finanziari.~
== BTB#STIV ~Come hai fatto a saperlo?
== BANOMEN ~Umpf. Uno degli Scudieri dell'Ordine aveva comprato un anello per la sua amata e si stava vantando di averlo ottenuto ad un misero prezzo. Rimasi scioccato quando mi resi conto che si trattava dell'anello che mia madre aveva dato a Moira prima di morire.~
= ~Ripresomi dallo sgomento iniziale, gli dissi di restituirmelo perchè apparteneva alla mia famiglia.~
== BTB#STIV ~Trattandosi di un aspirante cavaliere perfettino, sono sicuro che te l'abbia dato subito.~
== BANOMEN ~Non andò così. Dopo avermi riso in faccia, mi disse che non era un problema suo se la mia famiglia si sarebbe presto trasferita nei Bassifondi. Gli altri scudieri, al sentire queste parole, sghignazzarono con lui.~
= ~Di fronte ad una simile offesa, persi completamente la testa.~
= ~In preda all'ira, l'ho colpito al volto con un pugno, e se gli altri scudieri non mi avessero fermato, avrei continuato ad infierire su di lui. Il suo viso era una maschera di sangue... In seguito seppi di avergli rotto il naso, ma in quel momento in me bruciava una rabbia, un furore così cieco...~
= ~Il mio scoppio d'ira venne duramente punito dai miei superiori, ma in compenso riottenni l'anello di mia sorella. Lo trovai pochi giorni dopo nei miei alloggi.~
== BTB#STIV ~Beh, deve valere molto per te se non hai esitato a mettere da parte la tua rigida disciplina per riaverlo. Lo terrai come ricordo di tua madre e di Moira?~
== BANOMEN IF~Global("AnomenRomanceActive","GLOBAL",3)~ THEN ~No. Ho intenzione di donarlo a <CHARNAME> non appena troverò il momento giusto. Questo... Questo suggellerà il nostro amore.~
== BANOMEN IF~!Global("AnomenRomanceActive","GLOBAL",3)~ THEN ~No. Lo donerò alla donna a cui mi legherò un domani, come simbolo del mio amore per lei.~
== BTB#STIV ~Ah. Bene. Mi fa... piacere saperlo.~
== BANOMEN ~Qualcosa non va?~
== BTB#STIV ~No no. Mi sono soltanto accorto che stiamo parlando da molto. Non vorrei rallentare il resto del gruppo.~
== BANOMEN ~Invero hai ragione, amico mio. Proseguiamo, dunque.~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
HPLT("tb#Stiv",50%)
CombatCounter(0)
Global("tb#StivanAnomen","GLOBAL",6)~ THEN EXTERN BANOMEN
~Non dovresti esporti così tanto in battaglia, halfling. Ti mancano tattica e disciplina, due abilità fondamentali negli scontri corpo a corpo.~ 
DO ~SetGlobal("tb#StivanAnomen","GLOBAL",7)~
= ~La prossima volta lascia a me gli avversari più robusti: saprò sistemarli a dovere. Ora, è meglio che ti curi.~
== BTB#STIV ~Heh. Grazie.~
= ~Comunque avevi ragione.~ 
== BANOMEN ~Riguardo a cosa?~
DO ~ActionOverride("Anomen",ForceSpell("tb#Stiv",CLERIC_CURE_MEDIUM_WOUNDS))~
== BTB#STIV ~E' solo quando cominci a temere veramente la morte che impari ad apprezzare i chierici.~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanAnomen","GLOBAL",7)~ THEN EXTERN BANOMEN
~Non va bene. Quando ti lanci verso un nemico, devi sempre tenere l'arma all'altezza del petto. In questo modo sarai pronto sia per l'attacco sia per un'eventuale difesa da colpi che ti venissero sferrati a sorpresa.~
DO ~SetGlobal("tb#StivanAnomen","GLOBAL",8)~
== BTB#STIV ~Uhm... Così?~
== BANOMEN ~Esatto. Riproviamo.~
= ~No, non ci siamo. Non hai abbastanza confidenza con la tua armatura. Devi imparare a spostarti con maggiore agilità. Portare una corazza estremamente pesante è un esercizio che potrebbe aiutarti a migliorare la tua destrezza.~
== BTB#STIV ~Non capisco. Se indossassi un'armatura più pesante, diventerei più lento, non il contrario.~
== BANOMEN ~Forse all'inizio, ma col tempo lo sforzo da te fatto ti conferirà una certa maestria con le armature più leggere.~
= ~Da capo.~ 
== BTB#STIV ~(Pant pant) Io sono un pò stanco...~
== BANOMEN ~Bene. Questo significa che i muscoli stanno lavorando a dovere. Continueremo ancora per un pò.~
== BTB#STIV ~... Qualcuno mi aiuti!~
EXIT

Il dialogo che segue dovrebbe aver luogo presso l'Albero della Vita non appena il gruppo si accinge a dirigersi verso l'area in cui si trovano Ellesime ed Irenicus e solo se la romance tra CHARNAME e Anomen è attiva.

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
See("Player1")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
!StateCheck("Player1",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanAnomen","GLOBAL",8)~ THEN EXTERN BANOMEN
~Pronto alla battaglia?~ 
DO ~SetGlobal("tb#StivanAnomen","GLOBAL",9)~
== BTB#STIV ~Heh. Puoi contarci.~
== BANOMEN ~Fà tesoro dei miei insegnamenti. Dovremo fare il possibile per proteggere <CHARNAME> - impazzirei se le dovesse succedere qualcosa.~
== BTB#STIV ~(Snort!) Sono sicuro che sia in grado di cavarsela da sola!~
== BANOMEN ~Non ne dubito, ma è mio dovere difenderla ad ogni costo.~
== BTB#STIV ~(Gasp!) Non puoi promettere una cosa simile!~
== BANOMEN ~Non preoccuparti, amico mio. Ci vuole ben altro che un mago da strapazzo per mettermi in difficoltà. Ma basta indugiare: la battaglia ci aspetta.~
== BTB#STIV ~<CHARNAME>...! <CHARNAME>, ti prego, non lasciare che Anomen muoia! Per favore!~
END
IF ~~ THEN REPLY ~Non gli accadrà nulla. Avremo la meglio su quel folle una volta per tutte.~ GOTO StivanAnomenLastTalk1-1
IF ~~ THEN REPLY ~Darò tutta me stessa per proteggere ogni membro di questo gruppo. E' il minimo che possa fare dopo tutto il sostegno che mi avete dato.~ GOTO StivanAnomenLastTalk1-1
IF ~~ THEN REPLY ~Tranquillo, Stivan: avrò un occhio di riguardo nei suoi confronti. E' troppo importante per me.~ GOTO StivanAnomenLastTalk1-1
IF ~~ THEN REPLY ~Non so se riusciremo ad avere la meglio su Irenicus, ma fammi un favore: se dovesse succedermi qualcosa, non permettere che Anomen compia dei gesti avventati.~ GOTO StivanAnomenLastTalk1-2

IF ~~ THEN BEGIN StivanAnomenLastTalk1-1
SAY ~(Sniff) Perchè all'improvviso provo tutta questa paura? Mi stavo dirigendo intrepido verso lo scontro e adesso... Adesso ho il terrore che quel pazzoide possa farci del male!~
= ~Se non dovessi farcela, vorrei... Vorrei riposare nella stessa cripta dove si trovano i miei familiari. Se invece dovesse succedere qualcosa ad Anomen e tu non avrai la decenza di accompagnarlo nella morte, ti ridurrò a fettine!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN StivanAnomenLastTalk1-2
SAY ~Quindi se tu dovessi morire mi autorizzi a tramortirlo e a riportarlo sano e salvo ad Athkatla? E' questo che intendi?~
END
IF ~~ THEN REPLY ~Esat--~ GOTO StivanAnomenLastTalk1-3
IF ~~ THEN REPLY ~In realt--~ GOTO StivanAnomenLastTalk1-3
IF ~~ THEN REPLY ~Non propr--~ GOTO StivanAnomenLastTalk1-3

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
Global("tb#StivanKorgan","GLOBAL",2)~ THEN BTB#STIV
~Uhm?~ 
DO ~SetGlobal("tb#StivanKorgan","GLOBAL",3)~
= ~Ti è caduto un libro dallo zaino, Korgan.~
== BKORGAN ~Eh? Che diavolo vai dicendo? Io non spreco il mio tempo a leggere. I libri sono per le pappemolle, proprio come quel cacasotto di Plimlico.~
== BTB#STIV ~Vediamo di cosa si tratta.~
= ~...~
= ~Oh!~
= ~Ohhh!~
= ~Ooohhhhh!~
= ~(Arrossisce) Ma... Ma questa è una raccolta di poesie licenziose!~
== BKORGAN ~Dà qua, idiota dalla testa di ghiaia, o ti faccio vedere come son fatte le tue budella!~
== BTB#STIV ~"Ho visto una fanciulla accanto al suo amato.
Lui le prese teneramente la mano;
si guardarono fisso negli occhi, 
poi si guardarono in giro che non vegliassero i genitori;
e poichè non videro nessuno,
svelti... Beh, fecero come facciamo noi".~
= ~Ohhhh! Com'è audace questa poesia!~
== BVICONI IF~IsValidForPartyDialog("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN ~Povero hargluk. Ridotto a soddisfare la tua libido attraverso le pagine incartapecorite di un libro.~
== BKORGAN ~Tra poco vedrai quanto sarò audace nell'aprirti in due! Da qua!~
== BTB#STIV ~Allora ammetti che è tuo!~
== BKORGAN ~Dammelo o renderò i tuoi connotati facciali irriconoscibili!~
== BTB#STIV ~Ehm... No, grazie. E' una prospettiva allettante, ma non fa per me. Tieni, ecco il tuo libro.~
= ~Comunque non mi aspettavo che facessi simili letture. Credevo preferissi i libri illustrati!~
== BKORGAN ~Dannato bastardo, vieni qui! Fatti tagliare quella fogna di lingua che ti ritrovi!~
== BTB#STIV ~Eeeekkkkk!~
== BEDWIN IF~IsValidForPartyDialog("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN ~(Eccellente. Tutto è andato esattamente secondo i miei piani).~
EXIT

Questo lo farei partire nel Sottosuolo dopo il salvataggio di Phaere.

CHAIN 
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanKorgan","GLOBAL",3)~ THEN BTB#STIV
~(Gasp!) Quelle creature erano *mostruose*! Mi fa male la testa... E' come se l'avessero presa a frustrate!~
DO ~SetGlobal("tb#StivanKorgan","GLOBAL",4)~ 
== BKORGAN ~Bah! Il Sottosuolo non è un posto adatto a femminucce come te! Fatti da parte e lascia che siano i veri guerrieri a fare il lavoro sporco!~
== BTB#STIV ~Sono perfettamente capace di cavarmela, Korgan. Ho soltanto bisogno di tempo per abituarmi a queste nuove sembianze.~
== BKORGAN ~L'aspetto non significa nulla, inutile mucchietto di sputi goblin. Anche con le fattezze di un lurido gambelunghe drow so bene dove affondare la mia ascia.~
= ~Proprio qui... All'altezza del tuo collo!~
== BTB#STIV ~Eeeekkkk!!!~
== BKORGAN ~Har har! Guarda come corre, il bambinetto!~
== BMAZZY IF~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN ~Per Arvoreen, Korgan! Ti rendi conto che spaventare un membro del nostro gruppo è soltanto controproducente?~
== BKORGAN IF~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN ~Avanti, Mazzy... Goditi lo spasso!~
== BMAZZY IF~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN ~Ci sono degli sciocchi che sfruttano abilmente la loro stupidità. Mi hai appena dato l'ennesima prova di essere uno di questi.~ 
EXIT

CHAIN 
IF ~InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
HPLT("tb#Stiv",30%)
CombatCounter(0)
Global("tb#StivanHaerdalis","GLOBAL",3)~ THEN BTB#STIV
~Io… Non mi sento molto bene…~
DO ~SetGlobal("tb#StivanHaerdalis","GLOBAL",4)~
== BHAERDA ~<CHARNAME>, spero che tu abbia intenzione di fare qualcosa per strappare il nostro amico dal gelido abbraccio della morte. Non dubito che sia una creatura troppo strana per vivere, ma è anche troppo rara per morire.~
EXIT


CHAIN 
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
HPLT("tb#Stiv",40%)
Global("tb#StivanMinsc","GLOBAL",2)~ THEN BTB#STIV
~Accidenti. Il sangue delle mie ferite ha addirittura insozzato le mie piume.~
DO ~SetGlobal("tb#StivanMinsc","GLOBAL",3)~
== BMINSC ~Minsc ammira il tuo coraggio, ma non vuole che il suo piccolo amico si esponga così tanto nelle battaglie! Dovresti fare compagnia a Boo nelle retrofile, di tanto in tanto.~
== BTB#STIV ~Perchè ti preoccupi di me, Minsc? Io... Non credo di meritare la tua apprensione.~
== BMINSC ~Questo ranger e questo criceto credono che tu sia cattivo solo all'apparenza, e puoi star certo che hanno visto il male così tante volte da non potersi sbagliare!~
= ~Boo aggiunge che ogni tanto ti meriteresti una lavata di capo però.~
== BTB#STIV ~Heh. Forse ho sbagliato a giudicarti, ranger. Dopo tutto... Sei una brava persona.~
EXIT

Aggiungerei pertanto nel dialogo con la spada la condition !Global("tb#StivanMinsc","GLOBAL",3).

Il dialogo che segue dovrebbe aver luogo nel Sottosuolo, sempre dopo che è trascorso un pò di tempo da quando il gruppo ha assunto le sembianze drow. Per evitare che dialoghi simili abbiano luogo uno vicino all'altro, magari si potrebbe mettere nelle conditions la Global legata ad una delle missioni che Phaere assegna al gruppo.
Esempio: 
Il banter con Mazzy dopo aver ucciso il beholder 
Il banter con Minsc dopo che Phaere ha detto al gruppo di incontrare la Matrona Ardulace
... e così via.
Che ne pensi?

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanMinscDrow","GLOBAL",0)~ THEN EXTERN BMINSC
~Minsc e Boo si stanno chiedendo come mai il loro piccolo amico sia così felice ultimamente.~
DO ~SetGlobal("tb#StivanMinscDrow","GLOBAL",1)~
== BTB#STIV ~Questo corpo è un vero spasso! Ogni semplice gesto, dal camminare al respirare, mi sembra nuovo e completamente diverso!~
== BMINSC ~Minsc non si sente a suo agio nell'indossare i vestiti altrui. Inoltre dare i calci al male con queste gambine è molto più difficile!~
== BTB#STIV ~E Boo cosa dice?~
== BMINSC ~Boo teme che se i suoi piccoli amici lo vedessero così nero scapperebbero dalla paura.~
= ~*Squeak!*~
= ~Senti com'è preoccupato?~
== BTB#STIV ~Heh. A quanto pare sono il solo ad essere così entusiasta di queste nuove sembianze. Meglio così... Non ci saranno altri che avanzeranno la mia stessa richiesta a quella simpatica lucertola troppo cresciuta!~
EXIT

CHAIN 
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanNalia","GLOBAL",0)~ THEN BTB#STIV
~Miss Nalia, lasciate che vi ripeta ancora una volta quanto sono onorato di viaggiare in vostra compagnia. Non c'è mendicante in questa città che non sia a conoscenza della vostra bontà d'animo!~
DO ~SetGlobal("tb#StivanNalia","GLOBAL",1)~ 
== BNALIA ~Per favore, non essere così formale nei miei confronti. Per quello ci sono già i servitori e le guardie del maniero. Piuttosto, potresti ripetermi come ti chiami?~
== BTB#STIV ~Oooohhhh! Come ogni nobile che si rispetti, disprezzate i popolani a tal punto da dimenticarvi del loro nome!~
== BNALIA ~No, non è così! E' solo che... Sono molto preoccupata, e non riesco a concentrarmi su nient'altro che non sia la difesa della mia casa.~
== BTB#STIV ~Heh. Non avete motivo di scusarvi. Ad ogni modo, io sono Stivan. Stivan il Cacciatore.~
== BNALIA ~Piacere, Stivan. Io sono... Beh, sai già chi sono. Fa sempre un certo effetto vedere che gli altri ti conoscono mentre tu non hai idea di chi sia il tuo interlocutore.~
== BTB#STIV ~State forse dicendo che la mia fama di sterminatore di gabbiani non è giunta alle vostre orecchie?~
== BNALIA ~Zietta funge da filtro col mondo esterno. Sono poche le cose di cui vengo a conoscenza senza che non siano state attentamente vagliate da lei.~
= ~Anni fa, ad esempio, in occasione del compleanno di mio Padre, un bardo particolarmente abile si esibì con dei componimenti un pò boccacceschi. Zietta non gradì per niente quei versi a sua detta "osceni" e cacciò in malo modo lo sventurato cantastorie. E' facile intuire che da allora nessuno osò più proferire poesie licenziose nel nostro maniero.~
= ~Perdonami per averti interrotto. Stavi dicendo?~
== BTB#STIV ~Per me... Per me sarebbe un grande onore potervi... baciare la mano. Lascerete che quest'halfling posi le sue labbra sulla vostra regale carne?~
== BNALIA ~Solo a condizione che tu smetta di chiamarmi "Miss".~
== BTB#STIV ~Questo è impossibile, Miss Nalia.~
= ~*Smack*~
= ~Heh. Adesso posso anche morire felice.~
EXIT

Questo dovrebbe aver luogo dopo che Nalia, uscita dal Maniero, chiede a CHARNAME di diventarne il Signore o, nel caso in cui non sia un combattente, di farla rimanere nel suo gruppo.

CHAIN 
IF ~InParty("Nalia")
See("Nalia")
See("Player1")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("Player1",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanNaliaAfterFatherDeath","GLOBAL",0)~ THEN BTB#STIV
~(Sniff) Miss Nalia... Io... Io sono *così* dispiaciuto per la vostra perdita!~
DO ~SetGlobal("tb#StivanNaliaAfterFatherDeath","GLOBAL",1)~
== BNALIA ~Non fare così, Stivan. E'... E' una cosa con cui dovrò imparare a convivere. Del resto, l'esperienza del lutto non mi è nuova. L' ho già conosciuta anni fa, quando persi mia Madre, sebbene allora fossi molto più piccola.~
== BJAHEIR IF ~IsValidForPartyDialog("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN ~ La morte è parte della vita stessa. Ci auguriamo che quel momento non giunga mai, sebbene sia inevitabile.~
== BTB#STIV ~Siete... Siete così regale nel vostro cordoglio! Questo... (Sniff) Questo mi fa piangere ancora di più!~
== BNALIA ~Adesso smettila, Stivan, altrimenti... Altrimenti farai piangere anche me.~
END
IF ~~ THEN REPLY ~E anche me... *SOB*!~ EXTERN BNALIA AfterFatherDeath1-1
IF ~~ THEN REPLY ~Posso chiederti come hai perso tua madre? Io non ho mai conosciuto la mia.~ EXTERN BNALIA AfterFatherDeath1-2
IF ~~ THEN REPLY ~So cosa stai passando, Nalia. Cerca di farti coraggio e di andare avanti; dimostra a te stessa quanto sei forte.~ EXTERN BNALIA AfterFatherDeath1-3
IF ~~ THEN REPLY ~Non vorrei sembrarvi cinico, ma chi ha da fare non ha tempo per le lacrime.~ EXTERN BNALIA AfterFatherDeath1-4

APPEND BNALIA

IF ~~ THEN BEGIN AfterFatherDeath1-1
SAY ~Mancavi solo te, <CHARNAME>! Io...~
= ~Mi farò forza e andrò avanti. E' la sola cosa che posso fare.~
= ~Non mi aspettavo che entrambi foste così partecipi al mio dolore, ma non voglio affliggervi.~
= ~(Sorride) Direi di proseguire, ora, prima che vi rimettiate a piangere!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN AfterFatherDeath1-2
SAY ~Davvero? Quindi siamo entrambi orfani, anche se immagino di essere stata fortunata ad aver trascorso del tempo con la mia, per quanto poco sia stato.~ 
= ~Mia Madre era una grande donna, sai? Aveva un animo generoso e infaticabile, ed era sempre pronta ad aiutare chiunque ne avesse bisogno. Purtroppo morì giovane... Aveva contratto una malattia che nessun guaritore era in grado di curare.~
= ~Zietta mi ripete spesso che con ogni certezza prese quel morbo da qualche bisognoso da lei soccorso, nella speranza che io mi spaventi e torni a trincerarmi nelle mura del maniero. In realtà non fa altro che spronarmi a trarre esempio da lei.~
= ~Ora è meglio ritornare a ciò di cui ci stavamo occupando. Un pò di sana distrazione mi farà bene.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN AfterFatherDeath1-3
SAY ~E' quello che farò. Ti ringrazio molto per la tua vicinanza, <CHARNAME>, e anche per la tua, Stivan.~
== BTB#STIV ~(Sniff) Dovere, Miss Nalia. Dovere...~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN AfterFatherDeath1-4
SAY ~Le tue parole sono aspre e pungenti, ma veritiere. Andiamo, Stivan. Non facciamo perdere altro tempo a <CHARNAME>.~
== BTB#STIV ~(Snort!) Sei un mostro! Come puoi essere così cattivo con Miss Nalia in un momento tanto difficile per lei? Se non avessi gli occhi offuscati dalle lacrime, ti avrei soffocato con ogni mia piuma!~
IF ~~ THEN EXIT
END
END

Questo dovrebbe aver luogo nel caso in cui CHARNAME non sia un combattente o non abbia accettato di diventare Signore del maniero di Nalia.
(Ad un certo punto del dialogo, ci sono due diverse risposte di Nalia a seconda del caso).

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanNaliaAfterFatherDeath","GLOBAL",1)
Global("tb#StivanNaliaAboutManorHouse","GLOBAL",0)~ THEN EXTERN BNALIA
~Non avrei mai pensato di sentire la mancanza del mio maniero, eppure è così. E pensare che sino a non molto tempo fa mi sentivo soffocare tra le sue mura e non desideravo altro che scapparne!~
DO ~SetGlobal("tb#StivanNaliaAboutManorHouse","GLOBAL",1)~
== BTB#STIV ~E' normale che vi manchi. Grande o piccola, lussuosa o fatiscente, la casa resta pur sempre il luogo dei nostri affetti. Voi sapete come ho perso la mia?~
== BNALIA ~No, non me l'hai mai raccontato. Cos'è successo?~
== BTB#STIV ~Nulla di paragonabile all'invasione che avete subito voi.~
= ~Quando i miei familiari vennero uccisi, chiesi aiuto al socio in affari di mio padre perchè non avevo idea di come gestire il denaro e i nostri vigneti. Si rivelò un errore fatale, in quanto quell'infame si impossessò dei miei atti di proprietà ed esibì ai magistrati dei falsi documenti in cui appariva come l'intestatario di quelli che in realtà erano i beni della mia famiglia.~
= ~La rovina giunse rapida, ma... *Ahem* Non è questo il punto.~
= ~Io ho cercato di fare il possibile per mantenere il possesso della mia casetta. Perchè voi non avete fatto lo stesso con il vostro maniero?~ 
== BNALIA IF~Class("Player1",FIGHTER)~ THEN~Non avevo nessuna speranza. Se <CHARNAME> fosse stato un combattente, allora l'avrei potuto nominare <PRO_LADYLORD> delle mie terre in modo che se ne prendesse cura; tuttavia, dal momento che <PRO_HESHE> è un <CLASS>, questa possibilità è sfumata.~
== BNALIA ~Non mi sono arresa subito. Avevo chiesto a <CHARNAME> di diventare <PRO_LADYLORD> delle mie terre, ma <PRO_HESHE> ha rifiutato.~
== BTB#STIV ~Ma perchè avete riposto tutte le vostre speranze in <PRO_HESHE>? Ci sono tanti altri guerrieri che non avrebbero esitato a cogliere una simile opportunità. Quel tizio della palizzata, ad esempio?~
== BNALIA ~Anch'io avevo pensato al Capitano Arat, ma ha rifiutato la mia proposta.~
== BTB#STIV ~Perchè?~
== BNALIA ~Si ritiene in parte responsabile della morte di mio padre. E' convinto di non aver fatto abbastanza per salvarlo.~
== BTB#STIV ~Capisco.~
== BTB#STIV IF~IsValidForPartyDialog("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN ~E cosa mi dite di Korgan?~
== BKORGAN IF~IsValidForPartyDialog("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN ~(Rutto) Eh?~
== BTB#STIV IF~IsValidForPartyDialog("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN ~... Come non detto.~
== BTB#STIV ~*Ahem* E a me? Non avete pensato a me?~
== BNALIA ~... A te?~
== BTB#STIV ~Sì! Immaginatevi la scena: il vostro maniero, ritornato al suo antico splendore sotto la guida illuminata di Padron Stivan. Una fortezza di pace e di prosperità, dove le catapulte entrano in azione soltanto per abbattere i pennuti a me odiosi.~
= ~Sarebbe bellissimo!~
== BNALIA ~Ehm... Magari qualcuno dovrebbe farti da consigliere all'inizio. Giusto il tempo di... apprendere certe nozioni basilari. Una di queste è non nominare i gabbiani a zietta.~
== BTB#STIV ~Perchè?~
== BNALIA ~Meglio di no, Stivan. Fidati.~
== BTB#STIV ~Heh. Voi sareste un'ottima consigliera. Che ne dite? Si può fare?~
== BNALIA ~Non lo so, Stivan. Suppongo che di fatto sia possibile, ma ho bisogno di tempo per pensarci. Non so se tornare al maniero sia quello che veramente voglio.~
EXIT

CHAIN 
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanNaliaAfterPrison","GLOBAL",0)~ THEN BTB#STIV
~Ho sentito molto la vostra mancanza mentre eravate in arresto, Miss Nalia. E' stato peggio del rimanere a corto di cacca di gabbiano!~
DO ~SetGlobal("tb#StivanNaliaAfterPrison","GLOBAL",1)~
== BNALIA ~Ehm... Immagino che dovrei esserne lusingata...~
== BTB#STIV ~Qualcuno ha forse osato farvi del male? Se così fosse, non esitate a dirmelo: Stivan il Cacciatore provvederà a punire ogni insolenza mossa alla vostra persona!~
== BNALIA ~Nessuna insolenza, Stivan, anzi. Ho imparato qualcosa di utile. C'erano alcuni uomini - Ladri Tenebrosi, a giudicare dai cappucci - con cui ho parlato di trappole e trucchetti. Mi hanno consigliato di stare attenta ad un nuovo congegno ideato dalle guardie di Athkatla. Si tratta di un dispositivo a lame capace di tagliare le mani se non viene correttamente disattivato.~
= ~Vedi? Anche coloro che non hanno il sangue blu possono essere --~
== BTB#STIV ~Eeeekkkkk!~
== BNALIA ~Cos'è successo, Stivan?!~
== BTB#STIV ~La... La vostra tunica...!~
== BNALIA ~La mia tunica? Mi sembra che sia a posto.~
== BTB#STIV ~Ha una macchia!~
== BNALIA ~(Sospira) Ed io che temevo fosse qualcosa di grave. La laverò quando...~
= ~Stivan, cosa stai facendo?~
== BTB#STIV ~Ci penso io, Miss Nalia! Non esiste solvente migliore della cacca di gabbiano!~
== BNALIA ~Davvero, Stivan, non c'è bisogno d--~
== BTB#STIV ~Non preoccupatevi! Quella macchia non vedrà il domani!~
= ~...~
= ~... Visto? Completamente scomparsa!~
== BNALIA ~E' ovvio che sia scomparsa! Ha corroso la tunica!~
== BTB#STIV ~... Ops.~
= ~Mi dispiace, Miss Nalia, io... Volevo solo essere d'aiuto...~
== BNALIA ~Non fa niente, Stivan. So bene quali fossero le tue intenzioni.~
== BTB#STIV ~Eeeekkkk!~
== BNALIA ~Cosa c'è stavolta?!~
== BTB#STIV ~Il vostro viso... E' sporco! Lasciate che...~
== BNALIA ~Oh no! Il viso no!~
EXIT






CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
AreaType(OUTDOOR)
Global("FoughtFaldorn","LOCALS",1)
Global("tb#StivanCernd","GLOBAL",0)~ THEN EXTERN BCERND
~Come un insidioso manto di nubi oscure si allontana dopo la tempesta, così la minaccia di Faldorn è stata scongiurata per sempre.~
= ~Ciò nonostante, pare che la Natura sia ingiustamente accusata di un altro crimine. Dico bene, Stivan?~
DO ~SetGlobal("tb#StivanCernd","GLOBAL",1)~
== BTB#STIV ~Cos'è questo, un tentativo di socializzazione? Spiacente, ma non ho la benchè minima intenzione di sprecare fiato con te.~
= ~Aspetta un momento... Come fai a sapere il mio nome?~
== BCERND ~Non ha importanza. In qualità di druido, è mio dovere intervenire per ripristinare l'Equilibrio e aprire i tuoi occhi alla luce della verità. Lungo il nostro cammino crescerai, e insieme daremo senso e significato alle tue tragedie.~
== BTB#STIV ~(Snort!) Non c'è bisogno di ricorrere a simili espedienti verbali per darmi dell'immaturo! Non sono uno stupido, e so riconoscere un insulto!~
== BCERND ~Ogni creazione della Madre è o è stata immatura. Esistono germogli che non giungono a fiorire? O alberi che non fruttificano?~
== BTB#STIV ~Chiudi la bocca, druido! Stà zitto!!~
== BCERND ~Presto inizieremo il nostro percorso. Molto presto.~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("CerndBeggar","GLOBAL",2)
Global("tb#StivanCernd","GLOBAL",1)~ THEN BTB#STIV
~Heh. Pare che le nubi siano tornate, druido, ma questa volta per addensarsi sulla tua testa. Sbaglio o la patata bollente che hai tra le mani ti impedirà di seccarmi per un pò con i tuoi stupidi discorsi?~
DO ~SetGlobal("tb#StivanCernd","GLOBAL",2)~
== BCERND ~Ti sbagli. Non posso permettere che la mia vita personale intralci i miei doveri di druido. Il nostro cammino comincia adesso.~
== BTB#STIV ~Oh, no!~
== BCERND ~Esaminiamo l'avvenimento che ha segnato l'inizio del tuo astio nei confronti dei gabbiani. Ripercorriamo istante per istante ciò che ti successe anni fa, come se stessimo passando a setaccio i petali di un fiore.~
== BTB#STIV ~(Snort!) Stai abusando della mia pazienza, tu! Chi diavolo credi di essere per esigere che ti racconti la storia dell'uccisione dei miei familiari?~
== BCERND ~Non scambiare per presunzione il mio tentativo di giungere alla verità. Al momento stai navigando nelle acque dell'ignoranza, ed è mio dovere fare in modo che i venti della conoscenza spingano le tue vele verso il mare della conoscenza.~
== BTB#STIV ~Ora capisco dove vuoi arrivare! Tu... Stai mettendo in discussione la colpevolezza dei gabbiani!~
== BCERND ~Dei semplici uccelli marini non potrebbero mai macchiarsi di un crimine come l'uccisione di un'innocente famiglia. Non è nella loro natura.~
== BTB#STIV ~Evidentemente quel giorno devono essere caduti in preda a degli istinti carnivori, dato che li ho visti pasteggiare con i resti dei miei familiari!~
== BCERND ~Esatto, Stivan. Tu sostieni di averli visti mentre si cibavano, non mentre uccidevano i tuoi genitori e i tuoi fratelli.~
== BTB#STIV ~...~
= ~... Non cercare di ingannarmi con subdoli giri di parole! Sono stati i gabbiani ad ucciderli e a profanare i loro corpi! Sono stati loro!!~
== BCERND ~Il seme del dubbio è stato gettato, e a tempo debito metterà radici.~
EXIT

*/

