BEGIN TB#STIV

IF ~NumTimesTalkedTo(0)~ THEN BEGIN StivanFirstMeet
SAY ~Hai visto un gabbiano qui attorno, per caso? Io sono Stivan il Cacciatore di Gabbiani, potente e famoso. Ehm... Ti interessa comprare una piuma? Ne ho in abbondanza, davvero.~
IF ~~ THEN REPLY ~Volentieri. Quanto costa una?~ GOTO StivanFirstMeet1-1
IF ~~ THEN REPLY ~Un cacciatore di gabbiani? Ho capito bene?~ GOTO StivanFirstMeet1-2
IF ~~ THEN REPLY ~Scusa, ma... Perch� ce l'hai tanto con quei poveri uccelli?~ GOTO StivanFirstMeet1-3
IF ~~ THEN REPLY ~Piume? No, grazie. Magari un'altra volta.~ EXIT
END

IF ~~ THEN BEGIN StivanFirstMeet1-1
SAY ~Una moneta d'oro ed � tua!~
IF ~PartyGoldGT(0)~ THEN REPLY ~Molto bene. Ecco, a te.~ DO ~GiveItemCreate("tb#splu",Player1,0,0,0) DestroyGold(1)~ GOTO StivanFirstMeet1-1a
IF ~~ THEN REPLY ~Scusami, ma ho cambiato idea.~ EXIT
END

IF ~~ THEN BEGIN StivanFirstMeet1-1a
SAY ~Yeah! Grazie mille, straniero!~
IF ~~ THEN REPLY ~Di nulla. Alla prossima!~ EXIT
IF ~~ THEN REPLY ~Cosa fa un halfling come te nella capitale dell'Amn?~ GOTO StivanFirstMeet1-4
IF ~~ THEN REPLY ~Hai detto di essere un cacciatore di gabbiani, giusto?~ GOTO StivanFirstMeet1-2
END 

IF ~~ THEN BEGIN StivanFirstMeet1-2
SAY ~S�, caccio gabbiani. Sono i vermi del mare, sono, e io ho combattuto coraggiosamente contro centinaia di loro. Centinaia, ti dico!~
IF ~~ THEN REPLY ~Ehm... Ti auguro una buona caccia, allora.~ EXIT
IF ~~ THEN REPLY ~Cos'altro fa un halfling come te nella capitale dell'Amn?~ GOTO StivanFirstMeet1-4
IF ~~ THEN REPLY ~Scusa, ma... Perch� ce l'hai tanto con quei poveri uccelli?~ GOTO StivanFirstMeet1-3
END

IF ~~ THEN BEGIN StivanFirstMeet1-3
SAY ~Hai mai guardato un gabbiano negli occhi, eh? C'� il male... Male puro. E io ho intenzione di cacciarli tutti... Tutti quanti!~
IF ~~ THEN REPLY ~Ehm... Ti auguro una buona caccia, allora.~ EXIT
IF ~~ THEN REPLY ~Cos'altro fa un halfling come te nella capitale dell'Amn?~ GOTO StivanFirstMeet1-4
END

IF ~~ THEN BEGIN StivanFirstMeet1-4
SAY ~A parte cacciare gabbiani e venderne le piume? Beh, mi piace aggirarmi per le strade della mia Athkatla, di cui ormai conosco ogni segreto. A volte mi trovo costretto ad affrontare qualche brigante, ma ho imparato a sbarazzarmene da tempo. Del resto, quando uno vive sotto i ponti ha ben poca scelta.~
IF ~~ THEN REPLY ~Uhm... Credo che tu faccia proprio al caso mio. Vedi, una serie di eventi mi ha portato in questa citt� di cui so poco o nulla, ed una guida come te potrebbe essermi utile. Che ne dici di unirti al mio gruppo?~ GOTO StivanFirstMeet1-5
IF ~~ THEN REPLY ~Se vuoi lasciarti la vita di strada alle spalle posso offrirti un posto nella mia compagnia.~ GOTO StivanFirstMeet1-5
IF ~~ THEN REPLY ~A giudicare dal modo in cui agiti quell'arma sembri un tipo piuttosto abile. Invece di cacciare quei poveri uccelli, perch� non ti unisci al mio gruppo?~ GOTO StivanFirstMeet1-5
IF ~~ THEN REPLY ~L'hai detto. Tieni duro, Stivan.~ EXIT
END

IF ~~ THEN BEGIN StivanFirstMeet1-5
SAY ~Ooooh! Viaggiare con una banda di avventurieri! Fare loro da guida! Difenderli dagli attacchi aerei dei gabbiani! WOW!~
= ~Come ti chiami, straniero?~
IF ~~ THEN REPLY ~<CHARNAME>. <CHARNAME> di Candlekeep.~ GOTO StivanFirstMeet1-6
IF ~Gender(Player1,MALE)~ THEN REPLY ~Non mi conosci? Io sono <CHARNAME>, l'eroe di Baldur's Gate.~ GOTO StivanFirstMeet1-6
IF ~Gender(Player1,FEMALE)~ THEN REPLY ~Non mi conosci? Io sono <CHARNAME>, l'eroina di Baldur's Gate.~ GOTO StivanFirstMeet1-6
IF ~~ THEN REPLY ~Hai davanti a te <CHARNAME>, il miglior <CLASS> di tutta Faerun.~ GOTO StivanFirstMeet1-6
END

IF ~~ THEN BEGIN StivanFirstMeet1-6
SAY ~<CHARNAME>? Mai sentito nominare, ma poco importa! Quale sar� il nostro obiettivo principale, la meta verso cui ci dirigeremo intrepidi?~
IF ~~ THEN REPLY ~Ho un conto in sospeso con un mago chiamato Irenicus.~ GOTO StivanFirstMeet1-7
IF ~~ THEN REPLY ~Ho intenzione di ritrovare Imoen, una mia cara amica d'infanzia che � stata rapita dagli Stregoni Incappucciati.~ GOTO StivanFirstMeet1-7
IF ~~ THEN REPLY ~Andiamo in cerca di risposte, Stivan. Devo scoprire che fine hanno fatto Imoen, un'amica di Candlekeep, e Irenicus, un pazzo che si � divertito a torturare me e alcuni miei compagni.~ GOTO StivanFirstMeet1-7
END

IF ~~ THEN BEGIN StivanFirstMeet1-7
SAY ~WOW! Sembra tutto fuorch� promettente, ma chi se ne frega! Andiamo! Ci sono stormi di pennuti da spennare e...~
= ~Ah. C'� un piccolo problema di cui mi ero dimenticato. Ehm... Potresti farmi un favore?~
IF ~~ THEN REPLY ~Di cosa hai bisogno?~ GOTO StivanFirstMeet1-8
IF ~~ THEN REPLY ~Dipende, Stivan. Spiegami di cosa si tratta.~ GOTO StivanFirstMeet1-8
IF ~~ THEN REPLY ~Neanche il tempo di unirti al mio gruppo e gi� porti rogne. Fantastico.~ GOTO StivanFirstMeet1-8
END

IF ~~ THEN BEGIN StivanFirstMeet1-8
SAY ~Beh, ecco... Vedi quest'urna? Dentro ci sono le ceneri dei miei familiari. Sono stati... Sono stati uccisi da quegli schifidi uccelli di porto molto tempo fa.~
= ~Non posso portarla con me. Ci sono buone probabilit� che vada in frantumi mentre acceco un nemico con cacca di gabbiano o ne soffoco un altro con un p� di piume. Non � un'impresa facile, sai?~
IF ~~ THEN REPLY ~Posso a malapena immaginarlo.~ GOTO StivanFirstMeet1-9
IF ~~ THEN REPLY ~Quindi cosa suggerisci di fare?~ GOTO StivanFirstMeet1-9
IF ~~ THEN REPLY ~Arriva al dunque, grazie.~ GOTO StivanFirstMeet1-9
END

IF ~~ THEN BEGIN StivanFirstMeet1-9
SAY ~La soluzione migliore sarebbe quella di mettere l'urna in una delle tombe del Cimitero in modo che sia al sicuro, ma per farlo avrei bisogno di una quantit� di denaro di cui... *Ahem*... di cui adesso non dispongo. Se tu ti accollassi questa spesa...~
IF ~~ THEN REPLY ~Perch� dovrei fare una cosa simile, Stivan?~ GOTO StivanFirstMeet1-9a
IF ~~ THEN REPLY ~D'accordo, me ne occuper� io. A chi ci dobbiamo rivolgere?~ GOTO StivanFirstMeet1-10
IF ~~ THEN REPLY ~Forse. Quanto verrebbe a costare?~ GOTO StivanFirstMeet1-11
IF ~~ THEN REPLY ~Spiacente, ma non sono interessato ad aiutarti.~ EXIT
END

IF ~~ THEN BEGIN StivanFirstMeet1-9a
SAY ~Io aiuto te e tu aiuti me. Semplice, no?~
IF ~~ THEN REPLY ~Semplice ma non convincente. Trovati qualcun altro, Stivan.~ EXIT
IF ~~ THEN REPLY ~Va bene, mi hai convinto. Come faccio a procurarti una tomba?~GOTO StivanFirstMeet1-10
IF ~~ THEN REPLY ~Ummm... Hai una vaga idea di quanto costerebbe?~ GOTO StivanFirstMeet1-11
END

IF ~~ THEN BEGIN StivanFirstMeet1-10
SAY ~Dovremmo chiedere a qualche impiegato nel Palazzo di Giustizia. E' l� che si occupano di queste cose. Posso contare sul tuo aiuto?~
IF ~~ THEN REPLY ~Direi di s�. Al Quartiere Governativo, allora.~ UNSOLVED_JOURNAL %Alla ricerca di una tomba.

Mentre ci aggiravamo per i Moli abbiamo incontrato Stivan, un halfling nativo di Athkatla a cui ho chiesto di unirsi nella mia ricerca di Imoen e di Irenicus. In cambio di una tomba dove riporre l'urna contenente le ceneri dei suoi cari, Stivan si � offerto di farci da guida in citt� e di proteggerci dai... ehm... gabbiani. L'halfing mi ha suggerito di andare nel Quartiere Governativo e di rivolgermi a qualche impiegato nel Palazzo di Giustizia.% GOTO StivanFirstMeet1-12

IF ~~ THEN REPLY ~Per il momento no. Magari in futuro.~ EXIT
END

IF ~~ THEN BEGIN StivanFirstMeet1-11
SAY ~Boh.~
IF ~~ THEN GOTO StivanFirstMeet1-10
END

IF~ NumTimestalkedToGT(0) ~THEN BEGIN StivanSecondMeet
SAY ~Heh. Non vedo l�ora di vendere le mie ultime piume, cos� potr� andare a caccia di altri gabbiani!~
= ~Voi, laggi�! Perch� non comprate questa bellissima piuma? E� l�ideale per scrivere i pi� epici tra i poemi, nonch� per scoccare le pi� micidiali tra le frecce! Yeah!~
IF ~~ THEN REPLY ~Volentieri. Quanto costa una?~ GOTO StivanFirstMeet1-1
IF ~~ THEN REPLY ~Andare a caccia di gabbiani? Ho capito bene?~ GOTO StivanFirstMeet1-2
IF ~~ THEN REPLY ~Scusa, ma... Perch� ce l'hai tanto con quei poveri uccelli?~ GOTO StivanFirstMeet1-3
IF ~~ THEN REPLY ~Piume? No, grazie. Magari un'altra volta.~ EXIT
END



CHAIN IF ~~ THEN tb#stiv StivanFirstMeet1-12
~Yeah! Andiamo, allora! Ci sono centinaia di gabbiani da spennare a dovere!~ 
DO ~SetGlobal("tb#StivanJoined","LOCALS",1) JoinParty() SetGlobal("tb#stivanEntryTest","GLOBAL",1)~
== TB#STIV IF ~IsValidForPartyDialog("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN ~Ehi, tu! Vieni ed unisciti a Stivan nella sua sacra crociata contro i malvagi gabbiani!! Dobbiamo DISTRUGGERLI TUTTI!! Bwahahahah!!~
== MINSCJ IF ~IsValidForPartyDialog("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN ~Magari mi unir� alla tua caccia un'altra volta: devi sapere che Boo si sente a disagio con gli uccelli marini. E' meglio che gli risparmi una tortura del genere. S�, � meglio per tutti!~
== TB#STIV IF ~IsValidForPartyDialog("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN ~Vigliacco! Hai tremato di fronte al nemico pennuto! Non avrai una seconda possibilit�!~
== AERIEJ IF ~IsValidForPartyDialog("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN ~Faresti del male a quei poveri uccelli? Sono solo dei mangia-carogne... E sono sicura che non ti hanno fatto nulla!~
== TB#STIV IF ~IsValidForPartyDialog("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN ~Sbagliato! Quei demoni hanno portato via tre dei miei fratelli, hanno... Sono una piaga mandataci dagli dei! E IO VI SPUTO ADDOSSO, DEI! PTEWW!! E ANCORA!! PTEWW!!~
== JAHEIRAJ IF ~IsValidForPartyDialog("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN ~Pensi che sia saggio portarlo con noi, <CHARNAME>? Dubito che sia davvero all�altezza delle difficolt� che ci aspettano.~
== NALIAJ IF ~IsValidForPartyDialog("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN ~Piacere, io sono Nalia. Come posso esserti d�aiuto?~
== TB#STIV IF ~IsValidForPartyDialog("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN ~N� Nalia? Siete forse� *Miss* Nalia De�Arnise?~
== NALIAJ IF ~IsValidForPartyDialog("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN ~Non c�� bisogno di essere cos� formali tra compagni d�avventura. Chiamami Nalia. E� pi� che sufficiente.~
== TB#STIV IF ~IsValidForPartyDialog("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN ~Incredibile! Viagger� con una nobile! E che nobile! WOW! Sar� un onore essere il vostro umile sguattero!~
== NALIAJ IF ~IsValidForPartyDialog("Stivan") !StateCheck("Stivan",CD_STATE_NOTVALID)~ THEN ~(Arrossisce) Non dire schiocchezze, Stivan. Mi metti in imbarazzo�~
== EDWINJ IF ~IsValidForPartyDialog("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN ~Grandioso. La cerchia dei tuoi alleati, ad eccezione del sottoscritto, era gi� ampliamente discutibile. Adesso � diventata improponibile.~
== HAERDAJ IF ~IsValidForPartyDialog("Haerdali") !StateCheck("Haerdali",CD_STATE_NOTVALID)~ THEN ~Ah! Complimenti per la scelta, mio corvo. Chi vive senza follia non � cos� savio come crede, e quest�halfling par esserne la prova vivente!~ 
== YOSHJ IF ~IsValidForPartyDialog("Stivan") !StateCheck("Stivan",CD_STATE_NOTVALID)~ THEN ~Ho gi� visto questo tipetto, <CHARNAME>. I suoi schiamazzi non passavano di certo inosservati. Addio, quiete�~
== VICONJ IF ~IsValidForPartyDialog("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN ~Posso sapere perch� hai raccolto quella pulce dalla strada? E� forse un modo con cui speri di risolvere qualche tuo insano problema di coscienza?~
== VALYGARJ IF ~IsValidForPartyDialog("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN ~Non credi che siamo gi� in troppi? Non vorrei che il nostro numero attirasse l�attenzione degli Incappucciati.~
== CERNDJ IF ~IsValidForPartyDialog("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN ~Attendevo il momento in cui ci saremmo incontrati. Uccelli marini garriscono da tempo il tuo nome, riferendomi atti di estrema crudelt� nei loro confronti. Sar� mio compito educarti al rispetto delle creature di Madre Natura.~ 
== TB#STIV IF ~IsValidForPartyDialog("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN ~(Starnutisce) Oh, no. Io sono allergico agli adoratori di alberi!~
== KORGANJ IF ~IsValidForPartyDialog("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN ~Dimmi un p�, <PRO_GIRLBOY>: da quando ci portiamo dietro dei mocciosetti? Io non faccio da balia nemmeno alla mia ascia!~
== TB#STIV IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN ~(Sniff sniff) Sento puzza di perbenismo qui�~
== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN ~Benvenuto a bordo. Io sono Mazzy Fentan, nativa di Trademeet e devota servitrice di Arvoreen.~
== TB#STIV IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN ~Eeekkk! Che orrore!~
== ANOMENJ IF ~IsValidForPartyDialog("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN ~Adesso accogli nel tuo gruppo anche i mendicanti? Per gli dei, dov�� finito il tuo buon senso? Hai bisogno di combattenti validi e devoti, non di accattoni di basso borgo!~
== KELDORJ IF ~IsValidForPartyDialog("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN ~Ci sono difetti che, se sfruttati bene, brillano pi� della stessa virt�. Che possa valere anche per quest�halfling?~
EXIT
