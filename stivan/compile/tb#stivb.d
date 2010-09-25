BEGIN TB#STIVB

CHAIN 
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanViconia","GLOBAL",0)~ THEN TB#STIVB stivan-viconia-1
~Sono contento che tu sia stata salvata da quel gruppo di fanatici, Viconia. Non riesco a credere che avessero intenzione di farti del male soltanto per il colore della tua pelle. L�ho sempre detto che i chierici sono degli scellerati e che meriterebbero...~
= ~... Viconia, non guardarmi in quel modo. Mi metti soggezione.~
DO ~SetGlobal("tb#StivanViconia","GLOBAL",1)~
== BVICONI ~Non so ancora in che modo inquadrarti, sakphul. C'� qualcosa in te che ti rende diverso dai tuoi simili.~
== TB#STIVB ~Questo � vero. Potresti definirmi un halfling "urbano", visto che sono nato e cresciuto qui, ad Athkatla, e non in uno dei villaggi tipici della mia razza.~
== BVICONI ~Ma per molti aspetti sei tale e quale ai tuoi amichetti dai piedi pelosi. Prendi il tuo aspetto fisico: � addirittura peggiore di quello degli abitanti degli alberi. Persino il pi� inetto tra i drow sarebbe in grado di spezzarti come un esile ramoscello.~
== TB#STIVB ~Ti ringrazio per il complimento, Viconia.~
== BVICONI ~E la tua fastidiosa abitudine a maneggiare grimaldelli e altri arnesi da scasso? Non � forse tipico di quelli della tua razza dedicarsi a simili rozze attivit�?~
== TB#STIVB ~Andiamo... Cos� mi fai arrossire.~
== BVICONI ~Per non parlare della tua ridicola avversione per quei poveri pennuti che chiami gabbiani. Non hai nient'altro di meglio da fare che rincorrerli a perdifiato ad ogni ora del giorno?~
== TB#STIVB ~*Ahem* Sai bene che ho dei motivi pi� che validi, Viconia. Se qualcuno avesse ucciso i tuoi familiari, non cercheresti vendetta?~
== BVICONI ~No.~
== TB#STIVB ~... No? Credevo che... S�, insomma...~
== BVICONI ~Stai iniziando a infastidirmi, piccoletto. Parli troppo per i miei gusti.~
EXIT

CHAIN 
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanViconia","GLOBAL",2)~ THEN TB#STIVB stivan-viconia-3
~Viconia, ti hanno mai detto che sei una bellissima drow?~
DO ~SetGlobal("tb#StivanViconia","GLOBAL",3)~
== BVICONI ~Hmmm... Ti senti bene, sakphul? Non mi sarei mai aspettata un'osservazione del genere da... da uno come te.~
== TB#STIVB ~Ti stavo soltanto rivolgendo un complimento. Pensi forse che un halfling non sia capace di apprezzare la bellezza di una drow?~
== BVICONI ~No, anzi. Il mio aspetto � cos� maestoso da abbagliare chiunque. Tappetti inclusi.~
== TB#STIVB ~Ehm... La modestia non � una delle tue qualit�...~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanViconia","GLOBAL",3)~ THEN BVICONI stivan-viconia-4
~Non ho potuto fare a meno di notare, piccoletto, che non sei solito concederti alcun piacere lussurioso. Sei uno di quei maschi che agiscono solo su iniziativa femminile, forse?~
DO ~SetGlobal("tb#StivanViconia","GLOBAL",4)~
== TB#STIVB ~(Arrossisce) Sto semplicemente aspettando di trovare la persona giusta.~
== BVICONI ~Ma certo. Anche tu appartieni a quel branco d'idioti che sostengono di cercare... Come dite voi esseri di Superficie?~
== TB#STIVB ~L'anima gemella?~
== BVICONI ~Esatto. Un individuo con cui trascorrere tutta la vita e condividere... Cosa? I dolori di ogni giorno? La vecchiaia?~
== TB#STIVB ~Non essere sempre cos� riduttiva, Viconia. La vita � fatta anche di altre cose: sogni, emozioni, speranze...~
== BVICONI ~Bah. Per quanto mi riguarda, trovo che non ci sia niente di pi� stupido e noioso dell'unirsi sempre con la stessa persona.~
== TB#STIVB ~Ah s�?~
== BVICONI ~Nel Sottosuolo le donne sono libere di servirsi di qualsiasi maschio vogliano per soddisfare i loro desideri carnali. Noi non ci leghiamo a nessuno per sempre: i nostri protettori, infatti, rimangono tali fino a quando non si rivelano inutili in battaglia o incapaci di appagarci sessualmente.~
== TB#STIVB ~All'improvviso, sono felice di non essere un maschio drow.~
== BVICONI ~Dovresti dispiacertene, invece. La mia razza � in grado di procurare un piacere fisico cos� intenso da lasciare inermi gli abitanti della Superficie come te. Un giorno, quando ne avr� voglia...~
== TB#STIVB ~(Glom) ... S�?~
== BVICONI ~... ti racconter� alcune astuzie erotiche sperimentate dalla sottoscritta. Sono sicura che rimarrai senza parole.~
== TB#STIVB ~Oh, ehm... D'accordo, Viconia. Certo. Quando vuoi.~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanViconia","GLOBAL",4)~ THEN BVICONI stivan-viconia-5
~... E cos�, giunto all'apice del piacere, ha avuto un infarto. Le sue guardie erano convinte che lo avessi ucciso di proposito, cos� fui costretta a fuggire. Un imprevisto decisamente fastidioso, ma mi ha insegnato quanto poco resistenti siano a letto i rivvil.~
== BVICONI IF ~Race(Player1,HUMAN) Global("SleptViconia","GLOBAL",1)~ THEN ~Vero, <CHARNAME>?~
== TB#STIVB ~Ehm... Complimenti, Viconia. Davvero notevole.~
DO ~SetGlobal("tb#StivanViconia", "GLOBAL",5)~
== BVICONI ~Suppongo che a questo punto tu voglia una dimostrazione di quanto ti ho raccontato, hmmm? Magari su di te...?~
== TB#STIVB ~(Gasp!) Veramente io...~
== BVICONI ~Vuoi che le mie abili mani scivolino lungo il tuo corpo, facendolo ardere di un desiderio incontenibile?~
BRANCH ~Global("AnomenIsNotKnight","GLOBAL",1)~ BEGIN
== TB#STIVB ~Ma... Magari un'altra volta, eh?~
== BVICONI ~Cosa?! Mi stai respingendo?~
== TB#STIVB ~Ehm... Ti assicuro che la tua � un'offerta allettante, Viccy, ma...~
== BVICONI ~Sparisci dalla mia vista, sakphul, prima che mi decida a fare di te un eunuco! La tua mancanza di virilit� mi disgusta!~
END
BRANCH ~Global("AnomenIsNotKnight","GLOBAL",0)~ BEGIN
== TB#STIVB ~Di... Dici sul serio...?~
== BVICONI ~Puoi scordartelo, sakphul. Preferirei la castit� a vita piuttosto che andare a letto con una caricatura d'uomo. Credevi davvero che fossi interessata ad uno come te?~
== TB#STIVB ~Ma... Ma tu...~
== BVICONI ~Tsk. Povero idiota.~
END
EXIT


CHAIN 
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanViconia","GLOBAL",5)~ THEN TB#STIVB stivan-viconia-6
~A giudicare dalle occhiate furtive che continui a lanciarmi, Viconia, suppongo che tu non abbia il coraggio di scusarti per il modo vergognoso in cui mi hai trattato.~
DO ~SetGlobal("tb#StivanViconia","GLOBAL",6)~
== BVICONI ~Io non ho la bench� minima intenzione di scusarmi, illuso. E per cosa, poi? Per essere stata franca?~
== TB#STIVB ~Allora potresti spiegarmi perch� continui ad avvicinarti a me come se volessi dirmi qualcosa?~
== BVICONI ~Il fatto che talvolta sia costretta a camminare vicino a te non significa che voglia conversare, stupido idiota.~
== TB#STIVB ~E quando apri la bocca per poi richiuderla senza proferir parola? Devo forse pensare che tu stia respirando a pieni polmoni?~
== BVICONI ~Il tuo olezzo � tale, sakphul, da farmi boccheggiare.~
== TB#STIVB ~(Sospiro) Quando vuoi, Viconia. Io non ho fretta.~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanViconia","GLOBAL",7)~ THEN BVICONI stivan-viconia-7
~Credo... Credo che dovrei scusarmi per ci� che ti ho detto la scorsa volta, Stivan.~
DO ~SetGlobal("tb#StivanViconia","GLOBAL",8)~
== TB#STIVB ~Heh. Sarei tentato di risponderti con un bel "Era ora!" ma, conoscendoti, � meglio che lo tenga per me.~
== BVICONI ~L'hai appena detto, imbecille.~
== TB#STIVB ~Ops. Chiedo scusa. Amici come prima?~
== BVICONI ~Godrai nuovamente della mia considerazione, se � questo che intendi.~
== TB#STIVB ~Heh. Sono felice che le cose tra noi si siano sistemate, Viccy.~
== BVICONI ~Iniziamo male, sakphul. Molto male.~
EXIT

CHAIN 
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
Global("AnomenIsNotKnight","GLOBAL",0)
CombatCounter(0)
Global("tb#StivanAnomen","GLOBAL",0)~ THEN TB#STIVB stivan-anomen-1
~Mi sono sempre chiesto, Anomen, per quale motivo combatti nel nome di Helm. Tra tutti gli dei, � noto per essere il pi� freddo e distaccato.~
DO ~SetGlobal("tb#StivanAnomen", "GLOBAL",1)~
== BANOMEN ~Fesserie! Ti posso assicurare, halfling, che nel corso di una battaglia lo spirito di Helm infiamma il mio cuore e guida la mia mano!~
== TB#STIVB ~"Lo spirito di Helm"? Sei sicuro che non si tratti dei tuoi ormoni?~
== BANOMEN ~Non prester� attenzione ai tuoi sarcastici commenti.~
== TB#STIVB ~Ma certo. L'impavido Anomen non si abbasserebbe mai a rispondere a simili affermazioni. Toglimi una curiosit�, allora: rimanevi impassibile anche quando i tuoi superiori ti chiedevano di pulire il deretano dei loro destrieri?~
== BANOMEN ~Ripetilo e ti troverai senza lingua.~
== TB#STIVB ~Infatti. Mi chiedevo fino a quando avresti resistito.~
EXIT

CHAIN 
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
Global("AnomenIsNotKnight","GLOBAL",0)
CombatCounter(0)
Global("tb#StivanAnomen","GLOBAL",1)~ THEN TB#STIVB stivan-anomen-2
~Anomen, pare che la tua "rispettabile" etica clericale non ti permetta di ricorrere ad armi come la spada. Non pensi sia un peccato?~
DO ~SetGlobal("tb#StivanAnomen","GLOBAL",2)~
== BANOMEN ~Per niente. Posso servire Helm in maniera degna del suo nome anche con una mazza.~
== TB#STIVB ~Dopo tutta la fatica che hai fatto per imparare a tenere una lama in mano... Un vero spreco di tempo e di energie, oserei dire.~
== BANOMEN ~Nulla mi impedisce di rispolverare le mie antiche abilit� ed ucciderti seduta stante.~
== BKELDOR IF ~IsValidForPartyDialog("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN ~Mi sembra di averti ripetuto pi� volte, giovane Anomen, che devi imparare a controllarti. L'Ordine non approverebbe mai simili scatti d'ira.~
== BANOMEN IF ~IsValidForPartyDialog("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN ~Sir Keldorn, anche a me sembra di averti gi� detto che *non* ho bisogno dei tuoi suggerimenti!~
== TB#STIVB ~(Yawn) Stai iniziando ad annoiarmi con le tue minacce... Avanti, Anomen: non perdere tempo con le formalit� e porgimi le tue scuse.~
== BANOMEN ~Che cosa?! Sei stato *tu* ad iniziare ad insultarmi!~
== TB#STIVB ~Uhm... Pu� darsi. Eppure credevo che gli zelanti servitori del bene come te non si facessero tanti scrupoli per sotterrare l'ascia di guerra...~
== BANOMEN ~Puoi scordartelo, halfling! Chiedere scusa significherebbe stendere le fondamenta per un'offesa futura!~
EXIT

ADD_TRANS_ACTION ANOMENJ BEGIN 101 END BEGIN END ~SetGlobalTimer("tb#StivanAnomenUpset","GLOBAL",FOUR_DAYS)~

CHAIN 
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
Global("AnomenIsNotKnight","GLOBAL",1)
GlobalTimerExpired("tb#stivanAnomenUpset","GLOBAL")
CombatCounter(0)
Global("tb#StivanAnomen","GLOBAL",2)~ THEN TB#STIVB stivan-anomen-3
~Ti trovo diverso da quando non hai superato la Prova, Anomen. Mi sembri pi� rilassato, pi� sereno, come se ti fossi liberato di un abito troppo stretto.~
DO ~SetGlobal("tb#StivanAnomen","GLOBAL",3)~
== BANOMEN ~Gi�, hai ragione. Sono ancora un p� amareggiato per la mia esclusione dall'Ordine, ma adesso mi sento...~
== TB#STIVB ~Libero?~
== BANOMEN ~Libero da vincoli d'obbedienza, s�. Rispettare e conformarmi a quelle regole era pi� soffocante di quanto pensassi.~
== TB#STIVB ~Se avessi ascoltato fin da subito le critiche pungenti che rivolgevo a quegli sciocchi...~
== BANOMEN ~C'� un vecchio adagio che dice: "Meglio tardi che mai".~
== TB#STIVB ~Giusto. Eppure continui a servire Helm.~
== BANOMEN ~L'Onniveggente non mi ha privato dei miei poteri, halfling, il che significa che con le mie azioni non l'ho disonorato.~
== TB#STIVB ~L'Ordine sembra pensarla diversamente.~
== BANOMEN ~Al diavolo l'Ordine! La sola cosa che conta sono i fatti. E parlano pi� che bene.~
EXIT


CHAIN 
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanKeldorn","GLOBAL",0)~ THEN TB#STIVB stivan-keldorn-1
~Sei avanti negli anni, Keldorn. Capisco che per un sessant'enne sia un'idea difficile da accettare, ma... Cerca di rendertene conto: � giunto il momento di riporre la tua spada nel fodero.~
DO ~SetGlobal("tb#StivanKeldorn","GLOBAL",1)~
== BKELDOR ~La lotta contro il male non ha mai fine, halfling. Continuer� a combattere finch� Torm mi dar� la forza necessaria a farlo.~
= ~Per inciso: io non ho sessant'anni.~
== TB#STIVB ~E' vero: ho voluto ringiovanirti di cinque anni per motivi di... tatto.~ 
= ~Ad ogni modo, vista la tua determinazione, ti consiglio di stare attento. Potresti essere sconfitto in qualsiasi momento da un nemico pi� forte o, nel peggiore dei casi, restar schiacciato dalla tua stessa armatura.~
== BKELDOR ~Spiritoso. Io, almeno, sono riuscito e riesco tutt'ora a portarla. Dubito che le tue gracili spalline ne sarebbero capaci.~
EXIT

CHAIN
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LadyMaria","GLOBAL",5)
Global("tb#StivanKeldorn","GLOBAL",1)~ THEN TB#STIVB stivan-keldorn-4
~*Ahem* Sono pi� o meno contento che le cose tra te e tua moglie si siano sistemate, ma rimane pur sempre il problema della tua vecchiaia.~
DO ~SetGlobal("tb#StivanKeldorn","GLOBAL",2)~
== BKELDOR ~Come ti ho gi� detto, non vivo i miei anni come se fossero un peso. Le rughe altro non sono che segni del tempo, simili a quelli incisi nel cuore degli alberi.~
== TB#STIVB ~Allora devo supporre che voi due steste ancora insieme per distrazione. Sai, pare che succeda in tanti matrimoni, dove spesso si resta uniti pi� per pigrizia che per altro.~
== BKELDOR ~Un'altra parola su me e Lady Maria e sar� l'ultima che proferirai.~
== TB#STIVB ~Heh. Puoi stare tranquillo, nonno. Con te mi sono divertito quanto basta.~
== BKELDOR ~... La misura � colma, <CHARNAME>. Al prossimo insulto del tuo discutibile alleato, non esiter� ad agire secondo i dettami dell'onore, sia chiaro.~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
AreaType(DUNGEON)
CombatCounter(0)
Global("tb#StivanEdwinInDungeon","GLOBAL",0)~ THEN BEDWIN StivanEdwinInDungeon
~Posso sapere cosa ci trovi di tanto interessante in quella parete, halfling? Trovi che sia normale accarezzarla mormorando parole indistinte?~
DO ~SetGlobal("tb#StivanEdwinInDungeon","GLOBAL",1)~
== TB#STIVB ~A me piace parlare al muro, Edwin. E' il solo che non mi contraddica.~
== BEDWIN ~(E' un individuo pericoloso. Lo sostenevo fin dall'inizio).~
EXIT

CHAIN 
IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanEdwin","GLOBAL",0)~ THEN TB#STIVB stivan-edwin1
~Edwin, perch� non mi parli un p� della tua Thay? E' una regione in cui non sono mai stato e mi piacerebbe saperne di pi�.~
DO ~SetGlobal("tb#StivanEdwin","GLOBAL",1)~
== BEDWIN ~Thay non � "mia", stupido halfling (anche se lo sar� presto). In ogni caso, se vuoi delle informazioni su quella terra dove non sopravviveresti neanche un giorno, dovresti rivolgerti all'ufficio per i giretti turistici riservati alle scimmie.~
== TB#STIVB ~Quanto astio, quanto astio... Ti sei mai chiesto da dove provenga la tua scontrosit�?~
== BEDWIN ~Io mi chiedo molte cose, mocciosetto, ma temo che trascendano tutte la tua limitata comprensione da gibberling. (Edwin, come puoi sperare che questo scarto umano conosca il significato del termine "trascendere"? Dovr� cercarne uno pi� semplice...)~
= ~(Bah! Stare tra questi analfabeti sta limitando sempre di pi� le mie raffinatezze linguistiche!)~
== TB#STIVB ~Sei un uomo frustrato, Edwin.~
== BEDWIN ~Cara la mia scimmia sodomita, vuoi che ti insegni in che altri modi utilizzare le banane? Vedi, nel tuo corpo ci sono dei buchi dove--~
== TB#STIVB ~Questo � un interessante consiglio, stregone. Devi certamente averlo provato di persona per raccomandarmelo.~
== BEDWIN ~NO! (Quella dannata sgualdrina dei Moli ha parlato! Le avrei dovuto sigillare la bocca con una sana palla di fuoco, altro che stordirla!)~
== TB#STIVB ~Povero Edwin. Tradito da una parola di troppo. Non dovresti mai bere prima di andare a letto con una cortigiana...~
== BEDWIN ~Ti consiglio di tapparti la bocca, halfling, prima che... che... (Dei! Mi stanno incastrando!)~
== TB#STIVB ~... <CHARNAME>, sarebbe meglio ritornare a qualsiasi cosa stessimo facendo prima di interromperci. Edwin... Sta perdendo il controllo.~
EXIT

CHAIN 
IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
Global("tb#StivanEdwinScroll","GLOBAL",1)
CombatCounter(0)
Global("tb#StivanEdwin","GLOBAL",1)~ THEN TB#STIVB stivan-edwin-2
~Uhm... Dove diavolo ha messo quella pergamena? E' la quinta volta che frugo nel suo zaino, ma non sono ancora riuscito a trovarla...~
DO ~SetGlobal("tb#StivanEdwin","GLOBAL",2)~
= ~Uh? E questo cos'�? Potrei giurare che la volta scorsa non -- *EEKKK*!~
== BEDWIN ~Persino una banale trappola per topi pu� essere estremamente efficace contro certi ficcanaso.~
== TB#STIVB ~Da... Dannazione a te, stregone! Guarda com'� gonfia la mia mano!~
== BEDWIN ~Osa rovistare ancora una volta tra i miei averi, halfling, e ti assicuro che troverai ben altro genere di sorprese.~
== TB#STIVB ~(Urla) <CHARNAME>, mi appello a te! Dal momento che la pergamena appartiene a questo gruppo, ho il diritto di poterla consultare a mio piacimento!~
END
IF ~~ THEN REPLY ~Stivan ha ragione, Edwin. Tira fuori il maltolto.~ EXTERN BEDWIN StivanEdwin1
IF ~Global("EdwinRomanceActive","GLOBAL",2)~ THEN REPLY ~Anch'io sono interessata a quell'artefatto, Edwin. F� la brava zucchina e mostracela.~ EXTERN BEDWIN StivanEdwin2
IF ~~ THEN REPLY ~Un'obiezione interessante, Stivan. Sbaglio o ti ricordi di far parte di questo gruppo soltanto quando ti fa comodo?~ EXTERN TB#STIVB StivanEdwin3
IF ~~ THEN REPLY ~Non voglio essere coinvolto in questioni che non mi riguardano. Sbrigatevela da soli.~ EXTERN BEDWIN StivanEdwin1

APPEND BEDWIN
IF ~~ StivanEdwin1
SAY ~No! Non permetter� che una stupida scimmia metta le mani sulla mia pergamena!~
IF ~~ THEN EXTERN BEDWIN StivanEdwin5
END 
END

CHAIN
IF ~~ THEN BEDWIN StivanEdwin2
~Zu... Zucchina?~ 
= ~Stupida donna, non hai ancora capito che non sono il tuo ortaggio?!~
== TB#STIVB ~Non divaghiamo! Edwin, tira fuori quella pergamena!~
END BEDWIN StivanEdwin5

APPEND TB#STIVB
IF ~~ StivanEdwin3
SAY ~Ehm... Ecco, io...~
= ~Non divaghiamo! Edwin, tira fuori quella pergamena!~
IF ~~ THEN EXTERN BEDWIN StivanEdwin5
END
END

CHAIN BEDWIN StivanEdwin5
~Fruga nel mio zaino quanto vuoi, patetica creatura. Non la troverai *mai*. (Per motivi pi� che ovvi, oserei dire. Solo un genio come me poteva pensare di nasconderla nelle mie mutande).~
== BEDWIN IF ~Global("EdwinRomanceActive","GLOBAL",2)~ THEN ~(Sei proprio un figo, Edwin. Guarda l'espressione di <CHARNAME>. Bocca spalancata, occhi sgranati... Persino un idiota capirebbe che questi sono chiari segnali dell'ammirazione sconfinata che prova per me).~
= ~(... Beh, ora potrebbe anche chiudere la bocca. Sembra una deficiente impalata in quel modo).~
== TB#STIVB ~...~
== BEDWIN ~... Ebbene? Perch� mi stai fissando con quell'espressione? Gli ingranaggi del tuo cervello si sono forse incastrati?~
== TB#STIVB ~Heh. E' proprio vero che bisogna sempre cercare dove meno te l'aspetti.~
== BEDWIN ~Per... Perch� ti stai avvicinando? Allontanati!~
== TB#STIVB ~St� un p� fermo, Edwin...~
== BEDWIN ~Cosa... Cosa *diavolo* stai facendo?! Gi� le mani, brutto porco! Non toccarmi! Non toccare il mio... No! NO! NOOOOO!~
== TB#STIVB ~Yeah! Finalmente � mia!!~
== BEDWIN ~NON OSARE...!!!~
== TB#STIVB ~Manus... Entis... Pa!~ [ CAS_PM2M ]
DO ~SetGlobal("TB#StivanSusanScene","GLOBAL",1)~
EXIT

BEGIN TB#SSUS

CHAIN IF ~Global("TB#StivanSusanScene","GLOBAL",2)~ THEN TB#SSUS tb#sus
~... mi devi dare...~
= ~Uh? Dove... Dove sono?~
== TB#STIVB ~Wow! E tu chi saresti?~
== BEDWIN ~E' lei! E' la prostituta dei Moli!!~
== TB#SSUS ~Ehi, bellezza. Vuoi dare un'occhiata alle mie tettine?~
== BEDWIN ~Scordatelo! Stai per scoprire cosa succede a chi parla troppo!~
DO ~SetGlobal("TB#StivanSusanScene","GLOBAL",3)~
EXIT

CHAIN IF ~Global("TB#StivanSusanScene","GLOBAL",4)~ THEN EDWINJ susan-finale
~Giustizia � fatta. Quanto a te, halfling...~
== TB#STIVJ ~Il potere... Ho avuto tra le mani... il potere...~
== EDWINJ ~Sarei tentato di farti implodere seduta stante, ma terr� a bada la mia ira per il momento. Subirai la giusta punizione non appena avr� compreso ogni segreto di questa pergamena (e ti assicuro che allora saranno cavoli amari).~
DO ~SetGlobal("TB#StivanSusanScene","GLOBAL",5)~
EXIT

APPEND EDWINJ

IF ~PartyRested()
InParty("Edwin")
InParty("tb#Stiv")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0)
Global("TalkedDegardan","GLOBAL",3)
Global("EdwinComplainsOfStivan","GLOBAL",0)~ THEN BEGIN EdwinComplainsOfStivan
SAY ~<CHARNAME>, la situazione sta diventando insostenibile!~
IF ~~ THEN DO ~SetGlobal("EdwinComplainsOfStivan","GLOBAL",1)~ REPLY ~(Yawn) Cosa vuoi, Edwin? Stavo dormendo...~ GOTO EdwinComplainsOfStivan1
IF ~~ THEN DO ~SetGlobal("EdwinComplainsOfStivan","GLOBAL",1)~ REPLY ~Spero che tu mi abbia svegliato per un valido motivo, stregone.~ GOTO EdwinComplainsOfStivan3
IF ~Global("EdwinRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("EdwinComplainsOfStivan","GLOBAL",1)~ REPLY ~Quando vuoi passare una notte in mia compagnia, Edwin, � sufficiente che tu me lo dica prima che mi metta a dormire. Adesso sono assonnata...~ GOTO EdwinComplainsOfStivan2
IF ~Global("EdwinRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("EdwinComplainsOfStivan","GLOBAL",1)~ REPLY ~Finalmente! Ho atteso tutto questo tempo per farti arrivare al culmine della passione! Adesso lascia che esploda e che ci travolga!!~ GOTO EdwinComplainsOfStivan2
IF ~~ THEN REPLY ~St� zitto e dormi...~ GOTO EdwinComplainsOfStivan3
END

IF ~~ THEN EdwinComplainsOfStivan1
SAY ~Non sbadigliarmi in faccia, idiota dalla testa di legno! (Forse � meglio fermarsi qui. Non vorrei ritrovarmi con il mio repertorio d'insulti esaurito).~
IF ~~ THEN GOTO EdwinComplainsOfStivan4
END

IF ~~ THEN EdwinComplainsOfStivan3
SAY ~Come osi rispondermi in questo modo, razza di insolente? Devo forse ricordarti che hai davanti a te il grande Edwin Odessoiron? Alla prossima offesa ti riduco in cenere!~
IF ~~ THEN GOTO EdwinComplainsOfStivan4
END

IF ~~ THEN EdwinComplainsOfStivan2
SAY ~Cosa *diavolo* stai dicendo, donna? Non ho desideri sessuali e, anche se li avessi, dubito che una scimmia maldestra come te riuscirebbe a soddisfarli! (Continua cos�, Edwin. Trattandola in questo modo la renderai pi� disponibile e vogliosa).~
IF ~~ THEN GOTO EdwinComplainsOfStivan4
END

IF ~~ THEN EdwinComplainsOfStivan4
SAY ~Quell'halfling � un problema per noi tutti. Non c'� notte in cui non sia agitato o mormori frasi sconnesse e senza senso. Come credi che possa riposare se il mio sonno viene disturbato da quell'invertito?~
IF ~~ THEN REPLY ~Infastidisce anche gli altri? E come mai loro non si sono lamentati?~ GOTO EdwinComplainsOfStivan5
IF ~~ THEN REPLY ~D'accordo, ho afferrato il concetto: al risveglio scambier� quattro chiacchere con lui.~ GOTO EdwinComplainsOfStivan6
IF ~Global("EdwinRomanceActive","GLOBAL",2)~ THEN REPLY ~Se vuoi, posso parlarci e dirgli che il suo sonno inquieto disturba il mio meloncino.~ GOTO EdwinComplainsOfStivan7
END

IF ~~ THEN EdwinComplainsOfStivan5
SAY ~Chi, queste scimmie? Ovviamente non hanno il coraggio di dirtelo. (Non mi aspettavo una simile domanda... Che stia iniziando a comprendere qualcosa del mondo circostante? No, dev'essere un barlume d'intelligenza apparso all'improvviso nella sua testa vuota).~ 
IF ~~ THEN REPLY ~Messaggio ricevuto, Edwin: domani gli parler� e vedr� se si pu� fare qualcosa.~ GOTO EdwinComplainsOfStivan6
END

IF ~~ THEN EdwinComplainsOfStivan7
SAY ~... Meloncino? <CHARNAME>, hai preso un colpo in testa o stai regredendo al livello di un troglodita?~
IF ~~ THEN REPLY ~Messaggio ricevuto, Edwin: domani gli parler� e vedr� se si pu� fare qualcosa.~ GOTO EdwinComplainsOfStivan6
END

IF ~~ THEN EdwinComplainsOfStivan6
SAY ~Uff... Finalmente l'hai capito! (Per le ossa di Elminster. Questo <MAN_WOMAN> ha la tenacia di una banshee!)~
IF ~~ THEN EXIT
END
END

CHAIN 
IF ~Global("tb#StivanEdwinaDrunk","GLOBAL",1)~ THEN TB#STIVJ stivanedwinpresleep
~Posso offrirvi da bere, signorina Odesseiron? Gradite del vino scuro di Berduska o preferite quello raffinato e soave di Tehtyr?~
DO ~SetGlobal("tb#StivanEdwinaDrunk","GLOBAL",2)~
== EDWINJ ~Portami un boccale di birra, halfling, e non lasciare la mancia.~
== TB#STIVJ ~Ma Miss Edwina! Quante volte vi ho gi� detto di non insozzarvi la bocca con simili espressioni?~
== EDWINJ ~Tra poco insozzer� il pavimento di questa bettola col tuo sangue se non stai zitto! Io-voglio-una-birra!~
== TB#STIVJ ~Assolutamente no. Quello che ci vuole per voi � un'ottima degustazione di vini accuratamente scelti da me.~
== EDWINJ ~Non ho mai dubitato che le scimmie in miniatura avessero un cervello limitato, ma pare che nella tua scatola cranica vi sia una voragine abissale. E' cos� difficile ANDARE al bancone, ORDINARE una birra e PORTARMELA?~
== TB#STIVJ ~Voi parlate troppo, Miss Edwina, e per giunta male. Lasciatevi guidare da un intenditore quale il sottoscritto.~
== EDWINJ ~Neanche mor--~
== TB#STIVJ ~Dal momento che siete cos� entusiasta, direi di iniziare con un bicchierino di vino rosso. Perfettamente in tinta con la vostra vestaglia, eh?~
== EDWINJ ~E' una tunica, idio-- Gulp!~
== TB#STIVJ ~Buono, vero? Quello che servono in questa taverna � tra i pi� amabili. Vogliamo passare a del brandy cormyriano?~
== EDWINJ ~Scordatelo! Non ho intenzione di continuare ad ingurgitare gli intrugli di questa stamberga!~
== TB#STIVJ ~(Sospiro) E va bene. Sono stanco d'insistere. La prossima volta far� meglio a rivolgermi ad un uomo. Uno *vero*.~
== EDWINJ ~Il prossimo.~
== TB#STIVJ ~Eccellente. Che ne dite di assaggiare del vino secco di Arabella?~
== EDWINJ ~D� qua.~
== TB#STIVJ ~Un ippopotamo ha pi� grazia di voi, Miss Edwina.~
== EDWINJ ~Gulp!~
== TB#STIVJ ~Uhm... E questo cos'�? Vino Alurlyath?~
== EDWINJ ~Che razza di nome � "Alurlyath"?~
== TB#STIVJ ~Non ne ho idea, non l'ho mai assaggiato. (Sniff sniff) A giudicare dall'odore, dev'essere molto forte. E' meglio che lo allunghi con un p� d'acqua.~
== EDWINJ ~Versamene un bicchiere cos� com'�, halfling. Non sono una donnetta.~
== TB#STIVJ ~Ah no?~
== EDWINJ ~Versa!~
== TB#STIVJ ~Avete dimenticato la parolina magica, Miss Edwina.~
== EDWINJ ~Ma certo.~
= ~*Subito*!~
== TB#STIVJ ~(Sospiro) Siete un caso senza speranza. Ecco, a voi.~
== EDWINJ ~Gulp!~
= ~C'� *HIC!*... dell'altro?~
== TB#STIVJ ~No, questo era l'ultimo a loro disposizione. Tutto sommato, hanno una discreta scelta.~
= ~Ma... Miss Edwina, siete tutta rossa in viso! Avete forse bevuto un p� troppo?~
== EDWINJ ~Io non ho bevuto troppo. Sono solo *HIC!* stanco e *HIC!* stanco e *HIC!* stanco e...~
== TB#STIVJ ~Ho capito che siete stanca. In effetti, anch'io ho un cerchio alla testa... Lasciate che vi accompagni in camera, mia diletta.~
DO ~RestParty()~
EXIT

CHAIN 
IF ~Global("tb#StivanEdwinaDrunk","GLOBAL",3)~ THEN EDWINJ stivanEdwinAfterNight 
~(Che nottataccia... Ho sognato di aver trascorso la serata a rotolarmi con quell'halfling. Per fortuna era solo un incubo).~
= ~(Uhmmm... Tra poco dovrei alzarmi, ma mi sento come se avessi un peso che grava sul mio petto... Bah! Devo aver mangiato qualcosa di pesante, senza dubbio).~
= ~(Appunti della giornata: sgridare adeguatamente la cuoca di questa stamberga).~
= ~(Ma...)~
= ~(Aspetta...)~
= ~(Ieri sera io *non* ho mangiato! Allora perch� ho questa sensazione di pesantezza? L'avverto lungo tutto il corpo...)~
= ~(Calmati, Edwin. Respira profondamente e f� mente locale su tutto ci� che � successo in questo buco di taverna).~
= ~(...)~
= ~(... L'halfling ti ha fatto bere fino ad ubriacarti, d'accordo. Ma dopo? Cos'� successo? Mi ha portato in camera e...)~
= ~(...)~
= ~(Bah! Non riesco a ricordarmi nulla! E' un peccato che non sappia servirmi della divinazione - questa � una delle rare occasioni in cui mi sarebbe utile).~
= ~(Ma questa pesantezza non mi abbandona. Inizia proprio qui, all'altezza del seno... Tra l'altro avverto anche un certo prurito tra le cavit�. Pi� dal lato di Patricia che da quello di Thelma...)~
DO ~SetGlobal("tb#StivanEdwinaDrunk","GLOBAL",4)~
== TB#STIVJ ~... Patricia? Hai chiamato una delle tue tette Patricia?~
== EDWINJ ~AHHHHHH!~
== TB#STIVJ ~*Ouch!* Non c'era bisogno di scaraventarmi per terra in questo modo!~
== EDWINJ ~C-C-C-COSA...?!~
== TB#STIVJ ~Al risveglio siete pi� bella che mai, Miss Edwina.~
== EDWINJ ~COSA *DIAVOLO* STAVI FACENDO SOPRA DI ME?!~
== TB#STIVJ ~Dormivo, prima che iniziaste uno dei vostri soliti monologhi.~
== EDWINJ ~A... Abbiamo dormito insieme? E' questo che stai dicendo?~
== TB#STIVJ ~Esattamente.~
== EDWINJ ~MI-~
= ~MISERICORDIA! Sono andato a letto con l'halfling!~
== TB#STIVJ ~Beh, in effetti non avevo mai dormito con una donna prima d'ora.~
== EDWINJ ~NOOOOOOO!!!!!!!~
== TB#STIVJ ~Nulla di cos� drammatico, Miss Edwina. In futuro cercher� di appisolarmi al vostro fianco anzich� sopra di voi.~
== EDWINJ ~La... La mia prima volta da donna... Deflorato da un halfling...~
== TB#STIVJ ~Deflorato? Ma cosa state dicendo? Siamo stati semplicemente sopraffatti dalla stanchezza mentre ci stavamo azzuffando. Non avrete di certo pensato che...~
== EDWINJ ~...~
== TB#STIVJ ~Ma che orrore! Come vi possono venire in mente certe idee?~
== EDWINJ ~Sarebbe stato un privilegio, *idiota*! In ogni caso, tu non me la conti giusta. Tu hai abusato di *me*.~
== TB#STIVJ ~Sapete bene che non farei mai una cosa simile. Soprattutto con voi.~
== EDWINJ ~Bah! Credi di potertela cavare con cos� poco? Tu sei un pervertito. Tu mi hai posseduto.~
== TB#STIVJ ~Edwin... Miss Edwina, se non credete alle mie parole siete libera di accertarvi della vostra integrit� in prima persona.~
== EDWINJ ~E' proprio quello che stavo per fare! (Ispeziona flora e fauna, Edwin, *subito*).~
= ~(Tap tap)~
= ~(Strish strish)~
= ~(Paf paf)~
= ~(Strush strush)~
= ~... Uhh...~
== TB#STIVJ ~Miss Edwina! Vi sembra questo il momento di dialogare con la vostra mano destra?~
== EDWINJ ~Oh mio dio... Altro che...~
== TB#STIVJ ~*Ahem* Miss Edwina?~
== EDWINJ ~Cosa c'�?!~
== TB#STIVJ ~Vi siete accertata di non essere stata violata dal sottoscritto?~
== EDWINJ ~Violata? Di cosa stai parlando, stupida scimmia?~
== TB#STIVJ ~Fino a qualche istante fa mi stavate accusando di avervi violentata!~
== EDWINJ ~Piantala di dire fesserie, halfling, o ti spedisco in qualche piano infernale!~
== TB#STIVJ ~Basta. Io ci rinuncio.~
== EDWINJ ~(Dei... Questo corpo riserva sorprese di ogni tipo... O sono le mie mani d'incantatore a fare il miracolo?)~
EXIT

CHAIN
IF ~InParty("Edwin")
InParty("Minsc")
See("Edwin")
See("Minsc")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("Minsc",CD_STATE_NOTVALID)
Gender("Edwin",Female)
CombatCounter(0)
Global("tb#StivanEdwina","GLOBAL",0)~ THEN TB#STIVB minscEdwina
~Voi e Minsc siete proprio una bella coppia, Miss Edwina. Ma guardatevi: vi compensate a vicenda! Uno ha i muscoli, l'altra ha il cervello.~
DO ~SetGlobal("tb#StivanEdwina","GLOBAL",1)~
== BEDWIN ~St� zitto!!~
== TB#STIVB ~A quando le nozze?~
== BEDWIN ~Preferirei vivere nelle giungle del Chault piuttosto che sposarmi con quel gorilla!~
== BMINSC ~Ohh, questo � un gran giorno, Boo! La signorina in rosso vuole sposare Minsc! Ma perch� non l'ha detto subito?~
== BEDWIN ~Non ci sar� nessun matrimonio, beota!~
== BMINSC ~Boo dice che le donne aspettano che sia sempre l'uomo a fare la prima mossa. Minsc si chiede se la sorella di Edwin voglia ascoltare un'altra poesia.~
== BEDWIN ~NOO!!!~
== TB#STIVB ~Dal vostro nervosismo deduco che sono ormai prossime. Avete gi� scelto l'abito?~
== BEDWIN ~Ho scelto il modo in cui ucciderti, halfling! Strangolandoti!~
== TB#STIVB ~Un'altra curiosit�, Miss Edwina: vestirete rosso o bianco?~
== BEDWIN ~Di rosso, ovv... Ma cosa diavolo mi fai dire?!?~
== TB#STIVB ~Non ne dubitavo. Sar� un onore farvi da testimone.~
EXIT

CHAIN 
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
TimeOfDay(Night)
CombatCounter(0)
Global("tb#StivanMinscUB","GLOBAL",0)
Global("WWBooGone","GLOBAL",3)~ THEN TB#STIVB minscPostUB
~(Sospiro) "Le stelle nascondono nuovamente il loro volto luminoso intorno alla luna... E mentre essa rifulge al culmine del suo splendore, sulla terra tutto tace".~
= ~Beh... *Quasi* tutto...~
DO ~SetGlobal("tb#StivanMinscUB","GLOBAL",1)~
== BMINSC ~Tieni gli occhi bene aperti, Boo! Anche quando cala la notte, i difensori della giustizia devono restare svegli per opporsi al male!~
= ~Minsc � contento di averti ritrovato, Boo. Senza di te si addormentava come un ghiro.~
== TB#STIVB ~Io ti preferivo quando eri depresso, ranger. Per quanto breve, � stato il solo periodo di tempo in cui dalla tua bocca non uscivano fesserie.~
== BMINSC ~Minsc si � stufato di ascoltare i tuoi commenti malevoli, halfling! E' giunto il momento di raddrizzarti la schiena e di darti un p� di calci nel sedere! In guardia, male: Minsc sta per...~
= ~Cosa, Boo? Vuoi affrontarlo da solo? Ma... Minsc capisce, ma...~
= ~D'accordo, Boo: Minsc lascer� a te la gloria della battaglia! Preparati ad affrontare la giustizia dei criceti, Stivan!~
== TB#STIVB ~Tremo dalla paura.~
== BMINSC ~COLPISCI AGLI OCCHI, BOO! COLPISCI AGLI OCCHI! RAARGHHH!!!!~
== TB#STIVB ~...~
= ~... Ebbene? Dov'� finito il tuo terribile criceto?~
= ~Oh, ma...~
= ~Ahia! *Ahia*!~
= ~Quella bestia mi � entrata nell'armatura! *Ahi!* Mi sta morsicando - AHIA! - da tutte le parti!~
= ~Adesso ti sistemo io, topo!~
= ~(Stonf)~
= ~(Doppio stonf)~
== BEDWIN IF ~IsValidForPartyDialog("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN ~(L'halfling si sta picchiando da solo? Quindi � masochista... Uhm... Buono a sapersi. Vediamo se sar� cos� eccitato anche quando gli dar� fuoco!)~
== TB#STIVB ~No! L� no, l� no, l� no!~
= ~(Stonf!)~
= ~Uhi...~
== BMINSC ~Ben fatto, Boo! Hai dato al male una lezione che non dimenticher� facilmente! Adesso torna da Minsc... Ti sei meritato due belle noci!~
EXIT

CHAIN 
IF ~InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
AreaType(OUTDOOR)
CombatCounter(0)
Global("tb#StivanHaerdalis","GLOBAL",0)~ THEN TB#STIVB stivan-dalis-1
~Muori, fetido gabbiano! E anche tu, schifido volatile! Tu non sei da meno, vomitevole pennuto!~
DO ~SetGlobal("tb#StivanHaerdalis","GLOBAL",1)~
== BHAERDA ~Devo riconoscere che il tuo approccio verso i gabbiani � all'insegna dell'affetto, Stivan. Potresti dirmi, di grazia, perch� li disprezzi cos� tanto?~
== TB#STIVB ~Hanno ucciso i miei familiari! Hanno pasteggiato con i loro corpi e si sono appoiallati sulle loro carcasse! Come potrei non odiarli?!~
== BHAERDA ~Hmm... Comportamento piuttosto insolito per dei pennuti. Ad ogni modo, chi odia ama, mio gabbiano.~
== TB#STIVB ~*Non* chiamarmi gabbiano!~
== BHAERDA ~Ormai � deciso, Stivan. Tu sarai il mio uccello di mare.~
== TB#STIVB ~Ti ho detto che non vogl--~
== BHAERDA ~S� s� s�. Non avrei potuto scegliere un nome migliore.~
EXIT

CHAIN
IF ~InParty("tb#stiv")
See("tb#stiv")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("PlanarPrison","GLOBAL",2)
Global("tb#StivanHaerdalis","GLOBAL",1)~ THEN BHAERDA stivan-dalis-2
~Mi par di arguire, mio gabbiano, che hai viaggiato molto per questa terra chiamata Faerun. E' cos�?~
DO ~SetGlobal("tb#StivanHaerdalis","GLOBAL",2)~
== TB#STIVB ~S�, Haer'Dalis. Sono stato in molti posti finora, alcuni pi� belli e pi� suggestivi di altri, ma non ho ancora messo piede in diverse localit�.~
== BHAERDA ~Mai stato a Sigil?~
== TB#STIVB ~No, e no0n so nemmeno come arrivarci. Tutta questa storia dei condotti, delle sfere interplanari, delle dimensioni parallele... E' un p� troppo complicato per me.~
== BHAERDA ~In realt� � pi� semplice di quanto pensi.~
= ~Sigil pu� essere raggiunta tramite tre diversi tipi di portali: permenenti, temporanei e mobili. Mi soffermer� soltanto sui primi due, in quanto la natura dei condotti mobili richiederebbe una trattazione troppo complicata per le tue orecchie.~
= ~I portali permanenti, per loro stessa definizione, sono destinati ad esistere sino a quando l'entropia non li richiamer� a s�. I portali temporanei, invece, posso apparire e scomprire all'improvviso, senza motivo, oppure essere attivati da un oggetto, una formula o un incantesimo in grado di aprire il condotto.~
= ~Per darti un'idea pi� precisa, quello aperto dalla mia Raelis nella prigione del Cambion era un portale temporaneo, scomparso nel momento stesso in cui il mio antico stormo � giunto a destinazione.~
== TB#STIVB ~WOW! Sembra proprio avvincente!~
== BHAERDA ~Tieni presente che i viaggi attraverso i condotti presentano molti pi� pericoli rispetto a quelli terra-terra a cui sei abituato. Una volta, ad esempio, ho visto un Raccoglitore entrare in un condotto instabile. Non l'avesse mai fatto: il suo busto � rimasto attaccato all'entrata del condotto, mentre le sue gambe sono arrivate pi� o meno integre all'uscita.~
= ~Tsk. Se non fosse stato cos� fesso da non ascoltarmi, oggi potrebbe ancora vantare una certa integrit� del corpo.~
== TB#STIVB ~Ehm... Penso che continuer� a viaggiare a piedi. E' molto pi� sicuro. Ma grazie, Haer'Dalis, per questo avvincente racconto.~
== BHAERDA ~Lieto di aver entusiasmato la mia platea. Come sempre, del resto.~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanHaerdalis","GLOBAL",2)~ THEN BHAERDA stivan-dalis-3
~Per l'ennesima volta, abbiamo bagnato le nostre lame nel sangue. Presto gli avvoltoi si ciberanno delle carcasse che ci siamo lasciati alle spalle e dei nostri nemici non rester� traccia alcuna...~
DO ~SetGlobal("tb#StivanHaerdalis","GLOBAL",3)~
== TB#STIVB ~La morte � spesso al centro dei tuoi pensieri, Haer'Dalis. Non trovi che la vita sia altrettanto degna di considerazione?~
== BHAERDA ~E perch� mai, mio gabbiano? La nostra esistenza non � altro che un lungo cammino costellato di affanni e di tormenti. Percorriamo questo sentiero al solo scopo di raggiungere la tanto ambita meta - l'oblio, la fine del nostro travaglio.~
== TB#STIVB ~Lungi da me criticare le tue cupe e fosche considerazioni, ma... Non ti sembra di aver delineato un quadro piuttosto pessimistico?~
== BHAERDA ~No, giovane uccello di mare. Mi sono unicamente limitato a descrivere la realt� per quel che �.~
== TB#STIVB ~Ossia?~
== BHAERDA ~Una nave che, stremata dalle incessanti tempeste, raggiunge un porto di fatale quiete.~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("HaerDalisRomanceActive","GLOBAL",2)
Global("tb#StivanHaerDalisAerie","GLOBAL",0)~ THEN BHAERDA stivan-dalis-rom
~Ti sarei grato, Stivan, se la smettessi di maltrattare la mia colombella. Non mi piace vederla sempre con tutte le piume arruffate.~
DO ~SetGlobal("tb#StivanHaerdalisAerie","GLOBAL",1)~
== TB#STIVB ~*Ahem* Haer'Dalis, potresti dirmi cosa ci trovi di cos� tanto attraente in lei? Io... Proprio non capisco.~
== BHAERDA ~Ci� che non � allettante per uno pu� essere fonte di grande interesse per un altro. Detto in parole povere, mio gabbiano, fatti gli affari tuoi.~
EXIT

CHAIN
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
TimeOfDay(Night)
AreaType(OUTDOOR)
CombatCounter(0)
Global("tb#StivanAerie","GLOBAL",1)~ THEN BAERIE AerieScared
~Uh? Mi � sembrato di sentire un rumore...~
DO ~SetGlobal("tb#StivanAerie","GLOBAL",2)~
= ~...~
= ~... Mi sar� sbagliata.~
= ~Eppure... Eppure ho l'impressione che qualcuno...~
== TB#STIVB ~Buh.~
== BAERIE ~Ahhhh!~
== TB#STIVB ~Heh. Fin troppo facile.~
== BAERIE ~B-basta, Stivan! Io... Io non ti sopporto pi�! Sono stufa delle tue frecciatine acide, sono stufa dei tuoi scherzi, sono stufa di te! <CHARNAME>... <CHARNAME>, ti prego, digli qualcosa!~
END
IF ~~ THEN REPLY ~Shhh... Vieni qui, Aerie. Non dargli retta.~ EXTERN BAERIE AerieScared1
IF ~~ THEN REPLY ~Mi aspetto che tu sia pi� coraggiosa. Non puoi spaventarti per cos� poco.~ EXTERN BAERIE AerieScared1
IF ~~ THEN REPLY ~Il tuo comportamento � a dir poco infantile, Stivan.~ EXTERN TB#STIVB AerieScared2
IF ~~ THEN REPLY ~Halfling, osa importunare ancora una volta Aerie e ti gonfio la faccia!~ EXTERN TB#STIVB AerieScared2
IF ~~ THEN REPLY ~Presto avr� una crisi di nervi. Non vi sopporto pi�...~ EXTERN TB#STIVB AerieScared2

CHAIN IF ~~ THEN BAERIE AerieScared1
~Io... Non vorrei sembrarti sciocca, ma lui continua ad insultarmi, a rendermi nervosa... Non... Non so se riuscir� a mantenere la calma ancora per molto. Io... Ho bisogno di un p� di riposo adesso...~
BRANCH ~InParty("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID)~ BEGIN
== BMAZZY IF ~~ THEN ~Mi chiedo fino a quando resister� alla tentazione di riempirti di schiaffi!~
== TB#STIVB ~Heh. La pazienza � la virt� dei forti, Mazzy.~
== BMAZZY ~Sappi che io la sto esaurendo!~
END
BRANCH ~InParty("Korgan") StateCheck("Korgan",CD_STATE_NOTVALID)~ BEGIN
== BKORGAN ~Ben fatto, ragazzino! Io stesso non avrei saputo fare di meglio!~
BRANCH ~InParty("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID)~ BEGIN
== BMAZZY ~E' proprio vero che uno sciocco trova sempre uno pi� sciocco che lo ammira.~
== BKORGAN ~Andiamo, Mazzy... Non ha fatto nulla di male!~
== BMAZZY ~(Sospira) Il buon senso, dunque, non avr� mai degli eroi.~
END
END
EXIT

CHAIN IF ~~ THEN TB#STIVB AerieScared2
~(Ghigna) Scusami, <CHARNAME>. Resisto a tutto, ma non alle tentazioni.~
BRANCH ~InParty("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID)~ BEGIN
== BMAZZY IF ~~ THEN ~Mi chiedo fino a quando resister� alla tentazione di riempirti di schiaffi!~
== TB#STIVB ~Heh. La pazienza � la virt� dei forti, Mazzy.~
== BMAZZY ~Sappi che io la sto esaurendo!~
END
BRANCH ~InParty("Korgan") StateCheck("Korgan",CD_STATE_NOTVALID)~ BEGIN
== BKORGAN ~Ben fatto, ragazzino! Io stesso non avrei saputo fare di meglio!~
BRANCH ~InParty("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID)~ BEGIN
== BMAZZY ~E' proprio vero che uno sciocco trova sempre uno pi� sciocco che lo ammira.~
== BKORGAN ~Andiamo, Mazzy... Non ha fatto nulla di male!~
== BMAZZY ~(Sospira) Il buon senso, dunque, non avr� mai degli eroi.~
END
END
EXIT

CHAIN
IF ~InParty("jan")
See("jan")
!StateCheck("jan",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanJan","GLOBAL",0)~ THEN TB#STIVB StivanJan1
~Sai, Jan, penso che con la tua parlantina potresti essere un ottimo bardo.~
DO ~SetGlobal("tb#StivanJan","GLOBAL",1)~
== BJAN ~Beh, forse questo � il momento di rivelare un segreto che non ho mai detto a nessuno. Devi sapere, Stivvy, che prima di dedicarmi alla vendita di vegetali, attivit� pi� remunerativa di quanto si possa immaginare, ho dovuto cercare qualche espediente che mi consentisse di vivere almeno alla giornata. Il mio apprendistato presso Golodon l'Evirato era ormai terminato, quindi--~
== TB#STIVB ~Golodon L'Evirato?~
== BJAN ~S�. Non chiedermi il perch� di quel soprannome. Ad oggi nessuno lo sa.~
== TB#STIVB ~Heh. V� avanti, ti ascolto.~
== BJAN ~Ora che mi ci fai pensare, credo che gli sia stato attribuito dalla sua ex moglie. Una tipa simpatica, sebbene sia stata lei a rendere pestilenziale l'alito del mio maestro, alito che ispir� il famoso incantesimo noto come "Orribile Avvizzimento di Golodon L'Evirato". Un giorno te lo mostrer�, se proprio ci tieni, anche se � difficile sfuggire a quegli effluvi quando sei alto un metro e una rapa.~
== TB#STIVB ~"Un metro e una rapa"? Che unit� di misura � mai questa?~
== BJAN ~Per la barba di zio Scratchy! Non sapevi che gli gnomi misurano la loro statura con il rapometro?~
== TB#STIVB ~*Ahem* Dovrei?~
== BJAN ~Ragazzo mio, hai decisamente bisogno di un'infarinatura a base di rape sui costumi degli gnomi! Prima per� devo finire di raccontarti la mia storia. Dunque, stavo dicendo..~
= ~Uh...~
= ~Ehm...~
= ~L'ho dimenticato...~
== TB#STIVB ~Me lo dirai non appena ti verr� in mente.~
== BJAN ~Vorr� dire che nel frattempo ti descriver� il modo in cui misuriamo le unghie dei piedi. Vedi, devi sapere che noi gnomi...~
== TB#STIVB ~(Sigh)~
EXIT
 
CHAIN
IF ~InParty("Jan")
See("Jan")
!StateCheck("Jan",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanJan","GLOBAL",1)~ THEN TB#STIVB StivanJan2
~Jan, ti sei ricordato il segreto che volevi rivelarmi?~
DO ~SetGlobal("tb#StivanJan","GLOBAL",2)~
== BJAN ~Ebbene s�. Questo � un vero sollievo, Stivvy, perch� da poco tempo a questa parte tendo a scordarmi le cose. A proposito di smemoratezza, ti ho mai detto che zio Scratchy dimenticava persino il suo nome?~
== TB#STIVB ~No, non me ne hai mai parlato, ma non � questo ci� di cui volevi discutere...~
== BJAN ~Visto che ci siamo, perch� accantonare il discorso? Stavo dicendo, povero zietto. Era un vero malandrino. Rubava rape e gioielli qua e l�, ma poi non si ricordava pi� dove avesse nascosto la sua refurtiva, ortaggi o monili che fossero. In famiglia si vocifera che abbia accumulato una quantit� cos� grande di ricchezze e vegetali da far gola a qualsiasi avventuriero. La mia cara zia Petunia sta progettando da diverso tempo di mettersi alla ricerca di questo tesoro con l'aiuto del suo draghetto d'ombra. E' una simpatica bestiola, sai?~
== TB#STIVB ~... Ti riferisci al drago, vero?~
== BJAN ~No, a mia zia.~
== TB#STIVB ~Ah.~
= ~Se mai dovessi incontrarla, eviter� di metterle i bastoni tra le ruote.~
== BJAN ~Ora, vediamo al dunque. Il segreto che volevo rivelarti la volta scorsa riguardava...~
= ~Riguardava...~
= ~...~
= ~Stivvy... Pi� mi arrovello su questa cosa, pi� non me ne ricordo.~
== TB#STIVB ~*Ahem* Mia mamma diceva sempre che a volte � meglio tacere e sembrare stupidi piuttosto che aprire bocca e togliere ogni dubbio.~
== BJAN ~Tua mamma doveva essere una donna molto saggia. E' un peccato che la sua attuale condizione non le permetta pi� di parlare, altrimenti sono sicuro che avrebbe trovato un rimedio per la mia smemoratezza. In alternativa, potrei bere un p� di succo di rapa. Lascia che te ne elenchi le propriet� benefiche.~
== TB#STIVB ~...~
EXIT
 
CHAIN
IF ~InParty("tb#stiv")
See("tb#stiv")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanJan","GLOBAL",2)~ THEN BJAN StivanJan3
~Un bardo! Sono stato un bardo prima di dedicarmi alla vendita al dettaglio di rape! E' questo il segreto che volevo rivelarti, Stivvy!~
DO ~SetGlobal("tb#StivanJan","GLOBAL",3)~
== TB#STIVB ~Heh. Finalmente te ne sei ricordato.~
== BJAN ~E' stata un'esperienza senza paragoni, s�. La mia platea era cos� entusiasta dei miei racconti che al termine di ogni esibizione non esitava a regalarmi ortaggi di ogni tipo. Raccogli una fava oggi, raccogli una zucchina domani, alla fine mi ritrovai con cos� tanti vegetali che mi dissi: "Perch� non provare a venderli?". E fu cos� che ebbe inizio la mia carriera di venditore ambulante di ortaggi, anche se devo confessarti che tra tutti la mia preferenza � per uno in particolare. Ti ho mai detto quale?~
== TB#STIVB ~E' la rapa, no?~
== BJAN ~Come hai fatto a capirlo?~
== TB#STIVB ~Heh. Ho tirato ad indovinare.~
= ~Toglimi una curisit�, Jan. Come hai imparato a intrattenere il tuo pubblico?~
== BJAN ~Tutto merito di un'apposita guida che porto sempre con me. Se aspetti un attimo la recupero subito. Dunque, dovrebbe essere qui, tra "I peccati del Golem di Carne" di Ma Jansen e "Come fare in modo che la tua birra fermentata ti faccia ruttare tanto" di Zia Kadie. Ecco... No, questo � il saggio di Zio Cletus su come farsi eliminare tre volte per poi morire definitivamente la quarta.~
== TB#STIVB ~Non avrei mai immaginato che nella tua famiglia ci fossero cos� tanti scrittori.~
== BJAN ~E invece s�, Stivvy. La coltivazione di rape e la scrittura sono due talenti innati in ogni Jansen. Eppure, vi � un ambito nel quale il qui presente Jan primeggia. E' un segreto che non ho mai rivelato a nessuno, nemmeno a Ma e Pa.~
== TB#STIVB ~Sarebbe?~
== BJAN ~Ti ho mai detto che sono stato il primo menestrello di casa Jansen?~
== TB#STIVB ~E' quello che hai appena finito di dirmi!~
== BJAN ~Questo non � carino da parte tua, Stivvy. Non ci si prende gioco di un povero gnomo! Non quando condivide storie che non ha mai raccontato a nessuno!~
== TB#STIVB ~...~
EXIT

CHAIN
IF ~InParty("Jan")
See("Jan")
!StateCheck("Jan",CD_STATE_NOTVALID)
CombatCounter(0)
GlobalGT("tb#StivanAnomen","GLOBAL",5)
Global("tb#StivanFeelsStrange","GLOBAL",0)~ THEN TB#STIVB stivanjanstrange
~Jan...~
DO ~SetGlobal("tb#StivanFeelsStrange","GLOBAL",1)~
== BJAN ~S�, mio buon amico?~
== TB#STIVB ~Jan, mi sento un p�... strano.~
== BJAN ~Eh, ti capisco! Anch'io tempo fa, dopo aver mangiato una zuppa di rape avariata, non mi sentivo in me. Accadde nel lontano 1348, quando zia Petunia si convinse che il nome Petunia non era poi cos� male. Fu un anno terribile, quello. Le rape appassivano nel momento stesso in cui venivano dissotterrate, senza un perch�. Poi scoprimmo che la causa erano le flatulenze emesse da cugino Jowen. L'intero clan decise quindi di sigillargli, mentre dormiva, l'orifizio da cui provenivano quelle terribili esalazioni. Povero cugino! Il giorno seguente, quando cerc� di rilasciare l'aria pestilenziale del suo stomaco, mor� soffocato dal suo stesso tanfo. Una storia triste, questa.~
== TB#STIVB ~*Ahem* Il mio problema non ha niente a che fare con vegetali e flatulenze. Io... Sto provando qualcosa che non ho mai provato prima. E' una sensazione strana... Mi stordisce, mi rende... confuso...~
== BJAN ~Te l'avevo detto ieri sera di non esagerare con la salsa di rape.~
== TB#STIVB ~Ma quale salsa di rape! Io... Non capisco proprio cosa mi stia succedendo. Sento un odore, a volte, ma non so cosa sia... So soltanto che mi piace inebriarmene, che � il solo profumo che vorrei sentire sulla mia pelle...~
== BJAN ~In effetti, l'eau de toilette di Ma Jansen non conosce paragoni.~
== TB#STIVB ~E questo nodo alla gola... Che sia...~
== BJAN ~... Una rapa andata di traverso?~
== TB#STIVB ~...~
EXIT

CHAIN 
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
OR(2)
  AreaCheck("ar0300")
  AreaCheck("ar0500")
CombatCounter(0)
Global("tb#StivanJaheira","GLOBAL",0)~ THEN TB#STIVB stivanjaheira1
~Yeah! Colpito! E con questo siamo a quota centodieci e mezzo!~
DO ~SetGlobal("tb#StivanJaheira","GLOBAL",1)~
== BJAHEIR ~Sto iniziando a stancarmi di vederti uccidere tutti gli uccelli che vedi, Stivan. Non hai ancora capito che cos� facendo non riporterai in vita i tuoi genitori?~
== TB#STIVB ~Io me la prendo solo con i gabbiani!~
== BJAHEIR ~Questi sono dettagli, e tu lo sai bene. Un ramo di pazzia abbellisce l'albero della saggezza, ma il tuo comportamento � ai limiti della ragionevolezza.~
== TB#STIVB ~Heh. Non a caso, si dice che la linea di confine tra genio e follia sia sottile.~
== BJAHEIR ~Gi�. Molto sottile.~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanJaheiraBalance","GLOBAL",0)
Global("lyrosjob","global",3)~ THEN BJAHEIR stivanjaheirabalance
~Stivan, ti sei mai chiesto se le tue azioni hanno contribuito a mantenere l'Equilibrio?~
DO ~SetGlobal("tb#StivanJaheiraBalance","GLOBAL",1)~
== TB#STIVB ~L'Equilibrio? Io non penso che esista una via di mezzo, Jaheira. Se il compito di un sovrano � quello di governare, adempir� al suo dovere con il pugno di ferro o nel pi� generoso dei modi. Anche mia mamma diceva sempre che non ci sono altre alternative.~
== BJAHEIR ~Oltre alla tirannia e alla prodigalit� esiste anche la saggezza, l'agire nel nome del bene collettivo.~
== TB#STIVB ~Ma con quali criteri giudichi giusta o sbagliata una decisione? Ci� che � un bene per me pu� essere un male per te.~
== BJAHEIR ~Esistono delle basi etiche universalmente riconosciute, Stivan. La vita, ad esempio, � il pi� prezioso dei beni e deve essere preservato a tutti i costi.~
== TB#STIVB ~Un'affermazione piuttosto ipocrita. Sbaglio o i tuoi compagni Arpisti non hanno esitato ad assassinare quello Zhentarim?~
== BJAHEIR ~E' proprio a questo punto che subentra la saggezza. Dal momento che Xzar minacciava la vita di pi� persone, � stato necessario ucciderlo.~
== TB#STIVB ~Jaheira, alle nostre spalle ci siamo lasciati una scia di cadaveri. Devo pensare che presto saremo fatti sparire dalla circolazione anche noi?~
== BJAHEIR ~Abbiamo tolto la vita soltanto per difesa. Il conflitto, purtroppo, � inevitabile.~
== TB#STIVB ~... Temo che non riuscir� mai a capire fino in fondo ci� che vuoi dirmi.~
== BJAHEIR ~E' normale che sia cos�. Io stessa penso di dover imparare ancora molto sull'Equilibrio.~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanYoshimo","GLOBAL",0)~ THEN BYOSHIM Athkatla
~Se ho capito bene, Stivan, Athkatla � la tua citt� natale.~
DO ~SetGlobal("tb#StivanYoshimo","GLOBAL",1)~ 
== TB#STIVB ~Esattamente. Vivo nella capitale dell'Amn da quasi trent'anni ormai e nessuno conosce le sue strade meglio di me.~
== BYOSHIM ~E cosa ne pensi della Citt� della Moneta? Noti qualche differenza rispetto al passato?~
== TB#STIVB ~Uhm... Devo essere sincero?~
== BYOSHIM ~La sincerit� � un concetto piuttosto complesso, amico. Limitati a dire quello che pensi.~
== TB#STIVB ~Come vuoi. Athkatla non � mai cambiata di una virgola: criminosa, degradata e sempre nelle mani di quei folli degli Incappucciati.~ 
== BYOSHIM ~In altre parole, un luogo ameno.~
== TB#STIVB ~Gi�. Posso sapere, Yoshimo, perch� tra tante citt� hai scelto di venire proprio qui?~
== BYOSHIM ~Diciamo che... avevo i miei motivi.~
== TB#STIVB ~Un'altra risposta da annotare nel lungo elenco delle frasi ambigue che escono dalla tua bocca. Lo fai apposta?~
== BYOSHIM ~Oh, no. Mi vengono... naturali.~
EXIT

CHAIN 
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanYoshimo","GLOBAL",1)~ THEN TB#STIVB yoshimo1
~La tua abilit� con la katana � davvero sorprendente, Yoshi. Sbaglio o � un'arma che a Kara-Tur viene preferita a molte altre?~
DO ~SetGlobal("tb#StivanYoshimo","GLOBAL",2)~
== BYOSHIM ~Non proprio, mio piccolo amico. Innanzitutto, quella spada a lama curva e taglio singolo che tu chiami katana in realt� porta il nome di uchigatana. Viene brandita unicamente dai samurai o dai membri della classe guerriera, mentre a tutti gli altri � vietato l'utilizzo.~
= ~Nel corso di un combattimento ci si pu� servire di diversi modi di questa lama. Io, ad esempio, preferisco impugnarla con una sola mano; altri, invece, sono soliti combinarla col wakizashi, formando cos� una combinazione di spade che prende il nome di daisho; altri ancora, infine, la tengono con due mani.~
== TB#STIVB ~Wow!~
== BYOSHIM ~Questi particolari stupiscono sempre. Devo ancora scoprire il perch�.~
== TB#STIVB ~Mi insegneresti ad utilizzare la katana come un vero samurai, Yoshi?~
== BYOSHIM ~Se i tempi non fossero cos� lunghi ne sarei lieto.~
== TB#STIVB ~Ti prego! Sono disposto ad allenarmi duramente per tutti i mesi che sar� necessario!~
== BYOSHIM ~Mesi? Imparare a servirsi della katana come un guerriero di Kara-Tur richiede anni, Stivan.~
== TB#STIVB ~Ma... Ma io non ho tutto questo tempo!~
== BYOSHIM ~(Sorride) Allora imparerai che ci sono tante altre cose che vale la pena apprendere. Se in questo mondo non ci fosse nient'altro d'interessante, sarebbe un posto piuttosto noioso.~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanYoshimo","GLOBAL",2)~ THEN BYOSHIM yoshimo2
~Vedo che continui a fissare la mia lama, Stivan. Hai forse notato qualche macchia sfuggita alla mia attenzione?~
DO ~SetGlobal("tb#StivanYoshimo","GLOBAL",3)~
== TB#STIVB ~No, anzi. La tua katana brilla come se fosse stata appena forgiata. E' magica, vero?~
== BYOSHIM ~Gi�.~
== TB#STIVB ~Come te la sei procurata?~
== BYOSHIM ~La storia di questa lama � tutto fuorch� intrigante. Se te la raccontassi, non sentiresti alcuna vicenda tragica o gloriosa su di essa.~
== TB#STIVB ~Heh. Sai bene che la voglio ascoltare lo stesso.~
== BYOSHIM ~Come vuoi. La katana che vedi mi venne regalata diversi anni fa da un mio amico Wu Jen a Kara-Tur.~
== TB#STIVB ~Ehm... Cosa significa Wu Jen?~
== BYOSHIM ~E' il modo con cui vengono chiamati i maghi nella mia terra. Il Wu Jen in questione mi doveva un favore e, in mancanza di alternative, decise di sdebitarsi forgiando questa lama.~
== TB#STIVB ~Una scelta azzeccata, direi.~
== BYOSHIM ~Pi� di quanto pensi.~
== TB#STIVB ~E l'arma di cui ti servivi prima di ricevere questa? Che fine ha fatto?~
== BYOSHIM ~Era una lama comune. Per un p� ho continuato ad usarla durante gli allenamenti, ma col tempo si � rovinata.~
= ~...~
== TB#STIVB ~Tutto bene, Yoshi?~
== BYOSHIM ~Pare che tu abbia il potere di rievocare memorie sopite, mio piccolo amico... O forse sarebbe il caso di dire che la tua sfacciata curiosit� riapre vecchie ferite. In ogni caso, abbiamo indugiato abbastanza per oggi. E' ora di proseguire.~
EXIT

CHAIN 
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanYoshimo","GLOBAL",3)~ THEN TB#STIVB Yoshitaciturno
~Ultimamente sei diventato taciturno, Yoshi. Perch� non mi parli un p� di te e di Kara-Tur?~
DO ~SetGlobal("tb#StivanYoshimo","GLOBAL",4)~
== BYOSHIM ~Il silenzio � essenziale per chi svolge un mestiere come il mio. In ogni caso, ho ben poco da dire su di me. Il paese in cui vivevo non era alla mia altezza e quindi ho deciso di venire qui ad Athkatla.~
= ~Il resto, come si dice, � storia.~
== TB#STIVB ~Mi hai riassunto la tua vita in quattro parole! Suvvia, dimmi qualcosa di pi�: perch� non ti trovavi a tuo agio a Kara-Tur?~
== BYOSHIM ~Poni troppe domande, Stivan. E' proprio vero che la curiosit� � donna.~
== TB#STIVB ~Heh. Sarai laconico nelle tue risposte, Yoshimo, ma il senso dell'umorismo non ti manca. E sia. Se preferisci stare sulle tue, non ti costringer� a parlare, ma... Ricordati che aprirsi agli altri pu� essere liberatorio.~
== BYOSHIM ~Non sempre, amico mio. Non sempre.~
EXIT

CHAIN 
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanKorgan","GLOBAL",0)~ THEN TB#STIVB stivankorgan1
~Sai, Korgan, oggi � l'anniversario della morte dei miei familiari. Sono trascorsi ben otto anni dal giorno della loro scomparsa.~
DO ~SetGlobal("tb#StivanKorgan","GLOBAL",1)~
== BKORGAN ~Ringrazia il cielo di non aver avuto come fautori dei tuoi giorni dei gambelunghe. In tal caso, ti assicuro che non avrei esitato a lanciarti un'ascia in faccia.~
== TB#STIVB ~Devo ritenermi fortunato, allora. I tuoi genitori sono ancora vivi?~
== BKORGAN ~Bah! Per quanto mi riguarda, possono anche marcire all'inferno!~
== TB#STIVB ~E i tuoi fratelli?~
== BKORGAN ~Tsk. Un mucchio di bastardi.~
== TB#STIVB ~Uhm... Ecco un raro esempio di devozione filiale. Come mai nutri una cos� profonda avversione per la tua famiglia?~
== BKORGAN ~Non ficcare il naso in affari che non ti riguardano, halfling. Ti basti sapere che se dovessi incontrare uno solo di loro, non torner� a casa vivo. E se dovesse riuscirci, avr� qualche arto in meno.~
EXIT

CHAIN 
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanKorgan","GLOBAL",1)~ THEN TB#STIVB stivankorgan2
~Korgan, hai mai perso la testa per una donna?~
DO ~SetGlobal("tb#StivanKorgan","GLOBAL",2)~
== BKORGAN ~Sono le donne a perdere la testa per me! Sotto i colpi della mia ascia, ovviamente! Har har!~
== TB#STIVB ~Ehm... Forse � meglio che riformuli la mia domanda. Ti sei mai innamorato di qualcuno?~
== BKORGAN ~Ti sembro il genere di persona che striscia ai piedi di una femmina?~
== TB#STIVB ~Direi proprio di no, ma mi hanno insegnato che, quando una donna solletica il tuo interesse, bisogna saperla conquistare.~
== BKORGAN ~Lascia che ti parli delle mie conquiste, allora. Tempo fa, quando stavo con quel gruppo di mercenari che abbiamo affettato, mi intrigava una puttanella che batteva i moli. Aveva due meloni cos� grossi, amico, che con un abbraccio avrebbe potuto soffocarti!~
== TB#STIVB ~Ehm... S�. Qual era il suo nome?~
== BKORGAN ~Cosa vuoi che ne sappia? Non mi preoccupo mai di dettagli cos� insignificanti.~
== TB#STIVB ~... Ma certo.~
== BKORGAN ~Quella sgualdrina era ambita da dozzine di persone e per trascorrere una notte con lei gli uomini non esitavano a sfidarsi. Non avevo voglia di combattere: in quel periodo, infatti, i miei compagni ed io eravamo al soldo di un nobile che dovevamo proteggere ad ogni suo spostamento ed io volevo divertirmi senza troppa fatica.~
= ~Una notte proposi quindi agli uomini che se la contendevano di risolvere la questione non con il ferro, ma con un altro genere di sfida. Quella donna sarebbe andata a letto con chi, tra di noi, avrebbe pisciato pi� lontano.~
== TB#STIVB ~Una prova eroica. Lasciami indovinare: sei stato tu a vincere?~
== BKORGAN ~Sicuro! Avevo proposto questa sfida proprio perch� sapevo che la vittoria sarebbe stata mia. Non c'� nano che--~
== TB#STIVB ~Che ti eguagli, s�. Ho afferrato il concetto, Korgan: non hai mai perso la testa per una donna. In effetti, ancora non capisco perch� ti abbia fatto una simile domanda...~
EXIT

CHAIN 
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanValygar","GLOBAL",0)~ THEN TB#STIVB stivanvalygar1
~Valygar, per quale motivo hai deciso di diventare un ranger? La tua famiglia � di nobile origine; avresti potuto servirti del tuo buon nome e delle tue ricchezze per condurre una vita agiata.~
DO ~SetGlobal("tb#StivanValygar","GLOBAL",1)~
== BVALYGA ~Avrei potuto, ma non l'ho fatto per diversi motivi. In primo luogo, i Corthala non godono di grande considerazione: quale nobile si avvicinerebbe ad una famiglia maledetta da generazioni?~
= ~Secondariamente, sono un uomo sobrio. Il lusso e gli sfarzi non mi hanno mai attirato.~
== TB#STIVB ~Devi avere qualche rotella fuori posto per non essere attratto dal mondo aristocratico.~ 
== BVALYGA ~Se lo conoscessi quanto basta, Stivan, non diresti una cosa simile.~
EXIT

CHAIN 
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanValygar", "GLOBAL",1)~ THEN TB#STIVB stivanvalygar2
~Valygar, mi hai spiegato perch� non eri attratto dalla vita mondana, ma... Cosa ti ha spinto a diventare un ranger?~
DO ~SetGlobal("tb#StivanValygar", "GLOBAL",2)~
== BVALYGA ~Sarebbe pi� corretto chiamarmi esploratore anzich� ranger: quest'ultimo, infatti, � un titolo che viene conferito soltanto a coloro che si sono distinti nella difesa della natura.~
BRANCH ~GlobalLT("tb#StivanMinsc","GLOBAL",3) IsValidForPartyDialog("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ BEGIN
== TB#STIVB ~Beh, se Minsc l'ha ottenuto, immagino che questo titolo non sia difficile da conseguire.~
== BMINSC ~Minsc ha un udito pi� fine di quello di Boo e ti ha sentito! Sono diventato ranger perch� nessuno ha dato al male tanti calci nel sedere come me!~
== TB#STIVB ~Ti ringrazio, Minsc: hai appena confermato le mie supposizioni. Stavi dicendo, Valygar?~
END
== BVALYGA ~Ho prestato servizio tra le guardie dell'Amn per diversi anni. Sono stato impiegato come esploratore nelle foreste e nei luoghi selvaggi per le mie capacit� di mimetizzazione, ed � nel corso di una delle mie missioni che ho avvertito il richiamo della natura.~
== TB#STIVB ~Capisco. In altre parole, proteggi i cespugli e i ciuffi d'erba per dare un senso alla tua vita.~
== BVALYGA ~Non penso proprio di aver detto questo, Stivan.~
== TB#STIVB ~Oh, ma non preoccuparti. Io non critico niente e nessuno. Penso soltanto che questa storia del servire Madre Natura sia una grande scemenza.~
== BVALYGA ~Definire "scemenza" qualcosa che non conosci non ti f� onore, soprattutto visto che sei stato te a chiedermi di raccontarti come sono diventato un ranger.~
== TB#STIVB ~Il problema � che--~
== BVALYGA ~Io non vedo nessun problema, Stivan, ad eccezione dei tuoi stereotipi e pregiudizi.~
== TB#STIVB ~Io non--~
== BVALYGA ~Basta cos�. Gli stolti non capiscono mai quando � il momento di tacere, quindi � meglio che sia io ad interrompere questa conversazione. Tu ed io non abbiamo pi� nulla da dirci, almeno finch� non avrai imparato a pensare prima di parlare.~
EXIT

CHAIN 
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
Dead("Lavok02")
CombatCounter(0)
Global("tb#StivanValygar","GLOBAL",2)~ THEN TB#STIVB stivanvalygar2
~Valygar, � da diverso tempo che medito su una cosetta.~
DO ~SetGlobal("tb#StivanValygar","GLOBAL",3)~
== BVALYGA ~Sei sicuro di averci riflettuto abbastanza?~
== TB#STIVB ~Certo. Non permetto mai alla mia lingua di oltrepassare il pensiero, cosa credi? ~
== BVALYGA ~Ho qualche dubbio a riguardo, ma� Ti ascolto.~
== TB#STIVB ~*Ahem* Hai presente la sfera del tuo antenato?~
== BVALYGA ~Difficilmente potrei dimenticarmene.~
== TB#STIVB ~Ecco, vedi... Il punto � che... Insomma, non pensi sia un peccato lasciarla inutilizzata? L�, in mezzo ai rifiuti dei Bassifondi, tutta sola soletta...~
== BVALYGA ~Utilizzarla a che scopo, scusa?~
== TB#STIVB ~Beh, questi sono dettagli.~
== BVALYGA ~Dettagli, eh? Spiacente, ma non voglio avere pi� nulla a che fare con quella sfera. Nella mia mente � ancora vivido il ricordo della distruzione e della sofferenza che ha causato, e nelle mani di persone incaute potrebbe ritornare ad essere pericolosa.~
== TB#STIVB ~Ma potresti fare un sacco di cose con quell'aggeggio!~
== BVALYGA ~Ad esempio?~
== TB#STIVB ~Beh, potremmo servircene per eliminare tutti i gabbiani nel Faerun. S�, mi pare un'ottima idea!~
== BVALYGA ~... Per oggi ne hai dette fin troppe, Stivan. Il mio no � definitivo.~
EXIT

CHAIN 
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
Global("tb#StivanAerieToldWIngs","GLOBAL",1)
CombatCounter(0)
Global("tb#StivanDislikesAerie","GLOBAL",0)~ THEN TB#STIVB stivanaeriewings
~Quindi, elfa, hai perso le tue ali nel patetico tentativo di salvare un bambino. Piuttosto stupido da parte tua, ma non mi sorprende.~
DO ~SetGlobal("tb#StivanDislikesAerie","GLOBAL",1)~
== BAERIE ~Come... Come fai a saperlo? Hai origliato di nuovo la mia conversazione con <CHARNAME>?~
== TB#STIVB ~Non ho origliato proprio nulla, io. Sono i tuoi lamenti a giungere alle mie orecchie. Povero ragazzo... Mi chiedo come riesca a sopportarti.~
== BAERIE ~<CHARNAME> non avrebbe motivo di essere infastidito dai miei sfoghi e dai miei racconti! Tu... Tu non lo sei, vero?~
END
IF ~~ THEN REPLY ~Assolutamente no. (Rivolgendoti a Stivan) Vuoi chiudere la bocca o preferisci che sia io a sigillartela?~ EXTERN TB#STIVB StivanDislikesAerie1-1
IF ~~ THEN REPLY ~Sai bene che ti ascolto pi� che volentieri. Non prestare attenzione a quello che dice.~ EXTERN TB#STIVB StivanDislikesAerie1-1
IF ~~ THEN REPLY ~E' sempre un piacere sentire ci� che hai da dire, ma vorrei che tu riuscissi ad essere un p� pi� forte.~ EXTERN BAERIE StivanDislikesAerie1-2
IF ~~ THEN REPLY ~Beh, Stivan non ha tutti i torti. A volte sei piuttosto noiosa e ripetitiva.~ EXTERN BAERIE StivanDislikesAerie1-3

APPEND BAERIE
IF ~~ THEN StivanDislikesAerie1-2
SAY ~Io... Cerco solo di essere me stessa... Con i miei pregi e i miei difetti. Ma cercher� di... di essere pi� coraggiosa e autonoma, se � questo che vuoi.~
IF ~~ THEN EXIT
END

IF ~~ THEN StivanDislikesAerie1-3
SAY ~Ah s�? V-va bene, <CHARNAME>: s-s-se sono cos� noiosa e rip-petitiva, non ti seccher� pi�! Io... Non credevo di essere un peso per te!~
IF ~~ THEN DO ~SetGlobal("AerieRomance","global",3)~ EXIT
END
END

APPEND TB#STIVB

IF ~~ THEN StivanDislikesAerie1-1
SAY ~Heh. A volte c�� bisogno che siano le labbra altrui a confessare verit� che non ammetti a te stesso. Dovresti ringraziarmi!~
IF ~~ THEN REPLY ~Stivan, ho capito che a te non piace Aerie, ma questo non significa che tu debba metterti in mezzo a noi.~ EXTERN TB#STIVB StivanDislikesAerie1-4
IF ~~ THEN REPLY ~Non ho certo bisogno che *tu* mi dica cosa provo per lei! Chi credi di essere?~ EXTERN TB#STIVB StivanDislikesAerie1-4
IF ~~ THEN REPLY ~Sono stanco del modo in cui la tratti, halfling. Osa ancora una volta infastidirla e ti sbatto fuori dal gruppo.~ EXTERN TB#STIVB StivanDislikesAerie1-4
END

IF ~~ THEN StivanDislikesAerie1-4
SAY ~Povero <CHARNAME>... Sei la dimostrazione vivente del fatto che l�uomo � imperfetto. Eppure bisogna capire e scusare, considerando l�epoca in cui � stato creato.~
= ~(Stivan ti fa una pernacchia).~
IF ~~ THEN REPLY ~Tu vuoi proprio morire, halfling.~ EXTERN TB#STIVB StivanDislikesAerie1-5
IF ~~ THEN REPLY ~Ti lascio in vita soltanto perch� apprezzo le tue frasi proverbiali.~ EXTERN TB#STIVB StivanDislikesAerie1-5
IF ~~ THEN REPLY ~(Sigh) E� peggio di un poppante.~ EXTERN TB#STIVB StivanDislikesAerie1-5
END

IF ~~ THEN StivanDislikesAerie1-5
SAY ~Heh. E� uno spasso viaggiare con te, ragazzo.~
IF ~~ THEN EXIT
END
END

CHAIN 
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanImoen","GLOBAL",0)~ THEN TB#STIVB stivanimoen1
~E cos� tu saresti la sorella di <CHARNAME>, nonch� figlia di Bhaal. Sai che anche Stivan appartiene ad una progenie divina?~
DO ~SetGlobal("tb#StivanImoen","GLOBAL",1)~
== BIMOEN2 ~Sospettavo che il Signore dell�Omicidio non fosse il solo ad aver sparso il suo seme qua e l�. A quanto pare va di moda tra gli dei fecondare ogni donna che capita a tiro.~
== TB#STIVB ~Heh. La mia mammina � stata fortunata ad incontrare il grande Brandobaris.~
== BIMOEN2 ~Brandobaris? Il dio della furtivit� e dei ladri halfling?~
== TB#STIVB ~Esatto. E� stato lui ad affidare a Stivan il gravoso compito di sterminare i gabbiani di tutta Faerun. Inoltre il mio retaggio fa di me il miglior ladro di questo gruppo, pertanto... fatti da parte!~
== BIMOEN2 ~Aspetta, ma... Non hai iniziato a dar loro la caccia soltanto dopo la morte dei tuoi familiari?~
== TB#STIVB ~Accidenti. La ragazzina � pi� sveglia di quanto pensassi... ~
= ~*Ahem* Ad ogni modo, sono io il pi� abile ladro di questa compagnia di scapestrati!~
== BIMOEN2 ~Non penso proprio. Forse non sai che, prima di dedicarmi alle arti arcane, ero nota lungo tutta la Costa della Spada come "Imoen La Svelta".~
== TB#STIVB ~Se la metti cos� allora sar� il ferro a stabilire chi di noi due � il migliore! Preparati ad ass...~
= ~Ehi, ma...~
= ~Dov�� la mia arma?~
== BIMOEN2 ~Questa qui? Oh, scusami, Stivan... L�ho presa senza neanche dirtelo. O forse dovrei dire che te l�ho soffiata da sotto il naso?~
== TB#STIVB ~ (Snort!) E va bene, ragazzina. Se vuoi la guerra, che guerra sia!~
== BIMOEN2 ~Come vuoi. Ho gi� un punto in tasca!~
EXIT
 
CHAIN 
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanImoen","GLOBAL",1)~ THEN TB#STIVB stivanimoen2
~Ed ecco l�intrepido Stivan scivolare silenziosamente verso la sua acerrima nemica. Con passo felpato si avvicina all�ignara vittima, fa scorrere senza il minimo rumore la sua micidiale arma tra le dita e...~
DO ~SetGlobal("tb#StivanImoen","GLOBAL",2)~
== BIMOEN2 ~Imoen la Svelta non ha bisogno di voltarsi per schivare la fatale piuma di gabbiano scagliatale addosso dal suo rivale e, con un agile piroetta, estrae la sua lama e scatta in direzione dell�avversario!~ 
== TB#STIVB ~Nell�aria rieccheggia lo sfrigolio dell�acciaio, con fendenti che cercano ferite da aprire!~
== BIMOEN2 ~Imoen la Svelta disarma l�avversario con uno sgambetto...~
== TB#STIVB ~Non val -- *Ouch*!~
== BIMOEN2 ~... E punta la sua lama alla gola del nemico!~
== TB#STIVB ~Prendi questo!~
== BIMOEN2 ~Arghh! Ma cosa...?~
== TB#STIVB ~Heh. La cacca di gabbiano negli occhi � micidiale.~ 
== BIMOEN2 ~Bleah! Che schifo!~
== TB#STIVB ~E con questo siamo uno pari. Con il prossimo round la vittoria sar� mia, strega!~
== BIMOEN2 ~Non contarci, piccoletto.~
EXIT


CHAIN 
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanImoen","GLOBAL",2)~ THEN TB#STIVB stivanimoen3
~(Pant pant) Sono stremato...~
DO ~SetGlobal("tb#StivanImoen","GLOBAL",3)~
== BIMOEN2 ~ (Pant pant) A chi lo dici!~
== TB#STIVB ~Rassegnati, Imoen... Sono io il migliore!~
== BIMOEN2 ~Aspetta. Mi � venuta un�idea.~
== TB#STIVB ~Credi che sia cos� sciocco da cascare nella tua trappola?~
== BIMOEN2 ~No, parlo sul serio. Il nostro confronto potrebbe non finire mai. Perch� non rimettere il giudizio al nostro leader?~
== TB#STIVB ~...~
= ~... Abbiamo un leader?~
== BIMOEN2 ~Mi riferisco a <CHARNAME>...~
== TB#STIVB IF~Gender(Player1,MALE)~ THEN ~Non vale! Lui � tuo fratello, come potrebbe essere obiettivo?~
== TB#STIVB IF~Gender(Player1,FEMALE)~ THEN ~Non vale! Lei � tua sorella, come potrebbe essere obiettiva?~
== BIMOEN2 ~<CHARNAME> � un ottimo arbitro. Non lascerebbe mai che dei semplici legami di parentela oscurassero la sua capacit� di giudizio.~
== BIMOEN2 IF~Gender(Player1,MALE)~ THEN ~(Bisbigliando) Mi raccomando, fratellino, scegli me!~
== BIMOEN2 IF~Gender(Player1,FEMALE)~ THEN ~ (Bisbigliando) Mi raccomando, sorellina, scegli me!~
== TB#STIVB ~*Ahem* Dunque, <CHARNAME>? Qual �  il miglior ladro? Il Grande Cacciatore di Gabbiani... oppure la Streghetta della Costa?~
END
IF ~Class(Player1,THIEF)~ THEN REPLY ~E� ovvio che sia *io* il numero uno.~ EXTERN BIMOEN2 tb#StivanImoen1-1
IF ~~ THEN REPLY ~ (Sigh) Perch� mi avete tirato in mezzo?~ EXTERN BIMOEN2 tb#StivanImoen1-1
IF ~~ THEN REPLY ~Io direi entrambi.~ EXTERN BIMOEN2 tb#StivanImoen1-1
IF ~~ THEN REPLY ~Nessuno dei due.~ EXTERN BIMOEN2 tb#StivanImoen1-1
IF ~~ THEN REPLY ~Imoen combina i molteplici usi della magia con le sue abilit� furtive. E� lei la migliore.~ EXTERN BIMOEN2 tb#StivanImoen1-1
IF ~~ THEN REPLY ~Stivan combina l�arte della guerra con una buona rapidit� di mano. E� lui il migliore.~ EXTERN BIMOEN2 tb#StivanImoen1-1

CHAIN IF ~~ THEN BIMOEN2 tb#StivanImoen1-1
~Sei soddisfatto della sua risposta?~
== TB#STIVB ~Heh. Dovrei?~
== BIMOEN2 ~Assaggia questo! Biscotto alla cannella!!~
== TB#STIVB ~Prendi questo! Piuma di gabbiano!!~
EXIT
 
CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanMinsc","GLOBAL",0)~ THEN TB#STIVB stivanminsc1
~Noto che parli spesso al tuo criceto, Minsc. Non pensavo che quelle palline di pelo fossero degli interessanti interlocutori.~
DO ~SetGlobal("tb#StivanMinsc","GLOBAL",1)~
== BMINSC ~Boo � un gran chiaccherone! E anche un gran bardo! Compone fior fior di poemi ogni volta che riempiamo il male di calci nel sedere!~
== TB#STIVB ~... Non mi risulta che i criceti compongano suonate o altro.~
== BMINSC ~E invece s�! Boo canta sempre qualcosa quando � di buon umore, come il trionfo della giustizia sulle meschinit� del male, le vittorie di noi paladini del bene sui marrani o i brindisi a cui ci abbandoniamo nel nome della bont�! Celebra anche le volte in cui gli cambio i trucioli, ogni tanto.~
== TB#STIVB ~Voi ranger avete una fervida immaginazione.~
== BMINSC ~Ma � vero! Boo, il nostro amico Stivan mette in dubbio le tue abilit� canore!~
= ~Cosa dici, Boo? Vuoi dimostrargli che sei uno dei migliori bardi criceto di Rasheman? Vuoi dargli prova delle tue capacit�? Benissimo! Preparati, halfling: stai per assistere all'esibizione del mio criceto!!~
= ~*Squeak*!~ [GAM_48]
= ~Sentito?!~
== TB#STIVB ~...~
EXIT

CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanMinsc","GLOBAL",1)~ THEN TB#STIVB stivanminsc2
~Boo, saresti cos� gentile da non urlare come uno scalmanato in battaglia? I miei timpani rischiano di essere sfondati dai tuoi schiamazzi!~
DO ~SetGlobal("tb#StivanMinsc","GLOBAL",2)~
== BMINSC ~Haha! Hai sentito, Boo? Il tuo fiato � cos� potente da stordire il nostro amico halfling! Continua cos�!~
== TB#STIVB ~... Mi stavo rivolgendo a te, ranger. Bench� abbia confuso i vostri nomi, mi sembra ovvio che tra voi due sia tu a far tremare il suolo con i tuoi ruggiti.~
== BMINSC ~Ma Minsc non pu� restare muto come un pesce! Deve riempire d'aria i suoi polmoni per abbattere i nemici con i suoi tonanti ruggiti! In guardia, male: Minsc sta per dar fiato alle sue trombe vocali!~
== TB#STIVB ~Volevi dire *corde* vocali.~
== BMINSC ~Ehm... "Trombe" � una parola di Boo! Vero, Boo?~
== TB#STIVB ~Gi�... Ad ogni modo, ti sarei grato se la smettessi di stordirmi. Possiamo affrontare il male anche con discrezione, sai?~
== BMINSC ~Minsc terr� alto il morale con il suo vocione, Boo si accerter� che la sua gola non si infiammi troppo. E' sempre stato cos�, e col tempo apprezzerai i canti di battaglia di questo ranger. Boo ne � sicuro!~
EXIT


CHAIN 
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanAnomen","GLOBAL",3)~ THEN TB#STIVB  stivananomen4
~Non trovi che sia incredibile, Anomen? Chi avrebbe mai detto che quell'infido di Saerk fosse responsabile della mia rovina e di quella di tuo padre?~
DO ~SetGlobal("tb#StivanAnomen","GLOBAL",4)~
== BANOMEN ~La cosa non mi sorprende. Quell'uomo � sempre stato noto per la sua vilt� e per il suo opportunismo. Com'� possibile che l'Ordine mi abbia cacciato per avere ucciso una simile feccia?~
= ~Se non avessi agito come tu e <CHARNAME> mi avete consigliato, sono sicuro che a quest'ora sarei tormentato dal rimorso per aver lasciato impunita l'uccisione di Moira. Dopo tutto quello che ha passato... Dopo essersi presa cura di quell'ubriacone di mio padre... Come avrei potuto far finta di nulla e aspettare a braccia conserte che la Giustizia facesse il suo corso?~ 
= ~Non ha senso. Per la barba di Helm, perch� una ragazza nobile e altruista come lei � morta cos� prematuramente? Perch�?~
== TB#STIVB ~*Ahem* Non ho una risposta, ma posso immaginare come tu ti senta. Quando ripenso ai miei familiari, mi sembra sempre di non aver mai trascorso abbastanza tempo in loro compagnia o di essere stato troppo pestifero. Per non parlare del senso di colpa per essere la sola persona rimasta in vita...~
== BANOMEN ~Io... Non so come siamo giunti a parlare di questo, ma non mi sento a mio agio.~
== TB#STIVB ~Invece dovresti. Noi due abbiamo molte pi� cose in comune di quanto pensassi.~ 
== BANOMEN ~Cose in comune? Non paragonarmi a te, canaglia!~
== TB#STIVB ~... Canaglia?~
== BANOMEN ~Sar� anche stato escluso dall'Ordine, ma questo non fa di me un miserabile!~
== TB#STIVB ~Ehi! Si pu� sapere che ti � preso?~
== BANOMEN ~Allontanati! Via dalla mia vista!~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanAnomen","GLOBAL",4)~ THEN BANOMEN stivananomen5
~Temo di essere stato troppo precipitoso, l'altra volta. Non era mia intenzione offenderti. Forse � meglio che mi spieghi.~
DO ~SetGlobal("tb#StivanAnomen","GLOBAL",5)~
== TB#STIVB ~(Snort!) E' il minimo che tu possa fare!~
== BANOMEN ~Tu ed io abbiamo molte cose in comune, hai ragione. Nella nostra vita abbiamo conosciuto la privazione sotto varie forme, e avrei dovuto ascoltarti e chiederti consiglio anzich� aggredirti. Il problema � che...~
== TB#STIVB ~Hai tanta rabbia in corpo e questa scoppia all'improvviso.~
== BANOMEN ~Esatto. Ci sono dei momenti in cui mi sento come se una forza disumana si facesse strada dentro di me. Se in quegli istanti mi lasciassi andare, potrei distruggere tutto. Tale � il potere del rancore accumulato negli anni, immagino.~
== TB#STIVB ~Il passare degli anni mi ha insegnato a sfogare la mia rabbia in diversi modi. Ad esempio, quando sono incredibilmente su di giri spenno un gabbiano. Subito dopo mi sento molto meglio!~
== BANOMEN ~Umpf. Si fa presto a cantare che il tempo sistema le cose. Si fa un p� meno presto a convincersi che sia cos�.~
= ~Ad ogni modo... Grazie.~
== TB#STIVB ~Non ho capito. Cosa hai detto?~
== BANOMEN ~... Non farmelo ripetere una seconda volta.~
== TB#STIVB ~Heh. Prego.~
EXIT

CHAIN 
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanAnomen","GLOBAL",5)~ THEN TB#STIVB stivananomen6
~Uhm? Cosa stai rigirando tra le dita, Anomen?~
DO ~SetGlobal("tb#StivanAnomen","GLOBAL",6)~
== BANOMEN ~Questo? E' un anello. Un anello dal grande valore.~
== TB#STIVB ~Strano. In genere controllo sempre per primo i forzieri in cui ci imbattiamo. Se avessimo trovato un simile oggetto, l'avrei tenuto per... Ehm, voglio dire, l'avrei esaminato attentamente prima di darlo a <CHARNAME>. Heh.~
== BANOMEN ~Non � il frutto di un bottino, �... Un lascito.~
= ~Quando mi trasferii negli alloggi dell'Ordine, mia sorella ed io iniziammo a scriverci e a confidarci. Eravamo sempre andati d'accordo noi due, ma dopo che Syr Ryan Trawl mi ebbe preso sotto la sua protezione, il nostro affiatamento crebbe. Non avrei mai pensato che la lontananza avesse un potere simile.~
= ~Nelle sue lettere Moira accennava le difficolt� che erano subentrate nella gestione della casa. Mio padre aveva iniziato a vendere alcuni beni e a licenziare diverse guardie per sanare i debiti che aveva contratto, ma erano troppi, ormai. Troppi.~
= ~Mia sorella fu costretta a svolgere quei compiti che spettavano alla servit�. Lavare, preparare i pasti... Attivit� che erano al di sotto di lei e a cui non era abituata.~
== TB#STIVB ~*Ahem* So bene quanto sia dura e amara la discesa verso la povert�.~
== BANOMEN ~Ci� nonostante, non si lament� mai della propria condizione. In seguito, scoprii che aveva addirittura venduto alcuni dei suoi gioielli e dei suoi capi per aiutare mio padre a fronteggiare i suoi problemi finanziari.~
== TB#STIVB ~Come hai fatto a saperlo?~
== BANOMEN ~Umpf. Uno degli Scudieri dell'Ordine aveva comprato un anello per la sua amata e si stava vantando di averlo ottenuto ad un misero prezzo. Rimasi scioccato quando mi resi conto che si trattava dell'anello che mia madre aveva dato a Moira prima di morire.~
= ~Ripresomi dallo sgomento iniziale, gli dissi di restituirmelo perch� apparteneva alla mia famiglia.~
== TB#STIVB ~Trattandosi di un aspirante cavaliere perfettino, sono sicuro che te l'abbia dato subito.~
== BANOMEN ~Non and� cos�. Dopo avermi riso in faccia, mi disse che non era un problema suo se la mia famiglia si sarebbe presto trasferita nei Bassifondi. Gli altri scudieri, al sentire queste parole, sghignazzarono con lui.~
= ~Di fronte ad una simile offesa, persi completamente la testa.~
= ~In preda all'ira, l'ho colpito al volto con un pugno, e se gli altri scudieri non mi avessero fermato, avrei continuato ad infierire su di lui. Il suo viso era una maschera di sangue... In seguito seppi di avergli rotto il naso, ma in quel momento in me bruciava una rabbia, un furore cos� cieco...~
= ~Il mio scoppio d'ira venne duramente punito dai miei superiori, ma in compenso riottenni l'anello di mia sorella. Lo trovai pochi giorni dopo nei miei alloggi.~
== TB#STIVB ~Beh, deve valere molto per te se non hai esitato a mettere da parte la tua rigida disciplina per riaverlo. Lo terrai come ricordo di tua madre e di Moira?~
== BANOMEN IF~Global("AnomenRomanceActive","GLOBAL",2)~ THEN ~No. Ho intenzione di donarlo a <CHARNAME> non appena trover� il momento giusto. Questo... Questo suggeller� il nostro amore.~
== BANOMEN IF~!Global("AnomenRomanceActive","GLOBAL",2)~ THEN ~No. Lo doner� alla donna a cui mi legher� un domani, come simbolo del mio amore per lei.~
== TB#STIVB ~Ah. Bene. Mi fa... piacere saperlo.~
== BANOMEN ~Qualcosa non va?~
== TB#STIVB ~No no. Mi sono soltanto accorto che stiamo parlando da molto. Non vorrei rallentare il resto del gruppo.~
== BANOMEN ~Invero hai ragione, amico mio. Proseguiamo, dunque.~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanAnomen","GLOBAL",7)~ THEN BANOMEN stivanomen8
~Non va bene. Quando ti lanci verso un nemico, devi sempre tenere l'arma all'altezza del petto. In questo modo sarai pronto sia per l'attacco sia per un'eventuale difesa da colpi che ti venissero sferrati a sorpresa.~
DO ~SetGlobal("tb#StivanAnomen","GLOBAL",8)~
== TB#STIVB ~Uhm... Cos�?~
== BANOMEN ~Esatto. Riproviamo.~
= ~No, non ci siamo. Non hai abbastanza confidenza con la tua armatura. Devi imparare a spostarti con maggiore agilit�. Portare una corazza estremamente pesante � un esercizio che potrebbe aiutarti a migliorare la tua destrezza.~
== TB#STIVB ~Non capisco. Se indossassi un'armatura pi� pesante, diventerei pi� lento, non il contrario.~
== BANOMEN ~Forse all'inizio, ma col tempo lo sforzo da te fatto ti conferir� una certa maestria con le armature pi� leggere.~
= ~Da capo.~ 
== TB#STIVB ~(Pant pant) Io sono un p� stanco...~
== BANOMEN ~Bene. Questo significa che i muscoli stanno lavorando a dovere. Continueremo ancora per un p�.~
== TB#STIVB ~... Qualcuno mi aiuti!~
EXIT

CHAIN 
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanKorgan","GLOBAL",2)~ THEN TB#STIVB stivankorgan3
~Uhm?~ 
DO ~SetGlobal("tb#StivanKorgan","GLOBAL",3)~
= ~Ti � caduto un libro dallo zaino, Korgan.~
== BKORGAN ~Eh? Che diavolo vai dicendo? Io non spreco il mio tempo a leggere. I libri sono per le pappemolle, proprio come quel cacasotto di Plimlico.~
== TB#STIVB ~Vediamo di cosa si tratta.~
= ~...~
= ~Oh!~
= ~Ohhh!~
= ~Ooohhhhh!~
= ~(Arrossisce) Ma... Ma questa � una raccolta di poesie licenziose!~
== BKORGAN ~D� qua, idiota dalla testa di ghiaia, o ti faccio vedere come son fatte le tue budella!~
== TB#STIVB ~"Ho visto una fanciulla accanto al suo amato.
Lui le prese teneramente la mano;
si guardarono fisso negli occhi, 
poi si guardarono in giro che non vegliassero i genitori;
e poich� non videro nessuno,
svelti... Beh, fecero come facciamo noi".~
= ~Ohhhh! Com'� audace questa poesia!~
== BVICONI IF~IsValidForPartyDialog("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN ~Povero hargluk. Ridotto a soddisfare la tua libido attraverso le pagine incartapecorite di un libro.~
== BKORGAN ~Tra poco vedrai quanto sar� audace nell'aprirti in due! Da qua!~
== TB#STIVB ~Allora ammetti che � tuo!~
== BKORGAN ~Dammelo o render� i tuoi connotati facciali irriconoscibili!~
== TB#STIVB ~Ehm... No, grazie. E' una prospettiva allettante, ma non fa per me. Tieni, ecco il tuo libro.~
= ~Comunque non mi aspettavo che facessi simili letture. Credevo preferissi i libri illustrati!~
== BKORGAN ~Dannato bastardo, vieni qui! Fatti tagliare quella fogna di lingua che ti ritrovi!~
== TB#STIVB ~Eeeekkkkk!~
== BEDWIN IF~IsValidForPartyDialog("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN ~(Eccellente. Tutto � andato esattamente secondo i miei piani).~
EXIT

CHAIN 
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanNalia","GLOBAL",0)~ THEN TB#STIVB stivannalia1
~Miss Nalia, lasciate che vi ripeta ancora una volta quanto sono onorato di viaggiare in vostra compagnia. Non c'� mendicante in questa citt� che non sia a conoscenza della vostra bont� d'animo!~
DO ~SetGlobal("tb#StivanNalia","GLOBAL",1)~ 
== BNALIA ~Per favore, non essere cos� formale nei miei confronti. Per quello ci sono gi� i servitori e le guardie del maniero. Piuttosto, potresti ripetermi come ti chiami?~
== TB#STIVB ~Oooohhhh! Come ogni nobile che si rispetti, disprezzate i popolani a tal punto da dimenticarvi del loro nome!~
== BNALIA ~No, non � cos�! E' solo che... Sono molto preoccupata, e non riesco a concentrarmi su nient'altro che non sia la difesa della mia casa.~
== TB#STIVB ~Heh. Non avete motivo di scusarvi. Ad ogni modo, io sono Stivan. Stivan il Cacciatore.~
== BNALIA ~Piacere, Stivan. Io sono... Beh, sai gi� chi sono. Fa sempre un certo effetto vedere che gli altri ti conoscono mentre tu non hai idea di chi sia il tuo interlocutore.~
== TB#STIVB ~State forse dicendo che la mia fama di sterminatore di gabbiani non � giunta alle vostre orecchie?~
== BNALIA ~Zietta funge da filtro col mondo esterno. Sono poche le cose di cui vengo a conoscenza senza che non siano state attentamente vagliate da lei.~
= ~Anni fa, ad esempio, in occasione del compleanno di mio Padre, un bardo particolarmente abile si esib� con dei componimenti un p� boccacceschi. Zietta non grad� per niente quei versi a sua detta "osceni" e cacci� in malo modo lo sventurato cantastorie. E' facile intuire che da allora nessuno os� pi� proferire poesie licenziose nel nostro maniero.~
= ~Perdonami per averti interrotto. Stavi dicendo?~
== TB#STIVB ~Per me... Per me sarebbe un grande onore potervi... baciare la mano. Lascerete che quest'halfling posi le sue labbra sulla vostra regale carne?~
== BNALIA ~Solo a condizione che tu smetta di chiamarmi "Miss".~
== TB#STIVB ~Questo � impossibile, Miss Nalia.~
= ~*Smack*~
= ~Heh. Adesso posso anche morire felice.~
EXIT

CHAIN 
IF ~InParty("Nalia")
See("Nalia")
See("Player1")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("Player1",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanNaliaFatherDeath","GLOBAL",0)
Global("isaeaNalia","GLOBAL",1)~ THEN TB#STIVB stivannalia2
~(Sniff) Miss Nalia... Io... Io sono *cos�* dispiaciuto per la vostra perdita!~
DO ~SetGlobal("tb#StivanNaliaFatherDeath","GLOBAL",1)~
== BNALIA ~Non fare cos�, Stivan. E'... E' una cosa con cui dovr� imparare a convivere. Del resto, l'esperienza del lutto non mi � nuova. L' ho gi� conosciuta anni fa, quando persi mia Madre, sebbene allora fossi molto pi� piccola.~
== BJAHEIR IF ~IsValidForPartyDialog("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN ~ La morte � parte della vita stessa. Ci auguriamo che quel momento non giunga mai, sebbene sia inevitabile.~
== TB#STIVB ~Siete... Siete cos� regale nel vostro cordoglio! Questo... (Sniff) Questo mi fa piangere ancora di pi�!~
== BNALIA ~Adesso smettila, Stivan, altrimenti... Altrimenti farai piangere anche me.~
END
IF ~~ THEN REPLY ~E anche me... *SOB*!~ EXTERN BNALIA AfterFatherDeath1-1
IF ~~ THEN REPLY ~Posso chiederti come hai perso tua madre? Io non ho mai conosciuto la mia.~ EXTERN BNALIA AfterFatherDeath1-2
IF ~~ THEN REPLY ~So cosa stai passando, Nalia. Cerca di farti coraggio e di andare avanti; dimostra a te stessa quanto sei forte.~ EXTERN BNALIA AfterFatherDeath1-3
IF ~~ THEN REPLY ~Non vorrei sembrarvi cinico, ma chi ha da fare non ha tempo per le lacrime.~ EXTERN BNALIA AfterFatherDeath1-4

APPEND BNALIA

IF ~~ THEN BEGIN AfterFatherDeath1-1
SAY ~Mancavi solo te, <CHARNAME>! Io...~
= ~Non mi aspettavo che entrambi foste cos� partecipi al mio dolore, ma non voglio affliggervi. Mi far� forza e andr� avanti. E' la sola cosa che posso fare.~
= ~(Sorride) Direi di proseguire, ora, prima che vi rimettiate a piangere!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN AfterFatherDeath1-2
SAY ~Davvero? Quindi siamo entrambi orfani, anche se immagino di essere stata fortunata ad aver trascorso del tempo con la mia, per quanto poco sia stato.~ 
= ~Mia Madre era una grande donna, sai? Aveva un animo generoso e infaticabile, ed era sempre pronta ad aiutare chiunque ne avesse bisogno. Purtroppo mor� giovane... Aveva contratto una malattia che nessun guaritore era in grado di curare.~
= ~Zietta mi ripete spesso che con ogni certezza prese quel morbo da qualche bisognoso da lei soccorso, nella speranza che io mi spaventi e torni a trincerarmi nelle mura del maniero. In realt� non fa altro che spronarmi a trarre esempio da lei.~
= ~Ma basta con queste reminescenze del passato. E� meglio ritornare a ci� di cui ci stavamo occupando. Un p� di sana distrazione mi far� bene.~
IF ~~ THEN EXIT
END
END

CHAIN
IF ~~ THEN BNALIA AfterFatherDeath1-3
~E' quello che far�. Ti ringrazio molto per la tua vicinanza, <CHARNAME>, e anche per la tua, Stivan.~
== TB#STIVB ~(Sniff) Dovere, Miss Nalia. Dovere...~
EXIT

CHAIN
IF ~~ THEN BNALIA AfterFatherDeath1-4
~Le tue parole sono aspre e pungenti, ma veritiere. Andiamo, Stivan. Non facciamo perdere altro tempo a <CHARNAME>.~
== TB#STIVB ~(Snort!) Sei un mostro! Come puoi essere cos� cattivo con Miss Nalia in un momento tanto difficile per lei? Se non avessi gli occhi offuscati dalle lacrime, ti avrei soffocato con ogni mia piuma!~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanNaliaFatherDeath","GLOBAL",1)
Global("tb#StivanNaliaManor","GLOBAL",0)
Global("KeepPlot","GLOBAL",0)~ THEN BNALIA stivannaliakeep
~Non avrei mai pensato di sentire la mancanza del mio maniero, eppure � cos�. E pensare che sino a non molto tempo fa mi sentivo soffocare tra le sue mura e non desideravo altro che scapparne!~
DO ~SetGlobal("tb#StivanNaliaManor","GLOBAL",1)~
== TB#STIVB ~E' normale che vi manchi. Grande o piccola, lussuosa o fatiscente, la casa resta pur sempre il luogo dei nostri affetti. Voi sapete come ho perso la mia?~
== BNALIA ~No, non me l'hai mai raccontato. Cos'� successo?~
== TB#STIVB ~Nulla di paragonabile all'invasione che avete subito voi.~
= ~Quando i miei familiari vennero uccisi, chiesi aiuto al socio in affari di mio padre perch� non avevo idea di come gestire il denaro e i nostri vigneti. Si rivel� un errore fatale, in quanto quell'infame si impossess� dei miei atti di propriet� ed esib� ai magistrati dei falsi documenti in cui appariva come l'intestatario di quelli che in realt� erano i beni della mia famiglia.~
= ~La rovina giunse rapida, ma... *Ahem* Non � questo il punto.~
= ~Io ho cercato di fare il possibile per mantenere il possesso della mia casetta. Perch� voi non avete fatto lo stesso con il vostro maniero?~ 
== BNALIA IF ~!Class(Player1,FIGHTER_ALL)~ THEN ~Non avevo nessuna speranza. Se <CHARNAME> fosse stato un combattente, allora l'avrei potuto nominare <PRO_LADYLORD> delle mie terre in modo che se ne prendesse cura; tuttavia, dal momento che <PRO_HESHE> � un <CLASS>, questa possibilit� � sfumata.~
== BNALIA IF ~Class(Player1,FIGHTER_ALL)~ THEN ~Non mi sono arresa subito. Avevo chiesto a <CHARNAME> di diventare <PRO_LADYLORD> delle mie terre, ma <PRO_HESHE> ha rifiutato.~
== TB#STIVB ~Ma perch� avete riposto tutte le vostre speranze in <PRO_HESHE>? Ci sono tanti altri guerrieri che non avrebbero esitato a cogliere una simile opportunit�. Quel tizio della palizzata, ad esempio?~
== BNALIA ~Anch'io avevo pensato al Capitano Arat, ma ha rifiutato la mia proposta.~
== TB#STIVB ~Perch�?~
== BNALIA ~Si ritiene in parte responsabile della morte di mio padre. E' convinto di non aver fatto abbastanza per salvarlo.~
== TB#STIVB ~Capisco.~
BRANCH ~IsValidForPartyDialog("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ BEGIN
== TB#STIVB ~E cosa mi dite di Korgan?~
== BKORGAN ~(Rutto) Eh?~
== TB#STIVB ~... Come non detto.~
END
== TB#STIVB ~*Ahem* E a me? Non avete pensato a me?~
== BNALIA ~... A te?~
== TB#STIVB ~S�! Immaginatevi la scena: il vostro maniero, ritornato al suo antico splendore sotto la guida illuminata di Padron Stivan. Una fortezza di pace e di prosperit�, dove le catapulte entrano in azione soltanto per abbattere i pennuti a me odiosi.~
= ~Sarebbe bellissimo!~
== BNALIA ~Ehm... Magari qualcuno dovrebbe farti da consigliere all'inizio. Giusto il tempo di... apprendere certe nozioni basilari. Una di queste � non nominare i gabbiani a zietta.~
== TB#STIVB ~Perch�?~
== BNALIA ~Meglio di no, Stivan. Fidati.~
== TB#STIVB ~Heh. Voi sareste un'ottima consigliera. Che ne dite? Si pu� fare?~
== BNALIA ~Non lo so, Stivan. Suppongo che di fatto sia possibile, ma ho bisogno di tempo per pensarci. Non so se tornare al maniero sia quello che veramente voglio.~
EXIT

CHAIN 
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
CombatCounter(0)
Global("NaliaIsaeaPlotDone","GLOBAL",1)
Global("tb#StivanNaliaPrison","GLOBAL",0)~ THEN TB#STIVB stivannaliaprison
~Ho sentito molto la vostra mancanza mentre eravate in arresto, Miss Nalia. E' stato peggio del rimanere a corto di cacca di gabbiano!~
DO ~SetGlobal("tb#StivanNaliaPrison","GLOBAL",1)~
== BNALIA ~Ehm... Immagino che dovrei esserne lusingata...~
== TB#STIVB ~Qualcuno ha forse osato farvi del male? Se cos� fosse, non esitate a dirmelo: Stivan il Cacciatore provveder� a punire ogni insolenza mossa alla vostra persona!~
== BNALIA ~Nessuna insolenza, Stivan, anzi. Ho imparato qualcosa di utile. C'erano alcuni uomini - Ladri Tenebrosi, a giudicare dai cappucci - con cui ho parlato di trappole e trucchetti. Mi hanno consigliato di stare attenta ad un nuovo congegno ideato dalle guardie di Athkatla. Si tratta di un dispositivo a lame capace di tagliare le mani se non viene correttamente disattivato.~
= ~Vedi? Anche coloro che non hanno il sangue blu possono essere --~
== TB#STIVB ~Eeeekkkkk!~
== BNALIA ~Cos'� successo, Stivan?!~
== TB#STIVB ~La vostra tunica...!~
== BNALIA ~La mia tunica? Mi sembra che sia a posto.~
== TB#STIVB ~Ha una macchia!~
== BNALIA ~(Sospira) Ed io che temevo fosse qualcosa di grave. La laver� quando...~
= ~Stivan, cosa stai facendo?~
== TB#STIVB ~Ci penso io, Miss Nalia! Non esiste solvente migliore della cacca di gabbiano!~
== BNALIA ~Davvero, Stivan, non c'� bisogno d--~
== TB#STIVB ~Non preoccupatevi! Quella macchia non vedr� il domani!~
= ~...~
= ~... Visto? Completamente scomparsa!~
== BNALIA ~E' ovvio che sia scomparsa! Ha corroso la tunica!~
== TB#STIVB ~Ops.~
= ~Mi dispiace, Miss Nalia, io... Volevo solo essere d'aiuto...~
== BNALIA ~Non fa niente, Stivan. So bene quali fossero le tue intenzioni.~
== TB#STIVB ~Eeeekkkk!~
== BNALIA ~Cosa c'� stavolta?!~
== TB#STIVB ~Il vostro viso... E' sporco! Lasciate che...~
== BNALIA ~Oh no! Il viso no!~
EXIT

/*
// ?
CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanAerie", "GLOBAL",1)~ THEN BAERIE
~Oh! Stivan, una farfalla si � posata sui tuoi capelli!~
DO ~SetGlobal("tb#StivanAerie", "GLOBAL",2)~
== TB#STIVB ~...~
= ~... Ora non pi�.~
== BAERIE ~NO! L'hai... L'hai uccisa! Perch�? Perch� l'hai fatto?!~
== TB#STIVB ~La prossima volta non scambier� pi� la mia chioma per un fiore.~
== BAERIE ~C-come potr� esserci un'altra volta se l'hai uccisa? Sei... Sei un mostro!~
== TB#STIVB ~Visto che questa farfalla ti stava particolarmente a cuore, prendine pure i resti e seppelliscili. Tieni: sono qui nella mia mano. Penso che faticherai non poco a ricomporli...~
== BAERIE ~AHHH! N-non avvicinarti!~
== TB#STIVB ~Ebbene? Non vuoi pi� i resti di questa creaturina dalle ali sfaldate? A proposito, che ironica coincidenza: � la stessa fine che hanno fatto le tue, giusto?~
== BAERIE ~N-no!~
== TB#STIVB ~Hai ragione: sono appassite, sono marcite!~
== BAERIE ~~(Singhiozzando) S-smettila!~
== BMAZZY IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN ~Aerie, ignoralo. L'indifferenza � il miglior atteggiamento da assumere in questi casi. Quanto a te, Stivan, stai iniziando a stamcarmi col tuo comportamento infantile.~
== TB#STIVB ~Lo sai che non ricresceranno pi�?~
== BAERIE ~Ahhh!~
== TB#STIVB ~"E fu cos� che Aerie scoppi� in lacrime e corse via". Quando voglio sbarazzarmi di una persona fastidiosa so essere *cos�* crudele... Mwahahahah!~
== BMAZZY IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN ~
EXIT
*/
