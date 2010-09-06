APPEND tb#stivj

IF ~IsGabber(Player1) OR (6)
AreaCheck("AR2900")
AreaCheck("AR2901")
AreaCheck("AR2902")
AreaCheck("AR2903")
AreaCheck("AR2904")
AreaCheck("AR2905")
~ THEN PIDHell
SAY ~S-stammi vicino, <CHARNAME>. Questo posto è spaventoso, e non so f-fino a quando riuscirò a trattenermi dal darmela a gambe.~
IF ~~ THEN EXIT
END

IF ~IsGabber(Player1)~ THEN BEGIN PID1
SAY ~Stivan il Cacciatore ti ascolta, <CHARNAME>!~
IF ~HPPercentGT("Stivan",74)~ THEN REPLY ~Tutto bene, amico?~ GOTO PD1-1
IF ~HPPercentLT("Stivan",75) HPPercentGT("Stivan",49)~ THEN REPLY ~Tutto bene, amico?~ GOTO PD1-2
IF ~HPPercentLT("Stivan",50) HPPercentGT("Stivan",24)~ THEN REPLY ~Tutto bene, amico?~ GOTO PD1-3
IF ~HPPercentLT("Stivan",25)~ THEN REPLY ~Tutto bene, amico?~ GOTO PD1-4
IF ~Race(Player1,HALFLING)~ THEN REPLY ~E’ un piacere viaggiare in compagnia di un altro halfling.~ GOTO PD2-2
IF ~!Race(Player1,HALFLING)~ THEN REPLY ~E’ un piacere viaggiare in tua compagnia.~ GOTO PD2-2
IF ~~ THEN REPLY ~Parliamo dei nostri compagni di viaggio. Cosa ne pensi di...~ GOTO PD3-1
IF ~~ THEN REPLY ~Ho bisogno che tu mi faccia da guida, Stivan. Dimmi tutto ciò che sai su Athkatla.~ GOTO PD4-1
IF ~Global("knowsmurders","GLOBAL",1) OR(2) Global("MerchantHide","GLOBAL",0) Global("TalkedToHooker2","GLOBAL",0)~ THEN REPLY ~Sto investigando sui recenti omicidi avvenuti nel Quartiere del Ponte. Sai qualcosa a riguardo?~ GOTO PD5
IF ~~ THEN REPLY ~Mi chiedevo se avessi mai sentito parlare di Irenicus, il mago che stiamo cercando.~ GOTO PD6
IF ~GlobalLT("Chapter","GLOBAL",4)~ THEN REPLY ~Dal momento che sei nativo di Athkatla, posso forse sperare che tu sappia dove vengono portate le persone arrestate dagli Stregoni Incappucciati?~ GOTO PD7
IF ~GlobalLT("Chapter","GLOBAL",4)~ THEN REPLY ~Cosa sai dirmi della guerra tra gilde?~ GOTO PD8
IF ~Global("TMAcceptance","GLOBAL",1)~ THEN REPLY ~Mi par di aver capito che tu sia già stato a Trademeet.~ GOTO PD9
IF ~Global("WorkingForAran","GLOBAL",1)~ THEN REPLY ~Secondo te ho fatto bene a rifiutare l'offerta di Bodhi?~ GOTO PD10
IF ~Global("WorkingForBodhi","GLOBAL",1)~ THEN REPLY ~Secondo te ho fatto bene ad accettare l'aiuto di Bodhi?~ GOTO PD11
IF ~Global("MaeVarWork","GLOBAL",3)~ THEN REPLY ~Ho bisogno che tu ti introduca nel Tempio di Talos per impossessarti del ciondolo della Signora delle Stagioni.~ GOTO PD12
IF ~Global("MaeVarWork","GLOBAL",1)~ THEN REPLY ~Ho bisogno che tu ti introduca nel Tempio di Lathander per impossessarti della statuetta raffigurante il Signore del Mattino.~ GOTO PD12
IF ~Global("EdwinJob","GLOBAL",3)~ THEN REPLY ~Vorrei impossessarmi dei documenti richiesti da Edwin senza attirare troppo l’attenzione. Penso che tu sia abile a sufficienza da riuscire a rubarglieli di nascosto, non è così?~ GOTO PD13
IF ~Global("SpawnBarg","GLOBAL",1) Global("RoenalConvict","GLOBAL",0)~ THEN REPLY ~Per liberare Nalia dobbiamo raccogliere una quantità di prove sufficienti ad incastrare Isaea. Te la senti di introdurti all’interno della sua residenza e di cercare qualcosa di compromettente?~ GOTO PD14
IF ~~ THEN REPLY ~Ho bisogno di accertarmi che tu non sia un dopplegenger. Qual è la cosa che Stivan odia di più al mondo?~ GOTO PD15
IF ~Global("tb#EdwinComplainsOfStivan","GLOBAL",1)~ THEN REPLY ~Stivan, Edwin sostiene che tu sia inquieto di notte.~ DO ~SetGlobal("tb#EdwinComplainsOfStivan","GLOBAL",2)~ GOTO PD16
IF ~~ THEN REPLY ~E’ tutto a posto. Proseguiamo.~ EXIT
IF ~~ THEN REPLY ~Stivan, la tua voce sembra il garrito di un gabbiano.~ GOTO PD17
END


IF ~~ THEN BEGIN PD1-1
SAY ~Mai stato così in forma!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD1-2
SAY ~Non c'è male.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD1-3
SAY ~Mi sento un pò debole. In certi momenti vedo addirittura doppio, ma immagino sia un semplice capogiro.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD1-4
SAY ~(Tossisce) Direi proprio di no... Nelle condizioni in cui mi trovo, persino un gabbiano potrebbe sconfiggermi...~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD2-2
SAY ~Heh. Modestia a parte, sono troppo simpatico!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-1
SAY ~... Sì?~
IF ~InParty("Edwin") !Gender("Edwin",FEMALE) !Global("EdwinRomanceActive","GLOBAL",2)~ THEN REPLY ~Edwin?~ GOTO PD3-2 
IF ~InParty("Edwin") Gender("Edwin",FEMALE) !Global("EdwinRomanceActive","GLOBAL",2)~ THEN REPLY ~Edwin?~ GOTO PD3-3
IF ~InParty("Edwin") Global("EdwinRomanceActive","GLOBAL",2)~ THEN REPLY ~Edwin?~ GOTO PD3-4
IF ~InParty("Jan")~ THEN REPLY ~Jan?~ GOTO PD3-5
IF ~InParty("Haerdalis")~ THEN REPLY ~Haer'Dalis?~ GOTO PD3-6
IF ~InParty("Aerie") !Global("HaerDalisRomanceActive","GLOBAL",2) !Global("AerieRomanceActive","GLOBAL",2) ~ THEN REPLY ~Aerie?~ GOTO PD3-7
IF ~InParty("Aerie") Global("HaerDalisRomanceActive","GLOBAL",2)~ THEN REPLY ~Aerie?~ GOTO PD3-8
IF ~InParty("Aerie") Global("AerieRomanceActive","GLOBAL",2)~ THEN REPLY ~Aerie?~ GOTO PD3-9
IF ~InParty("Jaheira") !Global("JaheiraRomanceActive","GLOBAL",2)~ THEN REPLY ~Jaheira?~ GOTO PD3-10
IF ~InParty("Jaheira") Global("JaheiraRomanceActive","GLOBAL",2)~ THEN REPLY ~Jaheira?~ GOTO PD3-11
IF ~InParty("Cernd")~ THEN REPLY ~Cernd?~ GOTO PD3-12
IF ~InParty("Valygar")~ THEN REPLY ~Valygar?~ GOTO PD3-13
IF ~InParty("Keldorn")~ THEN REPLY ~Keldorn?~ GOTO PD3-14
IF ~InParty("Yoshimo")~ THEN REPLY ~Yoshimo?~ GOTO PD3-15
IF ~InParty("Viconia") !Global("ViconiaRomanceActive","GLOBAL",2)~ THEN REPLY ~Viconia?~ GOTO PD3-16
IF ~InParty("Viconia") Global("ViconiaRomanceActive","GLOBAL",2)~ THEN REPLY ~Viconia?~ GOTO PD3-17
IF ~InParty("Anomen") Global("AnomenIsKnight","GLOBAL",0) Global("AnomenIsNotKnight","GLOBAL",0)~ THEN REPLY ~Anomen?~ GOTO PD3-18
IF ~InParty("Anomen") Global("AnomenIsNotKnight","GLOBAL",1)~ THEN REPLY ~Anomen?~ GOTO PD3-19
IF ~InParty("Anomen") Global("AnomenIsKnight","GLOBAL",1)~ THEN REPLY ~Anomen?~ GOTO PD3-20
IF ~InParty("Nalia")~ THEN REPLY ~Nalia?~ GOTO PD3-21
IF ~InParty("Nalia")~ THEN REPLY ~Nalia?~ GOTO PD3-22
IF ~InParty("Mazzy")~ THEN REPLY ~Mazzy?~ GOTO PD3-23
IF ~InParty("Korgan")~ THEN REPLY ~Korgan?~ GOTO PD3-24
IF ~InParty("Imoen2")~ THEN REPLY ~Imoen?~ GOTO PD3-26
IF ~InParty("Minsc") GlobalLT("tb#StivanMinsc","GLOBAL",3)~ THEN REPLY ~Minsc?~ GOTO PD3-27
IF ~InParty("Minsc") GlobalGT("tb#StivanMinsc","GLOBAL",2)~ THEN REPLY ~Minsc?~ GOTO PD3-28
IF ~~ THEN REPLY ~Fa lo stesso.~ EXIT
END

IF ~~ THEN BEGIN PD3-2
SAY ~...~
= ~... Non ho altro da aggiungere.~ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-3
SAY ~Heh. Andiamo incredibilmente d'accordo da quando si è trasformato in una donna!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-4
SAY ~*Ahem* E' una mia impressione o tra te e il Flagello Rosso c'è del tenero?~
IF ~~ THEN REPLY ~Può darsi.~ GOTO PD3-4a
IF ~~ THEN REPLY ~Non direi proprio. Non facciamo che litigare!~ GOTO PD3-4b
IF ~~ THEN REPLY ~Non avrei mai immaginato che Edwin potesse essere così... affascinante. Eppure lo è. Mi ha stregata.~ GOTO PD3-4c
END

IF ~~ THEN BEGIN PD3-4a
SAY ~Beh, se non lo sai nemmeno te, non arrovellartici troppo. Del resto, non si dice che l'intelletto cerca, il cuore trova?~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-4b
SAY ~Mia mamma diceva sempre che il litigio è l'anticamera dell'amore. La frittata ormai è fatta, <CHARNAME>.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-4c
SAY ~Heh. L'hai detto. Soltanto con una stregoneria può averti fatto innamorare di lui.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-5
SAY ~I suoi racconti sono confusionari come il volo dei gabbiani - e tu non hai idea, <CHARNAME>, di quanto siano deliranti - ma per il resto è un tipo in gamba.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-6
SAY ~E' senza dubbio un buon bardo, ma... Ehm... Ha il brutto vizio di chiamarmi gabbiano. Tra tutti i nomi di pennuti che esistono doveva scegliere proprio *quello*?~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-7
SAY ~Ti riferisci alla pennuta senz'ali? Beh, se non la smette di liberare i gabbiani che tramortisco giuro che si ritroverà con qualche altro moncone!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-8
SAY ~Odiosa protettrice di pennuti... Com'è possibile che Haer'Dalis abbia perso la testa per una simile creatura?~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-9
SAY ~E' la tua... Sì, insomma, siete... Fate...~
IF ~~ THEN REPLY ~Coraggio, Stivan. Puoi farcela.~ GOTO PD3-9a
IF ~~ THEN REPLY ~In questo momento sei tale e quale lei.~ GOTO PD3-9a
IF ~~ THEN REPLY ~E' la mia compagna, siamo amanti e facciamo quello che fa ogni coppia. E' questo che intendevi dire?~ GOTO PD3-9a
END

IF ~~ THEN BEGIN PD3-9a
SAY ~(Arrossisce) Bah! L'importante è che non mi tiriate in mezzo nelle vostre faccende!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-10
SAY ~Heh. Mi diverto un sacco a farle perdere le staffe, ma devo riconoscere che è un'interessante interlocutrice.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-11
SAY ~Senti, ma... Come puoi essere cotto di lei dopo tutti i guai che ti ha causato con i suoi amici Arpisti?~
IF ~~ THEN REPLY ~Questo non è affar tuo.~ GOTO PD3-11a
IF ~~ THEN REPLY ~Quando una persona è innamorata non bada a questi dettagli.~ GOTO PD3-11b
IF ~~ THEN REPLY ~Jaheira non ha nessuna responsabilità, Stivan. Sono stati i suoi superiori ad aver preso delle iniziative sbagliate contro di me.~ GOTO PD3-11b
END

IF ~~ THEN BEGIN PD3-11a
SAY ~(Snort!) Sei stato tu a chiedere il mio parere!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-11b
SAY ~Brutta cosa l'amore. Fa decisamente perdere il senno.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-12
SAY ~Ho l'impressione che quel druido voglia convincermi di qualcosa, anche se non riesco a capire *cosa*.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-13
SAY ~E' loquace quanto una mummia, ma pare che acquisisca la favella ogni volta che faccio qualcosa che non gli va a genio!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-14
SAY ~Tsk. Quel bigotto d'un paladino non merita la mia attenzione.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-15
SAY ~Mi piace Yoshi. Ha stile, è enigmatico e dice sempre la cosa giusta al momento giusto.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-16
SAY ~Heh. Terminare una conversazione con lei ricevendo solo tre o quattro insulti è una conquista.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-17
SAY ~(Snort!) Hai idea del perchè abbia smesso di trattarti con sufficienza?~
IF ~~ THEN REPLY ~Perchè siamo amanti, Stivan.~ GOTO PD3-17a
IF ~~ THEN REPLY ~Ti assicuro che ogni nostra discussione è condita dai suoi affettuosi appellativi. "Stupido idiota" e "Feccia iblith" sono i primi che mi vengono in mente.~ GOTO PD3-17b
IF ~~ THEN REPLY ~Modestia a parte, sono irresistibile.~ GOTO PD3-17a
END

IF ~~ THEN BEGIN PD3-17a
SAY ~...~
= ~... Viconia deve essere impazzita. Non c'è altra spiegazione.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-17b
SAY ~Infatti. Mi sembrava strano che con te si fosse addolcita.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-18
SAY ~*Ahem* Posso capire che certe persone sentano il bisogno di dare un senso alla propria vita, ma cercarlo nell'Ordine...?~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-19
SAY ~Credevo fosse un caso senza speranza, ma l'esclusione dall'Ordine l'ha fatto rinsavire.~
= ~... Per fortuna.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-20
SAY ~(Snort!) Non devi neanche nominarlo! Ha voluto bruciare ogni possibilità di vendetta su Saerk per entrare in quella congrega di buffoni. Per me è come se non esistesse!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-21
SAY ~Invece di chiedermi cosa penso di MISS Nalia, perchè non corriamo in difesa delle sue terre?~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-22
SAY ~E' un onore viaggiare con lei.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-23
SAY ~Presto le sigillerò la bocca in maniera permanente. Non fa altro che riprendermi in continuazione!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-24
SAY ~In fin dei conti, Korgan è un buon nano... Basta non prestare troppa attenzione alle volte in cui ti rutta in faccia o minaccia di aprirti la pancia.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-26
SAY ~Per essere tua sorella devo dire che è simpatica.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-27
SAY ~... Minsc è il criceto e Boo il ranger, giusto?~
IF ~~ THEN REPLY ~Il contrario.~ GOTO PD3-27a
IF ~~ THEN REPLY ~Ehm... Sì, proprio così.~ GOTO PD3-27b
END

IF ~~ THEN BEGIN PD3-27a
SAY ~Accidenti. Non imparerò mai!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-27b
SAY ~Heh. Finalmente ce l'ho fatta!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-28
SAY ~Il ranger... Minsc... Non meritava i miei insulti. Lui e il suo criceto hanno un cuore d'oro, sotto sotto.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD4-1
SAY ~Heh. Modestia a parte, credo di poterti consigliare meglio di chiunque altro come muoverti all'interno della Città della Moneta. Lasciami prendere la nostra mappa... Ecco. Di quale distretto vuoi che ti parli?~
IF ~~ THEN REPLY ~(Indichi la Passeggiata).~ GOTO PD4-2
IF ~~ THEN REPLY ~(Indichi i Bassifondi).~ GOTO PD4-3
IF ~~ THEN REPLY ~(Indichi il Quartiere del Ponte).~ GOTO PD4-4
IF ~~ THEN REPLY ~(Indichi il Quartiere Governativo).~ GOTO PD4-5
IF ~~ THEN REPLY ~(Indichi il Quartiere del Tempio).~ GOTO PD4-6
IF ~!Global("EntryTest","GLOBAL",7) ~ THEN REPLY ~(Indichi il Quartiere del Cimitero).~ GOTO PD4-7a
IF ~Global("EntryTest","GLOBAL",7) ~ THEN REPLY ~(Indichi il Quartiere del Cimitero).~ GOTO PD4-7b
IF ~~ THEN REPLY ~(Indichi i Moli).~ GOTO PD4-8
END

IF ~~ THEN BEGIN PD4-2
SAY ~La Passeggiata di Waukeen è il più importante centro di scambi commerciali in tutta Amn. E' anche il posto in cui mia mamma vendeva il nostro vino ai mercanti del posto o di passaggio, mentre io ero in viaggio con il resto della famiglia.~
= ~Ma immagino che a te non interessino cibo e vettovaglie, bensì rifornimenti o equipaggiamento. C'è un negozio, l'Emporio dell'Avventuriero, che potrebbe fare al caso tuo. Il proprietario è uno sbruffone che a papino non è mai piaciuto, e neanche a me. Le alternative sono ben poche, <CHARNAME>: quel tizio ormai ha eliminato la concorrenza.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD4-3
SAY ~Athkatla vanta il triste primato di essere una delle città più povere dell'Amn, e i Bassifondi rendono bene l'idea. E' una zona franca, dove ognuno fa quel che vuole e dove borseggiatori e tagliagole proliferano. Pensa che hanno cercato di derubare persino me! Ho dovuto dar loro tutte le mie piume di gabbiano, per aver salva la vita.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD4-4
SAY ~Il Quartiere del Ponte è il luogo dove hai chiesto al potente e famoso Stivan il Cacciatore di unirsi a te!~
= ~Non è un caso che tu mi abbia incontrato in questa zona. Quando i miei familiari erano in vita, io vivevo proprio qui. Ti porterei volentieri a visitare la mia casetta, ma quando la persi venne venduta ad un nobile di Lord Baltis, e le sue guardie non permettono agli estranei di entrarvi. E' un peccato.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD4-5
SAY ~Malgrado lo squallore e la miseria siano notevolmente diffusi, non pensare che Athkatla non abbia la sua elitè di nobili. Le loro sontuose residenze si trovano proprio nel quartiere che hai appena indicato. Le guardie cacciano chiunque abbia l'aspetto di un mendicante, pertanto... *Ahem* Io ti ho avvertito.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD4-6
SAY ~*Ahem* Questa non è di certo la zona della città che più preferisco. Il Quartiere del Tempio è il luogo in cui hanno sede i culti di Helm, di Lathander e di Talos. Mia mamma diceva sempre che un giorno vi avrebbe trovato posto anche il culto di Yondalla, ma ad oggi non è stato fatto ancora nulla.~
= ~Non nutro particolare simpatia verso i credenti, quindi ti sarei grato se visitassimo questo posto il meno possibile.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD4-7a
SAY ~Come potrai facilmente intuire dal nome, questa è la zona della città dove riposano le persone scomparse. Spero che un giorno anche i miei familiari possano trovarvi posto.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD4-7b
SAY ~Come potrai facilmente intuire dal nome, questa è la zona della città dove riposano le persone scomparse. Adesso vi si sono aggiunti anche i miei familiari, ed è tutto merito tuo!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD4-8
SAY ~I Moli hanno la più alta concentrazione di gabbiani che io abbia mai visto, pertanto dovremo fare attenzione alle nostre teste quando ci aggiriamo in questa zona.~
= ~Ho sentito dire che è anche il luogo in cui si trova la sede dei Ladri Tenebrosi, però non so se sia vero o meno. So per certo, invece, che vi abita un abile nano in grado di forgiare gingilli molto potenti. Magari potresti farci un salto e chiedergli di creartene qualcuno, no?~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD5
SAY ~E' chiaramente opera dei gabbiani. Ho visto il cadavere dell'ultima vittima, e presenta chiaramente segni di perforazione da becco. Ho cercato di dirlo al tenente che si occupa delle indagini, ma ha detto di non fargli perdere tempo con queste sciocchezze. Vedrai se non ho ragione.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD6
SAY ~Giuro che fino a poco tempo fa c'era un pescivendolo nei Moli che diceva di chiamarsi Irenicus. Non guardarmi così, è vero!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD7
SAY ~... In prigione?~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD8
SAY ~C'è una guerra tra gilde? Perchè nessuno me l'ha detto?!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD9
SAY ~Sì, ci sono già stato. Mio padre era in ottimi rapporti con il capo carovana che ogni anno faceva una sosta in quella città proprio in concomitanza al nostro arrivo. Credo si chiamasse... Feeraa? O Raafee?~
= ~Boh. Non ricordo con precisione il suo nome, ma sono sicuro che lo riconoscerei se lo incontrassi. Magari potrebbe darci qualche informazione su ciò che sta succedendo.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD10
SAY ~Sono contento che tu abbia deciso di restare fedele ai Ladri Tenebrosi. Li preferisco decisamente. Inoltre non puoi negare che siano simpatici, mentre quella donna... Era semplicemente spaventosa!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD11
SAY ~Non ne ho idea. So solo che quella donna mi incute una certa paura...~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD12
SAY ~Heh. Le mie abili mani potrebbero far sparire l'intero tempio senza che nessuno se ne accorga!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD13
SAY ~Puoi contare su di me. Quando andremo al Dono del Mare, rimarrai stupito dalla mia abilità!~
IF ~~ THEN DO ~SetGlobal("#tbStivanMarcus","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN PD14
SAY ~Sono pronto ad ispezionare ogni angolo di quella casa se servirà a liberare Miss Nalia. L'idea che la sua regale persona si trovi in una squallida prigione... Mi fa rabbrividire!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD15
SAY ~Heh. Un dopplegenger non potrebbe mai essere abile quanto me nell'uccidere i gabbiani. O nel fare a pezzettini quei buffoni dell'Ordine Radioso. O nel tagliuzzare quegli sciocchi credenti. O...~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD16
SAY ~*Ahem* Se Edwin si sente disturbato dal sottoscritto, perchè non viene a dirmelo di persona?~
IF ~~ THEN REPLY ~Pare che tu dica frasi indistinte.~ GOTO PD16-2
IF ~Global("EdwinRomanceActive","GLOBAL",2)~ THEN REPLY ~Per una volta, Edwin è stato abbastanza intelligente da capire che un mediatore sarebbe stato più adatto. Diversamente, sono sicuro che avreste finito per insultarvi a vicenda, non è così?~ GOTO PD16-4
IF ~!Global("EdwinRomanceActive","GLOBAL",2)~ THEN REPLY ~Per una volta, Edwin è stato abbastanza intelligente da capire che un mediatore sarebbe stato più adatto. Diversamente, sono sicuro che avreste finito per insultarvi a vicenda, non è così?~ GOTO PD16-5
END

IF ~~ THEN BEGIN PD16-2
SAY ~Ah sì? Beh, non so che farci. Può capitare a tutti di avere il sonno agitato, no?~
IF ~~ THEN REPLY ~C'è qualche incubo che ti perseguita, forse?~ GOTO PD16-3
IF ~Global("EdwinRomanceActive","GLOBAL",2)~ THEN REPLY ~Per una volta, Edwin è stato abbastanza intelligente da capire che un mediatore sarebbe stato più adatto. Diversamente, sono sicuro che avreste finito per insultarvi a vicenda, non è così?~ GOTO PD16-4
IF ~!Global("EdwinRomanceActive","GLOBAL",2)~ THEN REPLY ~Per una volta, Edwin è stato abbastanza intelligente da capire che un mediatore sarebbe stato più adatto. Diversamente, sono sicuro che avreste finito per insultarvi a vicenda, non è così?~ GOTO PD16-5
END

IF ~~ THEN BEGIN PD16-4
SAY ~In ogni caso, il nostro caro stregone potrebbe dormire tra le tue braccia e lontano da me, visto che gli arreco così tanto fastidio. Non vedo altra soluzione.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD16-5
SAY ~In ogni caso, il nostro caro stregone può mettersi a dormire lontano da me, visto che gli arreco così tanto fastidio. Non vedo altra soluzione.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD17
SAY ~Oh, no!~
= ~Va... Va meglio adesso?~
IF ~~ THEN DO ~StartCutScene("tb#sfix")~ EXIT
END

END

CHAIN
IF ~~ THEN TB#STIVJ PD16-3
~Beh... Non ricordo con precisione l'ultimo sogno che ho fatto, ma te lo racconterò volentieri, se pensi che possa servire a qualcosa.~
= ~Vengo divorato dai gabbiani, <CHARNAME>. Uno stormo incredibile di quei pennuti si scaglia contro di me, ma io non riesco a fuggire perchè ho i piedi piantati per terra e... E iniziano a cibarsi di me, a infilzarmi con quei loro schifidi becchi e...~
= ~E nessuno viene ad aiutarmi.~
= ~Cosa voglia dire un simile sogno... Non lo so.~
== HAERDAJ IF ~InParty("Haerdalis") !StateCheck("Haerdalis",CD_STATE_NOTVALID)~ THEN ~"Mai sottovalutare i sogni". La mia Raelis me lo ripeteva spesso e volentieri, ma io non vi ho mai prestato grande attenzione. All'epoca avevo altri pensieri per la testa, capisci.~
END
IF ~Global("EdwinRomanceActive","GLOBAL",2)~ THEN EXTERN TB#STIVJ PD16-4
IF ~Global("EdwinRomanceActive","GLOBAL",2)~ THEN EXTERN TB#STIVJ PD16-5
