BEGIN btb#stiv

CHAIN
IF ~InParty("Minsc")
 See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanMinsc", "GLOBAL",0)~ THEN BTB#STIV tb#stivMinsc1
~Noto che parli spesso al tuo criceto, Minsc. Non pensavo che quelle palline di pelo fossero degli interessanti interlocutori.~
DO ~SetGlobal("tb#StivanMinsc", "GLOBAL",1)~
== BMINSC ~Boo è un gran chiaccherone! E anche un gran bardo! Compone fior fior di poemi ogni volta che riempiamo il male di calci nel sedere!~
== BTB#STIV ~... Non mi risulta che i criceti compongano suonate o altro.~
== BMINSC ~E invece sì! Boo canta sempre qualcosa quando è di buon umore, come il trionfo della giustizia sulle meschinità del male, le vittorie di noi paladini del bene sui marrani o i brindisi a cui ci abbandoniamo nel nome della bontà! Celebra anche le volte in gli cambio i trucioli, ogni tanto.~
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
Global("tb#StivanMinsc", "GLOBAL",1)~ THEN BTB#STIV tb#stivMinsc2
~Boo, saresti così gentile da non urlare come uno scalmanato in battaglia? I miei timpani rischiano di essere sfondati dai tuoi schiamazzi!~
DO ~SetGlobal("tb#StivanMinsc", "GLOBAL",2)~
== BMINSC ~Haha! Hai sentito, Boo? Il tuo fiato è così potente da stordire il nostro amico halfing! Continua così!~
== BTB#STIV ~... Mi stavo rivolgendo a te, ranger. Benchè abbia confuso i vostri nomi, mi sembra ovvio che tra voi due sia tu a far tremare il suolo con i tuoi ruggiti.~
== BMINSC ~Ma Minsc non può restare muto come un pesce! Deve riempire i polmoni d'aria per abbattere i nemici con i suoi tonanti ruggiti! In guardia, male: Minsc sta per dar fiato alle sue trombe vocali!!~
== BTB#STIV ~Volevi dire *corde* vocali.~
== BMINSC ~Ehm... "Trombe" è una parola di Boo! Vero, Boo?~
== BTB#STIV ~Già...~
= ~Ad ogni modo, ti sarei grato se la smettessi di stordirmi. Possiamo affrontare il male anche con discrezione, sai?~
== BMINSC ~Ma Minsc deve tenere alto il morale!~
== BTB#STIV ~Ti assicuro che sarà alle stelle in assenza dei tuoi gorgheggi.~
EXIT

CHAIN
IF ~InParty("Stivan")
See("Stivan")
!StateCheck("Stivan",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanJan", "LOCALS",0)~ THEN BTB#STIV tb#stivJan1
~Ti ho mai detto, Jan, che aspiravo a diventare un bardo?~
DO ~SetGlobal("tb#StivanJan", "LOCALS",1)~
== BJAN ~Davvero? Anch'io avevo la tua stessa ambizione! Tutto questo mi ricorda gli anni in cui la mia altezza era ancora lontana dal raggiungere il metro e una rapa di adesso...~
== BTB#STIV ~"Un metro e una rapa"? Che unità di misura è mai questa?~
== BJAN ~Cosa?! Non sapevi che gli gnomi misurano la loro statura con il rapometro? Zio Scratchy potrebbe seppellirti in un campo di fave per questo!~
== BTB#STIV ~Allora illuminami, Jan. Non desidero diventare fertilizzante per il terreno.~
== BJAN ~Prima devo finire di raccontarti la mia storia. Dunque, stavo dicendo..~ = ~Uh...~
= ~Ehm...~
= ~L'ho dimenticato...~
== BTB#STIV ~Me lo dirai non appena ti verrà in mente.~
== BJAN ~Se vuoi, posso descriverti il modo in cui si misurano le unghie dei piedi! Vedi, devi sapere che noi gnomi...~
== BTB#STIV ~(Sigh)~
EXIT

CHAIN
IF ~InParty("Jan")
See("Jan")
!StateCheck("Jan",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanJan", "LOCALS",1)~ THEN BTB#STIV tb#stivJan2
~Jan, mi sono appena ricordato quello che volevi dirmi la volta scorsa.~
DO ~SetGlobal("tb#StivanJan", "LOCALS",2)~
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
== BJAN ~Lascia che te lo dica, Stivan: sei proprio uno smemorato! A confronto lo zio Scratchy aveva una memoria invidiabile. Secondo me dovresti bere un pò di succo di rapa.~
== BTB#STIV ~~
EXIT

CHAIN
IF ~InParty("Stivan")
See("Stivan")
!StateCheck("Stivan",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanJan", "LOCALS",2)~ THEN BJAN tb#stivJan3
~Un bardo! Volevo diventare un bardo! Ecco cosa continuavo a dimenticarmi di dirti!~
DO ~SetGlobal("tb#StivanJan", "LOCALS",3)~
== BTB#STIV ~Tu... un bardo?~
== BJAN ~Esatto! Che ne dici di darmi una mano a realizzare il mio sogno, Stivan? Sono un abile narratore. Conosco un sacco di storie. Ho una voce forte e squillante. Sarei il primo menestrello di casa Jansen!~
== BTB#STIV ~Jan, ehm... Ognuno di noi ha le proprie attitudini... Tu sei un abile illusionista e un ladro provetto, quindi non dovresti aspirare a qualcosa per cui non sei... adatto.~
= ~Senza offesa, ovviamente.~
== BJAN ~...~
= ~... Quando iniziamo?~
== BTB#STIV ~(Sigh) Smussare il tuo entusiasmo è un'impresa a dir poco impossibile. E va bene, Jan. Alla prima occasione ti insegnerò quello che so.~
EXIT

CHAIN
IF ~InParty("Haerdali")
See("Haerdali")
!StateCheck("Haerdali",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#stivanHaerdalis", "GLOBAL",0)~ THEN BHAERDA tb#stivHaerd1
~Mi par di arguire, mio gabbiano, che hai viaggiato molto per questa terra chiamata Faerun. E' così?~
DO ~SetGlobal("tb#stivanHaerdalis", "GLOBAL",1)~
== BTB#STIV ~Sì, Haer'Dalis. Sono stato in molti posti finora, alcuni più belli e più suggestivi di altri, ma non ho ancora messo piede in diverse località.~
== BHAERDA ~Mai stato a Sigil?~
== BTB#STIV ~No, e non so nemmeno come arrivarci! Tutta questa storia dei condotti, delle sfere interplanari, delle dimensioni parallele... E' un pò troppo complicato per me.~
== BHAERDA ~Ti assicuro che un viaggio di tal tipo non è paragonabile neanche lontanamente a quelli terra-terra a cui sei abituato. Non c'è nulla di più emozionante!~
== BTB#STIV ~Ma... Ho sentito che possono verificarsi degli incidenti...~
== BHAERDA ~In effetti è vero. Una volta, ad esempio, un mio amico è entrato in un condotto instabile. Non l'avesse mai fatto: il suo busto è rimasto attaccato all'entrata del condotto, mentre le sue gambe sono arrivate più o meno integre all'uscita. Se non fosse stato così fesso da non ascoltarmi...~
== BTB#STIV ~Ehm... Penso che continuerò a viaggiare a piedi. E' molto più sicuro...~
EXIT

CHAIN
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanKeldorn", "GLOBAL",0)~ THEN BTB#STIV tb#stivKeld1
~Sei avanti negli anni, Keldorn. Capisco che per un sessant'enne sia un'idea difficile da accettare, ma... Cerca di rendertene conto: è giunto il momento di riporre la tua spada nel fodero.~
DO ~SetGlobal("tb#StivanKeldorn", "GLOBAL",1)~
== BKELDOR ~La lotta contro il male non ha mai fine, halfing. Continuerò a combattere finchè Torm mi darà la forza necessaria a farlo.~
= ~Per inciso: io non ho sessant'anni.~
== BTB#STIV ~E' vero: ho voluto ringiovanirti di cinque anni per motivi di... tatto.~
= ~Ad ogni modo, vista la tua determinazione, ti consiglio di stare attento. Potresti essere sconfitto in qualsiasi momento da un nemico più forte o, nel peggiore dei casi, restar schiacciato dalla tua stessa armatura.~
== BKELDOR ~Spiritoso. Io, almeno, sono riuscito e riesco tutt'ora a portarla. Dubito che le tue gracili spalline ne sarebbero capaci.~
EXIT

CHAIN
IF ~InParty("Minsc")
InParty("Stivan")
See("Minsc")
See("Stivan")
!StateCheck("Minsc",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanMinsc", "GLOBAL",0)
LILARCOR IN GRUPPO
~ THEN LILARCOR tb#stivMinsc1
~Testa di latta, è da ben *due* ore che non mi lustri! Cosa stai aspettando?!~
== BMINSC ~Abbi un attimo di pazienza, Larry: Minsc sta dando da mangiare a Boo. Tra poco si prenderà cura anche di te.~
== LILARCOR ~Ora! Mi devi lucidare ORA, prima che la ruggine mi intacchi!~
== BMINSC ~E va bene. Boo, finisci di mangiare le noci da solo; Minsc deve dare una pulitina alla sua spada.~
== BTB#STIV ~Devi essere proprio stupido, ranger, per soddisfare i capricci di quella lama. Se si fosse rivolta a me in questo modo, l'avrei rigirata in una pila di letame fino ad insegnarle un pò di rispetto.~
== BMINSC ~Minsc non è stupido! Si prende cura del suo criceto e della sua spada per essere sempre pronto alla battaglia!~
== LILARCOR ~Ora basta! Se non posso ricevere la dovuta pulizia, allora assaggerò un pò di sangue!~
== BTB#STIV ~Ahh! Minsc, sei impazzito?!?~
== BMINSC ~Minsc non ha fatto nulla! E' stato Larry! Vero, Boo?~
== BTB#STIV ~Nulla? Stavi per tagliarmi in due e hai il coraggio di dire che non hai fatto nulla?! Stai brandendo TU quella dannata spada! Ti è forse sfuggito?~
== BMINSC ~Ma Larry ogni tanto fa quel che vuole! Minsc non ha colpa se la sua spada sferra colpi da sola!~
== LILARCOR ~(Ghigna)~
== BTB#STIV ~Osa solo colpirmi un'altra volta, spada, e ti rispedisco nelle fogne dove ti abbiamo trovato!~
EXIT

CHAIN
IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanEdwin", "GLOBAL",0)~ THEN BTB#STIV tb#stivEdwin1
~Edwin, perchè non mi parli un pò della tua Thay? E' una regione in cui non sono mai stato e mi piacerebbe saperne di più.~
DO ~SetGlobal("tb#StivanEdwin", "GLOBAL",1)~
== BEDWIN ~Thay non è "mia", stupido halfing (anche se lo sarà presto). In ogni caso, se vuoi delle informazioni su quella terra dove non sopravviveresti neanche un giorno, dovresti rivolgerti all'ufficio per i giretti turistici riservati alle scimmie sodomite.~
== BTB#STIV ~Quanto astio, quanto astio... Ti sei mai chiesto da dove provenga questa astiosità?~
== BEDWIN ~Io mi chiedo molte cose, Stivan, ma temo che trascendano tutte la tua limitata comprensione da gibberling. (Edwin, come puoi sperare che questo scarto umano conosca il significato del termine "trascendere"? Dovrò cercarne uno più semplice... Bah! Stare tra queste scimmie sta limitando sempre di più le mie raffinatezze linguistiche!)~
== BTB#STIV ~Sei un uomo frustrato, Edwin.~
== BEDWIN ~Cara la mia scimmia sodomita, vuoi che ti insegni in che altri modi utilizzare le banane? Vedi, nel tuo corpo ci sono dei buchi dove--~
== BTB#STIV ~Questo è un interessante consiglio, stregone. Devi certamente averlo provato di persona per raccomandarmelo.~
== BEDWIN ~NO! (Quella dannata sgualdrina dei Moli ha parlato! Le avrei dovuto sigillare la bocca con una sana palla di fuoco, altro che stordirla!)~
== BTB#STIV ~Povero Edwin... Tradito da una parola di troppo. Non dovresti mai bere prima di andare a letto con una cortigiana...~
== BEDWIN ~Ti consiglio di tapparti la bocca, halfing, prima che... che... (Dei! Mi stanno incastrando! Ma per fortuna queste scimmie ignorano tutto...)~
== BTB#STIV ~... Sarebbe meglio ritornare a qualsiasi cosa stessimo facendo prima di interromperci. Edwin... Sta perdendo il controllo.~
EXIT

CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
Global("AnomenIsKnight","GLOBAL",0)
Global("AnomenIsNotKnight","GLOBAL",0)
CombatCounter(0)
Global("tb#StivanAnomen", "GLOBAL",0)~ THEN BTB#STIV  tb#stivAnomen1
~Mi sono sempre chiesto, Anomen, per quale motivo combatti nel nome di Helm. Tra tutti gli dei, credo che sia il più freddo e distaccato.~
DO ~SetGlobal("tb#StivanAnomen", "GLOBAL",1)~
== BANOMEN ~Fesserie! Ti posso assicurare, halfing, che nel corso di una battaglia lo spirito di Helm infiamma il mio cuore e guida la mia mano!~
== BCOREWY ~"Lo spirito di Helm"? Sei sicuro che non si tratti dei tuoi ormoni?~
== BANOMEN ~Non presterò attenzione ai tuoi sarcastici commenti.~
== BCOREWY ~Ma certo. L'impavido Anomen non si abbasserebbe mai a rispondere a simili affermazioni. Toglimi una curiosità, allora: rimanevi impassibile anche quando i tuoi superiori ti chiedevano di pulire il deretano dei loro destrieri?~
== BANOMEN ~Ripetilo e ti troverai senza lingua.~
== BCOREWY ~Infatti. Mi chiedevo fino a quando avresti resistito.~
EXIT


CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
Global("AnomenIsKnight","GLOBAL",0)
Global("AnomenIsNotKnight","GLOBAL",0)
CombatCounter(0)
Global("tb#StivanAnomen", "GLOBAL",1)~ THEN BTB#STIV tb#stivAnomen2
~Anomen, pare che la tua "rispettabile" etica clericale non ti permetta di ricorrere ad armi come la spada. Non pensi sia un peccato?~
DO ~SetGlobal("tb#StivanAnomen", "GLOBAL",2)~
== BANOMEN ~Per niente. Posso servire Helm in maniera degna del suo nome anche con una mazza.~
== BTB#STIV ~Dopo tutta la fatica che hai fatto per imparare a tenere una lama in mano... Un vero spreco di tempo e di energie, oserei dire.~
== BANOMEN ~Nulla mi impedisce di rispolverare le mie antiche abilità ed ucciderti seduta stante.~
== BKELDOR IF ~IsValidForPartyDialog("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN ~Mi sembra di averti ripetuto più volte, Anomen, che devi imparare a controllarti. L'Ordine non approverebbe mai simili scatti d'ira.~
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
Global("tb#StivanAnomen", "GLOBAL",0)~ THEN BTB#STIV tb#stivAnomen3
~Ti trovo diverso da quando non hai superato la Prova, Anomen. Mi sembri più rilassato, più sereno... Come se ti fossi liberato di un abito troppo stretto.~
DO ~SetGlobal("tb#StivanAnomen", "GLOBAL",1)~
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