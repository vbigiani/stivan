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
== BMINSC ~Boo dice che non possiamo abbandonare il nostro eroe preferito, ma Minsc ha anche giurato di proteggerti sino all'ultimo respiro! Cosa faremo se qualche brutto prepotente ti farà del male come alla gloriosa Dynaheir? E cosa faremo se il mago cattivo cercherà di imprigionare nuovamente <CHARNAME>?~
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
== BMINSC ~Minsc capisce che tu voglia stare per conto tuo. A volte anche la possente Dynaheir chiedeva ai suoi fieri guardiani di lasciarla da sola per un po', ma non li avrebbe mai abbandonati, nossignore! Sapeva bene che dopo un momento buio e difficile Minsc e Boo erano pronti a risollevarle il morale!~
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
~Baervan mi protegga! Chi può volermi così male da mandare tutti questi assassini?~
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
== aeriep ~Ho p-paura di essere vittima di un maleficio! Qualcuno... Qualcuno mi vuole morta!~
== BMINSC IF ~IsValidForPartyDialog("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN ~Chi?! Chi osa attentare alla vita dell'innocente Aerie?!~
== BEDWIN IF ~IsValidForPartyDialog("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN ~Qualcuno che vuole sbarazzarsi di una potenziale avversaria. In Thay simili incantesimi sono all'ordine del giorno, anche se in questo caso il lanciatore deve mancare di buon senso. (Come può temere una mediocre balbuziente? Sono *io* la vera minaccia!)~
END
IF ~OR(2) Kit(Player1,INQUISITOR) Kit(Player1,WIZARDSLAYER)~ THEN REPLY ~Conosco abbastanza le arti oscure da sapere che simili rituali richiedono un oggetto della vittima. Hai forse perso qualcosa ultimamente?~ EXTERN aeriep divination4
IF ~OR(2) Class(Player1,MAGE_ALL) Class(Player1,SORCERER) !Alignment(Player1,MASK_EVIL)~ THEN REPLY ~Ho studiato abbastanza sulle maledizioni da sapere che simili rituali richiedono un oggetto della vittima. Hai forse perso qualcosa ultimamente?~ EXTERN aeriep divination4
IF ~OR(2) Class(Player1,MAGE_ALL) Class(Player1,SORCERER) Alignment(Player1,MASK_EVIL)~ THEN REPLY ~Ho us..studiato abbastanza maledizioni da sapere che simili rituali richiedono un oggetto della vittima. Hai forse perso qualcosa ultimamente?~ EXTERN aeriep divination4
IF ~~ THEN REPLY ~Faremo il possibile per proteggerti. Hai idea di come porre fine a queste apparizioni?~ EXTERN aeriep divination2
IF ~~ THEN REPLY ~Non capisco. E' forse successo qualcosa di importante da quando ci hai lasciati?~ EXTERN aeriep divination3
IF ~~ THEN REPLY ~Ovviamente tutto questo non sarebbe mai successo se tu avessi evitato un'uscita di scena a dir poco melodrammatiche. (Sospiro) Suggerimenti sul da farsi sono ben accetti.~ EXTERN aeriep divination2

APPEND aeriep
  IF ~~ THEN divination2
    SAY ~Non è possibile spezzare un sortilegio se non si conosce il modo in cui è stato scagliato! L'artefice di tutto questo deve avere qualcosa che mi appartiene... Ma cosa?~
    IF ~~ THEN EXTERN aeriep divination4
  END
  
  IF ~~ THEN divination3
    SAY ~No... Sono corsa subito qui. Ho-ho iniziato a tirar fuori le mie cose dallo zaino e mi sono accorta di non avere più un oggetto a me caro...~ 
    IF ~~ THEN EXTERN aeriep divination4
  END
END

CHAIN IF ~~ THEN aeriep divination4
~Il... Il mio amuleto! Il mio amuleto a forma di procione! Credevo di averlo perso durante uno dei nostri scontri, invece... Deve avermelo rubato questo stregone!~
== tb#stivj ~*Ahem* E' forse inciso nel legno?~
== aeriep ~S-sì, ma... Come fai a saperlo? L'ho sempre custodito gelosamente per evitare che si rovinasse...~
== tb#stivj ~Beh, ecco... E' probabile che sia finito nelle mani sbagliate...~
END
IF ~~ THEN REPLY ~Hai qualche sospetto? Conosci il responsabile?~ EXTERN tb#stivj divination5
IF ~~ THEN REPLY ~La domanda che sto per farti sorge spontanea, Stivan. Se Aerie non ha mai indossato l'amuleto, come puoi conoscere il materiale di cui è fatto?~ EXTERN tb#stivj divination5
IF ~~ THEN REPLY ~E' meglio che non dia voce al terribile sospetto che mi attraversa la mente...~ EXTERN tb#stivj divination5

CHAIN IF ~~ THEN tb#stivj divination5
~La... La scorsa notte, durante il mio turno di guardia, le ho rubato quel gingillo e l'ho gettato via per dispetto. Poi più tardi ho visto una persona in lontananza che lo raccoglieva, ma...~
== aeriep ~NOO! Come... Come hai potuto mettere a rischio la mia vita per una simile sciocchezza? Cosa ti è saltato in testa?!~
== tb#stivj ~(Glom!) Non immaginavo fosse un cattivone!~
== aeriep ~Oh, dannazione, non... Non posso perdere altro tempo! <CHARNAME>, devo... Devo individuare il luogo in cui si trova l'autore di questa stregoneria, ma ho bisogno che tu mi protegga mentre mi servo della mia magia! Ti prego, aiutami!~
END
IF ~~ THEN REPLY ~Lo farò, ma lasciami qualche istante per prepararmi al nuovo attacco.~ EXTERN aeriep divination6
IF ~~ THEN REPLY ~Non c'è bisogno che tu lo ripeta. Ti difenderò a costo della mia stessa vita!~ EXTERN aeriep divination7

APPEND aeriep
  IF ~~ THEN divination6
  SAY ~Per favore, fà in fretta!~
    IF ~~ THEN DO ~SetGlobal("tb#StivanAerie","GLOBAL",8)~ EXIT
  END

  IF ~~ THEN divination7
  SAY ~Grazie. Io... Porrò fine a questo orribile incubo...~
    IF ~~ THEN DO ~SetGlobal("tb#StivanAerie","GLOBAL",9)~ EXIT
  END

  IF WEIGHT #-100 ~Global("tb#StivanAerie","GLOBAL",8) IsValidForPartyDialog("tb#stiv")~ ready
  SAY ~Siete pronti?~
    IF ~~ THEN REPLY ~Non ancora.~ EXTERN aeriep divination6
    IF ~~ THEN REPLY ~Sì. Ti copriremo le spalle.~ EXTERN aeriep divination7
  END
END

CHAIN IF WEIGHT #-100 ~Global("tb#stivanAerie","GLOBAL",10) GlobalTimerExpired("tb#StivanAerieTimer","AR0607") IsValidForPartyDialog("tb#stiv")~ THEN aeriep gotTarget
~L-l'incantesimo si è spezzato prima del previsto! Ho visto un'immagine sfocata del posto, m-ma non so con esattezza dove si trovi! Potrebbe... Potrebbe anche non essere qui ad Athkatla, e in quel caso... Oh, <CHARNAME>, aiutami!~
END
IF ~~ THEN REPLY ~Ovunque sia, lo troveremo. Descrivimi l'edificio che hai visto.~ EXTERN aeriep gotTarget1
IF ~~ THEN REPLY ~Non lasciare che il panico prenda il sopravvento, Aerie. Fà un respiro profondo e cerca di focalizzare la tua visione.~ EXTERN aeriep gotTarget1
IF ~~ THEN REPLY ~Non intendo lasciarti sola, ma ho bisogno di sapere dove si trova il responsabile di tutto questo. Stivan escluso.~ EXTERN aeriep gotTarget1

CHAIN IF ~~ THEN aeriep gotTarget1
~(Sniff) E'... E' una villa. E' c-circondata da numerose guardie, benchè la strada su cui si affaccia sia deserta. Incute molta paura...~
== tb#stivj ~Altro?~
== aeriep ~Dall'esterno... Sembra molto lussuosa e... C'è uno stemma all'entrata. Uno stemma a forma di artiglio, credo...~
== tb#stivj ~*Ahem* Penso di aver capito di quale edificio si tratti, ma non so se gioire di questa scoperta o strapparmi i capelli per quello che ci aspetta.~
END
IF ~~ THEN REPLY ~Per quello che *ti* aspetta. Non illuderti che mi sia dimenticato della tua responsabilità.~ EXTERN tb#stivj gotTarget2
IF ~~ THEN REPLY ~Per gli Dei, vogliamo giungere al dunque?!~ EXTERN tb#stivj gotTarget2
IF ~~ THEN REPLY ~Ti prego, dimmi che è qui ad Athkatla e non sui Picchi delle Nuvole.~ EXTERN tb#stivj gotTarget2

CHAIN IF ~~ THEN tb#stivj gotTarget2
~Nel Quartiere del Ponte c'è un edificio che risponde alla sua descrizione: la villa di Ester Necri.~
= ~Malgrado sia una della nostra gente, è terribilmente malvagia. Credo non esista un halfling più perfido di lei!~
== aeriep ~T-tu...?~
== tb#stivj ~Io?!~
== aeriep ~Vorresti negare di essere cattivo? Hai-hai dato al mio carnefice la scure con cui uccidermi!~
== tb#stivj ~Io non sono cattivo! Mia mamma diceva sempre che sono soltanto un po'... vivace, ecco!~
= ~Non guardarmi con quella faccia scettica, elfa. Io sono un bravo halfling, e te lo dimostrerò! Se recuperassi il tuo gingillo, riusciresti a porre fine al maleficio?~
== aeriep ~S-sì... Sarebbe sufficiente riaverlo indietro per annullare l'incantesimo che vi è stato lanciato.~
== tb#stivj ~Bene, allora me ne occuperò io. Riavrai il tuo mantello e riconoscerai davanti a tutti che non sono cattivo!~
== aeriep ~E' un amuleto, Stivan...~
== tb#stivj ~Proprio quel che ho detto. <CHARNAME>, prenditi cura di Aerie mentre mi intrufolo nella villa di Ester. Non vorrei rischiare i peli dei piedi per poi trovarla morta al mio ritorno.~
END
IF ~~ THEN REPLY ~Hai combinato sin troppi guai, ragazzo; meglio che me ne occupi io. Non vorrei che con la tua prossima sbadataggine mi consegnassi ai miei nemici.~ EXTERN tb#STIVJ gotTarget3
IF ~~ THEN REPLY ~Tu, piuttosto. Cerca di passare inosservato e di non farti distrarre da qualche stupido gabbiano.~ EXTERN tb#STIVJ gotTarget4
IF ~~ THEN REPLY ~Il tuo piano può funzionare, ma non ti lascerò andare senza averti preparato a dovere. Dammi il tempo di sistemare qualche oggetto utile nel tuo zaino, dopodichè potrai andare.~ EXTERN tb#STIVJ gotTarget5

APPEND tb#stivj
  IF ~~ THEN gotTarget3
  SAY ~Heh. Stai per scoprire il significato dell'espressione "orecchie da mercante".~
    IF ~~ THEN DO ~SetGlobal("tb#StivanAerie","GLOBAL",12)~ UNSOLVED_JOURNAL ~Aerie lascia il gruppo.
 
Al circo ho trovato Aerie, fortunatamente prima che venisse aggredita da misteriosi assassini. Pare che l'elfa sia vittima di un maleficio che le è stato scagliato da una necromante halfling attraverso un suo amuleto. Dal momento che è in parte responsabile dell'accaduto, Stivan si è offerto di recuperarlo: soltanto in questo modo sarà possibile spezzare l'incantesimo. Nel frattempo cercherò di proteggere Aerie da ulteriori attacchi.~ GOTO gotTarget7
  END
  
  IF ~~ THEN gotTarget4
  SAY ~Heh. Farò del mio meglio.~
    IF ~~ THEN DO ~SetGlobal("tb#StivanAerie","GLOBAL",12)~ UNSOLVED_JOURNAL ~Aerie lascia il gruppo.
 
Al circo ho trovato Aerie, fortunatamente prima che venisse aggredita da misteriosi assassini. Pare che l'elfa sia vittima di un maleficio che le è stato scagliato da una necromante halfling attraverso un suo amuleto. Dal momento che è in parte responsabile dell'accaduto, Stivan si è offerto di recuperarlo: soltanto in questo modo sarà possibile spezzare l'incantesimo. Nel frattempo cercherò di proteggere Aerie da ulteriori attacchi.~ GOTO gotTarget7
  END
  
  IF ~~ THEN gotTarget5
  SAY ~D'accordo, anche se non prometto di restituirteli. Heh.~
    IF ~~ THEN DO ~SetGlobal("tb#StivanAerie","GLOBAL",11)~ UNSOLVED_JOURNAL ~Aerie lascia il gruppo.
 
Al circo ho trovato Aerie, fortunatamente prima che venisse aggredita da misteriosi assassini. Pare che l'elfa sia vittima di un maleficio che le è stato scagliato da una necromante halfling attraverso un suo amuleto. Dal momento che è in parte responsabile dell'accaduto, Stivan si è offerto di recuperarlo: soltanto in questo modo sarà possibile spezzare l'incantesimo. Nel frattempo cercherò di proteggere Aerie da ulteriori attacchi.~ EXIT
  END

  IF WEIGHT #-100 ~Global("tb#StivanAerie","GLOBAL",11)~ gotTarget6
  SAY ~Siete pronti a difendere Aerie mentre faccio il mio lavoro?~
    IF ~~ THEN REPLY ~Direi di sì. Cerca di non farti uccidere, per favore.~ EXTERN tb#STIVJ gotTarget4
    IF ~~ THEN REPLY ~Non ancora, ma ho quasi finito di riunire gli oggetti che potrebbero tornarti utili.~ EXTERN tb#STIVJ gotTarget5
  END
END

APPEND aeriep
  IF WEIGHT #-100 ~Global("tb#StivanAerie","GLOBAL",11)~ THEN gotTarget
  SAY ~Forse... Dovresti parlare con Stivan.~
    IF ~~ THEN EXTERN tb#stivj gotTarget6
  END
END

CHAIN IF ~~ THEN tb#stivj gotTarget7
~A dopo!~
== MINSCJ IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN ~Boo si chiede se sia saggio lasciar andare il piccoletto da solo. Anche Minsc ha qualche dubbio, ma la fiducia di <CHARNAME> è sempre ben riposta!~
== HAERDAJ IF ~InParty("haerdalis") !StateCheck("haerdalis",CD_STATE_NOTVALID) Global("HaerDalisRomanceActive","GLOBAL",2)~ THEN ~Che la fortuna aiuti o meno gli audaci, è giusto che quest'uccello di mare voli verso le coste dell'espiazione. Se non tornerà vittorioso... Beh, ci sarà un Custode del Fato ad attenderlo.~
BRANCH ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ BEGIN
== MAZZYJ ~Fermo, Stivan. Non puoi affrontare una simile minaccia da solo. Lascia che ti accompagni.~
== tb#stivj ~(Snort!) Com'è possibile che tu abbia da ridire su qualsiasi cosa io dica o faccia? Non sei stata forse tu a insistere affinchè rimediassi al mio errore?~
== MAZZYJ ~Sì, ma non in maniera avventata!~
END
BRANCH ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ BEGIN
== KORGANJ ~Vediamo se ho capito bene, lattante. Stai salvando la vita a quel lamento umano proprio quando abbiamo l'occasione di disfarcene per sempre?~
== tb#stivj ~... Devo proprio risponderti?~
== KORGANJ ~Scherzo della natura! Lurido sacco di...~
== tb#stivj ~*Ahem* Meglio che vada.~
END
EXIT

BEGIN TB#SNEC

IF ~!Dead("tb#sgua") !PartyHasItem("tb#sloc")~ THEN necri
SAY ~Chi va là?~
IF ~!StateCheck("tb#stiv",STATE_INVISIBLE)~                                       THEN REPLY ~(Tagliale la gola in silenzio)~ DO ~SetGlobal("tb#sslitfail","TB#S00",1)~ EXIT
IF ~StateCheck("tb#stiv", STATE_INVISIBLE)~                                       THEN REPLY ~(Tagliale la gola in silenzio)~ DO ~SetGlobal("tb#sslitsucc","TB#S00",1)~ EXIT
IF ~!StateCheck("tb#stiv", STATE_INVISIBLE)~                                      THEN REPLY ~(Tenta di rubare l'amuleto)~ DO ~SetGlobal("tb#sslitfail","TB#S00",1)~ EXIT
IF ~StateCheck("tb#stiv", STATE_INVISIBLE) CheckStatLT("tb#stiv",100,PICKPOCKET)~ THEN REPLY ~(Tenta di rubare l'amuleto)~ DO ~SetGlobal("tb#spickfail","TB#S00",1)~ EXIT
IF ~StateCheck("tb#stiv", STATE_INVISIBLE) CheckStatGT("tb#stiv",99,PICKPOCKET)~  THEN REPLY ~(Tenta di rubare l'amuleto)~ DO ~SetGlobal("tb#spicksucc","TB#S00",1)~ EXIT
IF ~~                                                                             THEN REPLY ~(Chiedi perché manda assassini)~ DO ~SetGlobal("tb#sask","TB#S00",1)~ EXIT
END

IF ~Dead("tb#sgua")~ THEN kill
SAY ~Tu! Hai ucciso le mie guardie! Muori!~
IF ~~ THEN DO ~SetGlobal("tb#sslitfail","TB#S00",1)~ EXIT
END

IF ~True()~ THEN last
SAY ~Chi va là?~
IF ~~ THEN DO ~SetGlobal("tb#sslitfail","TB#S00",1)~ EXIT
END

CHAIN IF WEIGHT #-100 ~Global("tb#StivanAerie","GLOBAL",13) PartyHasItem("tb#sloc") InMyArea("tb#stiv")~ THEN aeriep final
~L'amuleto! Ce l'hai!~
== tb#stivj ~Ecco a te, con le mie scuse per il pasticcio che ho combinato.~
DO ~SetGlobal("tb#StivanAerie","GLOBAL",99) EraseJournalEntry(~Aerie lascia il gruppo.
Stivan ha insultato Aerie al punto da farle abbandonare il gruppo in lacrime. Devo andare al Circo a vedere se sia disposta a scusarci.~) EraseJournalEntry(~Aerie lascia il gruppo.
 
Al circo ho trovato Aerie, fortunatamente prima che venisse aggredita da misteriosi assassini. Pare che l'elfa sia vittima di un maleficio che le è stato scagliato da una necromante halfling attraverso un suo amuleto. Dal momento che è in parte responsabile dell'accaduto, Stivan si è offerto di recuperarlo: soltanto in questo modo sarà possibile spezzare l'incantesimo. Nel frattempo cercherò di proteggere Aerie da ulteriori attacchi.~) AddJournalEntry(~Aerie lascia il gruppo.
 
Stivan è riuscito a recuperare l'amuleto a forma di procione di Aerie, la quale ha subito provveduto a spezzare il sortilegio. L'halfling si è scusato con l'elfa, chiaramente diffidente visto l'accaduto. Posso solo augurarmi che quei due la finiscano di litigare... Non ne posso più!~,QUEST_DONE)~

== aeriep ~Ora... Ora potrò spezzare questo orribile maleficio una volta per tutte!~
EXIT

CHAIN IF WEIGHT #-100 ~Global("tb#StivanAerie","GLOBAL",99)~ THEN tb#stivj final
~Ha funzionato?~
DO ~SetGlobal("tb#stivanAerie","GLOBAL",100)~
== aeriep ~S-sì... Credo di sì.~
BRANCH ~InParty("haerdalis") !StateCheck("haerdalis",CD_STATE_NOTVALID) Global("HaerDalisRomanceActive","GLOBAL",2)~ BEGIN
== aeriep ~Haer'Dalis, ho... Ho avuto così tanta paura! Paura di non farcela e di... perderti...!~
== HAERDAJ ~Vieni qui, amore mio. Un mio solo abbraccio basterà a ridare quiete e tepore al tuo cuore. Anch'io ho temuto che la Stella di Osiride ti avrebbe presto indicato il cancello verso il Regno dei Morti, ma per ora il tuo posto è qui, al mio fianco.~
END
BRANCH ~IsValidForPartyDialog("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) Global("MinscWitch","GLOBAL",1)~ BEGIN
== MINSCJ ~Gioite, criceti delle steppe! Dimenatevi, donnole dei ghiacci! Aerie è salva!~
== aeriep ~Lo devo anche a te. Mi hai protetta con fervore e dedizione benchè ti avessi sciolto dai tuoi doveri di guardiano. Io... Per quanto fossi sconvolta, non avrei mai dovuto lasciarti in quel modo.~
== MINSCJ ~Le spalle larghe di Minsc sopportano questo e ben altro! Tu... Tornerai ad essere la mia protetta?~
== aeriep ~Certo, Minsc. Continuerò ad esserlo sino a quando la tua ordalia non sarà giunta al termine.~
== MINSCJ ~Sentito, male?! Il tuo fetido odore non riuscirà MAI a separare un ranger e un criceto dalla loro strega!~
END
== tb#stivj ~Posso sapere perchè tieni tanto a quel gingillo?~
== aeriep IF ~OR(2) Dead("quaylem") Dead("quayle")~ THEN ~E' un regalo di zio Quayle. Me lo diede quando iniziò a raccontarmi delle avventure di Baervan e del suo fedele procione Chiktika Fastpaws. Oltre ai ricordi, è t-tutto ciò che mi resta di lui...~
== aeriep IF ~!Dead("quaylem") !Dead("quayle")~ THEN ~E' un regalo di zio Quayle. Me lo diede quando iniziò a raccontarmi delle avventure di Baervan e del suo fedele procione Chiktika Fastpaws. Mi-mi piace stringerlo tra le mani quando ne sento la mancanza...~
== tb#stivj ~Fantastico. Adesso mi sento ancora più in colpa per averlo gettato via.~
== aeriep ~Ogni azione ha le sue conseguenze, e quelli che agiscono d'impulso come te causano i danni maggiori!~
== tb#stivj ~(Sospiro) Io ti ho porto le mie scuse; sta a te decidere cosa farne.~
== aeriep ~N-non puoi pretendere che le accetti subito. Il perdono arriva col tempo, e inoltre... Non è sempre detto che ci sia.~
== aeriep ~<CHARNAME>, vuoi... Mi vuoi di nuovo nel gruppo?~
COPY_TRANS aeriep 0