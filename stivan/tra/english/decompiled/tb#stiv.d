BEGIN TB#STIV

IF ~NumTimesTalkedTo(0)~ THEN BEGIN StivanFirstMeet
SAY ~Have you seen a seagull around here? I am Stivan the Seagull Hunter, powerful and famous. Er... would you like to buy a plume? I have plenty.~
IF ~~ THEN REPLY ~Sure. How much does it cost?~ GOTO StivanFirstMeet1-1
IF ~~ THEN REPLY ~A seagull... hunter? Did I get that right?~ GOTO StivanFirstMeet1-2
IF ~~ THEN REPLY ~Wait a moment... Why do you hate those birds like that?~ GOTO StivanFirstMeet1-3
IF ~~ THEN REPLY ~Plumes? No, thank you. Maybe next time.~ EXIT
END

IF ~~ THEN BEGIN StivanFirstMeet1-1
SAY ~A single gold piece and it's yours!~
IF ~PartyGoldGT(0)~ THEN REPLY ~Very well. here you go.~ DO ~GiveItemCreate("tb#splu",Player1,0,0,0) DestroyGold(1)~ GOTO StivanFirstMeet1-1a
IF ~~ THEN REPLY ~Sorry, I changed my mind.~ EXIT
END

IF ~~ THEN BEGIN StivanFirstMeet1-1a
SAY ~Yeah! Thank you very much, stranger!~
IF ~~ THEN REPLY ~Not a problem. See you next time!~ EXIT
IF ~~ THEN REPLY ~What is an halfling like you doing in the capital of Amn?~ GOTO StivanFirstMeet1-4
IF ~~ THEN REPLY ~You said you were a seagull hunter, right?~ GOTO StivanFirstMeet1-2
END 

IF ~~ THEN BEGIN StivanFirstMeet1-2
SAY ~Yes, I hunt seagulls. They're the sea's vermin, and I bravely fought against hundreds of them. Hundreds, I say!~
IF ~~ THEN REPLY ~Er... Have a good hunt, in that case.~ EXIT
IF ~~ THEN REPLY ~What else is an halfling like you doing in the capital of Amn?~ GOTO StivanFirstMeet1-4
IF ~~ THEN REPLY ~Wait a moment... Why do you hate those birds like that?~ GOTO StivanFirstMeet1-3
END

IF ~~ THEN BEGIN StivanFirstMeet1-3
SAY ~Have you ever looked a seagull in the eye, eh? There is evil there... Pure evil. And I intend to hunt all of them... All of them!~
IF ~~ THEN REPLY ~Er... Have a good hunt, in that case.~ EXIT
IF ~~ THEN REPLY ~What else is an halfling like you doing in the capital of Amn?~ GOTO StivanFirstMeet1-4
END

IF ~~ THEN BEGIN StivanFirstMeet1-4
SAY ~Other than hunting seagulls and selling their plumes? Well, I like to roam around the streets of Athkatla, which hold no secret to me. Sometimes I need to handle some ruffian, but they're no trouble to me. Other than that, I don't have much to do, given that I live under a bridge.~
IF ~~ THEN REPLY ~Uhm... I think you're my sort of person. A series of events has brought me to this town I know nothing of, and a guide like you would be very helpful. Would you like to travel with my party?~ GOTO StivanFirstMeet1-5
IF ~~ THEN REPLY ~If you want to leave street life behind I could offer you a place in my party.~ GOTO StivanFirstMeet1-5
IF ~~ THEN REPLY ~You seem a skilled guy, given how you wield that weapon. Rather than hunt those poor birds, why don't you join my party?~ GOTO StivanFirstMeet1-5
IF ~~ THEN REPLY ~You said it. Keep it up, Stivan.~ EXIT
END

IF ~~ THEN BEGIN StivanFirstMeet1-5
SAY ~Ooh! Traveling in an adventuring party! Being their guide! Defending them against the aerial strikes of seagulls! WOW!~
= ~What's your name, stranger?~
IF ~~ THEN REPLY ~<CHARNAME>. <CHARNAME> of Candlekeep.~ GOTO StivanFirstMeet1-6
IF ~Gender(Player1,MALE)~ THEN REPLY ~Don't you know me? I'm <CHARNAME>, the hero of Baldur's Gate.~ GOTO StivanFirstMeet1-6
IF ~Gender(Player1,FEMALE)~ THEN REPLY ~Don't you know me? I'm <CHARNAME>, the hero of Baldur's Gate.~ GOTO StivanFirstMeet1-6
IF ~Gender(Player1,MALE)~ THEN REPLY ~You have <CHARNAME>, the best adventurer of all Faerun, in front of you.~ GOTO StivanFirstMeet1-6
IF ~Gender(Player1,FEMALE)~ THEN REPLY ~You have <CHARNAME>, the best adventurer of all Faerun, in front of you.~ GOTO StivanFirstMeet1-6
END

IF ~~ THEN BEGIN StivanFirstMeet1-6
SAY ~<CHARNAME>? Never heard of you, but who cares! What'll be our prime target, the goal we will fearlessly strive towards?~
IF ~~ THEN REPLY ~I have a debt to collect against a wizard named Irenicus.~ GOTO StivanFirstMeet1-7
IF ~~ THEN REPLY ~I intend to find Imoen, a childhood friend of mine who was kidnapped by the Cowled Wizards.~ GOTO StivanFirstMeet1-7
IF ~~ THEN REPLY ~We're looking for answers, Stivan. I must find out what happened to  Imoen, a friend from Candlekeep, and Irenicus, a madman who had fun torturing me and my companions.~ GOTO StivanFirstMeet1-7
END

IF ~~ THEN BEGIN StivanFirstMeet1-7
SAY ~WOW! It sounds anything but easy, but I don't care! Let's go! There are flocks of seagulls to deplume and...~
= ~Ah. There's a small matter I might have forgotten to mention. Er... could you do me a favor?~
IF ~~ THEN REPLY ~What do you need?~ GOTO StivanFirstMeet1-8
IF ~~ THEN REPLY ~Depends, Stivan. Explain me what it's about.~ GOTO StivanFirstMeet1-8
IF ~~ THEN REPLY ~You haven't even started marching with us and you're already adding trouble to the party..~ GOTO StivanFirstMeet1-8
END

IF ~~ THEN BEGIN StivanFirstMeet1-8
SAY ~Well... Do you see this urn? The ashes of my loved ones are in there. They were... they were killed by those disgusting sea birds long ago.~
= ~For all these years, I've kept it hidden in a safe corner near where I slept.~
= ~Since I'll be traveling with you, I don't know where to hide it, nor can I bring it with me. There's a strong risk it might break while I'm blinding an enemy with seagull poo or suffocating another with a bunch of plumes. It's not an easy job, you know?~
IF ~~ THEN REPLY ~I can hardly imagine it.~ GOTO StivanFirstMeet1-9
IF ~~ THEN REPLY ~What would you suggest?~ GOTO StivanFirstMeet1-9
IF ~~ THEN REPLY ~Get to the point, thank you very much.~ GOTO StivanFirstMeet1-9
END

IF ~~ THEN BEGIN StivanFirstMeet1-9
SAY ~The best solution would be to put the urn in one of the tombs in the Graveyard District so that it is safe, but to buy one I'd need an amount of coin that I *ahem* don't currently have. If you could take care of it for me...~
IF ~~ THEN REPLY ~Why should I do this for you, Stivan?~ GOTO StivanFirstMeet1-9a
IF ~~ THEN REPLY ~Very well. Whom should we ask?~ GOTO StivanFirstMeet1-10
IF ~~ THEN REPLY ~Maybe. How much will it cost?~ GOTO StivanFirstMeet1-11
IF ~~ THEN REPLY ~Dreadfully sorry, but I don't want to help you.~ EXIT
END

IF ~~ THEN BEGIN StivanFirstMeet1-9a
SAY ~I help you and you help me. Simple, no?~
IF ~~ THEN REPLY ~Simple but not cheap. Find somebody else, Stivan.~ EXIT
IF ~~ THEN REPLY ~Very well, you convinced me. How would I get you a tomb?~GOTO StivanFirstMeet1-10
IF ~~ THEN REPLY ~Uhm... Do you have any idea how much will it cost?~ GOTO StivanFirstMeet1-11
END

IF ~~ THEN BEGIN StivanFirstMeet1-10
SAY ~We should ask some clerk in the Council of Six Building. It is there that they handle such matters?~
IF ~~ THEN REPLY ~I'd say so. To the Government District, then.~ UNSOLVED_JOURNAL ~Looking for a tomb.

While we were exploring the Bridge District we found Stivan, an halfling native of Athkatla, whom I asked for help in my search of Imoen and Irenicus. In exchange for a tomb where he might put the ashes of his close ones, Stivan offered us his guidance in his town and his defense against... er... seagulls. The halfling said I should go in the Government District and ask some clerk in the Council of Six.~ DO ~SetGlobal("tb#StivanJoined","GLOBAL",1) SetGlobal("tb#stivanEntryTest","GLOBAL",1) SetGlobalTimer("tb#stivanEntryTimer","GLOBAL",FOUR_DAYS) JoinParty()~ EXTERN tb#stiv StivanFirstMeet1-12

IF ~~ THEN REPLY ~Not right now. Maybe later.~ EXIT
END

IF ~~ THEN BEGIN StivanFirstMeet1-11
SAY ~I dunno.~
IF ~~ THEN GOTO StivanFirstMeet1-10
END

IF~ NumTimestalkedToGT(0) ~THEN BEGIN StivanSecondMeet
SAY ~Heh. I'm looking forward to selling my last plumes, so that I might hunt more seagulls!~
= ~You there! Why don't you buy this beautiful plum? It's the best thing ever to write the epicest of poems, or to cast the deadliest of arrows!~
IF ~~ THEN REPLY ~Sure. How much does it cost?~ GOTO StivanFirstMeet1-1
IF ~~ THEN REPLY ~Go hunt seagulls? Did I get that right?~ GOTO StivanFirstMeet1-2
IF ~~ THEN REPLY ~Wait a moment... Why do you hate those birds like that?~ GOTO StivanFirstMeet1-3
IF ~~ THEN REPLY ~Plumes? No, thank you. Maybe next time.~ EXIT
END

CHAIN IF ~~ THEN TB#STIV StivanFirstMeet1-12
~Yeah! Let's go, then! There are hundreds of seagulls to properly kill!~ 

== TB#STIVJ IF ~IsValidForPartyDialog("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN ~Hey you! Come here and help Stivan in his holy crusade against the evil seagulls! We must kill them ALL!~
== MINSCJ IF ~IsValidForPartyDialog("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN ~Maybe I will join your hunt another time: you must know that Boo feels uneasy around prey birds. I'd rather not inflict such a torture upon him. Yes, it's better for everyone!~
== TB#STIVJ IF ~IsValidForPartyDialog("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN ~Coward! You're cowering in front of the plumed menace! You won't have a second chance!~
== AERIEJ IF ~IsValidForPartyDialog("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN ~You'd hurt such poor birds? They're only scavengers... and I'm sure they never hurt you in any way!~
== TB#STIVJ IF ~IsValidForPartyDialog("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN ~Wrong! Those demons took away my whole family, they... they're a plague sent by the gods!~
== JAHEIRAJ IF ~IsValidForPartyDialog("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN ~Do you think it would be wise to take him with us, <CHARNAME>? I doubt he'd be up to the difficulties that lie in wait for us.~
== JANJ IF ~IsValidForPartyDialog("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN ~Guards gave you some trouble, eh? They've always given trouble to the small people, they have. All this reminds me of that time my cousin Tilly Fleetkness was challenged to a duel by an Amnish soldier who accidentally set her garden on fire - luckily it wasn't a turnip field. Well, my cousin was a great mage but, since magic was banned, she knew she had no chance at it.~
= ~Still, Tilly was as smart as she was powerful: she couldn't cast spells during the duel, but she could cast them before. Thus, she decided to summon a giant treant and give it her semblances - you know, we Jansens are great illusionists. The poor soldier, once the duel took place, waited for my cousin to attack, sure that she wouldn't be able to move him by a single turnip. Nobody could tell the look he had on his face the moment the treant stroke - his head flew off.~
== TB#STIVJ IF ~IsValidForPartyDialog("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN ~Heh. I haven't understood a single thing out of what you said, but you look funny, gnome.~
== NALIAJ IF ~IsValidForPartyDialog("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN ~A pleasure, my name is Nalia. How can I be of service?~
== TB#STIVJ IF ~IsValidForPartyDialog("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN ~N... Nalia? Could you be... *Miss* Nalia De'Arnise?~
== NALIAJ IF ~IsValidForPartyDialog("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN ~We don't need to be formal between party members. Call me Nalia. It's more than enough.~
== TB#STIVJ IF ~IsValidForPartyDialog("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN ~Incredible! I'll travel with a noble! And what a noble! WOW! It'll be my honor to be your humble servant!~
== NALIAJ IF ~IsValidForPartyDialog("nalia") !StateCheck("nalia",CD_STATE_NOTVALID)~ THEN ~(blush) Don't be silly, Stivan. You're making me uneasy...~
== EDWINJ IF ~IsValidForPartyDialog("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN ~Great. The number of your allies, other than yours truly, was already questionable. Now it is insufferable.~
== HAERDAJ IF ~IsValidForPartyDialog("Haerdalis") !StateCheck("Haerdalis",CD_STATE_NOTVALID)~ THEN ~Ah! Great choice, my raven. Who lives without folly isn't as wise as he believes, and this small thief looks like the living proof of that!~ 
== YOSHJ IF ~IsValidForPartyDialog("Yoshimo") !StateCheck("yoshimo",CD_STATE_NOTVALID)~ THEN ~I've already seen this small man, <CHARNAME>. His cries won't go unnoticed. Goodbye, silence...~
== VICONIJ IF ~IsValidForPartyDialog("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN ~Can I ask why you've collected this insect from the street? Is that a way to solve your insane conscience problems?~
== VALYGARJ IF ~IsValidForPartyDialog("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN ~Don't you think we're too many? I wouldn't want our number to attract the Cowlies' attention.~
== CERNDJ IF ~IsValidForPartyDialog("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN ~I was waiting for our meeting. Sea birds have been whispering your name for too long, telling me of acts of extreme cruelty against them. It is my duty to educate you in the respect of Mother Nature's creatures.~ 
== TB#STIVJ IF ~IsValidForPartyDialog("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN ~(Achoo) Oh, no. I'm allergic to tree-huggers!~
== KORGANJ IF ~IsValidForPartyDialog("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN ~Tell me, <PRO_GIRLBOY>: since when we carry kids? I look after nothing, not even my axe!~
== TB#STIVJ IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN ~(Sniff sniff) I can smell the stink of correctness in here...~
== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN ~Welcome aboard. I am Mazzy Fentan, from Trademeet, and devout worshiper of Arvoreen.~
== TB#STIVJ IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN ~Eeekkk! The horror!~
== ANOMENJ IF ~IsValidForPartyDialog("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN ~Are you hosting beggars in your rank? By the gods, where has your good sense gone? You need skilled and devout warriors, not lowly street thugs!~
== KELDORJ IF ~IsValidForPartyDialog("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN ~There are stains that, if properly used, shine more than virtue. Could it be that it is so for this halfling, too?~
EXIT
