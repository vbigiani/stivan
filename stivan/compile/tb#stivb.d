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
