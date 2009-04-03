CHAIN
IF ~InParty("Stivan")
See("Stivan")
!StateCheck("Stivan",CD_STATE_NOTVALID)
Gender("Edwin",FEMALE)
CombatCounter(0)
Global("tb#StivanEdwin", "GLOBAL",0)~ THEN BEDWIN
~Stivan, vuoi smetterla di guardarmi con quell'espressione beffarda?! Il mio aspetto sarà pur cambiato, ma detengo lo stesso potere di prima!~
DO ~SetGlobal("tb#StivanEdwin", "GLOBAL",1)~
== BTB#STIV ~(Soffoca una risata)~
== BEDWIN ~Azzardati a ridere di me ancora una volta e giuro che ti riduco ad un mucchietto di ceneri!~
== BTB#STIV ~Suvvia, Edwin... O dovrei dire Edwina? Come vuoi che ti chiami? Nel caso in cui tu preferisca la versione femminile del tuo nome, sarà meglio che mi abitui a darti del Voi. Sono un gentiluomo, *io*...~
== BEDWIN ~Sai cosa me ne faccio delle tue buone maniere?!~
== BTB#STIV ~Vi consiglio di non esprimervi in questo modo, Miss Edwina. Un linguaggio del genere è inadeguato per una signorina.~
== BEDWIN ~Un giorno...! Un giorno...!!~
EXIT

CHAIN
IF ~InParty("Edwin")
InParty("Minsc")
See("Edwin")
See("Minsc")
!StateCheck("Edwin",CD_STATE_NOTVALID)
Gender("Edwin",FEMALE)
CombatCounter(0)
Global("tb#StivanEdwina", "GLOBAL",2)~ THEN BCOREWY
~Voi e Minsc siete proprio una bella coppia, Miss Edwina. Ma guardatevi: vi compensate a vicenda! Uno ha i muscoli, l'altra ha il cervello.~
DO ~SetGlobal("tb#StivanEdwina", "GLOBAL",3)~
== BEDWIN ~Stà zitto!!~
== BTB#STIV ~A quando le nozze?~
== BEDWIN ~Preferirei vivere nelle giungle del Chault piuttosto che sposarmi con quel gorilla!~
== BMINSC ~Ohh, questo è un gran giorno, Boo! La signorina in rosso vuole sposare Minsc! Ma perchè non l'ha detto subito?~
== BEDWIN ~Non ci sarà nessun matrimonio, beota!
== BMINSC ~Boo dice che le donne aspettano sempre che sia l'uomo a fare la prima mossa. Minsc si chiede se la sorella di Edwin voglia ascoltare un'altra sua poesia.~
== BEDWIN ~NOO!!!~
== BTB#STIV ~Dal vostro nervosismo deduco che ormai sono prossime. Avete già scelto l'abito?~
== BEDWIN ~Ho scelto il modo in cui ucciderti, halfing! Strangolandoti!~
== BTB#STIV ~Un'altra curiosità, Miss Edwina: vestirete di bianco o di rosso?~
== BEDWIN ~Di rosso, ovv... Ma cosa diavolo mi fai dire?!?~
== BTB#STIV ~Non ne dubitavo. Sarà un onore farvi da testimone.~
EXIT

CHAIN
IF ~IsGabber(Player1)~ THEN BTB#STIV PID1
~Preparati a morire, gabbiano! Prendi quest... Oh, scusami, . Ti avevo scambiato per uno di quegli odiosi pennuti. Hai bisogno di qualcosa?~
END
IF ~~ THEN REPLY ~Parliamo dei nostri compagni di viaggio. Cosa ne pensi di...~ GO TO PD1-1

CHAIN
IF ~~ THEN BTB#STIV PD1-1
~Sì?~
END
IF ~IsValidForPartyDialog("Minsc")~ THEN REPLY ~Minsc?~ GO TO PD1-2
IF ~IsValidForPartyDialog("Edwin") !Gender("Edwin",FEMALE)~ THEN REPLY ~Edwin?~ GO TO PD1-3
IF ~IsValidForPartyDialog("Edwin") Gender("Edwin",FEMALE)~ THEN REPLY ~Edwin?~ GO TO PD1-4
IF ~IsValidForPartyDialog("Jan")~ THEN REPLY ~Jan?~ GO TO PD1-5
IF ~IsValidForPartyDialog("Haer' Dalis")~ THEN REPLY ~Haer'Dalis?~ GO TO PD1-6

CHAIN
IF ~~ THEN BTB#STIV PD1-3
~...~
= ~... Il mio silenzio dovrebbe essere più che eloquente.~
EXIT

CHAIN
IF ~~ THEN BTB#STIV PD1-4
~(Ghigno) Andiamo incredibilmente d'accordo da quando si è trasformato in una donna!~
EXIT

CHAIN
IF ~~ THEN BTB#STIV PD1-5
~I suoi racconti sono confusionari come il volo dei gabbiani - e tu non hai idea, , di quanto siano deliranti - ma per il resto è un tipo in gamba.~
EXIT

CHAIN
IF ~~ THEN BTB#STIV PD1-6
~E' senza dubbio un buon bardo, ma... Ehm... Ha il brutto vizio di chiamarmi gabbiano. Tra tutti i nomi di pennuti che esistono doveva scegliere proprio *quello*?~
EXIT

CHAIN
IF ~~ THEN BTB#STIV PD1-2
~Ehm... Scusami, ma tendo a fare confusione. Minsc è il criceto e Boo il ranger?~
IF ~~ THEN REPLY ~L'esatto contrario.~ GO TO PD1-3
END

CHAIN
IF ~~ THEN BTB#STIV PD1-3
~Ops.~
END



CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
TimeOfDay(Night)
CombatCounter(0)
Global("tb#StivanMinsc", "GLOBAL",0)~ THEN BTB#STIV
~(Sospiro) "Le stelle nascondono nuovamente il loro volto luminoso intorno alla luna... E mentre essa rifulge al culmine del suo splendore, sulla terra tutto tace".~
= ~Beh... *Quasi* tutto...~
DO ~SetGlobal("tb#StivanMinsc", "GLOBAL",1)~
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

Questo banter dovrebbe aver luogo in un tempio. Dato il contenuto, escluderei quello di Talos e di Illmater per limitarci unicamente a quello di Lathander -AreaCheck("AR0902") - e a quello di Helm - devo scoprire qual è.

CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
Global("AnomenIsKnight","GLOBAL",0)
Global("AnomenIsNotKnight","GLOBAL",0)
CombatCounter(0)
Global("tb#StivanAnomen", "GLOBAL",0)~ THEN BTB#STIV
~Ogni volta che entro in simili posti mi sento male. La visione di questi sciocchi fedeli prostrati in adorazione è a dir poco penosa!~
DO ~SetGlobal("tb#StivanAnomen", "GLOBAL",1)~
== BANOMEN ~Al contrario, la devozione che provano nei confronti del loro dio è lodevole. Nulla di cui tu sia capace.~
== BTB#STIV ~Per fortuna. Che cosa ne ricaverei, Anomen? Illusioni? False speranze? Qualche incantesimo di convenienza?~
== BANOMEN ~Fede. Nei momenti di maggiore difficoltà, la fede dà coraggio e determinazione, speranza e conforto; ti offre un appiglio a cui aggrapparti per andare avanti.~
== BTB#STIV ~Non vedo di che utilità possa essere per noi poveri eretici. In questo modo ne traete vantaggio soltanto voi guaritori.~
== BANOMEN ~Quando sei sul punto di esalare l'ultimo respiro in battaglia è un chierico a salvarti la pelle. Ti è forse sfuggito, ladruncolo?~
== BTB#STIV ~Hai ragione. La prossima volta mi lascerò morire.~
== BANOMEN ~Umpf. In quel momento non sarai così spavaldo. Fidati.~
EXIT

Questo banter dovrebbe aver luogo appena dopo la fine di una battaglia.

CHAIN
IF ~InParty("Stivan")
See("Stivan")
!StateCheck("Stivan",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanHaerdalis", "GLOBAL",1)~ THEN BHAERDA
~Per l'ennesima volta, abbiamo bagnato le nostre lame nel sangue. Presto gli avvoltoi si ciberanno delle carcasse che ci siamo lasciati alle spalle e dei nostri nemici non resterà traccia alcuna...~
DO ~SetGlobal("tb#StivanHaerdalis", "GLOBAL",2)~
== BTB#STIV ~La morte è spesso al centro dei tuoi pensieri, Haer'Dalis. Non trovi che la vita sia altrettanto degna di considerazione?~
== BHAERDA ~E perchè mai, mio gabbiano? La nostra esistenza non è altro che un lungo cammino costellato di affanni e di tormenti. Percorriamo questo sentiero al solo scopo di raggiungere la tanto ambita meta - l'oblio, la fine del nostro travaglio.~
== BTB#STIV ~Lungi da me criticare le tue cupe e fosche considerazioni, ma... Non ti sembra di aver delineato un quadro piuttosto pessimistico?~
== BHAERDA ~No, mio giovane halfing. Mi sono unicamente limitato a descrivere la realtà per quel che è.~
== BTB#STIV ~Ossia...?~
== BHAERDA ~Una nave che, stremata dalle incessanti tempeste, raggiunge un porto di fatale quiete.~
EXIT


Questo banter dovrebbe aver luogo non appena viene ultimata la missione di Baseira del mod Quest Pack - una volta usciti dalla tomba. Per evitare di ripetere sempre "mio gabbiano" ho pensato che una buona alternativa fosse "uccello di mare".
La poesia recitata da Haer'Dalis è di Igino Ugo Marchetti e si intitola "Memento".

CHAIN
IF ~InParty("Haerdali")
See("Haerdali")
!StateCheck("Haerdali",CD_STATE_NOTVALID)
AreaType(OUTDOOR)
CombatCounter(0)
Global("tb#StivanHaerdalis", "GLOBAL",0)~ THEN BTB#STIV
~Wow. Sono senza parole. Non pensavo che l'amore potesse vincere anche la morte.~
DO ~SetGlobal("tb#StivanHaerdalis", "GLOBAL",1)~
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


~<CHARNAME>, la situazione sta diventando insostenibile!~
IF ~~ THEN REPLY ~(Yawn) Cosa vuoi, Edwin? Stavo dormendo...~
IF ~~ THEN REPLY ~Spero che tu mi abbia svegliato per un valido motivo, stregone.~
IF ~("EdwinRomanceIsActive")~ THEN REPLY ~Quando vuoi passare una notte in mia compagnia, è sufficiente che tu me lo dica prima che mi metta a dormire. Adesso sono assonnata...~
IF ~("EdwinRomanceIsActive")~ THEN REPLY ~Finalmente! Ho atteso tutto questo tempo per farti arrivare al culmine della passione! Adesso lascia che esploda e che ci travolga!!~

Ma cosa *diavolo* stai dicendo, donna? Non ho desideri sessuali e, anche se li avessi, dubito che una scimmia maldestra come te riuscirebbe a soddisfarli! (Continua così, Edwin. Trattandola in questo modo la renderai ancora più disponibile e vogliosa).~
Non sbadigliarmi in faccia, idiota dalla testa di legno! (Forse è meglio fermarsi qui. Non vorrei ritrovarmi con il mio repertorio di insulti esaurito).~
Quell'halfing è un problema per noi tutti. Non c'è notte in cui non sia agitato o mormori frasi sconnesse e senza senso. Come credi che possa riposare se il mio sonno viene disturbato da quell'invertito?~
IF ~~ THEN REPLY ~Infastidisce anche gli altri? E come mai loro non si sono lamentati?~
IF ~~ THEN REPLY ~D'accordo, ho afferrato il concetto: al risveglio scambierò quattro chiacchere con lui.~
IF ~("EdwinRomanceIsActive")~ THEN REPLY ~Se vuoi, posso parlarci e dirgli che il suo sonno inquieto disturba il mio meloncino.~

Chi, queste scimmie? Ovviamente non hanno il coraggio di dirtelo. (Non mi aspettavo una simile domanda... Che stia iniziando a comprendere qualcosa del mondo circostante? No, dev'essere un barlume di intelligenza apparso all'improvviso nella sua testa vuota, sicuro).~
... Meloncino? , hai preso un colpo in testa o stai regredendo al livello di un troglodita?~

IF ~~ THEN REPLY ~Messaggio ricevuto: domani gli parlerò e vedrò se si può fare qualcosa.~

Uff... Finalmente l'hai capito! (Per le ossa di . Questa femmina ha la tenacia di una banshee!)~


IF ~~ THEN REPLY ~Stivan, Edwin sostiene che tu sia inquieto di notte.~ GO TO PD1-1

CHAIN
IF ~~ THEN BTB#STIV PD1-1
~E allora? Se Edwin si sente disturbato dal sottoscritto, che venga lui a dirmelo.~
IF ~~ THEN REPLY ~Pare che tu dica frasi indistinte.~ GO TO PD1-2
IF ~~ THEN REPLY ~C'è qualche incubo che ti perseguita, forse?~ GO TO PD1-3
END

CHAIN
IF ~~ THEN BTB#STIV PD1-2
~Ah sì? Peggio per lui.~
IF ~~ THEN EXIT
END

CHAIN
IF ~~ THEN BTB#STIV PD1-3
~... Questa domanda da dove salta fuori?~
IF ~~ THEN REPLY ~Perchè da molto tempo a questa parte anch'io tendo a fare sogni spiacevoli.~ GO TO PD1-4
IF ~~ THEN REPLY ~C'è qualcosa che ti turba, vero? Forse potrei esserti d'aiuto.~ GO TO PD1-4
END

CHAIN
IF ~~ THEN BTB#STIV PD1-4
~Uhm...~
= ~E va bene, mi hai convinto. Sebbene dubiti che possa servire a qualcosa, ti descriverò la visione che mi appare spesso quando dormo.~
= ~Vengo divorato dai gabbiani, . Uno stormo incredibile di quei dannati pennuti si scaglia verso di me, ma io non riesco a fuggire perchè ho i piedi piantati per terra e... E iniziano a cibarsi di me, a infilzarmi con quei loro schifidi becchi e...~
= ~E nessuno viene ad aiutarmi.~
= ~Che cosa voglia dire un simile sogno... Non lo so.~

A questo punto vorrei mettere un breve commento di Haer'Dalis...

== BHAERDA IF ~IsValidForPartyDialog("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN ~"Mai sottovalutare i sogni". La mia Raelis me lo ripeteva spesso e volentieri, ma io non vi ho mai prestato grande attenzione. All'epoca avevo altri pensieri per la testa, capisci.~
END

... E concludere il banter in questo modo:

CHAIN
IF ~("EdwinRomanceIsNotActive")~ THEN BTB#STIV
~Ad ogni modo, il nostro temibile Flagello Rosso può mettersi a dormire lontano da me, visto che gli arreco così tanto fastidio. Non vedo altra soluzione.~
IF ~~ THEN EXIT
END

CHAIN
IF ~("EdwinRomanceIsActive")~ THEN BTB#STIV
~Ad ogni modo, il nostro temibile Flagello Rosso potrebbe dormire tra le tue braccia e lontano da me, visto che gli arreco così tanto fastidio. Non vedo altra soluzione.~
IF ~~ THEN EXIT
END
