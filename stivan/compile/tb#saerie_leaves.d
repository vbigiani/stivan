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
== TB#STIVB ~Hai ragione: sono appassite, sono marcite!~
== BAERIE ~(Singhiozzando) S-smettila!~
== BMAZZY IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN ~Aerie, ignoralo. L'indifferenza è il miglior atteggiamento da assumere in questi casi. Quanto a te, Stivan, stai iniziando a stamcarmi col tuo comportamento infantile.~
== TB#STIVB ~Lo sai che non ricresceranno più?~
== BAERIE ~Ahhh!~
== TB#STIVB ~"E fu così che Aerie scoppiò in lacrime e corse via". Quando voglio sbarazzarmi di una persona fastidiosa so essere *così* crudele... Mwahahahah!~
== BMINSC IF ~IsValidForPartyDialog("Minsc")~ ~Non capisco. Perché il nostro amico Stivan sta parlando così male della dolce Aerie?~
== BAERIE ~Sob! Io... Io non ne posso più dei tuoi continui insulti! Me..me ne torno da Quayle.~
= ~<CHARNAME>, non... non cercarmi. Non prima di esserti disfatta di..di...~
END
IF ~!Global("aerieRomanceActive","GLOBAL",1) !Global("aerieRomanceActive","GLOBAL",2)~ THEN REPLY ~Bene, vattene e non tornare più.~ EXTERN BAERIE aeriegone1
IF ~!Global("aerieRomanceActive","GLOBAL",1) !Global("aerieRomanceActive","GLOBAL",2)~ THEN REPLY ~Aspetta, Aerie, cerca di ignorare Stivan!~ EXTERN BAERIE aeriegone1
IF ~OR(2) Global("aerieRomanceActive","GLOBAL",1) Global("aerieRomanceActive","GLOBAL",2)~ THEN REPLY ~Aspetta, Aerie, non lasciarmi solo!~ EXTERN BAERIE aeriegone1

CHAIN IF ~~ THEN BAERIE aeriegone1
~Addio, <CHARNAME>.~
== MINSCJ IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN ~Perché la dolce Aerie se ne va? Dobbiamo andare subito a salvarla, <CHARNAME>! Boo non mi perdonerebbe mai se abbandonassi di nuovo la mia Strega!~
== JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN ~Spero tu faccia subito ammenda, Stivan. Il disprezzo non è una ragione per insultare una persona in così malo modo.~
== CERNDJ IF ~InParty("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN ~Il tuo operato sarebbe indegno del peggiore predatore. Aerie si aggiunge alla ahimè lunga lista di esseri che hanno sofferto per causa tua.~
BRANCH ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ BEGIN
== MAZZYJ ~*slap!*~
== TB#STIVJ ~Ahio!~
== MAZZYJ ~*slap!*~
== TB#STIVJ ~Ahi!~
== MAZZYJ ~*slap!*~
== TB#STIVJ ~Ho capito il concetto! Smettila!~
== MAZZYJ ~Smetterò solo quando ti sarai appropriamente scusato, Stivan! *slap!*~
== TB#STIVJ ~Ahi!~
END
BRANCH ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ BEGIN
== NALIAJ ~Le tue azioni sono inconcepilmente disprezzabili, Stivan!~
== TB#STIVJ ~Eh?~
== NALIAJ ~Intendo dire che devi istantaneamente recarti a porgere ammenda per il tuo turpe comportamento!~
== TB#STIVJ ~Insomma, non capisco il linguaggio colto! Parla come mangi!~
== NALIAJ ~...~
END
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN ~(Che stia imparando da me come si trattano le donne?)~
== HAERDAJ IF ~InParty("haerdalis") !StateCheck("haerdalis",CD_STATE_NOTVALID) Global("HaerDalisRomanceActive","GLOBAL",2)~ THEN ~Le tue azioni mi hanno separato dalla mia tenera colombella, Stivan! Come osi dichiararti mio amico?~
== HAERDAJ IF ~InParty("haerdalis") !StateCheck("haerdalis",CD_STATE_NOTVALID) !Global("HaerDalisRomanceActive","GLOBAL",2)~ THEN ~Ti sembra modo di trattare una fanciulla, mio gabbiano?~
BRANCH ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ BEGIN
== VICONIJ ~Se continui su questa strada, presto si apriranno le porte della mia stanza da letto.~
== TB#STIVJ ~Su..sul serio?~
== VICONIJ ~Ha! Speraci, nanerottolo.~
END
== VALYGARJ IF ~InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN ~Non so se essere lieto per aver rimosso uno stregone dal gruppo, o adirato per averci dentro un demone.~
== IMOEN2J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN ~Stivan! Il tuo comportamento non è per niente simpatico!~
== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN ~Har! Congratulazioni, Stivan! Stanotte ti pago io la prostituta, te la sei meritata!~
== KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN ~Quanto a lungo ancora abuserai della nostra pazienza, halfling?~
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenIsNotKnight","GLOBAL",0)~ THEN ~Insomma, <CHARNAME>! Come puoi continuare ad ospitare un simile attaccabrighe?~
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenIsNotKnight","GLOBAL",1)~ THEN ~Aerie è sicuramente una palla al piede, ma il modo in cui te ne sei disfatto è eccessivo. Non è mai una buona idea bruciare completamente un ponte.~
== TB#STIVJ ~Umh, forse ho esagerato un po'. Magari dovremmo andare a scusarci?~
END
IF ~~ THEN REPLY ~Un po'? Sei fortunato che la tua testa sia ancora attaccata al resto del corpo! Vai immediatamente a scusarti!~ EXTERN tb#stivj aeriegone2
IF ~~ THEN REPLY ~Anche secondo me Aerie è una rompiscatole, ma le sue doti sono necessarie per la nostra missione. Andiamo, e speriamo accetti le tue scuse.~ EXTERN tb#stivj aeriegone2

APPEND tb#stivj
  IF ~~ THEN aeriegone2
  SAY ~Heh. Modestamente, sono il migliore nel porgere scuse false!~
  IF ~~ THEN REPLY ~Stivan!~ GOTO aeriegone3
  END

  IF ~~ THEN aeriegone3
  SAY ~Scusa, <CHARNAME>!~
  = ~Andiamo al Circo a vedere se la piagnona si è calmata.~
  IF ~~ DO ~ActionOverride("aerie",LeaveParty()) ActionOverride("aerie",SetGlobal("KickedOut","LOCALS",1)) MoveGlobal("AR0607","Aerie",[469.437])~ UNSOLVED_JOURNAL ~Aerie lascia il gruppo

  Stivan ha insultato Aerie al punto da farle abbandonare il gruppo in lacrime. Devo andare al Circo a vedere se sia disposta a scusarci.~ EXIT
  END
END

APPEND aeriep
  IF WEIGHT #-1 ~GlobalGT("tb#StivanAerie","GLOBAL",2) GlobalLT("tb#StivanAerie","GLOBAL",100) OR(2) !Dead("tb#stiv") InPartyAllowDead("tb#stiv")~ angry
    SAY ~No, <CHARNAME>, non ti voglio parlare... non finché Stivan non si sarà scusato.~
    IF ~~ THEN EXIT
  END

  IF WEIGHT #-1 ~GlobalGT("tb#StivanAerie","GLOBAL",2) GlobalLT("tb#StivanAerie","GLOBAL",100) Dead("tb#stiv") !InPartyAllowDead("tb#stiv")~ angry2
    SAY ~C.. Ciao, <CHARNAME>. Vedo che ti sei disfatto di Stivan... permanentemente~
    IF ~~ THEN DO ~SetGlobal("tb#StivanAerie","GLOBAL",100)~ GOTO angry3
  END
  
  IF ~~ THEN angry3
  SAY ~V.. Vuoi che torni a viaggiare con te?~
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
== tb#stivj ~Aerie, dietro di te! Lancia Pelle di Pietra!~
== AERIEP ~Taci! Perché dovrei ascoltarti?~
== tb#stivj ~Fallo e sgridami dopo!~
== AERIEP ~Non capisco perché ti sto ancora ascoltando, ma va bene, faccio come vuoi, purché te ne vada.~
END
IF ~~ THEN DO ~SetGlobal("tb#StivanAerie","GLOBAL",4)~ EXIT

CHAIN IF WEIGHT #-100 ~Global("tb#StivanAerie","GLOBAL",5) Dead("tb#sass") IsValidForPartyDialog("tb#stiv")~ THEN aeriep postassassination
~Gr... grazie, Stivan. Non mi aspettavo un simile gesto altruista.~
== tb#stivj ~Scusami, Aerie, a volte sono un idiota.~
== aeriep ~E' troppo facile insultare le persone e poi chiedere scusa!~
== tb#stivj ~Mi dispiace, Aerie, ma non so cos'altro fare oltre che ripetere il vuoto rituale del chiedere scusa.~
= ~Aspetta, la faccia di quell'assassino non è mi nuova...~
= ~Attenta, un altro!~
DO ~SetGlobal("tb#StivanAerie","GLOBAL",6)~
EXIT

CHAIN IF WEIGHT #-100 ~Global("tb#StivanAerie","GLOBAL",7) NumDead("tb#sass",3) IsValidForPartyDialog("tb#stiv")~ THEN aeriep divination1
~Oh mamma, chi mi può volere così male da mandare tutti questi assassini?~
== tb#stivj ~Non lo so.~
= ~Però che strano, hanno tutti e tre la stessa identica faccia... Sembrano gemelli.~
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
== aeriep ~Hai.. ragione, stai rischiando la tua stessa vita per proteggermi. Grazie.~
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
    
  IF WEIGHT #-100 ~Global("tb#StivanAerie","GLOBAL",10)~ gotTarget4
    SAY ~Siete pronti a difendere Aerie mentre faccio il mio lavoro?~
      IF ~~ THEN REPLY ~Tranquillo, ci penso io ad Aerie.~ EXTERN tb#STIVJ gotTarget3
      IF ~~ THEN REPLY ~Aspetta un attimo qui, devo passarti qualche oggetto magico per renderti la vita più facile.~ EXTERN tb#STIVJ gotTarget2
    END    
END

BEGIN TB#SNEC

IF ~Dead("tb#sgua")~ THEN kill
SAY ~Tu! Hai ucciso le mie guardie! Muori!~
IF ~~ THEN DO ~Shout(153)~ EXIT
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

