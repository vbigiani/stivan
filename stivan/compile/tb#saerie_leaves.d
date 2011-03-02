/* Variables:

tb#StivanAerie: tracks the quest.
  0,1,2: other Stivan/Aerie banters.
      3: Aerie just left.
      4: Aerie going to be assassinated.
      5: Aerie saved.
      6: Second assassin group appears.
      7: second assassin group is defeated.
      8: preparing before spawning assassins.
      9: start spawning assassins.
     10: spawning assassins (until "tb#stivanassassintimer","AR0607" runs out)
     11: Stivan waits before going to quest area.
     12: Stivan going to in quest area.
     13: Stivan in quest area.
    100: Aerie re-joined the party.
*/

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanAerie", "GLOBAL",2)
OR(7)
AreaCheck("ar0020")
AreaCheck("ar0300")
AreaCheck("ar0400")
AreaCheck("ar0500")
AreaCheck("ar0700")
AreaCheck("ar0900")
AreaCheck("ar1000")
~ THEN BAERIE aeriegone
~Oh! Stivan, una farfalla si è posata sui tuoi capelli!~
DO ~SetGlobal("tb#StivanAerie", "GLOBAL",3)~
== TB#STIVB ~...~
= ~... Ora non più.~
== BAERIE ~NO! L'hai... L'hai uccisa! Perchè? Perchè l'hai fatto?!~
== TB#STIVB ~La prossima volta non scambierà più la mia chioma per un fiore.~
== BAERIE ~C-come potrà esserci un'altra volta se l'hai uccisa? Sei... Sei un mostro!~
== TB#STIVB ~Visto che questa farfalla ti stava particolarmente a cuore, prendine pure i resti e seppelliscili. Tieni: sono qui nella mia mano. Penso che faticherai non poco a ricomporli...~
== BAERIE ~AHHH! N-non avvicinarti!~
== TB#STIVB ~Ebbene? Non vuoi più i resti di questa creaturina dalle ali sfaldate? A proposito, che ironica coincidenza: è la stessa fine che hanno fatto le tue, giusto?~
== BAERIE ~N-no!~
== BMAZZY IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN ~Ora basta, Stivan! Hai oltrepassato il limite!~
== TB#STIVB ~Hai ragione: sono appassite, sono marcite!~
== BAERIE ~S-smettila!~
== TB#STIVB ~Lo sai che non ricresceranno più?~
== BMAZZY IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN ~*Piantala*!~
== BAERIE ~Ahhh!~
== TB#STIVB ~"E fu così che Aerie scoppiò in lacrime e corse via". Quando voglio sbarazzarmi di una persona fastidiosa so essere *così* crudele... Mwahahahah!~
== BMINSC IF ~IsValidForPartyDialog("Minsc")~ ~Non capisco. Perché il nostro amico Stivan sta parlando così male della dolce Aerie?~
== BAERIE IF ~!Dead("quaylem") !Dead("quayle")~ THEN ~*SOB*! Ho deciso. Me ne vado... Torno da zio Quayle!~
== BAERIE IF ~OR(2) Dead("quaylem") Dead("quayle")~ THEN ~*SOB*! Ho deciso. Me ne vado... Torno al circo!~
== BAERIE ~<CHARNAME>, non... Non cercarmi. Non prima di esserti disfatta di... di... di quel...~
END
IF ~OR(2) Global("aerieRomanceActive","GLOBAL",1) Global("aerieRomanceActive","GLOBAL",2)~ THEN REPLY ~Aerie, no! Non lasciarmi solo!~ EXTERN BAERIE aeriegone3
IF ~OR(2) Global("aerieRomanceActive","GLOBAL",1) Global("aerieRomanceActive","GLOBAL",2)~ THEN REPLY ~Credevo... Credevo che tu ed io avessimo un rapporto speciale. Invece vedo che non esiti a voltarmi le spalle. Non significo nulla per te?~ EXTERN BAERIE aeriegone1
IF ~!Global("aerieRomanceActive","GLOBAL",1) !Global("aerieRomanceActive","GLOBAL",2)~ THEN REPLY ~Così sia. Vattene e non tornare mai più.~ EXTERN BAERIE aeriegone3
IF ~~ THEN REPLY ~Sapevo che sarebbe andata a finire così. Stivan, sei un idiota!~ EXTERN BAERIE aeriegone3
IF ~~ THEN REPLY ~Dovresti vergogarti di te stessa. Sarebbe questo il modo con cui mi ringrazi per averti strappato dalle grinfie di Kalah?~ EXTERN BAERIE aeriegone2

CHAIN IF ~~ THEN BAERIE aeriegone1
~Io... Sono io a non significare nulla per te, altrimenti non gli avresti permesso di maltrattarmi in questo modo! Ormai... E' finita.~
EXTERN BAERIE aeriegone3

CHAIN IF ~~ THEN BAERIE aeriegone2
~No, non è andata così. Tu... Mi hai salvata da un mostro solo per mettermi nelle mani di un altro! Ma ora... Ora basta.~
EXTERN BAERIE aeriegone3

CHAIN IF ~~ THEN BAERIE aeriegone3
~Addio, <CHARNAME>.~
BRANCH ~IsValidForPartyDialog("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ BEGIN
== BJAHEIR ~Perchè invece di fuggire non affronti il problema? Se ti sottrai ad ogni difficoltà, non imparerai nulla dalla vita.~
== BAERIE ~Cosa potrei imparare da un essere così cattivo? Inoltre sono più grande di te, Jaheira... Non ho bisogno dei tuoi consigli!~
== BJAHEIR ~Età non significa esperienza. Lo capirai col tempo, spero.~
END
BRANCH ~IsValidForPartyDialog("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ BEGIN
== BCERND ~Vergognati, Stivan. La crudeltà verso gli animali è tirocinio della crudeltà verso gli uomini.~
== TB#STIVB ~Cosa *diavolo* c'entra questo con la dipartita di quella scema?~
== BCERND ~Ti sei forse dimenticato che il vostro diverbio ha avuto inizio dall'uccisione di un'innocente farfalla?~
== TB#STIVB ~Ah sì?~
== BCERND ~...~
END
BRANCH ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ BEGIN
== BMAZZY ~*Slap!*~
== TB#STIVJ ~Ahio!~
== BMAZZY ~*Slap!*~
== TB#STIVJ ~Ahi!~
== BMAZZY ~*Slap!*~
== TB#STIVJ ~Ho capito il concetto, smettila!~
== BMAZZY ~Smetterò solo quando ti sarai adeguatamente scusato! *Slap!*~
== TB#STIVJ ~Povera illus - Ahi!~
END
BRANCH ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ BEGIN
== BNALIA ~Stivan! Il tuo comportamento è stato oltremodo inqualificabile!~
== TB#STIVB ~Eh?~
== BNALIA ~Hai l'imperativo categorico di recarti a porgere ammenda per la tua turpe condotta!~
== TB#STIVB ~Insomma, non capisco il linguaggio colto! Parlate come mangiate!~
== BNALIA ~...~
END
== BEDWIN IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN ~(Che stia imparando da me come si trattano le donne?)~
BRANCH ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ BEGIN
== BVICONI ~E così hai deciso di spiccare il volo, sorella della luce? Oh, ma che sciocca... Dimenticavo che non puoi più volare.~
== BAERIE ~S-sarà una liberazione non averti più vicino!~
== BVICONI ~Potrei dire lo stesso.~
END
== BVALYGA IF ~InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN ~Non so se essere lieto per aver rimosso uno stregone dal gruppo, o adirato per averci dentro un demone.~
== BIMOEN2 IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN ~Stivan! Il tuo comportamento non è per niente simpatico!~
BRANCH ~IsValidForPartyDialog("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ BEGIN
== BYOSHIM ~E' un peccato che tu te ne vada.~
== BAERIE ~Non ho scelta, Yoshimo. Mi... Mi dispiace...~
END
== BKORGAN IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN ~Har har! Congratulazioni, ragazzino! Stanotte ti pago io la prostituta, te la sei meritata!~
== BKELDOR IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN ~Quanto a lungo ancora abuserai della nostra pazienza, halfling?~
== BANOMEN IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenIsNotKnight","GLOBAL",0)~ THEN ~Insomma, <CHARNAME>! Come puoi continuare ad ospitare un simile attaccabrighe?~
== BANOMEN IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenIsNotKnight","GLOBAL",1)~ THEN ~Aerie è sicuramente una palla al piede, ma il modo in cui te ne sei disfatto è eccessivo. Non è mai una buona idea bruciare completamente un ponte.~
BRANCH ~InParty("haerdalis") !StateCheck("haerdalis",CD_STATE_NOTVALID) Global("HaerDalisRomanceActive","GLOBAL",2)~ BEGIN
== BHAERDA ~Aspetta, Aerie! Non lasciare che questo sparviero sia costretto a vivere senza di te!~
== BAERIE ~Non voglio che tu mi segua. Io... Sono molto amareggiata dal tuo comportamento.~
== BHAERDA ~Cosa ho fatto per seminare rammarico e dispiacere nel tuo cuore?~
== BAERIE ~Non hai pronunciato una singola parola in mia difesa! Hai osservato lo spettacolo della mia umiliazione senza dire alcunchè! Io... Non voglio un uomo che assiste impassibile o divertito alla mia derisione. Nessuna donna lo vorrebbe.~
END
== BHAERDA IF ~InParty("haerdalis") !StateCheck("haerdalis",CD_STATE_NOTVALID) !Global("HaerDalisRomanceActive","GLOBAL",2)~ THEN ~Ti sembra modo di trattare una fanciulla, mio gabbiano?~
BRANCH ~IsValidForPartyDialog("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) Global("MinscWitch","GLOBAL",1)~ BEGIN
== BMINSC ~Cosa succede? Perchè la mia strega se ne sta andando? Boo! Boo, svegliati! Dobbiamo seguire Aerie!~
== BAERIE ~Minsc, tu... Tu mi seguiresti? Oh, ti sono grata, ma... I tuoi doveri verso <CHARNAME>?~
== BMINSC ~Boo dice che non possiamo abbandonare il nostro eroe preferito, ma Minsc ha anche giurato di proteggerti sino all'ultimo respiro! Cosa faremo se qualche brutto prepotente ti farà del come alla gloriosa Dynaheir? E cosa faremo se il mago cattivo cercherà di imprigionare nuovamente <CHARNAME>?~
= ~...~
= ~Boo dice che nessuno sa se sia nato prima l'uovo o la gallina, ma Minsc non ha tempo per le questioni filosofiche!~
== BAERIE ~Non hai motivo di preoccuparti. Da questo momento io... Non sono più la tua strega. Torno ad essere una comune Avariel a cui sono state recise le ali. A-addio...~
== BMINSC ~No! NOOO! Questo ranger e questo criceto hanno perso la loro strega... ancora una volta! NOOOOO!!!~
END
== TB#STIVB ~Umhh... Forse ho esagerato un po'. Dici che dovrei scusarmi?~
END
IF ~~ THEN REPLY ~Un po'?! Sei fortunato che la tua testa sia ancora attaccata al resto del corpo! Và immediatamente a scusarti!~ EXTERN tb#stivb aeriegone4
IF ~~ THEN REPLY ~Anche secondo me Aerie è una rompiscatole, ma le sue capacità sono indispensabili per la nostra missione. Andiamo al circo, e speriamo che accetti le tue scuse.~ EXTERN tb#stivb aeriegone4
 
APPEND tb#stivb
  IF ~~ THEN aeriegone4
  SAY ~Heh. Modestamente, sono il migliore nel porgere scuse false!~
  IF ~~ THEN REPLY ~Stivan!~ GOTO aeriegone5
  END
END

CHAIN IF ~~ THEN tb#stivb aeriegone5
~E' più forte di me, <CHARNAME>. Resisto a tutto, ma non alle tentazioni.~
BRANCH ~InParty("haerdalis") !StateCheck("haerdalis",CD_STATE_NOTVALID) Global("HaerDalisRomanceActive","GLOBAL",2)~ BEGIN
== BHAERDA ~Ah, dei! Gli anziani non mentono quando dicono che si conosce la profondità del proprio amore soltanto nell'ora del distacco!~
== TB#STIVB ~Non siamo a teatro, Haer'Dalis. Risparmia la tua drammaticità per altre occasioni.~
== BHAERDA ~Ti conviene porgere le tue scuse alla mia dolce metà quanto prima, altrimenti non esiterò a bagnare le mie lame col tuo sangue per riavere la mia colombella.~
END
BRANCH ~IsValidForPartyDialog("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) Global("MinscWitch","GLOBAL",1)~ BEGIN
== TB#STIVB ~Uhm? Da dove viene questo ringhio?~
== BMINSC ~RRRAAAARRGGHHH! Boo non capisce come una simile malvagità possa stare in un corpo piccolo come il tuo, ma a Minsc non importa! MINSC E' FURIOSO!~
== TB#STIVB ~Eeekkk!~
== BMINSC ~Strapperemo le tue perfide membra e polverizzeremo le tue vili ossa! Boo non lascerà nemmeno una briciola!~
== TB#STIVB ~Si-sistemerò tutto! Convincerò l'elfa a tornare e --~
== BMINSC ~Promesse da marinaio! Noi crediamo solo a ciò che vedono i nostri occhi, e al momento non c'è nessuna strega all'orizzonte! Nessuna strega... (Sniff) ... per l'ennesima volta!~
== TB#STIVB ~Non piangere, Minsc. Mi fai sentire in colpa...~
== BMINSC ~*SOB*! Oh, me infelice! Perchè le protette di Minsc sono sempre assediate da omini spietati? E perchè Minsc non riesce mai a proteggerle?~
END
== TB#STIVB ~(Sospiro) Andiamo al circo a vedere se la piagnona si è calmata.~
END
IF ~~ DO ~ActionOverride("aerie",LeaveParty()) ActionOverride("aerie",SetGlobal("KickedOut","LOCALS",1)) ActionOverride("Aerie",LeaveAreaLUA("ar0607","",[469.437],14))~ UNSOLVED_JOURNAL ~Aerie lascia il gruppo.
Stivan ha insultato Aerie al punto da farle abbandonare il gruppo in lacrime. Devo andare al Circo a vedere se sia disposta a scusarci.~ EXIT


APPEND aeriep
  IF WEIGHT #-1 ~GlobalGT("tb#StivanAerie","GLOBAL",2) GlobalLT("tb#StivanAerie","GLOBAL",100) OR(2) !Dead("tb#stiv") InPartyAllowDead("tb#stiv")~ angry
  SAY ~No, <CHARNAME>, non ti voglio parlare. Non finché Stivan non si sarà scusato.~
  IF ~~ THEN EXIT
  END
  IF WEIGHT #-1 ~GlobalGT("tb#StivanAerie","GLOBAL",2) GlobalLT("tb#StivanAerie","GLOBAL",100) Dead("tb#stiv") !InPartyAllowDead("tb#stiv")~ angry2
  SAY ~Ciao, <CHARNAME>. Vedo che ti sei disfatto di Stivan... permanentemente.~
  IF ~~ THEN DO ~SetGlobal("tb#StivanAerie","GLOBAL",100)~ GOTO angry3
  END

  IF ~~ THEN angry3
  SAY ~V... Vuoi che torni a viaggiare con te?~
  COPY_TRANS aeriep 0
  END
END

APPEND quayle
  IF WEIGHT #-1 ~GlobalGT("tb#StivanAerie","GLOBAL",2) GlobalLT("tb#StivanAerie","GLOBAL",100)~ angry
    SAY ~Come osi mostrarti qui dopo quello che il tuo "amico" ha fatto alla mia Aerie?~
    IF ~~ THEN EXIT
  END
END

CHAIN IF WEIGHT #-100 ~Global("tb#StivanAerie","GLOBAL",3) IsValidForPartyDialog("tb#stiv")~ THEN aeriep assassination
~Cosa ci fai qui, <CHARNAME>?~
BRANCH ~IsValidForPartyDialog("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) Global("MinscWitch","GLOBAL",1)~ BEGIN
== BMINSC ~Aerie! Sei sana e salva! Oh, la tua fuga ha quasi spezzato il piccolo cuore di Boo, e anche quello di Minsc è stato sul punto di andare in frantumi!~
== AERIEP ~Sono felice di rivedervi. Mi rattrista sapere di avervi fatto soffrire, ma... Dovete abituarvi all'idea di non avermi più al vostro fianco.~
== BMINSC ~No! Non lo accetto! Senza di te Boo ed io siamo come un fodero senza spada, un'elsa senza lama o... uno scoiattolo senza noci! Non puoi abbandonarci!~
== AERIEP ~Io...~
== BMINSC ~Minsc capisce che tu voglia stare per conto tuo. A volte anche la possente Dynaheir chiedeva ai suoi fieri guardiani di lasciarla da sola per un po'  , ma non li avrebbe mai abbandonati, nossignore! Sapeva bene che dopo un momento buio e difficile Minsc e Boo erano pronti a risollevarle il morale!~
== AERIEP ~Sono... commossa, Minsc. Solo adesso mi rendo conto di quanto tu e il tuo criceto mi vogliate bene!~
== tb#stivj ~*Ahem* Immagino che sia giunto il mio turno. Beh, io...~
END
== tb#stivj ~Aerie, dietro di te! Lancia Pelle di Pietra!~
== AERIEP ~Taci! Perché dovrei ascoltarti?~
== tb#stivj ~Fallo e basta!~
END
IF ~~ THEN DO ~SetGlobal("tb#StivanAerie","GLOBAL",4)~ EXIT

CHAIN IF WEIGHT #-100 ~Global("tb#StivanAerie","GLOBAL",5) Dead("tb#sass") IsValidForPartyDialog("tb#stiv")~ THEN aeriep postassassination
~(Pant pant) Grazie, Stivan. Io... Non mi aspettavo un gesto così altruista da parte tua.~
== tb#stivj ~Scusami, Aerie. A volte sono un idiota.~
== aeriep ~E' troppo facile insultare le persone e poi chiedere scusa!~
== tb#stivj ~Mi dispiace, Aerie, ma non so cos'altro fare oltre che ripetere il vuoto rituale del chiedere scusa.~
= ~Attenta, un altro!~
DO ~SetGlobal("tb#StivanAerie","GLOBAL",6)~
EXIT

CHAIN IF WEIGHT #-100 ~Global("tb#StivanAerie","GLOBAL",7) NumDead("tb#sass",3) IsValidForPartyDialog("tb#stiv")~ THEN aeriep divination1
~Baervar mi protegga! Chi può volermi così male da mandare tutti questi assassini?~
== tb#stivj ~Non lo so.~
BRANCH ~InParty("haerdalis") !StateCheck("haerdalis",CD_STATE_NOTVALID) Global("HaerDalisRomanceActive","GLOBAL",2)~ BEGIN
== BHAERDA ~Amore mio! Sei ferita? Stai bene?~
== AERIEP ~S-sì... Credo di sì, sono solo un po' scossa...~
== BHAERDA ~Perdonami. Perdonami per non aver difeso il tuo onore come avrei dovuto. L'istinto detta il dovere, ma l'intelligenza fornisce sempre i pretesti per eluderlo.~
== AERIEP ~Questo... Non è davvero il momento.~
== BHAERDA ~Ti prego, non respingermi. Lascia che questo sparviero abbia la possibilità di redimersi dalle proprie colpe. Un amore crollato, se ricostruito, cresce forte, leggiadro, forte più di prima.~
= ~Abbracciami; abbracciami ancora una volta, e posa le tue labbra che stillano miele vergine sulle mie!~
== AERIEP ~(Arrossisce) Noi... Ne riparleremo più tardi, quando avremo capito cosa sta succedendo...~
END
== tb#stivj ~E' una mia impressione o questi tizi hanno la stessa faccia? Quasi fossero... gemelli.~
= ~Gasp! Uno si è volatilizzato nell'aria!~
== aeriep ~Ho sentito parlare di cose simili... una magia che... che evoca continuamente assassini contro la... vittima.~
== tb#stivj ~Gasp! Come si ferma questa magia?~
== aeriep ~Chiunque l'abbia lanciata possiede un ricciolo dei miei capelli. Se qualcuno riuscisse a toglierglielo l'effetto svanirebbe... almeno credo.~
== tb#stivj ~Heh, credo di fare al caso tuo. Modestamente, sono un mago nei furti! Dove trovo l'autore di questa stregoneria?~
== aeriep ~Posso provare con un'incantesimo di divinazione... ma voi dovete proteggermi mentre lo lancio.~
END
IF ~~ THEN REPLY ~Un attimo e siamo pronti.~ EXTERN aeriep divination2
IF ~~ THEN REPLY ~Siamo pronti. Fai quello che devi fare.~ EXTERN aeriep divination3

APPEND aeriep
  IF ~~ THEN divination2
    SAY ~Per favore, fai in fretta!~
      IF ~~ THEN DO ~SetGlobal("tb#StivanAerie","GLOBAL",8)~ EXIT
    END

  IF ~~ THEN divination3
    SAY ~Gr.. Grazie. Arrivano...~
      IF ~~ THEN DO ~SetGlobal("tb#StivanAerie","GLOBAL",9)~ EXIT
    END
    
  IF WEIGHT #-100 ~Global("tb#StivanAerie","GLOBAL",8) IsValidForPartyDialog("tb#stiv")~ ready
    SAY ~Siete pronti?~
      IF ~~ THEN REPLY ~Un attimo e siamo pronti.~ EXTERN aeriep divination2
      IF ~~ THEN REPLY ~Siamo pronti. Fai quello che devi fare.~ EXTERN aeriep divination3
    END    
END

CHAIN IF WEIGHT #-100 ~Global("tb#stivanAerie","GLOBAL",10) GlobalTimerExpired("tb#StivanAerieTimer","AR0607") IsValidForPartyDialog("tb#stiv")~ THEN aeriep gotTarget
~Grazie di.. di avermi protetto. La... la mia magia ha avuto successo.~
= ~Il mago si trova in un palazzo nel quartiere halfling.~
== tb#stivj ~(Gasp) il palazzo di Estel Necri? La necromante halfling con le cui storie mia Mamma mi spaventava sempre quando disubbidivo?~
== aeriep ~Non.. non lo so, ma è l'unico palazzo nel quartiere halfling.~
== tb#stivj ~Ho capito. Allora vedo una sola strada possibile: voi restate qui a difendere Aerie, mentre io mi intrufolo là e sottraggo la tua ciocca di capelli.~
== aeriep ~Il palazzo è pieno di guardie, nessuno riuscirebbe ad accostarsi ad Estel senza un'esercito!~
== tb#stivj ~Dimentichi con chi parli. Io sono il Cacciatore, e nessuno è migliore di me nell'intrufolarsi in luoghi protetti e infilare una lama nella schiena dei maghi cattivi!~
== aeriep ~Hai ragione, dimentico che sto parlando con la persona che mi ha fatto abbandonare <CHARNAME> in lacrime non un'ora fa.~
== tb#stivj ~Perché indugiare sul passato quando nel presente rischi la vita?~
== aeriep ~In effetti, stai rischiando la tua stessa vita per proteggermi. Grazie.~
== tb#stivj ~Grazie a te di avermi concesso una seconda possibilità! <CHARNAME>, mi raccomando, proteggi Aerie mentre mi infiltro là!~
= ~Non vorrei sterminare una dozzina di guardie e un arcimago per poi trovare Aerie morta perché ti sei distratto!~
END
IF ~~ THEN REPLY ~Tranquillo, ci penso io ad Aerie.~ EXTERN tb#STIVJ gotTarget3
IF ~~ THEN REPLY ~Aspetta un attimo qui, devo passarti qualche oggetto magico per renderti la vita più facile.~ EXTERN tb#STIVJ gotTarget2

APPEND tb#stivj
  IF ~~ THEN gotTarget2
    SAY ~Non è mai una cattiva idea prestarmi oggetti magici e costosi. Se fai il bravo te li rendo anziché venderli al mio amico Roger!~
      IF ~~ THEN DO ~SetGlobal("tb#StivanAerie","GLOBAL",11)~ EXIT
    END

  IF ~~ THEN gotTarget3
    SAY ~Sono pronto.~
      IF ~~ THEN DO ~SetGlobal("tb#StivanAerie","GLOBAL",12)~ EXIT
  END
    
  IF WEIGHT #-100 ~Global("tb#StivanAerie","GLOBAL",11)~ gotTarget4
    SAY ~Siete pronti a difendere Aerie mentre faccio il mio lavoro?~
      IF ~~ THEN REPLY ~Tranquillo, ci penso io ad Aerie.~ EXTERN tb#STIVJ gotTarget3
      IF ~~ THEN REPLY ~Aspetta un attimo qui, devo passarti qualche oggetto magico per renderti la vita più facile.~ EXTERN tb#STIVJ gotTarget2
    END    
END

APPEND aeriep
  IF WEIGHT #-100 ~Global("tb#StivanAerie","GLOBAL",11)~ THEN gotTarget
    SAY ~Fo.. forse dovresti parlare con Stivan.~
      IF ~~ THEN EXTERN tb#stivj gotTarget4
  END
END

BEGIN TB#SNEC

IF ~Dead("tb#sgua")~ THEN kill
SAY ~Tu! Hai ucciso le mie guardie! Muori!~
IF ~~ THEN DO ~Enemy() Shout(153)~ EXIT
END

IF ~!Dead("tb#sgua")~ THEN necri
SAY ~Chi va là?~
IF ~!StateCheck("tb#stiv",STATE_INVISIBLE)~ THEN REPLY ~(Tagliale la gola in silenzio)~ GOTO slitThroatFail
IF ~StateCheck("tb#stiv", STATE_INVISIBLE)~ THEN REPLY ~(Tagliale la gola in silenzio)~ GOTO slitThroatSuccess
IF ~CheckStatLT("tb#stiv",100,PICKPOCKET)~ THEN REPLY ~(Tenta di rubare la ciocca di capelli)~ GOTO pickpocketFail
IF ~CheckStatGT("tb#stiv",99,PICKPOCKET)~  THEN REPLY ~(Tenta di rubare la ciocca di capelli)~ EXTERN tb#stivj pickpocketSuccess
IF ~~ THEN REPLY ~(Chiedi perché manda assassini)~ EXTERN tb#stivj askNecri
END

IF ~~ THEN slitThroatFail
SAY ~Aiuto! Un assassino in casa!~
IF ~~ THEN DO ~Enemy() Shout(153)~ EXIT
END

IF ~~ THEN pickpocketFail
SAY ~Aiuto! Un ladro in casa!~
IF ~~ THEN DO ~Enemy() Shout(153)~ EXIT
END

CHAIN IF ~~ THEN tb#SNEC slitThroatSuccess
~Urghk!~
DO ~Kill("tb#snec")~
== TB#STIVJ ~Heh. Un lavoro semplice e veloce.~
EXIT

APPEND TB#STIVJ
  IF ~~ THEN pickpocketSuccess
    SAY ~Yoink!~
      IF ~~ THEN DO ~GiveItemCreate("tb#stiv","tb#sloc",1,0,0)~ EXIT
  END

  IF ~~ THEN askNecri
    SAY ~Gentile Signora, sono un amico di Aerie, e vorrei sapere perchè voi state mandando assassini contro di lei.~
      IF ~~ THEN EXTERN tb#Snec slitThroatFail
  END
END

CHAIN IF WEIGHT #-100 ~Global("tb#StivanAerie","GLOBAL",13) PartyHasItem("tb#sloc") InMyArea("tb#stiv")~ THEN aeriep final
~Hai.. hai la mia ciocca di capelli?~
== tb#stivj ~Ci puoi scommettere. Ora, sei disposta a perdonarmi?~
DO ~SetGlobal("tb#StivanAerie","GLOBAL",100)~
== aeriep ~S.. Sì. Hai dimostrato che sei disposto a mettere a rischio la tua vita per difendermi, nonostante tutto.~
= ~<CHARNAME>, vuoi che mi riunisca al gruppo?~
COPY_TRANS aeriep 0

