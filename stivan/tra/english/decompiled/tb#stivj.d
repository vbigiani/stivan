BEGIN TB#STIVJ

///////////////////////////////////////////
// Quest related dialog
///////////////////////////////////////////

IF ~InParty("tb#stiv")
InParty(Player1)
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0)
!Global("tb#stivanEntryTest","GLOBAL",3) 
Global("tb#UrnBroken","GLOBAL",1)~ THEN BEGIN WarnUrnBroken
SAY ~(Gasp!)~
= ~Safe... by a straw!~
= ~<CHARNAME>, the urn containing my close ones was about to fall out of my backpack! You promised me you'd help me find somewhere safe to stash it, so... Let's find that somewhere, please!~
IF ~~ THEN DO ~SetGlobalTimer("tb#stivanEntryTimer","GLOBAL",FOUR_DAYS) IncrementGlobal("tb#UrnBroken","GLOBAL",1)~ EXIT
END

IF ~InParty("tb#stiv")
InParty(Player1)
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0)
!Global("tb#stivanEntryTest","GLOBAL",3) 
Global("tb#UrnBroken","GLOBAL",3)~ THEN BEGIN UrnBroken
SAY ~Uhm?~
= ~There's something wrong. My pack feels strange.~
= ~I made sure to put everything in perfect balance, but...~
= ~Eeekkk! Eeeekkkk! EEEEEKKKKK!~
IF ~~ THEN DO ~SetGlobal("tb#UrnBroken","GLOBAL",4)~ REPLY ~Is everything all right, Stivan?~ GOTO UrnBroken1-1
IF ~~ THEN DO ~SetGlobal("tb#UrnBroken","GLOBAL",4)~  REPLY ~By the gods, halfling! Could you stop screaming like that?~ GOTO UrnBroken1-1
IF ~~ THEN DO ~SetGlobal("tb#UrnBroken","GLOBAL",4)~  REPLY ~You'll put your things in place next stop. We don't have time to waste on that now~ GOTO UrnBroken1-1
END

IF ~~ THEN BEGIN UrnBroken1-1
SAY ~My... My urn! It's in pieces! Shattered!~
= ~*SOB*! My... My dear ones... scattered to the wind... like this...~
= ~It... It's all your fault, <CHARNAME>! You promised me that we'd stash it somewhere safe, and you completely forgot about my only demand!~
IF ~~ THEN REPLY ~I imagine it broke during the last battle. I'm sorry, Stivan.~ GOTO UrnBroken1-2
IF ~~ THEN REPLY ~You're right. I completely forgot about it. Let's get to it now!~ GOTO UrnBroken1-2
IF ~~ THEN REPLY ~Try to be understanding. There are so many things I have to take care of...~ GOTO UrnBroken1-2
END

IF ~~ THEN BEGIN UrnBroken1-2
SAY ~(Snort!) Shut up! Your excuses are nothing! My relatives' memory is forever tainted, and it's all your fault!~
= ~I... Have no intention to fight for you any longer. Goodbye, <CHARNAME>! Might the seagulls feast on your vile bodies!~ 
IF ~~ THEN DO %SetGlobal("tb#StivanJoined","GLOBAL",0) LeaveParty() EscapeArea()  EraseJournalEntry(~Looking for a tomb.

While we were exploring the Bridge District we found Stivan, an halfling native of Athkatla, whom I asked for help in my search of Imoen and Irenicus. In exchange for a tomb where he might put the ashes of his close ones, Stivan offered us his guidance in his town and his defense against... er... seagulls. The halfling said I should go in the Government District and ask some clerk in the Council of Six.~) EraseJournalEntry(~Looking for a tomb.

The clerk in the Council of Six Building has started the procedures required to make Stivan properly acquire the tomb. He promised he will send for us as soon as he is done, and also offered to keep the urn safe in the meantime.~) EraseJournalEntry(~Looking for a tomb.

A clerk in the Council of Six Building explained us that there are currently no free tombs. However, he also mentioned that there is one where no one dares to tread because of voices about its inhabitant. Not scared by such tales, I decided to explore it: after cleaning it of any trouble I might find, in fact, we'd be free to claim it for Stivan's relatives..~) EraseJournalEntry(~Looking for a tomb.

A messenger informed us that the documents for the transferal of the crypt are ready. I can go pick them up any time I wish from the clerk Lawrence in the Council of Six building.~)%
SOLVED_JOURNAL ~Looking for a tomb.

The urn containing the ashes of the Stivan's family broke before I could find a proper tomb for it. The halfling, furious, left the party.~ EXIT
END

IF ~ InParty("tb#stiv")
InParty(Player1)
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#stivanEntryTest","GLOBAL",5)
AreaCheck("ar0806")~ THEN BEGIN FinalRest
SAY ~(Sigh) It doesn't seem real. I'm about to leave this urn behind. I'm about to give the final goodbye to my family...~
IF ~~ THEN REPLY ~Come on, Stivan. Be strong.~ GOTO FinalRest1-1
IF ~~ THEN REPLY ~You aren't changing your mind, are you? I'd feel *slightly* disappointed if you decided to keep it with you.~ GOTO FinalRest1-2
IF ~~ THEN REPLY ~It's not a final goodbye. As long as the deceased live in our memories, they don't really die.~ GOTO FinalRest1-3
IF ~~ THEN REPLY ~It is just that the dead rest in peace. You can't imagine how much I would have wanted to properly bury Gorion...~ GOTO FinalRest1-4
END

IF ~~ THEN BEGIN FinalRest1-2
SAY ~I didn't change my mind, <CHARNAME>, It's just...~
IF ~~ THEN GOTO FinalRest1-1
END

IF ~~ THEN BEGIN FinalRest1-3
SAY ~This *is* a final goodbye, <CHARNAME>! I... I lived too long trapped in the sorrow over my family's death! I... must go on!~
IF ~~ THEN GOTO FinalRest1-1
END

IF ~~ THEN BEGIN FinalRest1-4
SAY ~I... understand that your foster father's death was harsh on you, and that you wish you could have buried him, but...~
IF ~~ THEN GOTO FinalRest1-1
END 

IF ~~ THEN BEGIN FinalRest1-1
SAY ~Do you think it easy? Do you think it easy to forever leave those that loved you behind? As soon as I leave their remains here, I... I will be alone!~
IF ~~ THEN REPLY ~This is not true. You have many friends around you, me included.~ GOTO FinalRest1-5
IF ~~ THEN REPLY ~Your family disappeared many years ago, Stivan, not now.  All you're doing now is leaving their remains where they should have been for all this time.~ GOTO FinalRest1-5
IF ~~ THEN REPLY ~We're all alone. Use this experience to learn how to live for yourself.~ GOTO FinalRest1-5
IF ~~ THEN REPLY ~Are you telling me that that urn kept you company for all these years? No offense, friend, but this is silly. You have nothing but a silent object in your hands.~ GOTO FinalRest1-5
END

IF ~~ THEN BEGIN FinalRest1-5
SAY ~(You see Stivan's eyes fill with tears).~
IF ~~ THEN REPLY ~Oh, no. I beg you, don't cry. I can't comfort people...~ GOTO FinalRest1-6
IF ~~ THEN REPLY ~Let go, my friend. Cry as much as you wish.~ GOTO FinalRest1-6
IF ~Gender(Player1,MALE)~ THEN REPLY ~Men never cry, Stivan. Dry your eyes, come on.~ GOTO FinalRest1-6
IF ~ Gender(Player1,FEMALE)~ THEN REPLY ~So even men cry. Surprising.~ GOTO FinalRest1-6
END

IF ~~ THEN BEGIN FinalRest1-6
SAY ~(Stivan explodes in tears, holding you close). *SOB*!~
= ~(The halfling cries for many minutes, holding your venter in his arms. You hear him whisper something).~
IF ~Gender(Player1,"FEMALE")~ THEN GOTO FinalRest1-7
IF ~Gender(Player1,"MALE")~ THEN GOTO FinalRest1-8
END

IF ~~ THEN BEGIN FinalRest1-7
SAY ~Mommy...~
IF ~~ THEN REPLY ~ (You stay silent).~ GOTO FinalRest1-9
IF ~~ THEN REPLY ~ (You hold him close).~ GOTO FinalRest1-9
IF ~~ THEN REPLY ~Shh... It's all right.~ GOTO FinalRest1-9
IF ~~ THEN REPLY ~Leave me, Stivan. You're making me uneasy.~ GOTO FinalRest1-10
END

IF ~~ THEN BEGIN FinalRest1-8
SAY ~Daddy...~
IF ~~ THEN REPLY ~ (You stay silent).~ GOTO FinalRest1-9
IF ~~ THEN REPLY ~ (You hold him close).~ GOTO FinalRest1-9
IF ~~ THEN REPLY ~Shh... It's all right.~ GOTO FinalRest1-9
IF ~~ THEN REPLY ~Leave me, Stivan. You're making me uneasy.~ GOTO FinalRest1-10
END

IF ~~ THEN BEGIN FinalRest1-9
SAY ~(After some moments, the halfling slowly leaves your embrace, drying the tears that wet his face).~
= ~Heh. It'd be better if I hurried up.~
IF ~~ THEN SOLVED_JOURNAL ~Looking for a tomb.

We finally managed to leave the ashes of Stivan's familiars in the crypt. To thank me, he gifted me his "most precious treasure", a strange red plume taken from a seagull.~
GOTO FinalRest1-11
END

IF ~~ THEN BEGIN FinalRest1-10
SAY ~(The halfling abruptly leaves you, drying the tears that wet his face).~
= ~(Snort!) Your heart is colder than stone!~
IF ~~ THEN SOLVED_JOURNAL ~Looking for a tomb.

We finally managed to leave the ashes of Stivan's familiars in the crypt. To thank me, he gifted me his "most precious treasure", a strange red plume taken from a seagull.~
GOTO FinalRest1-11
END

CHAIN
IF ~~ THEN TB#STIVJ FinalRest1-11
~(Stivan runs to the end of the crypt and puts the urn inside the chest. He also puts something else near the container).~
= ~Mommy... Daddy... Brothers... Goodbye.~
== MINSCJ IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN ~(Sniff) One day Minsc will properly bury sweet Dynaheir as well. Her resting place will be so majestic that hamsters will rush from all over Faerun to honor her!~
== JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN ~I don't understand why townspeople feel the need to bury the dead in such restrictive places. Nature offers many a place that would be better for this task.~
== CERNDJ IF ~InParty("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN ~Tombs aren't mere holding places for the bodies of the dead. They are also needed to comfort the soul of those who remain alive.~
= ~Now that you put the physical weight of your tragedy behind, our walk nears its end. The last mile awaits us.~
== AERIEJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN ~I-I'm... I'm happy for you, Stivan...~
== MAZZYJ IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN ~Might nobody disturb your eternal rest, halfling friends.~
== NALIAJ IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN ~I appreciate the essentiality of your last goodbyes with them, Stivan. You should be taken as example by all those nobles that waste treasures in needlessly wealthy funeral rites.~
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN ~Really moving. Had I a heart, I'd be crying.~
== HAERDAJ IF ~InParty("haerdalis") !StateCheck("haerdalis",CD_STATE_NOTVALID)~ THEN ~Ahh... Life is the most boring of adventures. It always ends the same way.~ 
== VICONIJ IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN ~Will you keep going like this for much more, sakphul?~
== VALYGARJ IF ~InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN ~I haven't seen many things in my life, but death is the one I saw the most often.~
== JANJ IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN ~I can never recall: is it bad form to tell licentious stories during a funeral?~
== IMOEN2J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN ~I... I... I'm sorry, Stivan. I don't know what else to say...~
== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN ~Hmph. I hate these melodramatic moments. Does anyone want to go bash someone in the head?~
== KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN ~We're all peers before death, so... if you were just, might Torm accept you in His house.~
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenIsNotKnight","GLOBAL",0)~ THEN ~Might the light of Helm guide their souls to peace.~
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenIsNotKnight","GLOBAL",1)~ THEN ~It might be trite to express condolences in these moments, but know that I understand your loss better than anyone else.~
== TB#STIVJ ~*Ahem* You should know, <CHARNAME>, that the chest is trapped to avoid looters disturbing my loved ones. Whomever would be fool enough to mess with it, he'd be drowned in seagull poo and plumes. Diabolic, eh?~
= ~To thank you for the help, I want to gift you something. Here: my most precious treasure.~ DO %GiveItemCreate("tb#srpl",Player1,0,0,0) SetGlobal("tb#stivanEntryTest","GLOBAL",6) AddXPObject(Player1,5000) AddXPObject(Player2,5000) AddXPObject(Player3,5000) AddXPObject(Player4,5000) AddXPObject(Player5,5000) AddXPObject(Player6,5000) AddXPObject("tb#Stiv",15000) TakePartyItem("tb#surn") DestroyItem("tb#surn") EraseJournalEntry(~Looking for a tomb.

While we were exploring the Bridge District we found Stivan, an halfling native of Athkatla, whom I asked for help in my search of Imoen and Irenicus. In exchange for a tomb where he might put the ashes of his close ones, Stivan offered us his guidance in his town and his defense against... er... seagulls. The halfling said I should go in the Government District and ask some clerk in the Council of Six.~) EraseJournalEntry(~Looking for a tomb.

The clerk in the Council of Six Building has started the procedures required to make Stivan properly acquire the tomb. He promised he will send for us as soon as he is done, and also offered to keep the urn safe in the meantime.~) EraseJournalEntry(~Looking for a tomb.

A clerk in the Council of Six Building explained us that there are currently no free tombs. However, he also mentioned that there is one where no one dares to tread because of voices about its inhabitant. Not scared by such tales, I decided to explore it: after cleaning it of any trouble I might find, in fact, we'd be free to claim it for Stivan's relatives..~) EraseJournalEntry(~Looking for a tomb.

A messenger informed us that the documents for the transferal of the crypt are ready. I can go pick them up any time I wish from the clerk Lawrence in the Council of Six building.~)%
= ~It's a red plume. I found it some time ago while depluming a seagull. Really strange, since they are exclusively white, possibly with some black or gray spots.~
= ~Speaking about seagulls, I think I heard one. Could they be besting even here in the Graveyard District?! Let's rush out and check!~
DO ~ StartCutSceneMode() StartCutScene("tb#surn1")~
EXIT

BEGIN TB#SSKF
BEGIN TB#SSKM

CHAIN IF ~Global("tb#stivanEntryTest","GLOBAL",6) AreaCheck("AR0041")~ THEN TB#STIVJ QuestFinish
~Eeeekkkk! That wasn't a seagull!~
== TB#SSKF ~Damn you... You violated our Lord's tomb!~
== TB#SSKM ~Death awaits you!~
DO ~SetGlobal("tb#stivanEntryTest","GLOBAL",7)~
EXIT





///////////////////////////////////////////
// Yoshimo's betrayal related dialog
///////////////////////////////////////////

APPEND TB#STIVJ
IF ~InParty("tb#stiv")
InParty("Yoshimo")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("Chapter","GLOBAL",4)
CombatCounter(0)
Global("tb#BeforeYoshiBetrayal","GLOBAL",0)~ BeforeYoshiBetrayal1
SAY ~<CHARNAME>, don't you think Yoshimo has been nervous lately?~
IF ~~ THEN REPLY ~Nervous? I think he's as cautious and through as usual.~ DO ~SetGlobal("tb#BeforeYoshiBetrayal","GLOBAL",1)~ GOTO BeforeYoshiBetrayal1-1
IF ~~ THEN REPLY ~Yes, I saw that too. Maybe he's worried about meeting Irenicus face to face.~ DO ~SetGlobal("tb#BeforeYoshiBetrayal","GLOBAL",1)~ GOTO BeforeYoshiBetrayal1-2
IF ~~ THEN REPLY ~No, I wouldn't say so. What makes you think that?~ DO ~SetGlobal("tb#BeforeYoshiBetrayal","GLOBAL",1)~ GOTO BeforeYoshiBetrayal1-1
END

IF ~~ THEN BeforeYoshiBetrayal1-1
SAY ~I don't know. Yoshi has always been calm and sure of himself. Lately, though, he's been tense.~
IF ~~ THEN REPLY ~Imoen and I weren't the only ones to be imprisoned by Irenicus. Yoshimo suffered from the same, but we still don't know why.~ GOTO BeforeYoshiBetrayal1-3
IF ~~ THEN REPLY ~You know Yoshimo... He always becomes unsure when danger looms close.~ GOTO BeforeYoshiBetrayal1-4
IF ~~ THEN REPLY ~I'm not really relaxed myself. I'm worried for Imoen's fate. I hope she's in no danger.~ GOTO BeforeYoshiBetrayal1-4
END

IF ~~ THEN BeforeYoshiBetrayal1-2
SAY ~Why should he worry him?~
IF ~~ THEN REPLY ~Imoen and I weren't the only ones to be imprisoned by Irenicus. Yoshimo suffered from the same, but we still don't know why.~ GOTO BeforeYoshiBetrayal1-3
IF ~~ THEN REPLY ~The wizard that awaits us is a dangerous person. *Really* dangerous. His spells are really deadly - I felt them on my own skin.~ GOTO BeforeYoshiBetrayal1-4
IF ~~ THEN REPLY ~Danger is around the corner, Stivan. Do you think the Cowlies will welcome us with outstretched arms?~ GOTO BeforeYoshiBetrayal1-4
END

IF ~~ THEN BeforeYoshiBetrayal1-3
SAY ~Really? He never told me so.~
= ~And if he were... If he were a Bhaalspawn as well? That'd explain everything, no?~ 
IF ~~ THEN REPLY ~You might be right, after all. That'd explain his being imprisoned~ GOTO BeforeYoshiBetrayal1-5
IF ~~ THEN REPLY ~I doubt it is so. Even Minsc and Jaheira were captured, but they don't share my divine birth.~ GOTO BeforeYoshiBetrayal1-6
IF ~~ THEN REPLY ~I don't think my father went as far as Kara-Tur, although it is possible he stopped there to taste the local variety.~ GOTO BeforeYoshiBetrayal1-6
END

IF ~~ THEN BeforeYoshiBetrayal1-5
SAY ~Heh. As you can see, hunting seagulls improved my intuition. We'll soon see if I'm right!~
IF ~~ THEN EXTERN YOSHJ  BeforeYoshiBetrayal1-7
END

IF ~~ THEN BeforeYoshiBetrayal1-6
SAY ~Bah... I can't wrap my head around this. I'll kill some seagull to get things straight.~
IF ~~ THEN EXTERN YOSHJ  BeforeYoshiBetrayal1-7
END 

IF ~~ THEN BeforeYoshiBetrayal1-4
SAY ~Eeeekkkk! You didn't tell me we were in danger! I worry for my skin, you know?~
= ~Yoshimo! Yoshimo!! I don't want to become a bunch of ashes! You... you still have to teach me how to use a katana properly!~
IF ~~ THEN EXTERN YOSHJ  BeforeYoshiBetrayal1-7
END
END

APPEND YOSHJ 

IF ~~ THEN BEGIN BeforeYoshiBetrayal1-7
SAY ~Calm down, Stivan. I'm not worried. I'm sure that <CHARNAME> will be ready for whatever danger awaits for us. Isn't that so?~
IF ~~ THEN REPLY ~You can be sure of it, my friend.~ EXTERN YOSHJ  BeforeYoshiBetrayal1-8
IF ~~ THEN REPLY ~Exactly. We'll see this obstacle through as well, together.~ EXTERN YOSHJ  BeforeYoshiBetrayal1-8
IF ~~ THEN REPLY ~Er... Let's not get ahead of ourselves. I'll do as much as possible, but I still remain a <RACE>.~ EXTERN YOSHJ  BeforeYoshiBetrayal1-9
END

IF ~~ THEN BEGIN BeforeYoshiBetrayal1-8
SAY ~We should continue, then. There's no point in wasting time.~
IF ~~ THEN EXIT
END
END

CHAIN
IF ~~ THEN YOSHJ BeforeYoshiBetrayal1-9
~Fear is for those of no confidence, and you're not one of those. I don't think you hesitated when...~
== TB#STIVJ ~EEEEEKKKKK!~
== YOSHJ  ~... It would be best if I calmed down our little halfling, before his screaming attracts too much attention. Lead the way, <CHARNAME>.~
EXIT

ADD_TRANS_ACTION YOSHIMOX BEGIN 0 END BEGIN END ~SetGlobal("tb#AfterYoshiBetrayal","GLOBAL",1)~

APPEND tb#stivj
IF ~InParty("tb#stiv")
InParty(Player1)
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#AfterYoshiBetrayal","GLOBAL",1)~ THEN afterYoshiBetrayal1
SAY ~*SOB*! <CHARNAME>... <CHARNAME>, why did Yoshimo do that? Why did he betray us?~
IF ~~ THEN DO ~SetGlobal("tb#AfterYoshiBetrayal","GLOBAL",2)~ REPLY ~I have no idea. Yet it happened.~ GOTO AfterYoshiBetrayal1-1
IF ~~ THEN DO ~SetGlobal("tb#AfterYoshiBetrayal","GLOBAL",2)~ REPLY ~Damn traitor! Might he burn in the flames of the abyss!~ GOTO AfterYoshiBetrayal1-1
IF ~~ THEN DO ~SetGlobal("tb#AfterYoshiBetrayal","GLOBAL",2)~ REPLY ~It would be better if I didn't know. I lost my soul because of him and I risked losing all of you as well!~ GOTO AfterYoshiBetrayal1-1
IF ~~ THEN DO ~SetGlobal("tb#AfterYoshiBetrayal","GLOBAL",2)~ REPLY ~There must be a reasonable explanation, although I can't imagine it yet. He stayed next to me for all this time...~ GOTO AfterYoshiBetrayal1-1
END

IF ~~ THEN AfterYoshiBetrayal1-1
SAY ~Io... Don't know what to think. Could it have all been calculated? Is it possible that every talk we shared, every battle we fought, every trap he disarmed... would lead to this? To betraying us?~
= ~No. I think... I think it was all the work of that Irenicus. It was him to forced him to act!~  
IF ~~ THEN REPLY ~Everybody is free of choosing, Stivan. Yoshimo chose on his own on whose side he was, so he has no excuses.~ GOTO AfterYoshiBetrayal1-2
IF ~~ THEN REPLY ~Had he told me he was under a Geas, *maybe* I could have solved that problem, don't you think?!~ GOTO AfterYoshiBetrayal1-3
IF ~~ THEN REPLY ~Why are you defending him? Must I assume you are allied with that monster too?~ GOTO AfterYoshiBetrayal1-4
IF ~~ THEN REPLY ~This matters no longer. Yoshimo is dead, and his reasons with him.~ GOTO AfterYoshiBetrayal1-5
END

IF ~~ THEN AfterYoshiBetrayal1-2
SAY ~...~
= ~... Damn, I don't know how to think through this. I really cared for Yoshimo and I'm sorry he's dead, especially because he sounded truly regretful. But what you say is true. His choice could have been deadly to all of us. We all seriously risked our lives.~
IF ~~ THEN GOTO AfterYoshiBetrayal1-5
END

IF ~~ THEN AfterYoshiBetrayal1-3
SAY ~*Maybe* you should ask yourself why he didn't do that.~
IF ~~ THEN GOTO AfterYoshiBetrayal1-5
END

IF ~~ THEN AfterYoshiBetrayal1-4
SAY ~(Snort!) Don't be paranoid, <CHARNAME>! I have nothing to share with that wizard!~
IF ~~ THEN GOTO AfterYoshiBetrayal1-5
END

IF ~~ THEN AfterYoshiBetrayal1-5
SAY ~I'd... I'd like to keep Yoshi's blade.~
IF ~~ THEN REPLY ~Why? It would be useless. He was the only one that could ever wield it.~ GOTO AfterYoshiBetrayal1-6
IF ~~ THEN REPLY ~Forget about it. I don't want to hold anything to remind me of that traitor.~ GOTO AfterYoshiBetrayal1-7
IF ~~ THEN REPLY ~As you wish. It's all yours.~ GOTO AfterYoshiBetrayal1-8
END

IF ~~ THEN AfterYoshiBetrayal1-6
SAY ~Don't ask me why, <CHARNAME>. I don't know as well.~
IF ~~ THEN GOTO AfterYoshiBetrayal1-8
END

IF ~~ THEN AfterYoshiBetrayal1-7
SAY ~His katana will be in my hands, not yours.~
IF ~~ THEN GOTO AfterYoshiBetrayal1-8
END

IF ~~ THEN AfterYoshiBetrayal1-8
SAY ~I saw you take his... his heart *SOB*! What do you wish to do with it?~
IF ~~ THEN REPLY ~I'll try to remove the Geas that Irenicus cast on him, so that he might rest in peace.~ GOTO AfterYoshiBetrayal1-9
IF ~~ THEN REPLY ~I don't know. I'm still confused, but something told me to do so.~ GOTO AfterYoshiBetrayal1-9
IF ~~ THEN REPLY ~He prayed to Ilmater before attacking. Maybe one of the priests of the Crying God could tell me something... something about those who fall in battle after recommending themselves to a deity.~ GOTO AfterYoshiBetrayal1-9
IF ~~ THEN REPLY ~Time will tell me what I should do. I just want to leave this place, now. The air is full of death, here.~ GOTO AfterYoshiBetrayal1-9
END

IF ~~ THEN AfterYoshiBetrayal1-9
SAY ~Differently from you, I had no reason to hate Irenicus. I was going to help you fight him since you did so much for me: you welcomed me in your party and removed me from a life of poverty, a debt I could only repay by giving you all my strength.~
= ~(Snort!) But now I have a personal reason to hunt that cursed one as well. I... will avenge Yoshimo's death!~
=  ~Can you hear me, Irenicus? You have made a new enemy today! Stivan the Hunter will find you, wherever you are! Might the seagull's hate fall on your head!~
IF ~~ THEN EXIT
END
END





///////////////////////////////////////////
// Yoshimo's Katana related dialog
///////////////////////////////////////////


ADD_TRANS_ACTION SLILMAT BEGIN 0 END BEGIN 3 END ~SetGlobal("tb#YoshiKatanaIsNotUsable","GLOBAL",1)~

EXTEND_BOTTOM SLILMAT 0
IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) PartyHasItem("NPSW02")  Global("tb#YoshiKatanaIsNotUsable","GLOBAL",1)~ THEN EXTERN tb#stivj YoshiKatana1
IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) PartyHasItem("NPSW02") PartyGoldGT(999) Global("tb#YoshiKatanaIsNotUsable","GLOBAL",2)~ THEN  REPLY ~I'd like you to make Yoshimo's katana usable by Stivan. Here's the one thousand gold pieces.~ EXTERN TB#STIVJ YoshiKatana1-3
END

CHAIN IF ~~ THEN TB#STIVJ YoshiKatana1
~*Ahem* I have another request, if possible.~
== SLILMAT ~I'm listening, brother. What do you need?~
== TB#STIVJ ~This katana was of the man whose heart I just gave you. I'd... like to use it, but I can't. It is bound to him.~
== SLILMAT ~Why would you like to use it?~
== TB#STIVJ ~Er...~
== SLILMAT ~Look into your heart and ask yourself why. Listen to your soul, son, and think of your goals.~
== TB#STIVJ ~...~
= ~... Yoshimo reminds me of one of my dead brothers, all right. I imagine that's how I felt close to him.~
= ~I could save neither of the two, but in either case I can avenge them. That ugly mage will pay for having treated Yoshi like cattle to the slaughter!~
== SLILMAT ~If it's like that, then goals are noble and just. In exchange for a donation of one thousand gold pieces, I'll remove the binding from the weapon.~
== TB#STIVJ ~Wait a moment, I must ask <CHARNAME> for permission.~
= ~*Ahem* <CHARNAME>, would you please give me one thousand gold pieces to be able to use Yoshimo's katana? Yo know how much I would love to use it, but, if you'd rather not do so, I won't insist too much.~
= ~Pleasepleasepleaseplease!~
END
IF ~~ THEN REPLY ~One thousand gold pieces for a blade that's only worth thirty? That's a no.~ EXTERN TB#STIVJ YoshiKatana1-1
IF ~PartyGoldLT(1000)~ THEN REPLY ~I'd like to, but I don't have enough coin.~ EXTERN TB#STIVJ YoshiKatana1-2
IF ~PartyGoldGT(999)~ THEN REPLY ~I imagine that Yoshimo would be happy to know that his blade passed to you. Here's the money you need.~ EXTERN TB#STIVJ YoshiKatana1-3
IF ~PartyGoldGT(999)~ THEN REPLY ~I'll give you them, but on a condition: *don't* use it to hunt seagulls. Have I made myself clear?~ EXTERN TB#STIVJ YoshiKatana1-4

APPEND TB#STIVJ

IF ~~ THEN BEGIN YoshiKatana1-1
SAY ~(Snort!) You're meaner than a flock of raging seagulls!~ 
IF ~~ THEN DO ~SetGlobal("tb#YoshiKatanaIsNotUsable","GLOBAL",2)~ EXTERN SLILMAT YoshiKatana1-1a
END

IF ~~ THEN YoshiKatana1-2
SAY ~Don't worry about it, I'll handle this! I'll empty all pockets in Athkatla, if needed!~
= ~Hey, you! Don't move from here! We'll be back with the sum you asked, okay?~
IF ~~ THEN DO ~SetGlobal("tb#YoshiKatanaIsNotUsable","GLOBAL",2)~ EXTERN SLILMAT YoshiKatana1-2a
END

IF ~~ THEN YoshiKatana1-3
SAY ~Yeah! You're great, <CHARNAME>! I always said that you're a true friend! Thanks, thanks!~
IF ~~ THEN DO ~TakePartyGold(1000)~ EXTERN SLILMAT YoshiKatana1-3a
END

IF ~~ THEN YoshiKatana1-4
SAY ~Heh. As you wish. We're armed to the teeth, so I won't have trouble finding another weapon with which to gut those birds!~ 
= ~Either way, thanks, <CHARNAME>. You're great! I always said you're unique!~
IF ~~ THEN DO ~TakePartyGold(1000)~ EXTERN SLILMAT YoshiKatana1-3a
END
END

APPEND SLILMAT

IF ~~ THEN YoshiKatana1-1a
SAY ~Should you change idea, <PRO_BROTHERSISTER>, you'll find me here. Meanwhile, I'll go back to easing other people's suffering in the name of the Crying God.~
IF ~~ THEN EXIT
END

IF ~~ THEN YoshiKatana1-2a
SAY ~I'll wait for you here. Meanwhile, I'll go back to easing other people's suffering in the name of the Crying God .~
IF ~~ THEN EXIT
END

IF ~~ THEN YoshiKatana1-3a
SAY ~The good soul and kind heart of Ilmater mean that He's not easy to anger, but he doesn't spare his wrath against those who caused great suffering. Might this blade avenge your friend's unjust sorrow.~
IF ~~ THEN DO ~SetGlobal("tb#YoshiKatanaIsUsable","GLOBAL",1) StartCutSceneMode() ActionOverride("SLILMAT",StartCutScene("tb#syk1"))~ EXIT
END
END

CHAIN
IF WEIGHT #-1 ~Global("tb#YoshiKatanaIsUsable","GLOBAL",1) PartyHasItem("NPSW02")~ THEN SLILMAT YoshiKatanaIsUsable1
~Here you go. You'll always be welcome in the house of the Crying God.~
DO ~GiveItemCreate("tb#syk1","tb#stiv",1,0,0) TakePartyItem("NPSW02") DestroyItem("NPSW02")~ 
== TB#STIVJ ~YEAH! <CHARNAME>, I don't know how to thank you! Finally I can use it!!~
= ~Ooohhhhooohhhaaah!~
== TB#STIVJ IF ~Global("tb#stivanCrom","GLOBAL",1)~ THEN ~Heh. This weapon holds incredible potential. I'm sure that the dwarf in the Docks we've already visited might improve on it. Either way, I'm euphoric!~
== TB#STIVJ IF ~Global("tb#stivanCrom","GLOBAL",0)~ THEN ~Heh. This weapon holds incredible potential. If I'm not mistaken, there's a dwarf in the Docks that might improve on it. Either way, I'm euphoric!~
EXIT

EXTEND_BOTTOM WSMITH01 13
IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) PartyHasItem("npsw02") PartyHasItem("miscbu") Global("tb#stivanCrom","GLOBAL",0)~ THEN DO ~SetGlobal("tb#stivanCrom","GLOBAL",1)~ EXTERN tb#stivj YoshiKatana0
IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) PartyHasItem("tb#syk1") GlobalLT("tb#stivanCrom","GLOBAL",2)~ THEN DO ~SetGlobal("tb#stivanCrom","GLOBAL",2)~ EXTERN tb#stivj CromwellUpgradeKatana1
IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) PartyHasItem("tb#syk1") Global("tb#stivanCrom","GLOBAL",2)~ THEN EXTERN WSMITH01 CromwellUpgradeKatana2
END

CHAIN IF ~~ THEN TB#STIVJ YoshiKatana0
~Hey, dwarf, I have a question for you.~
== WSMITH01 ~What are you waiting for?~
== TB#STIVJ ~Do you see this blade? It was of somebody close to me. I'd like to use it, but it was bound to him, and nobody else could ever wield it. Can you do something about it?~
== WSMITH01 ~You asked the wrong person. I'm a smith, not a mage; you'll have to ask somebody else if you wish to remove a spell.~
== TB#STIVJ ~(Snort!) Thanks... of nothing.~
== WSMITH01 ~And what about you, do you have some absurd request like your friend's?~
COPY_TRANS WSMITH01 13

CHAIN IF ~~ THEN TB#STIVJ CromwellUpgradeKatana1
~We have work for you, dwarf.~
== WSMITH01 ~What is that about?~
== TB#STIVJ ~Could you improve upon this katana?~
== WSMITH01 ~That's not my area of expertize, boy. I'd rather spend my skills as a smith forging artifacts or exotic objects, not mere weapons.~
== TB#STIVJ ~Listen to me. I promised I'd use this blade to avenge the death of a friend, but I need it improved. The enemy that waits for us is powerful, and it's currently too weak to help me in that.~
== WSMITH01 ~Hmm...~
= ~I never tried something like this in the past, but I don't think it will be a problem.~
= ~If you'd like your dead friend's blade to be an instrument of vengeance, I need something of yours. Something that represents you. Something you'd never go without.~
== TB#STIVJ ~Heh. I think I have what you need. Take this; it should be what you need.~
== WSMITH01 ~Uhm? What the hell is this strange whitish goo?~
== TB#STIVJ ~*Ahem* Mommy always said that secrets cease to be so when revealed, so... don't ask me.~
== WSMITH01 ~Very well, very well, give me that. I could improve that katana, if you wish to do so.~
END
IF ~~ THEN REPLY #59761 EXTERN WSMITH01 CromwellUpgradeKatana1-1
IF ~~ THEN REPLY #59762 EXTERN WSMITH01 CromwellUpgradeKatana1-3

APPEND WSMITH01
IF ~~ THEN CromwellUpgradeKatana1-1
SAY ~Two things, me friend. It will cost ye 15,000 gp for the work, no less, and without an apprentice, ye'll have to stay here a full day and help me run the forge.~
IF ~PartyGoldGT(14999)~ THEN REPLY #59785 DO ~TakePartyGold(15000) DestroyGold(15000) TakePartyItem("tb#syk1") DestroyItem("tb#syk1") GiveItemCreate("tb#syk2","tb#stiv",1,0,0)~ GOTO CromwellUpgradeKatana1-2
IF ~~ THEN REPLY #59786 GOTO CromwellUpgradeKatana1-3
IF ~~ THEN REPLY #59791 GOTO 12
END

IF ~~ THEN CromwellUpgradeKatana1-2
SAY ~As ye wish.  Fer such a commission, we can start on it right away.  No sense in wasting time, then... it be best if we just get to it.~ 
IF ~~ THEN DO ~StartCutSceneMode() StartCutScene("cromwell")~ EXIT
END

IF ~~ THEN CromwellUpgradeKatana1-3
SAY #59796
COPY_TRANS WSMITH01 13
END

IF ~~ THEN CromwellUpgradeKatana2
SAY ~So, do you want to improve upon you friend's weapon or not?~
IF ~~ THEN REPLY #59761 EXTERN WSMITH01 CromwellUpgradeKatana1-1
IF ~~ THEN REPLY #59762 EXTERN WSMITH01 CromwellUpgradeKatana1-3
END
END




///////////////////////////////////////////
// More interjections than you can wave a stick at
///////////////////////////////////////////

INTERJECT_COPY_TRANS VICG1 0 tb#stivanVicG1-0
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN 
~Ooohhhhh! I never saw a dark elf. Were it not for the color of their skin and hair, they'd be the equal of their hated cousins.~
END

INTERJECT_COPY_TRANS NALIAJ 265 tb#stivanNaliaj-265
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN 
~Miss Nalia is right. Let us burn some seagulls, instead!~
END

INTERJECT_COPY_TRANS VICONI 2 tb#stivanViconi-2
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN 
~They say that drow are really evil and eat people alive, but this Viconia looks nice to me. Why don't we let her come with us? If worst comes to worst, I will find out what it means to burn alive in a pot.~
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN 
~(I'd fill her with gold if she did that).~
END

INTERJECT_COPY_TRANS BEDWIN 50 tb#StivanBedwin-50
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN 
~(Snort!) Mommy always said that women aren't sexual objects!~
== BEDWIN ~But of course. They often act as recipients that can dish out monsters (such as this example right next to me).~
== TB#STIVJ ~Viconia, I beg you, tell something to him!~
== BVICONI IF ~!Global("EdwinRomanceActive","GLOBAL",2)~ THEN
~The superiority of the female sex is indubitable and requires no discussion, sakphul. As for you, Red Wizard, I expect to see your words followed by action.~
== BVICONI IF ~Global("EdwinRomanceActive","GLOBAL",2)~ THEN
~The superiority of the female sex is indubitable and requires no discussion, sakphul. Although...~
END

INTERJECT_COPY_TRANS EDWIN 49 tb#StivanEdwin49
== VICONIJ IF ~InParty("Viconia") InParty("tb#stiv") !StateCheck("Viconia",CD_STATE_NOTVALID) !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Lil alerl velve zhah lil velkyn uss. The best knife is the unseen one. Maybe you could give reason to be to your useless life, sakphul, and gut that men without anyone seeing.~
== TB#STIVJ ~Heh. Anything for dear Viconia!~
END

INTERJECT_COPY_TRANS MAEVAR 31 tb#stivanMaevar-31
== VICONIJ IF ~InParty("Viconia") InParty("tb#stiv") !StateCheck("Viconia",CD_STATE_NOTVALID) !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Nindyn vel'uss kyorl nind ratha thalra elghinn dal lil alust.~
== TB#STIVJ ~*Ahem* Pardon?~
== VICONIJ ~Those who watch their backs find their deaths from their faces. That rivvil doesn't know that his end is near.~ 
= ~That's true of you as well, sakphul.~
END

INTERJECT_COPY_TRANS LEHTIN 10 tb#StivanLehtin-10
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~I've been living in Athkatla since I was born and I never heard of this place.~
== VICONIJ IF ~InParty("Viconia") InParty("tb#stiv") !StateCheck("Viconia",CD_STATE_NOTVALID) !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Your ingenuity is peerless, waela.~
END


INTERJECT_COPY_TRANS C6ELHAN2 55 tb#stivanC6elhan2-55
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~(Snort!) I have no intention of going away from Viconia!~
END

INTERJECT_COPY_TRANS VICONIJ 122 tb#stivanViconij-122
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Viconia, are you mad? How could you accept to undergo a Geas?~
== VICONIJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~I'm tired of having trouble with Surface beings, Stivan. He will do as he pleases... his fear amuses me.~
END

INTERJECT C6ELHAN2 62 tb#stivanC6elhan2-62
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) InParty("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN
~<CHARNAME>! Why would you allow such a thing?!~
END
IF ~~ THEN REPLY ~I don't have to explain myself to you, Stivan.~ EXTERN TB#STIVJ ViconiaGeas1-1
IF ~~ THEN REPLY ~I never really fully trusted Viconia. Now, thanks to Elhan, I can be sure that she won't betray me.~ EXTERN TB#STIVJ ViconiaGeas1-2
IF ~Global("ViconiaRomanceActive","GLOBAL",2)~ THEN REPLY ~Io trust Viconia more than anyone else. This Geas isn't but paperwork.~ EXTERN TB#STIVJ ViconiaGeas1-3
IF ~~ THEN REPLY ~Do you think I accepted gladly?~ EXTERN TB#STIVJ ViconiaGeas1-3
IF ~~ THEN REPLY ~As you can see yourself, those elves were anything but cooperative. Had I refused, I'd have put the whole party in jeopardy.~ EXTERN TB#STIVJ ViconiaGeas1-2

APPEND TB#STIVJ
IF ~~ ViconiaGeas1-1
SAY ~You... You don't have to explain yourself to me? Okay! Very well! When you put a rope to my neck I'll force myself not to ask you why!~
COPY_TRANS C6ELHAN2 62
END

IF ~~ ViconiaGeas1-2
SAY ~She wouldn't betray you! Not after all you did for her! I...~
IF ~!Global("tb#AfterYoshiBetrayal","GLOBAL",2)~ THEN EXTERN TB#STIVJ ViconiaGeas1-4
IF ~Global("tb#AfterYoshiBetrayal","GLOBAL",2)~ THEN EXTERN TB#STIVJ ViconiaGeas1-5
END

IF ~~ ViconiaGeas1-3
SAY ~Then why force her? I...~
IF ~!Global("tb#AfterYoshiBetrayal","GLOBAL",2)~ THEN EXTERN TB#STIVJ ViconiaGeas1-4
IF ~Global("tb#AfterYoshiBetrayal","GLOBAL",2)~ THEN EXTERN TB#STIVJ ViconiaGeas1-5
END

IF ~~ ViconiaGeas1-4
SAY ~Bah! Your mind is more evil than a seagull's!~
COPY_TRANS C6ELHAN2 62
END
END

CHAIN 
IF ~~ THEN TB#STIVJ ViconiaGeas1-5
~*SOB*! I don't want to lose any more friends to these horrible Geas! Yoshi died of exactly such a thing, and I don't want the same thing to happen to Viconia!~ 
== VICONIJ ~That insufferable darthiir knows perfectly well that my kin's promises are as quick sand. From afar they seem solid and safe, but they prove fleeting and unsafe once you tread on them.~
= ~Viconia DeVir isn't foolish enough to turn on you. Yet. I have nothing to gain out of that.~
= ~...~
= ~What *the hell* are you doing? Keep your hands off me, iblith!~
== TB#STIV ~Heh. I love you, Viccy.~
== VICONIJ~... Shar be my witness, <CHARNAME>: you'll pay for every insolence the little one inflicts on me. Might darkness engulf me if I don't keep my oath up!~
COPY_TRANS C6ELHAN2 62

INTERJECT MAZZY 25 tb#StivanMazzy-25
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~(Sniff sniff) Come on, <CHARNAME>! She stinks of paladinitis from every orifice! Why would you let her join us?~
END
IF ~~ THEN REPLY ~She's obviously a servant of Good. That is why I let her join us.~ EXTERN TB#STIVJ StivanDislikesMazzy1-1
IF ~~ THEN REPLY ~It is *I* who decides the party make up. Do you have any objections to that?~ EXTERN TB#STIVJ StivanDislikesMazzy1-2
IF ~~ THEN REPLY ~She'll help us overcome the dangers of this place, then we'll bid her goodbye.~ EXTERN TB#STIVJ StivanDislikesMazzy1-3

APPEND TB#STIVJ
IF ~~ THEN BEGIN StivanDislikesMazzy1-1
SAY ~Great. Whom will you recruit next? An army of paladins from the Radiant Heart? Let me know in advance, if possible, so that I might take my leave and let you drink to goodness and justice!~
IF ~~ THEN EXTERN MAZZY StivanDislikesMazzy1-4
END

IF ~~ THEN BEGIN StivanDislikesMazzy1-2
SAY ~Yours truly is more than enough as far as halflings go!~
IF ~~ THEN EXTERN MAZZY StivanDislikesMazzy1-4
END

IF ~~ THEN BEGIN StivanDislikesMazzy1-3
SAY ~Heh. Then it's not so bad!~
IF ~~ THEN EXTERN MAZZY StivanDislikesMazzy1-4
END
END

APPEND MAZZY
IF ~~ THEN BEGIN StivanDislikesMazzy1-4
SAY ~I'd say we shouldn't wait any further and open our way in this place of evilness.~
COPY_TRANS SAFE MAZZY 25
END
END

INTERJECT_COPY_TRANS GORF1 0 tb#StivanGorf1-0
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN 
~Hey, you! Do you have a problem with Mazzy?~
== GORF1 ~What's this? Small refuse waving a sword?~
== TB#STIVJ ~Even if we are smaller than you, that doesn't mean you can treat us like insects!!~
== GORF1 ~What you want? I break your face, I break!~
== TB#STIVJ ~Eeekkk!~
= ~M-Mazzy... C-could you handle that?~
END

INTERJECT_COPY_TRANS2 MAZZYJ 203 tb#StivanMazzyj-203
== MAZZYJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~As for you, Stivan, I appreciated your gesture. I would have never imagined that you'd jump in my defense.~
== TB#STIVJ ~Heh. You know that it was simply because I act before thinking.~
== MAZZYJ ~I actually think you're getting braver with time. You'll soon be able to face fearlessly a dragon!~
== TB#STIVJ ~A dragon?! Where? *Where*?! WHERE'?!?!~
== MAZZYJ ~By Arvoreen, Stivan, there is no dragon here...~
== TB#STIVJ ~EEEKKKKK! I don't want to die!!~ DO ~ApplySpellRES("tb#ssca",Myself)~
== MAZZYJ ~(Sigh)~
END

INTERJECT_COPY_TRANS2 SASSAR 31 tb#StivanSassar-31
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~*Ahem* Is that all? You know, those one-eyed beasts really thrashed us. Just this once, I think that "thanks" isn't really enough. I never requested a reward, but this time...~
= ~Hey! Where are you going? I'm not done yet!~
BRANCH ~InParty("Mazzy") InParty("tb#stiv") !StateCheck("Mazzy",CD_STATE_NOTVALID) !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ BEGIN
== MAZZYJ ~Wait, Sassar; take this money and rebuild your life. Never forget what you learned from this terrible experience.~
DO ~GiveGoldForce(100)~
== SASSAR ~Even if I wanted, I fear I will never be able to do so. I... I thank you, my Lady, for your generosity.~
== MAZZYJ ~It is not a problem. May Arvoreen's blessing be with you.~
== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN
~Blood and damnation, Mazzy! I didn't work for all that gold to give it to the first blind fool we meet!~
== TB#STIVJ ~(Snort!) Do you know how he'll waste that money? He'll simply give that to whatever god he used to worship!~
== MAZZYJ ~He'll ask for forgiveness for his sins, and won't hesitate to commit to a monetary sacrifice as penance. I hope that his god will forgive him.~
== TB#STIVJ ~Forgiveness? I do not forgive seagulls for what they did to my family.~
== MAZZYJ ~You should. Anger dries people up... and you are proof of that.~
END
END

INTERJECT_COPY_TRANS SAFE BANOMEN 22 tb#StivanBANOMEN-22
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) !Global("AnomenIsNotKnight","GLOBAL",1)~ THEN 
~Don't make me laugh, Anomen. You haven't seen a single giant in your life, not to mention twenty.~
== BANOMEN ~I suggest you hold your tongue, small one, before I make you swallow one of those flying things you love so much.~
END

INTERJECT_COPY_TRANS ANOMENJ 224 tb#StivanANOMENJ-224
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) !Global("AnomenIsNotKnight","GLOBAL",1)~ THEN
~Maybe you would change your mind if you were buried alive. Do you want to test my theory?~
== ANOMENJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~My mace will bury you soon enough, halfling.~
END

INTERJECT_COPY_TRANS2 BANOMEN 60 tb#StivanBANOMEN-60
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~"Lowly folk"? How you dare, you ugly--~
== MAZZYJ ~Stivan, don't involve yourself in this.~
END

INTERJECT_COPY_TRANS MAZZYJ 0 tb#StivanMazzy-0
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~And would that be your answer? Mazzy, an insult begets a greater one!~
== MAZZYJ ~There's no need. Sometimes, insults define the people using them, than the people receiving them.~
END

INTERJECT_COPY_TRANS COR 5 tb#StivanCor-5
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~... Did I get that right? Did you say... Saerk?~
== COR ~That's the name of the fiend!~
== TB#STIVJ ~Saerk... Farrahd?~
== COR IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Exactly.~
END

INTERJECT_COPY_TRANS COR 8 tb#StivanCor-8
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~It's not possible. It's a nightmare. The same nightmare as before repeats itself, the same one! Saerk is... he is the cause of my ruin! He's the nobleman that stole everything from me!~
END

INTERJECT_COPY_TRANS ANOMENJ 48 tb#StivanAnomenj-48
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~(Snort!) I have some things to say as well!~
END


INTERJECT ANOMENJ 52 tb#StivanAnomenj-52
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Let me tell you what we should do! It is time that that villain pays for all he has done! If we don't take action *now*, others will suffer what I and Anomen had to go through!~
END
IF ~Global("tb#StivanPCTalk","GLOBAL",3)~ THEN REPLY ~I seem to recall that this Saerk is the man who stole everything you owned, is that right?~ EXTERN TB#STIVJ SaerkStrikesAgain1-1
IF ~!Global("tb#StivanPCTalk","GLOBAL",3)~ THEN REPLY ~I need the full details, Stivan. Who is this Saerk? What has he done to you?~ EXTERN TB#STIVJ SaerkStrikesAgain1-2

APPEND TB#STIVJ
IF ~~ THEN BEGIN SaerkStrikesAgain1-1
SAY ~Yes, it is him.~
IF ~~ THEN EXTERN TB#STIVJ SaerkStrikesAgain1-3
END

IF ~~ THEN BEGIN SaerkStrikesAgain1-2
SAY ~Saerk is the leader of the Farrahds, one of the richer families in Athkatla. He was... my father's partner.~
= ~After my parents and brothers were killed by seagulls, I pleaded to him for help. I had no idea how to run my inheritance, but I thought that him, of all people, could have helped me.~
= ~It was a complete mistake. That cursed man stole all my family's documents, and created forgeries that asserted that my lands were actually owned by the Farrahds since many generations.~
= ~I lost everything. My vineyards, my farms. Even the house I lived in.~
IF ~~ THEN EXTERN TB#STIVJ SaerkStrikesAgain1-3
END
END

CHAIN IF ~~ THEN TB#STIVJ SaerkStrikesAgain1-3
~*SOB*! I hoped I'd left that past behind me, but to know that Saerk still ruins other people's lives, exactly as he did with me... it makes me mad!~ 
== MINSCJ IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN ~Boo says that those who are unjust always get the best results.~
= ~Boo! How can you say such a thing? All the years spent butt-kicking evil... destroyed by such a thought!~
= ~Ohhh! I understand now! That man is holding his evil influence over you! We must stop him, before he corrupts this hamster's innocence!~
== EDWINJ IF ~InParty("Edwin") InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN ~(I finally found an use for that useless "Dominate Animals" spells. And to think I was simply thinking of a way of ignoring that halfling's wailing).~ 
== JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN ~You want to take this men to justice? Without any evidence I don't think we'd go far. It'd be better to ask local authorities for help. Cooperation would be fruitful.~
== CERNDJ IF ~InParty("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN ~As a spider skillfully builds his web to damage unknowing insects, so this man built his fortune over other people's disgraces. It is our duty to avoid his web to become even more fruitful.~
== VALYGARJ IF ~InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN ~It looks like even merchants are now criminals, as if there weren't enough of the latter here in Athkatla. Maybe this would be the time to prove them that nobody in Athkatla is free to act as he pleases over others.~
== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN ~This Saerk is far too similar to my old companions. By the Nine Hells, I say we kill him and loot all of his riches!~
== AERIEJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN
~It... It's very sad what happened to you, Stivan. I... didn't think that men could be this evil.~
== HAERDAJ IF ~InParty("Haerdalis") !StateCheck("Haerdalis",CD_STATE_NOTVALID)~ THEN ~Ah, a new surprise! The man behind the murder of this young woman is also behind the poverty of my young seagull. What will be the next development in this tragic story?~
== NALIAJ IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN
~I'm dumbfound. I've never seen such an abuse, not even amongst the higher ranking families in Athkatla. And for what? Is he trying to improve his own social escalation?~
= ~I don't care what his reasoning is. We must do all we can to return everything to this merchant's victims!~
== VICONIJ IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN ~That rivvil deserves to be repaid by his own measure, although I appreciate his skill in taking advantage of the weaker.~
== YOSHJ IF ~InParty("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN ~Saerk Farrahd is a powerful man, and his guards aren't know for their... kindness. If we are to make an enemy out of him, we should be careful.~
== IMOEN2J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN ~<CHARNAME> and I already met many self-deluded fools, but this hot-air balloon beats all of them. I suggest he spends a learning week in Candlekeep's underground. That'd calm him down, oh yes.~
== MAZZYJ IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN ~We must act to defend justice, but with with the right means. An trial in front of a proper court is that what this person deserves!~
== JANJ IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN ~By Uncle Scratchy's beard! Merchants are con-men by definition, but the Calimshite knows no bounds! I haven't been this dishonest, not even during the Great Turnip Famine of 1348. All I ever did was sell carefully-disguised cucumbers as turnips. Since I was the only one to sell them, I was raking in money, but that attracted the attention of a tax inspector, Trax. You know, he was about to bust me some weeks ago, but I managed to get away thanks to the help of some adventurers. It is a shame I have never seen them since.~ 
== KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN ~The thief's tale removes any doubt as far as this man's evilness goes, but there are no proof of wrongdoing in either case. No, this must be handled by submitting it to the judgment of Torm.~
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN ~Are you still thinking about this? You don't need a mind as phenomenal as mine to understand that the merchant will continue doing so unless you kill him!~
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ ~The halfling's past does nothing except make everything muddier, so we should ignore them, for the time being.~
= ~I'm in front of a fork, but I don't know what direction I should take. Avenging Moira's death goes against the Order's dictates; yet, not avenging her would taint the honor of her memory.~
= ~What would you suggest, <CHARNAME>?~
END
COPY_TRANS ANOMENJ 52

INTERJECT_COPY_TRANS ANOMENJ 62 tb#StivanAnomenj-62
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Anomen is right. We don't need to dirty our hands with blood. The best way to make him pay is to force him into poverty, as he did with me and you.~
= ~When the magistrate will acknowledge his guiltiness, he'll lose everything... and the old and the new abuse will be both avenged!~
END

INTERJECT_COPY_TRANS ANOMENJ 71 tb#StivanAnomenj-71
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Your sister's death won't go unpunished, Anomen. Saerk won't win, not this time!~
== ANOMENJ ~So be it. May Helm assist us in our task.~
END

INTERJECT_COPY_TRANS COR 51 tb#StivanCor-51
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~*Ahem* Don't you think that prison would be better than this punitive mission?~
== ANOMENJ ~Do you intend to oppose us?~
== TB#STIVJ IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Not at all. I was wondering if death is the best punishment for that wrongdoer. I'd rather see him spend the rest of his life behind bars, but if you and <CHARNAME> think that killing him is better, that is fine for me as well.~
== ANOMENJ ~Saerk won't remain in jail for more than a single day. He must have ties in the Council itself. No, I will repay Moira's death by the same coin.~
END

INTERJECT_COPY_TRANS KELDOR 2 tb#StivanKeldor-2
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~"Greater good"? "Seal our fates and seek it out"? I don't want to travel with this goody two-shoes paladin, <CHARNAME>!~
== KELDOR ~I doubt I did anything to deserve your dislike, but I'll listen to your objections without prejudice.~
== TB#STIVJ ~The members of the Radiant Heart are hypocrites! They claim they fight evil and injustice, yet they do nothing to fight the criminality and poverty that thrives in Athkatla!~
== KELDOR ~I thought that same way when I saw thirty winters, but with age I understood that violence doesn't solve problems.~
END

INTERJECT_COPY_TRANS2 KELDOR 3 tb#StivanKeldor-3
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~(Gasp) ... I'm safe!~
END

INTERJECT_COPY_TRANS SAFE KELDOR 4 tb#StivanKeldor-4
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~You did it on purpose. Tell me you did it on purpose!~
== KELDOR ~I suggest you put a hold to your twisted tongue, halfling. You might pay dearly for your ill saying with people less patient than me.~
END

INTERJECT_COPY_TRANS KELDORJ 11 tb#StivanKeldorj-11
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN 
~WOW! This is a nice house, old man! I thought that paladins had to distribute amongst poor people the riches they gain from their crusades?~
== KELDORJ ~That we do, but a part is distributed amongst the servants of Torm. We have a family to take care of, after all.~
== TB#STIVJ ~I wonder how big is this part you mention. Why do I think that it's larger than the share you give to the *real* needy ones?~
== KELDORJ ~I will NOT tolerate further nay-saying. My wife and I had to work hard to afford this house.~
== TB#STIVJ ~Yes... It must have been harsh work, especially for her.~
== KELDORJ ~Your lack of respect is disgusting, halfling.~
= ~(Sigh) Come on, <CHARNAME>; my family is awaiting for us.~
END

INTERJECT_COPY_TRANS BKELDOR 37 tb#StivanBkeldor-37
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Careful what you say, paladin. I cut the throats of many guards that wanted to put me in jail just for sleeping on the streets. Keep threatening Viconia and you're on the list too.~
== BKELDOR ~The friends of my enemies are my enemies, halfling. Heed my warning.~
END

INTERJECT_COPY_TRANS BVICONI 111 tb#StivanBviconi-111
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~You ugly meanie, you must pass on my body before you can hurt an hair out of her!~
== BVICONI ~Step aside, little one. I don't need to be defended by anyone, least of all one such as you. I'll get rid of this d'nilok by myself.~
END

INTERJECT_COPY_TRANS BVALYGA 6 tb#StivanBvalyga-8
== BVALYGA IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Yet...~
= ~Stivan, a especially nasty smells comes out of your backpack.~
== TB#STIVJ ~My seagull poo is NOT to be touched!~
== BVICONI ~Tsk. Surface dwellers are the worst compromise between the size of their two brains.~
END

INTERJECT_COPY_TRANS EDWINJ 11 tb#StivanEdwinj-11
== EDWINJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Cower in fear, halfling! You'll be the first to taste my new and unstoppable power!~
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Eeeekkkk!~
END

INTERJECT_COPY_TRANS2 EDWINJ 170 tb#StivanEdwinj-170
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv")~ THEN ~Heh. Would *this* be your new and unstoppable power, Edwin? Or should I say... *Miss* Edwina?~
== EDWINJ ~Shut up, nothing! I'll fix this mistake and then fix you up once and for all!~
END

INTERJECT_COPY_TRANS YOSHJ 145 tb#StivanYoshj-145
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Yoshimo, might I ask what did you do to make this man angry?~
== YOSHJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Another time, perhaps.~
END

INTERJECT_COPY_TRANS YOSHJ 113 tb#StivanYoshj-113
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Are you saying... you brought us in the lion's lair *intentionally*? Yoshimo, this.. this is betrayal!~
END

INTERJECT_COPY_TRANS SAFE YOSHIMOX 2 tb#StivanYoshimox-2
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~It's not final, Yoshimo! We'll find a solution, a cure... Many things can be changed!~
== YOSHIMOX ~I fear not, my small friend. Nothing can be changed.~
== TB#STIVJ ~No! No! You must... you *have to* explain yourself to me! I... Don't understand... ~
== YOSHIMOX ~I spent all my life understanding you don't need to understand everything. Time is a great teacher, but unluckily it kills all of its pupils.~
END

INTERJECT_COPY_TRANS2 VALYGAR 44 tb#StivanValygar-44
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~*Ahem* I can't wonder if the game is worth the price. We're about to make enemies out of the most powerful enchanters of Amn... for what?~
== YOSHJ IF ~IsValidForPartyDialog("Yoshimo") IsValidForPartyDialog("tb#stiv") !StateCheck("Yoshimo",CD_STATE_NOTVALID) !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~The halfling is right. I should remind you, <CHARNAME>, that it is the Cowlies who keep Irenicus and your friend in prison... do you want to go and keep them company?~
END

INTERJECT_COPY_TRANS VALYGARJ 61 tb#StivanValygarj-61
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Tsk. Hypocrite and thankless. A singular combination of qualities, Valygar, that you deserve like no other.~
== VALYGARJ ~You can say whatever you wish, but I will never kill some innocent for...~
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~For what? For a deserving cause like <CHARNAME>'s? Ptew! I spit on you and your beggar morality!~
== VALYGARJ ~Ponder your next choice carefully, <CHARNAME>. This halfling's venomous tongue is already reason enough for me to leave.~
END

INTERJECT_COPY_TRANS VALYGARJ 59 tb#StivanValygarj-49
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~(Sniff sniff) Ranger, are you sure you aren't mixing up this place's odor with your armpits'?~
== VALYGARJ ~(Sigh) <CHARNAME>, what were you thinking when you asked him to follow you?~
END

INTERJECT_COPY_TRANS NALIAJ 226 tb#StivanNaliaj-226
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~When I was begging on the streets, nobody has ever been that generous to me.~
== NALIAJ ~No noble ever gave you a single gold piece? The Argrims, for example?~
== TB#STIVJ ~No.~
== NALIAJ ~And the Jyssev?~
== TB#STIVJ ~Neither.~
== NALIAJ ~It is a ignominy! An affront! With half their riches they could feed all of Athkatla, yet they don't raise a finger!~
== TB#STIVJ ~Miss Nalia, it is fitting it is so. Neither I nor my relatives ever cared about helping the beggars when we were comfortable. I imagine it's some sort of... punishment.~
= ~*Ahem* Not that I am happy of that. I would have gladly done without.~
END

INTERJECT_COPY_TRANS JAHEIRAJ 392 tb#StivanJaheiraj-392
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Jaheira is right. I didn't know about it either.~
== JAHEIRAJ ~And why should you know about it at all? The servants of Balance don't tell everybody where their strongholds are at.~
== TB#STIVJ ~But the Shadow Thieves do. You should know that there is bad blood between the Shadows of Amn and the Harpers... Had this stronghold been here since I was young, the entire city would know about it.~
END

APPEND TB#STIVJ 
IF ~AreaCheck("AR0502")
Global("tb#StivanEnteredTanner2","AR0502",0)~ THEN BEGIN Stivanar0502
SAY ~(Cough) What... What sort of filth is this? Not even the corners I slept in were this foul! Do... (Cough) do we have to continue? I... I hope not...~
IF ~~ THEN DO ~SetGlobal("tb#StivanEnteredTanner2","AR0502",1)~ EXIT
END
END

INTERJECT_COPY_TRANS BODHI 1 tb#StivanBodhi-1
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~*Ahem* This woman makes me uneasy, <CHARNAME>. I have the goosebumps...~
END

INTERJECT_COPY_TRANS BODHI 6 tb#StivanBodhi-6
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Just thinking about working for that woman ruffles my feet's hairs, but the most important thing is to succeed in your mission, right?~
END

INTERJECT_COPY_TRANS RYLOCK 24 tb#StivanRylock-24
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~*Ahem* Do we really have to? People, here in the Docks, claim that those who enter that house never come out alive...~
== HAERDAJ IF ~IsValidForPartyDialog("haerdalis") IsValidForPartyDialog("tb#stiv") !StateCheck("haerdalis",CD_STATE_NOTVALID) !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~And what's the matter, my seagull? If death awaits us, we'll have the pleasure of traveling without needing baggage.~
== TB#STIVJ IF ~IsValidForPartyDialog("haerdalis") IsValidForPartyDialog("tb#stiv") !StateCheck("haerdalis",CD_STATE_NOTVALID) !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~...~
END

CHAIN IF WEIGHT #-1 ~IsValidForPartyDialog("tb#stiv")
See("tb#stiv")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
Global("tb#StivanNobleMan","GLOBAL",0)~ THEN NOBLEM1 stivanNobleman
~Since when do they let such filthiness enter this rich district?~
== TB#STIVJ ~Heh. The only filth I see, my lord, is what you have under your feet.~
DO ~SetGlobal("tb#StivanNobleMan","GLOBAL",1)~
EXIT

CHAIN IF WEIGHT #-1 ~IsValidForPartyDialog("tb#stiv")
See("tb#stiv")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
Global("tb#SStivanFemaleChild","GLOBAL",0)~ THEN urchin2 StivanUrchin
~MOMMY ALWAYS SAYS THAT ALL HALFLINGS STINK!~
DO ~SetGlobal("tb#SStivanFemaleChild","GLOBAL",1)~
== TB#STIVJ ~It's not true! I wash myself every six months, at the least!~
EXIT

CHAIN IF WEIGHT #-1 ~IsValidForPartyDialog("tb#stiv")
See("tb#stiv")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
Global("tb#SStivanNobleWoman","GLOBAL",0) ~THEN NOBLEW1 stivanNoblewoman
~Away with you, beggar! Having you near me takes the shine out of my pearls!~
DO ~SetGlobal("tb#SStivanNobleWoman","GLOBAL",1)~
== TB#STIVJ ~Heh. They shine nicely, for fakes.~
EXIT

INTERJECT_COPY_TRANS MESSEN 15 tb#StivanMessen-15
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~It's most certainly the job of those tree-huggers! I always suspected they were responsible of what happened to my family, and these attacks are but further proof! We must investigate, <CHARNAME>!~
END

INTERJECT_COPY_TRANS2 MESSEN 10 tb#StivanMessen-10
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~I know Trademeet - I've been there several times with my family. If we're lucky, we might find one of the merchants we usually sold our wine to. I'm sure they'll do everything in their power to help us find those smelly druids!~
END

INTERJECT_COPY_TRANS2 BHCRYPT 0 tb#StivanBhcrypt-0
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~WOW! This crypt is perfect! There's even some space for your party members, should they find themselves in need to take a nap here!~
== BHCRYPT ~None will desecrate the place of my rest. I'll cut your heads one by one and put them on a pike, so that they might scare away other snoopers!~
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Eeeekkkk!~
END

INTERJECT_COPY_TRANS UDSIMYAZ 26 tb#StivanUdsimyaz-26
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Yeah! I was getting tired of those tentacled things!~
END

INTERJECT PLAYER1 33 tb#StivanTreeOfLife
== PLAYER1 IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Stivan, the Athkatlan halfling fixated with seagulls. Always ready to argue, often joking and sometimes childish, he's followed you since your first meeting without fear, even if he has no quarrel with the one who has stolen your soul.~
END
IF ~!Global("EntryTest","GLOBAL",7)~ THEN REPLY ~Go back to Athkatla, Stivan. You have no reason to fight against Irenicus.~ EXTERN TB#STIVJ TreeOfLifeStivan1-1
IF ~Global("EntryTest","GLOBAL",7) !Global("tb#AfterYoshiBetrayal","GLOBAL",1)~ THEN REPLY ~Go back to Athkatla, Stivan. You have no reason to fight against Irenicus.~ EXTERN TB#STIVJ TreeOfLifeStivan1-2
IF ~Global("EntryTest","GLOBAL",7) Global("tb#AfterYoshiBetrayal","GLOBAL",1)~ THEN REPLY ~Go back to Athkatla, Stivan. You have no reason to fight against Irenicus.~ EXTERN TB#STIVJ TreeOfLifeStivan1-3
IF ~!Global("EntryTest","GLOBAL",7)~ THEN REPLY ~I'm grateful for your help, Stivan, but you should get away from here now. You have no reason to risk your life.~ EXTERN TB#STIVJ TreeOfLifeStivan1-1
IF ~Global("EntryTest","GLOBAL",7)~ THEN REPLY ~I'm grateful for your help, Stivan, but you should get away from here now. You have no reason to risk your life.~ EXTERN TB#STIVJ TreeOfLifeStivan1-2
IF ~!Global("EntryTest","GLOBAL",7)~ THEN REPLY ~Stivan, the battle ahead of us is very dangerous. I need yo to do the best you could ever do.~ EXTERN TB#STIVJ TreeOfLifeStivan1-1
IF ~Global("EntryTest","GLOBAL",7)~ THEN REPLY ~Stivan, the battle ahead of us is very dangerous. I need yo to do the best you could ever do.~ EXTERN TB#STIVJ TreeOfLifeStivan1-4

APPEND TB#STIVJ 
IF ~~ THEN BEGIN TreeOfLifeStivan1-1 
SAY ~*Ahem* I won't follow you in your suicidal battle, <CHARNAME>. I won't risk dying without properly burying my close ones.~
= ~It was a pleasure to travel with you. I'd gladly follow you, but my parents and brothers have the priority. They must rest in peace.~
IF ~~ THEN DO ~SetGlobal("tb#StivanJoined","GLOBAL",0) LeaveParty() EscapeArea()~ GOTO TreeOfLifeStivan1-1a
END

IF ~~ THEN BEGIN TreeOfLifeStivan1-1a
SAY ~I'm back in Athkatla. Good luck!~ 
COPY_TRANS player1 33
END

IF ~~ THEN BEGIN TreeOfLifeStivan1-2
SAY ~Don't be silly, <CHARNAME>. After all you did for me, fighting at your side is the least I could do to repay you.~ 
COPY_TRANS player1 33
END
 
IF ~~ THEN BEGIN TreeOfLifeStivan1-3
SAY ~You're wrong, <CHARNAME>. That ugly one is responsible for Yoshimo's death, and I swore I would avenge him.~
= ~I will be at your side until my last breath. Together we will bury the blade of our dead friend in the heart of that monster~ 
COPY_TRANS player1 33
END

IF ~~ THEN BEGIN TreeOfLifeStivan1-4
SAY ~You can count on me. Do you know how much seagull poo I stashed away for him? TONS.~ 
IF ~~ THEN REPLY ~Remember: right in the face.~ EXTERN TB#STIVJ TreeOfLifeStivan1-5
IF ~~ THEN REPLY ~Perfect. He has quite some tasting to do.~ EXTERN TB#STIVJ TreeOfLifeStivan1-5
IF ~~ THEN REPLY ~Let steel talk for you.~ EXTERN TB#STIVJ TreeOfLifeStivan1-6
END

IF ~~ THEN BEGIN TreeOfLifeStivan1-5
SAY ~Yeah!~
COPY_TRANS player1 33
END

IF ~~ THEN BEGIN TreeOfLifeStivan1-6
SAY ~Heh. I'll put a dagger in his back, if this what you wish, but I will make sure he is properly adorned with poo!~
COPY_TRANS player1 33
END
END

INTERJECT_COPY_TRANS PLAYER1 25 StivanHell
== tb#stivj IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~(Gasp!) My... My body! It is still whole, yet... I felt some force pulling and pulling at me, and I feared it might have broken me!~
= ~*Ahem* I don't understand. Are we alive... or dead?~
END

INTERJECT_COPY_TRANS3 HELLJON 7 tb#StivanHelljon-7
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Alignment("tb#stiv",CHAOTIC_NEUTRAL)~ THEN
~It is time to end this forever, ugly one. Might seagulls feast on your remains!~
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Alignment("tb#stiv",CHAOTIC_GOOD)~ THEN
~It is time to end this forever, ugly one. Might your remains wither away in this place for all eternity!~
END

INTERJECT_COPY_TRANS3 HELLJON 8 tb#StivanHelljon-8
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Alignment("tb#stiv",CHAOTIC_NEUTRAL)~ THEN
~It is time to end this forever, ugly one. Might seagulls feast on your remains!~
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Alignment("tb#stiv",CHAOTIC_GOOD)~ THEN
~It is time to end this forever, ugly one. Might your remains wither away in this place for all eternity!~
END

INTERJECT_COPY_TRANS3 HELLJON 9 tb#StivanHelljon-9
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Alignment("tb#stiv",CHAOTIC_NEUTRAL)~ THEN
~It is time to end this forever, ugly one. Might seagulls feast on your remains!~
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Alignment("tb#stiv",CHAOTIC_GOOD)~ THEN
~It is time to end this forever, ugly one. Might your remains wither away in this place for all eternity!~
END

INTERJECT_COPY_TRANS3 HELLJON 10 tb#StivanHelljon-10
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Alignment("tb#stiv",CHAOTIC_NEUTRAL)~ THEN
~It is time to end this forever, ugly one. Might seagulls feast on your remains!~
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Alignment("tb#stiv",CHAOTIC_GOOD)~ THEN
~It is time to end this forever, ugly one. Might your remains wither away in this place for all eternity!~
END

INTERJECT_COPY_TRANS RAELIS 41 tb#StivanRaelis-41
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Isn't Haer’Dalis the name of that very thin actor with those long long hair?~
== RAELIS ~Yes, short one. Are you a friend of our hound?~
== TB#STIVJ ~Oh, no. I simply saw him act a few times. Do you have any idea why would anybody want to kidnap him?~
END

INTERJECT_COPY_TRANS HAERDA 109 tb#StivanHaerda-109
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) !Global("RaelisJob","GLOBAL",1)~ THEN ~But this, unless I am mistaken, is one of the actors currently employed at the Five Flagons. What is he doing here? More importantly, why does he have that dopey look?~
END

INTERJECT_COPY_TRANS HAERDA 109 tb#StivanHaerda-109a
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Global("RaelisJob","GLOBAL",1)~ THEN ~This is the actor that Miss Raelis asked us to find, I can tell him. But it's strange... he doesn't usually look this dopey. Maybe that ugly mage hurt him somehow?~
END

INTERJECT_COPY_TRANS HAERDA 103 tb#StivanHaerda-103
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~It would be great to have you travel with us, Haer’Dalis. Did you know I saw some of your last representations?~
== HAERDA ~Really? Tell me, which one enthralled you the most?~
== TB#STIVJ ~“Go with the Cambion” moved me. Its drama is peerless. It was a shame that Biff came out of the stage's hidden entrance all of a sudden - the rest of the public laughed for the rest of the show!~
== HAERDA ~Tsk. Only the Primes could shed tears for some mediocre sentimentalist crud while laughing shamelessly because of a small mistake.~ 
== TB#STIVJ ~*Ahem* Since we'll be traveling together, could you teach me how to be a better bard? I tried it, but unfortunately memory leaves me alone in the middle of a tale or poem...~
== HAERDA ~I'm afraid not, boy. The Art is an innate talent, a gift we have or now ever since our first cry. It is not something you can teach.~
= ~Well, <CHARNAME>, to you the awaited decision. Will we be exploring this unknown place side to side?~
END

INTERJECT_COPY_TRANS AERIE 26 tb#StivanAerie-26
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~(Sniff sniff) Unless my sense of smell is playing a trick on me, that ogre stinks of feathers. I know it sounds absurd, but my nose is always right!~
END

INTERJECT_COPY_TRANS SAFE AERIE 52 tb#StivanAerie-52
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Try not to walk too close to me. While you have your wings no more, you're still a feathered being, and your odor...~
= ~Hey! What are you doing!~
== AERIE ~I-I'm trying to take care of this poor seagull. Look the state he is in! He needs healing!~
== TB#STIVJ ~How you dare free that vile bird from the rightful caging he deserves? Hand it back *now*!~
== AERIE ~I... will do everything in my power to make sure he recovers and returns to fly in the blue sky with his friends. But we need to save Quayle first!~
END	

INTERJECT_COPY_TRANS AERIE 17 tb#StivanAerie-17
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~You can't do such a thing, <CHARNAME>! If the bird freer comes with us, seagulls will escape the tortures and depluming they deserve!~
END

INTERJECT_COPY_TRANS SAFE KORGANA 9 tb#StivanKorgana-9
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~I was wondering, dwarf... Why don't you forge some magical trinket for us in exchange of our help?~
== KORGANA ~I'm not an hammer and anvil dwarf, baby. The only things I wield are axe and shield, and I'll use them soon to open my way through the decaying bodies in that crypt!~
END

INTERJECT_COPY_TRANS JAN 19 tb#StivanJan-19
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~I used to peddle illegal goods as well, you know? Seagull plumes, to be precise. It couldn't make me wealthy, but I could put together enough gold pieces for a slice of bread to eat.~
== JAN ~Seagull plumes? Damn, my cousin Eduardo could need them to perfect the deathtrap he claims can fly. If only I knew where I could find him. I wish he didn't actually try to fly off in his creation.~
END

INTERJECT_COPY_TRANS SAFE NALIA 66 tb#StivanNalia-66
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Am I mistaken or are those the lands of the De’Arnise? The Lord's daughter is known in all Athkatla for her generosity.~
= ~Now that I think of it, you look a bit like her.~
== NALIA ~...~
== TB#STIVJ ~How silly of me! You *are* the incredible Miss Nalia! How could I not recognize you right away?~
== NALIA ~There's nothing incredible about me, really. I only try and use the things I have access to to help the needy.~
END

INTERJECT_COPY_TRANS NALIA 14 tb#StivanNalia-14
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~But that woman... That woman is Miss Nalia De'Arnise! She's known in all of Athkatla for her generosity! Why didn't you let her join us, <CHARNAME>? Do you have any idea the social standing we could have by traveling with her?~
BRANCH ~IsValidForPartyDialog("Jaheira") IsValidForPartyDialog("tb#stiv") !StateCheck("Jaheira",CD_STATE_NOTVALID) !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ BEGIN
== JAHEIRAJ ~Nobody travels with <CHARNAME> for such futile motives, Stivan. Some didn't even have a choice about it.~
== TB#STIVJ ~Ah no?~	
== JAHEIRAJ ~No.~
END
END

INTERJECT_COPY_TRANS ISAEA 1 tb#StivanIsaea-1
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~(Snort!) Why are you looking at me?~
== ISAEA ~Nalia, Try not to mingle with peasants, if you please. You might not notice so, but your noble births become unnoticeable just by standing next to that beggar.~
== TB#STIVJ ~I a peasant?! I used to hail from a family of merchants respected all through Athkatla!~
== ISAEA ~Those times are gone, I see. Does this wretched thing come from the Slums or some other degraded district you visited?~
END

INTERJECT_COPY_TRANS ISAEA 21 tb#StivanIsaea-21
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Hey, you! Why do you keep bothering Miss Nalia?~
== ISAEA ~Are you still traveling with that peasant?~
== NALIAJ ~I already told you that Stivan isn't a peasant. And even if he were, there's nothing shameful in it.~
== ISAEA ~No matter how much you dress up a beggar in rich clothes, you'll always understand he isn't a noble by his behavior. But I lack the time for such distinctions. Get away from that group of orcs, now!~
END

INTERJECT_COPY_TRANS NALIAJ 220 tb#StivanNaliaj-220
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Heh. Don't worry, Miss Nalia; that pompous fool is clearly bluffing.~
END

INTERJECT_COPY_TRANS ISAEA 26 tb#StivanIsaea-26
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~(Snort!) It is time to end this show! Try getting near to Miss Nalia and you'll have to handle me!~
== ISAEA ~A false step, *peasant*, and you'll find yourself hanged before you know it.~
END

INTERJECT_COPY_TRANS ISAEA 29 tb#StivanIsaea-29
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~We can't let Miss Nalia in the hands of that despicable man! We must free her! Or at least direct the seagull's anger towards him! <CHARNAME>, we must do something!~
END

INTERJECT EDWIN 16 tb#StivanEdwin-16
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Heh. If you would like me to handle this borrowing, <CHARNAME>, you need but ask.~
END
IF ~~ THEN REPLY ~Thanks, but I'll handle this myself.~ EXTERN tb#stivj tb#StivanEdwin-12a
IF ~~ THEN DO ~SetGlobal("#tbStivanMarcus","GLOBAL",1)~ REPLY ~Thank you, you spared me the bother of having to do that myself.~ EXTERN tb#stivj tb#StivanEdwin-12b

APPEND TB#STIVJ
IF ~~ THEN tb#StivanEdwin-12a
SAY ~You'll come and beg on your knees, I know it!~
COPY_TRANS EDWIN 16
END

IF ~~ THEN tb#StivanEdwin-12b
SAY ~Yeah! Let's go there!~
COPY_TRANS EDWIN 16
END
END

INTERJECT MARCUS 0 tb#StivanMarcus-0
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Global("#tbStivanMarcus","GLOBAL",1)~ THEN ~SEAGULL PLUMES! Go and strike!~
== MARCUS ~What the hell...?!~
== TB#STIVJ ~Yeah! Here is it! Here's the necklace you wanted, <CHARNAME>!~ DO ~GiveItemCreate("AMUL09",Player1,1,0,0)~
END
IF ~~ THEN REPLY ~(Sigh) Do you have any idea how Edwin would react if I brought him a jewel instead of the papers he needed?~ EXTERN TB#STIVJ StivanMarcus1-1
IF ~~ THEN REPLY ~Stivan, I think I didn't explain myself properly. I needed the *documents* that man holds, not some cheap trinket!~ EXTERN TB#STIVJ StivanMarcus1-1
IF ~~ THEN REPLY ~Phenomenal. Really. A pity that the goal of the theft is a bunch of papers, instead of a neck pendant.~ EXTERN TB#STIVJ StivanMarcus1-1

CHAIN IF ~~ THEN tb#stivj StivanMarcus1-1
~Whoops.~
= ~Don't despair yet, <CHARNAME>! I'll fix this this very instant!~
= ~Hey, you!~
== MARCUS ~Damn you, halfling! You almost blinded me with those plumes! What the hell were you --~
== TB#STIVJ ~SEAGULL POO! Go and strike!~
== MARCUS ~Ahhh! I can see nothing! Help! Help!!~
== TB#STIVJ ~Here they are!~ DO ~GiveItemCreate("misc4w",Player1,1,0,0)~
== MARCUS ~Where are you, cur? Where are you?! If I catch you...!!!~ DO ~EscapeArea()~
== TB#STIVJ ~Run away, <CHARNAME>!~
EXIT

INTERJECT_COPY_TRANS SAERK 1 tb#StivanSaerk-1
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Anomen isn't alone! I'm here myself, Saerk!~
== SAERK ~The little child of the Fristbrowfine? What are you doing here?~
== TB#STIVJ ~I'm here to avenge myself! It is time you pay for your crimes!~
== SAERK ~Cor is so desperate he sends his son and this beggar against me? Don't make me laugh!~
END

INTERJECT_COPY_TRANS SAERK 4 tb#StivanSaerk-4
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~You haven't changed a bit, monster! You've always been the same evil men who thrives in stealing from others, as you did with me!~
== SAERK ~Again with that story? Your father's lands were too rich to be left with an incompetent fool such as you!~
== TB#STIVJ ~Idiot! I told you that myself! That is why I asked you for assistance!~
== SAERK ~It doesn't matter. You can do *nothing* against me. And neither you, Anomen.~
END

INTERJECT trgyp02 2 tb#StivanTrgyp02-2
== TRGYP02 IF ~!InPartySlot(LastTalkedToBy,0) Name("tb#Stiv",LastTalkedToBy)~ THEN  ~Soon the future will hold another decade of loneliness for you, young man, but do not despair: when the White Queen will fall, victim of a plot by the Black Queen, by the hand of a dark-cloaked assassin, you'll answer the call of Destiny, and will help the Realms on the path of safety.~ 
== tb#stivj ~Oh, no! I don't want to remain alone and friendless yet again! Did you see properly between my hands' hair?~
EXIT


INTERJECT_COPY_TRANS CELOGAN 40 tb#stivanCelogan-40
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~We must see this problem through. I'd be ready to bet that the druids are behind my relatives' slaughter.~
== CELOGAN ~I hear sadly of these news. Did that happen recently?~
== TB#STIVJ ~No, it happened eight years ago, but I'm sure that those druids sent the seagulls that killed my parents and brothers!~
== CELOGAN ~The animal attacks here in Trademeet only started a few weeks ago, so I doubt they're related to such an old event.~
== TB#STIVJ ~Damn, I was so sure that... Well, it doesn't matter. *Now* they're surely behind all this chaos.~
END

INTERJECT_COPY_TRANS MARIA 5 tb#StivanMaria-5
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN 
~Heh. It looks like bad things are happening in House Firecam.~
END

INTERJECT_COPY_TRANS KHELLOR 6 tb#StivanKhellor-6
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~(Gasp!) That man is more dangerous than I thought! Is... is there a risk that he sells Miss Nalia as a concubine?~
== KHELLOR ~Roenal will keep the girl right next to him. After all, he needs her to get the lands he desires. I can't say that he will not try to get rid of her after he is done.~
== TB#STIVJ ~What?! I'd rather be eaten alive by a storm of seagulls rather than leaving Miss Nalia in such a fate! Could that meanie be as untouchable as he claims?~
== KHELLOR ~No, he isn't. I'll give you some directions that you could use to rescue your friend. Of course, I didn't tell you anything, and we never met.~
END

INTERJECT_COPY_TRANS KHELLOR 6 tb#StivanKhellor-8
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Thanks to this man we have a path to follow now. If you need my help, <CHARNAME>, know that I'll do anything to save Miss Nalia!~
END

INTERJECT_COPY_TRANS BODHIAMB 15 tb#StivanBodhiamb-15
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~No! We can't let that ugly one kidnap Viconia! <CHARNAME>, let's follow her!~
END

INTERJECT_COPY_TRANS BODHIAMB 13 tb#StivanBodhiamb-13
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~No! We can't let that ugly one kidnap Jaheira! <CHARNAME>, let's follow her!~
END

INTERJECT_COPY_TRANS BODHIAMB 19 tb#StivanBodhiamb-19
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~No! We can't let that ugly one kidnap Anomen! <CHARNAME>, let's follow her!~
END

INTERJECT_COPY_TRANS BODHIAMB 17 tb#StivanBodhiamb-17
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) GlobalLT("tb#StivanAerie","GLOBAL",100)~ THEN ~No! We can't let that ugly one kidnap Aerie - only I can mistreat her! <CHARNAME>, let's follow her!~
END

INTERJECT_COPY_TRANS BODHIAMB 17 tb#StivanBodhiamb-17
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) GlobalGT("tb#StivanAerie","GLOBAL",99)~ THEN ~No! We can't let that ugly one kidnap Aerie - if I can't mistreat her, nobody can! <CHARNAME>, let's follow her!~
END

INTERJECT_COPY_TRANS UDSILVER 0 tb#StivanUdsilver-0
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~I... told you so! A dragon! Run away while you can!~
== UDSILVER IF ~!Dead("UDtrap06") Dead("UDbalor") !Dead("UDsvir03")~ THEN ~Don't get nervous. You have no reason to fear me.~
== UDSILVER IF ~OR(3) Dead("UDtrap06") !Dead("UDbalor") Dead("UDsvir03")~ THEN ~Don't get nervous. While your actions have been evil and shameful, you will not suffer my wrath. Circumstances require cooperation.~
END

EXTEND_BOTTOM UDSILVER 37
IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN EXTERN tb#stivj stivanisdrow
END

EXTEND_BOTTOM UDSILVER 39
IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN EXTERN tb#stivj stivanisdrow
END

APPEND TB#STIVJ
IF ~~ THEN stivanisdrow
SAY ~I can't believe this, <CHARNAME>. We look like drows!~
IF ~Race(Player1,HALFORC)~ THEN REPLY ~Bah. I vastly prefer my real body. It's far stronger and muscle-bound than this one.~ EXTERN TB#STIVJ StivanDrow1-1
IF ~Race(Player1,HALFLING)~ THEN REPLY ~Where did my feet hair go?~ EXTERN TB#STIVJ StivanDrow1-2
IF ~Race(Player1,GNOME)~ THEN REPLY ~My plump cheeks... Gone!~ EXTERN TB#STIVJ StivanDrow1-3
IF ~OR (2) Race(Player1,ELF) Race(Player1,HALF_ELF)~ THEN REPLY ~I really don't feel at ease looking like this.~ EXTERN TB#STIVJ StivanDrow1-4
IF ~Class(Player1,MAGE_ALL)~ THEN REPLY ~Such a spell is nothing but incredible. Few wizards could dream to cast it.~ EXTERN TB#STIVJ StivanDrow1-5
IF ~Gender(Player1,MALE)~ THEN REPLY ~Have you seen how gorgeous I look, eh?~ EXTERN TB#STIVJ StivanDrow1-6
IF ~Gender(Player1,FEMALE)~ THEN REPLY ~What do you think, Stivan? Do you find me more beautiful like this or as a <PRO_RACE>?~ EXTERN TB#STIVJ StivanDrow1-7
IF ~~ THEN REPLY ~Well, we can now claim we went through a surely unique experience.~ EXTERN TB#STIVJ StivanDrow1-8
IF ~~ THEN REPLY ~You aren't the only one who feels disoriented. I'll need some time to get used to these looks.~ EXTERN TB#STIVJ StivanDrow1-9
END

IF ~~ THEN StivanDrow1-1
SAY ~You're really unrecognizable, <CHARNAME>.~
IF ~~ THEN EXTERN TB#STIVJ StivanDrow1-9
END

IF ~~ THEN StivanDrow1-2
SAY ~Heh. Neither I can believe that I have smooth feet.~
IF ~~ THEN EXTERN TB#STIVJ StivanDrow1-9
END

IF ~~ THEN StivanDrow1-3
SAY ~It's true, your face is shallower than before. You're almost unrecognizable!~
IF ~~ THEN EXTERN TB#STIVJ StivanDrow1-9
END

IF ~~ THEN StivanDrow1-4
SAY ~Well, aside your skin tone, you're exactly as before.~
IF ~~ THEN EXTERN TB#STIVJ StivanDrow1-9
END

IF ~~ THEN StivanDrow1-5
SAY ~*Ahem* I understood from the first moment that she wasn't hostile.~
IF ~~ THEN EXTERN TB#STIVJ StivanDrow1-9
END

IF ~~ THEN StivanDrow1-6
SAY ~Heh. It looks like you're happy with your new look.~
IF ~~ THEN EXTERN TB#STIVJ StivanDrow1-9
END 

IF ~~ THEN StivanDrow1-7
SAY ~(Blushes) Well, your qualities... they didn't change a bit...~
IF ~~ THEN EXTERN TB#STIVJ StivanDrow1-9
END

IF ~~ THEN StivanDrow1-8
SAY ~Heh. Samuel won't believe me when I tell him!~
IF ~~ THEN EXTERN TB#STIVJ StivanDrow1-9
END

IF ~~ THEN StivanDrow1-9
SAY ~I'm a bit vertiginous. I'm not used to such heights. Let us walk slowly, without haste. I wouldn't want to ruin my knees in a fall.~
COPY_TRANS UDSILVER 37
END
END

INTERJECT_COPY_TRANS UDSILVER 46 tb#StivanUdsilver-46
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Mi... Might I ask f-for a boon, most illustrious and e-endearing one...~
== UDSILVER ~We don't have the time for such praise. Talk and be quick about it.~
== TB#STIVJ ~Well, I... I... Was wondering i-if... If I could k-keep this... t-these looks...~
== UDSILVER ~You'd like to remain as a dark-hearted elf? Did I get that right?~
== TB#STIVJ ~Y-yes...~
== UDSILVER ~That's outside reason. I will dispel my illusion and carry you to the exit. These were the terms, and I won't listen to other absurd requests.~
== TB#STIVJ ~But...~
== UDSILVER ~Silence! I will endure no replies!~
END

INTERJECT_COPY_TRANS SLHALF01 4 tb#StivanSlhalf01-4
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") IsValidForPartyDialog("Haerdalis")!StateCheck("tb#stiv",CD_STATE_NOTVALID) !StateCheck("Haerdalis",CD_STATE_NOTVALID)~ THEN 
~Am I mistaken, or is that halfling basically identical to me?~
== HAERDAJ ~The only good copies are those that show us the ridiculous bits of the originals.~
== TB#STIVJ ~Heh. I feel like that was meant as an insult, Haer'Dalis.~
== HAERDAJ ~I would never dare, my seagull.~
END

INTERJECT_COPY_TRANS RUMAR 7 tb#StivanRumar-7
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") IsValidForPartyDialog("Yoshimo")!StateCheck("tb#stiv",CD_STATE_NOTVALID) !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN 
~(Gasp!) That man is unfaithful! He cheated his own wife!~
== YOSHJ ~Who ever said that cheating on your wife is synonymous with unfaithfulness? It allows you to stay close to your lover for all life.~
END

INTERJECT_COPY_TRANS NOBLEW2 1 tb#StivanNoblew2-1
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") IsValidForPartyDialog("Nalia")!StateCheck("tb#stiv",CD_STATE_NOTVALID) !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN 
~Miss Nalia, I could have sworn I saw that noblewoman steal in the Promenade. How could that be possible?~
== NALIAJ ~You'd always think that rich people don't need to steal, Stivan, but it's hard to change your own habits.~
END

INTERJECT_COPY_TRANS2 GAELAN 66 tb#StivanGaelan-66
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~You should complete your business with this Linvail as soon as possible, <CHARNAME>. The Lords of Shadows change continuously in Athkatla, and I wouldn't want someone to take his place before you reached your goal.~
END

INTERJECT_COPY_TRANS2 FIRKRA01 9 tb#StivanFirkra01-9
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~I once wandered near those hills, <CHARNAME>, but they're nothing but an empty and poor area, if I'm not mistaken. I can't imagine what would some predators do in such a place.~
END

INTERJECT_COPY_TRANS DASLAVE1 7 tb#StivanDaslave1-7
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~(Sniff) You're a really kind person, <CHARNAME>. You really helped those people, exactly like you did when you welcomed me in your party.~
BRANCH ~IsValidForPartyDialog("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ BEGIN
== TB#STIVJ ~Miss Nalia, have you seen what a heartfelt thing he did?~
== NALIAJ ~Yes, Stivan. A great example to look up to, although I fear that the older families won't follow him.~
== TB#STIVJ ~If I weren't already your humble servant, I would have served and praised him as he should, but your nobleness takes priority.~
END
END

INTERJECT_COPY_TRANS DASLAVE1 8 tb#StivanDaslave1-8
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~(Sniff) You're a really kind person, <CHARNAME>. You really helped those people, exactly like you did when you welcomed me in your party.~
BRANCH ~IsValidForPartyDialog("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ BEGIN
== TB#STIVJ ~Miss Nalia, have you seen what a heartfelt thing he did?~
== NALIAJ ~Hmph. I think he could have spent some coin and given actual help to those poor souls.~
== TB#STIVJ ~Don't diminish his gesture.~
== NALIAJ ~To correct iniquities and eradicate poverty, you can't just lend a hand to the needy, Stivan. We must also help them walk until they won't be able to stand on their own legs.~
== TB#STIVJ ~Well, I... Of course, Miss Nalia. You're always right.~
= ~(Whispering) It's not true, <CHARNAME>, I'm with you. Sometimes our friend thinks incorrectly, but I can't contradict her. I would make her look bad.~
END
END

INTERJECT_COPY_TRANS UHMAY01 18 tb#StivanUhmay01-18
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Er... I thought that Umar was only a tale told by halfling mothers to scare their children when they got in trouble or some such.~
= ~Not that my mother ever needed such a thing.~
END

INTERJECT_COPY_TRANS PROST1 4 tb#StivanProst1-4
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~The Cowled Wizards are very good at capturing people. Unfortunately, they're usually the wrong ones.~
END

INTERJECT_COPY_TRANS PROST1 1 tb#StivanProst1-1
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Heh. Mommy always said that her slaps were more than enough.~
END

INTERJECT_COPY_TRANS SLUMM3 2 tb#StivanSlumm3-2
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~Don't expect any help, since it won't come. You should learn how to defend yourself, exactly like I did.~
END

INTERJECT_COPY_TRANS DHARLOT1 1 tb#StivanDharlot1-1
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN
~(Blushes) Don't... Don't say that, not even as a joke!~
END

INTERJECT_COPY_TRANS UDSOLA01 50 tb#StivanUDSOLA01-50
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ ~Wow, friendly drows do exist!~
== VICONIJ IF ~IsValidForPartyDialog("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ ~His friendliness won't help him when that female will tear the skin off his back for his insolence.~
END

INTERJECT_COPY_TRANS UDSOLA01 114 tb#StivanUDSOLA01-114
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ ~Yeah! Go tell her that!~
== UDSOLA01 ~Don't mix yourself in problems that aren't your your own.~
END

INTERJECT ANOMENJ 134 tb#StivanAnomenj-134
== ANOMENJ IF ~Global("tb#StivanAnomenj-52","GLOBAL",1)~ THEN ~Could that be the best solution? I... After listening to the halfling's tale, I'm having trouble accepting the idea that that man is innocent.~
END
IF ~~ THEN REPLY ~You said yourself that the halfling's past should be ignored in your judgment. We aren't asking ourselves if that man is guilty of improper acquisition; we're asking ourselves whether he is guilty of having sent the killers of your sister, and we have no proof about that.~ EXTERN ANOMENJ 174
IF ~~ THEN REPLY ~Uhm... You aren't wrong. Naming some random brigand guilty of the deed would make no sense. It's implausible. Rivalry with your father is reason enough for him to kill, especially if you consider what he did to Stivan. So be it. We'll avenge Moira's death.~ EXTERN ANOMENJ 135
IF ~!Global("AnomenRomanceActive","GLOBAL",2)~ THEN REPLY ~The decision is yours now, Anomen. I can't decide such a delicate question for you.~ EXTERN ANOMENJ AnomenDecidesHimself

EXTEND_BOTTOM ANOMENJ 134
IF ~!Global("AnomenRomanceActive","GLOBAL",2)~ THEN REPLY ~The decision is yours now, Anomen. I can't decide such a delicate question for you.~ EXTERN ANOMENJ AnomenDecidesHimself
END

APPEND ANOMENJ
IF ~~ THEN BEGIN AnomenDecidesHimself
SAY ~I understand you, <CHARNAME>. I can't put the weight of such a decision on your shoulders. It is mine and mine alone.~
= ~It is decided. I won't leave my sister's death go unpunished. Come, <CHARNAME>... Let us go to Saerk and make justice!~
COPY_TRANS ANOMENJ 135
END
END

INTERJECT_COPY_TRANS KALAH2 13 tb#StivanKalah2-13
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN 
~It's not fair. If the small people were treated with more respect and less laughter, this gnome would have never done something like this.~
END

INTERJECT_COPY_TRANS2 VVAMN1 4 tb#StivanVvamn1-4
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN 
~Tsk. Guards do nothing but harass the innocent. You have no idea how many times they chased me through the city without a reason.~
BRANCH ~IsValidForPartyDialog("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ BEGIN
== YOSHJ ~I vaguely remember you being chased by a group of guards for having thrown guano in their faces. Am I wrong?~
== TB#STIVJ ~(Blushes) Well, Maybe... Maybe that one time I angered them...~
== YOSHJ ~That one time, eh?~
END
END

INTERJECT_COPY_TRANS HENDAK 19 tb#StivanHendak-19
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN 
~If that ship has been the base of the slavers since they first came to town, then... then they've been there since before I was born!~
END

INTERJECT_COPY_TRANS CIVFRUS1 1 tb#StivanCivfrus1-1
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Daddy had your same problem. I can't recall whom he talked to, but he finally managed to see the matter through.~
END

INTERJECT_COPY_TRANS SAFE EDWIN 30 tb#StivanEdwin-30
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Mommy always said you shouldn't trust the Red Wizards. They're known in all the Realms for their... *Ahem*... opportunism.~
== EDWIN ~Where did you find this human mistake, <CHARNAME>? In the middle of some pile of junk?~
== TB#STIVJ ~That's not true! I wasn't looking through waste when <PRO_HIMHER> and I met each other!~
== EDWIN ~(That halfling is now on the list of pests to get rid of).~
END

INTERJECT_COPY_TRANS SAFE EDWIN 31 tb#StivanEdwin-31
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Mommy always said you shouldn't trust the Red Wizards. They're known in all the Realms for their... *Ahem*... opportunism.~
== EDWIN ~Where did you find this human mistake, <CHARNAME>? In the middle of some pile of junk?~
== TB#STIVJ ~That's not true! I wasn't looking through waste when <PRO_HIMHER> and I met each other!~
== EDWIN ~(That halfling is now on the list of pests to get rid of).~
END

INTERJECT_COPY_TRANS2 ARENTHIS 16 tb#StivanArenthis-16
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Bah! It'd be better to live as an orphan than with a paladin father!~
= ~...~
= ~Who am I telling this... I'd be happy to know that both my parents and all my brothers are in the Order just to have them back... *SOB*!~
END

INTERJECT_COPY_TRANS SURLY 14 tb#StivanSurly-14
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Global("tb#stivanSurly","GLOBAL",0)~ THEN ~Hey! I want to fight in your pit!~
DO  ~SetGlobal("tb#stivanSurly","GLOBAL",1)~
== SURLY ~I have no time to waste with your idiocy, shorty.~
== TB#STIVJ ~List-~
== SURLY ~You there, what do you want now?~
END

INTERJECT SURLY 14 tb#StivanSurly-14-2
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Global("tb#stivanSurly","GLOBAL",1)~ THEN ~I want to fight in your pit!~
DO  ~SetGlobal("tb#stivanSurly","GLOBAL",2)~
== SURLY ~This is funny. Whom would you fight, shorty? Flies? Ants?~
== TB#STIVJ ~No, seagulls.~
== SURLY ~Seagulls? Don't waste my time.~
== TB#STIVJ ~Waste your time? Don't you know I'm Stivan the Hunter?~
== SURLY ~Stivan the Hunter? Two years ago I bought a seagull plume and you never gave it tome! When I catch you-~
== TB#STIVJ ~Eeeekkkk!~
DO ~RunAwayFrom("surly",120)~
EXIT

CHAIN IF WEIGHT #-1 ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID) Global("tb#stivanSurly","GLOBAL",2)~ THEN SURLY surlyStivanFinale
~How you dare show yourself here, shorty?~
== TB#STIVJ ~I dare. I captured TEN seagulls before walking in here, and I'll fight with them to fulfill my debt.~
== SURLY ~Hmph. I was thinking about gutting you, but this sounds funnier. You can go fight now.~
END
IF ~!Class(Player1,DRUID_ALL) !Class(Player1,RANGER_ALL) !Range([PC.0.0.RANGER_ALL],30) !Range([PC.0.0.DRUID_ALL],30)~ THEN REPLY ~Have fun, Stivan.~ EXTERN tb#stivj killSeagulls
IF ~!Class(Player1,DRUID_ALL) !Class(Player1,RANGER_ALL) OR(2) Range([PC.0.0.RANGER_ALL],30) Range([PC.0.0.DRUID_ALL],30)~ THEN REPLY ~Some of my party members don't want to see animal fights. Wait 'til I distract them.~ EXTERN surly surlyNotPaid
IF ~~ THEN REPLY ~I want nothing to do with such a thing.~ EXTERN surly surlyNoShow

APPEND TB#STIVJ
IF ~~ THEN killSeagulls
SAY ~Yeah!~
IF ~~ THEN DO ~SetGlobal("tb#stivanSurly","GLOBAL",3) StartCutSceneMode() StartCutScene("tb#ssurl")~ EXIT
END
END

APPEND SURLY
IF ~~ THEN surlyNoShow
SAY ~So you want to be a goody two-shoes? The halfling owes me one hundred gold pieces. Cough them up.~
IF ~PartyGoldGT(99)~ THEN DO ~TakePartyGold(100) DestroyGold(100)~ REPLY ~So be it - take the money.~ GOTO surlyPaid
IF ~~ THEN REPLY ~Forget about it.~ GOTO surlyNotPaid
END

IF WEIGHT #-1 ~Global("tb#stivanSurly","GLOBAL",5)~ THEN surlyStivanFinale
SAY ~Do you have shorty's money?~
IF ~!Class(Player1,DRUID_ALL) !Class(Player1,RANGER_ALL) !Range([PC.0.0.RANGER_ALL],30) !Range([PC.0.0.DRUID_ALL],30)~ THEN REPLY ~I think Stivan would rather fight.~ EXTERN tb#stivj killSeagulls
IF ~PartyGoldGT(99)~ THEN DO ~TakePartyGold(100) DestroyGold(100)~ REPLY ~Yes, here's the one hundred coins.~ GOTO surlyPaid
IF ~~ THEN REPLY ~Forget about it.~ GOTO surlyNotPaid
END

IF ~~ THEN surlyPaid
SAY ~Fine. Now get out of my sight!~
IF ~~ THEN DO ~SetGlobal("tb#stivanSurly","GLOBAL",4)~ EXIT
END

IF ~~ THEN surlyNotPaid
SAY ~Get out of my sight. Don't come back without the money.~
IF ~~ THEN DO ~SetGlobal("tb#stivanSurly","GLOBAL",5)~ EXIT
END

IF WEIGHT #-1 ~Global("tb#StivanSurly","GLOBAL",3)~ THEN surlyAfterSeagull
SAY ~Hmph. Congratulations, you paid the debt off.~
IF ~~ THEN DO ~SetGlobal("tb#stivanSurly","GLOBAL",4)~ GOTO surlyEnd
END

IF ~~ THEN surlyEnd
SAY ~Do you want something else, or do you just want to waste my time?~
COPY_TRANS SURLY 14
END
END

INTERJECT_COPY_TRANS THIEF3 0 tb#StivanThief3-0
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Wow! I wish my plumes were this sharp!~
END

INTERJECT_COPY_TRANS THIEF5 7 tb#StivanThief5-7
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~You bought that from the Hook, right? That barman has the bad habit of diluting wine with water.~
END

// If you consider these men a threat, then do what you think is necessary.   Gloves of Healing would be a suitable reward for the task, I think.  Do you accept?
INTERJECT_COPY_TRANS KAYL2 13 tb#StivanKayl2-13
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~I say we join them. The Fallen Paladins, I mean. We can get rich illegally and taint the Radiant Heart's honor... No negative side, I say!~
== KAYL2 ~I hope your leader is smarter than you are, halfling.~
END

// That is a shame, truly, for we have no one else to turn to at this time.  If you change your mind, please come back and speak with me. 
INTERJECT_COPY_TRANS KAYL2 7 tb#stivanKayl2-7
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Yippee! We don't have to obey paladins!~
END

// Very well then, you shall have it.  Return it soon or you will not be given your reward.  It is very important that the cup remains in the hands of the Order.
INTERJECT_COPY_TRANS SAFE KAYL2 21 tb#StivanKayl2-21
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~I know someone who knows someone... We can rack up some nice coin by selling that cup!~
== KAYL2 ~If you dare talk of such things again I'll remove your tongue, Stivan!~
== TB#STIVJ ~Who told you my name?~
== KAYL2 ~The same person that would warn me if you tried to see your plan through.~
END

// Then you are due your just reward.  The Most Noble Order of the Radiant Heart gives you our fullest thanks.
INTERJECT_COPY_TRANS SAFE KAYL2 18 tb#StivanKayl2-18
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~We obeyed paladins and killed some friendly smugglers all for a pair of gauntlets? Bah, what a waste of time and chance for making money.~
== KAYL2 ~Your actions helped Good, so I will ignore your insults, for now. I suggest you don't show again in this place, Stivan.~
END

INTERJECT_COPY_TRANS WELLYN 3 tb#StivanWellyn-3
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~(Snort!) Such tragedies wouldn't happen if the guard did its job!~
== JAHEIRAJ IF ~IsValidForPartyDialog("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN ~I don't doubt that the local militia is incompetent, Stivan, but you should never accuse without offering new ideas.~
END

INTERJECT_COPY_TRANS JAHEIRAJ 292 tb#StivanJaheiraj-292
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Why such worry for some spiders?~
== JAHEIRAJ ~To a Nature servant, preserving the life of the Mother's creatures is the most important commandment.~
== TB#STIVJ ~Heh. I didn't understand anything, except that you somehow want to help those small beasts.~
END

INTERJECT_COPY_TRANS WELLYN 8 tb#StivanWellyn-8
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Saving that boy's dolly isn't enough - the killed must be stopped, before he can hurt another child!~
== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN ~We'll end this menace together, Stivan. We can't let our people be hurt by such tragedies!~
BRANCH ~IsValidForPartyDialog("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ BEGIN
== KORGANJ ~Before the beggar, now the killed. Do you have some impure fetish for halfling kids, <CHARNAME>?~
== TB#STIVJ ~I wish I saw your face if they stole your teddy bear!~
== KORGANJ ~... Get the baby away from me, by Abbathor's buttocks, before I send him in the Abyss next to his beloved family!~
END
END

INTERJECT_COPY_TRANS2 LLYNIS 10 tb#StivanLlynis-10
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~You can be sure of it, monster! Die!~
END

INTERJECT_COPY_TRANS2 LLYNIS 8 tb#StivanLlynis-8
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~You can be sure of it, monster! Die!~
END

INTERJECT LLYNIS 11 tb#StivanLlynis-11
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~No! We can't leave that baby halfling's death unavenged, <CHARNAME>! I won't allow it!~
== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN ~I'm with you, Stivan! In the name of Arvoreen, justice will be made!~
END
IF ~~ THEN DO ~ActionOverride("llynis",Enemy())~ EXIT

INTERJECT LLYNIS 12 tb#StivanLlynis-12
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~No! We can't leave that baby halfling's death unavenged, <CHARNAME>! I won't allow it!~
== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN ~I'm with you, Stivan! In the name of Arvoreen, justice will be made!~
END
IF ~~ THEN DO ~ActionOverride("llynis",Enemy())~ EXIT

INTERJECT_COPY_TRANS RENAL 30 tb#StivanRenal-30
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Heh. I can imagine myself as a spy, looking for clues or removing excessive witnesses. Stivan the Hunter is about to make his name between the Shadows of Amn!~
BRANCH ~IsValidForPartyDialog("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ BEGIN
== YOSHJ ~In case you weren't already aware, Stivan, we aren't playing guards and thieves.~
== TB#STIVJ ~Heh. I want you in my team, Yoshi.~
END
END

INTERJECT_COPY_TRANS YOSHJ 73 tb#StivanYoshj-73
== YOSHJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~Most importantly, keep the short one on a leash. I wouldn't want or identity to be compromised before we ever meet Mae'Var.~
END

INTERJECT_COPY_TRANS MAEVAR 29 tb#StivanMaevar-29
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") IsValidForPartyDialog("Yoshimo") !StateCheck("tb#stiv",CD_STATE_NOTVALID) !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN ~(Gasp!) We were -- Umpppphh!~
== YOSHJ ~I'm sorry for the interruption, my Lord. What's the name of our next goal?~
END

INTERJECT_COPY_TRANS NOBLEM1 7 tb#StivanNoblem1-7
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") IsValidForPartyDialog("Edwin") !StateCheck("tb#stiv",CD_STATE_NOTVALID) !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN ~Heh. It sounds like a perfect plan to get rid of the Cowlies and this Edwin.)~
== EDWINJ ~(I suspected the halfling was plotting against myself, but this plan is devilish. I won't let them send me back home to Mother. Not after she slapped me for having told her to shut up!)~
END

INTERJECT_COPY_TRANS NOBLEW1 0 tb#StivanNoblew1-0
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~*Mommy* always said that the noble class would collapse on itself if it weren't for the middle and poor ones. How about this, eh?~
END

INTERJECT_COPY_TRANS2 pirpir10 4 tb#StivanPirPir10-4
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") IsValidForPartyDialog("Cernd") !StateCheck("tb#stiv",CD_STATE_NOTVALID) !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN ~(Sigh) I wish I could recite poetry and tales like this mariner, but my memory, unfortunately, isn't good enough.~
== CERNDJ ~If poetry doesn't grow as naturally as leaves on a tree, then it shouldn't grow at all.~
== TB#STIVJ ~Congratulations, Cernd. You just removed what small appreciation I had for you!~
END

INTERJECT_COPY_TRANS BKELDOR 4 tb#StivanBkeldor-4
== TB#STIVJ IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~You are the last person he should talk to! You're part of that squalid group of bigots that judged unjust our vengeance!~
== BKELDOR ~You have no small part in his corruption, halfling. It was you who made him drink from a cup of lies to wash away his thirst for justice.~
END

INTERJECT_COPY_TRANS BANOMEN 45 tb#StivanBanomen-45
== BKELDOR IF ~IsValidForPartyDialog("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN ~The boy always despised your goals and your morals. How could you not see how he used your weakness for his own vengeance?~
== TB#STIVJ ~(Snort!) Pain gets people close to each other, idiot!~
END




///////////////////////////////////////////
// Scripted banters
///////////////////////////////////////////

CHAIN 
IF ~PartyRested()
InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanViconia","GLOBAL",1)~ THEN TB#STIVJ stivan-viconia-2
~Viconia, my dear Viconia... Have you slept nicely?~
DO ~SetGlobal("tb#StivanViconia","GLOBAL",2)~
== VICONIJ ~Shut your mouth, you stupid Surface dweller. Your voice is insufferable to my ears.~
== TB#STIVJ ~Heh. I see you're really charming today, Viccy.~
== VICONIJ ~*Don't* call me wish such a name, idiot!~
== TB#STIVJ ~As you wish, Viccy.~
EXIT

CHAIN 
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
Global("AnomenIsNotKnight","GLOBAL",0)
OR(2)
AreaCheck("AR0901")
AreaCheck("AR0902")
CombatCounter(0)
Global("tb#StivanAnomenAboutFaith","GLOBAL",0)~ THEN TB#STIVJ stivan-anomen-temple
~Every time I walk in such places I feel sick. The sight of these fools praying on their knees is unbearable!~
DO ~SetGlobal("tb#StivanAnomenAboutFaith","GLOBAL",1)~
== ANOMENJ ~On the contrary, the devotion they hold towards their god is admirable. I doubt you would be able of such.~
== TB#STIVJ ~Lucky me. What would I get out of it, Anomen? Illusions? False hope? Some minor spell?~
== ANOMENJ ~Faith. During hardships, faith lends courage and strength, hope and comfort; something you can hold on to move on.~
== TB#STIVJ ~I can't see how that could help us normal folk. The only ones who get anything out of that are you healers.~
== ANOMENj ~When you are near your death in battle it is a cleric who saves your life. Did you forget that, petty thief?~
== TB#STIVJ ~You're right. Next time I'll let myself die.~
== ANOMENJ ~Hmph. In such moments you won't bet this brave. Trust me.~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
Global("FollowedGarren","GLOBAL",1)
CombatCounter(0)
Global("tb#StivanKeldornAboutGarren","GLOBAL",0)~ THEN KELDORJ stivanKeldornGarren
~Luckily this man offered to give his own good word for us. It would be terrible to be forced to fight with our companions from the Order.~
DO ~SetGlobal("tb#StivanKeldornAboutGarren","GLOBAL",1)~
== TB#STIVJ ~Terrible? This is a lifetime dream! I always wished to have legions of paladins chasing me!~
== KELDORJ ~A bizarre dream, halfling. Thanks to Torm, it will remain such.~
== TB#STIVJ ~Do you think your own god would stop me from cutting your friends up?~
== KELDORJ ~I think <CHARNAME>'s good sense will be enough. Isn't that true, my young friend?~
END
IF ~~ THEN REPLY ~Absolutely, Keldorn. I have no intention of making enemies out of the Radiant Heart.~ EXTERN TB#STIVJ StivanKeldorn1-1
IF ~~ THEN REPLY ~I'll accept Garren's help, if that's what you mean.~ EXTERN TB#STIVJ StivanKeldorn1-1
IF ~~ THEN REPLY ~Actually, Stivan's idea sounds fun. I think it would be interesting to gut some paladins.~ EXTERN TB#STIVJ StivanKeldorn1-2
IF ~~ THEN REPLY ~I'll go my way, Keldorn. If your brothers dare attack me, I will defend myself.~ EXTERN TB#STIVJ StivanKeldorn1-2

APPEND TB#STIVJ
IF ~~ StivanKeldorn1-1
SAY ~Damn party-poppers! If my blade won't cut them up, I hope the seagulls' beaks will!~
IF ~~ THEN EXIT
END

IF ~~ StivanKeldorn1-2
SAY ~Yeah! That's what I wanted to hear!~
IF ~~ EXTERN KELDORJ StivanKeldorn1-3
END
END

APPEND KELDORJ
IF ~~ THEN StivanKeldorn1-3
SAY ~I hope acts won't follow your words, <CHARNAME>. You know very well that I won't hesitate in turning against you if you dare to attack my brothers.~
IF ~~ THEN EXIT
END
END

CHAIN 
IF ~InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
AreaType(OUTDOOR)
CombatCounter(0)
Global("tb#StivanHaerdalisBesamen","GLOBAL",0)
OR(2)
Global("BesamenDead","GLOBAL",1)
Global("BesamenDead","GLOBAL",2)~ THEN TB#STIVJ stivan-dalis-qp
~Wow. I'm speechless. I didn't think that love could beat death.~
DO ~SetGlobal("tb#StivanHaerdalisBesamen","GLOBAL",1)~
== HAERDAJ ~I know a poem very appropriate for that couple's tale. Would you like to hear it, my sea bird?~
== TB#STIVJ ~I'm listening.~
== HAERDAJ ~"When I kiss your scented lips,
my dear, I can't forget
that a white skull hides behind it".~
= ~"When I hold your soft body near,
I can't forget, my dear,
that a skeleton hides behind it".~
= ~"And absorbed in the horrid vision,
wherever I touch, or kiss, or hold,
I can feel the cold bones of the dead".~
= ~Well? What do you think about it?~
== TB#STIVJ ~Well, your poem represents love with icy objectiveness, emptying it of all of its warmth. They're... cold.~
== HAERDAJ ~On the contrary, I feel that they are a mixture of eroticism and necrophilia, sensuality and decadence. Love and death are bound, a tie that no strength could break.~
== HAERDAJ IF ~IsValidForPartyDialog("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) Global("HaerDalisRomanceActive","GLOBAL",2)~ THEN ~Isn't that right, my dove?~
== AERIEJ IF ~IsValidForPartyDialog("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) Global("HaerDalisRomanceActive","GLOBAL",2)~ THEN ~(Blushes)~
== TB#STIVJ ~If you say so, Haer'Dalis...~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CheckStatGT("Aerie",5,FATIGUE)
CombatCounter(0)
Global("tb#StivanAerie","GLOBAL",0)~ THEN AERIEJ stivan-aerie-1
~I'm tired... We've been marching and fighting all day! Can we... can we rest?~
DO ~SetGlobal("tb#StivanAerie","GLOBAL",1)~
== TB#STIVJ ~Stop complaining, Aerie! I'm exhausted as well, but I don't spend my time uttering sentences like "my legs are just aching" or "I've never walked so much in my life"!~
== AERIEJ ~But... But I...~
== TB#STIVJ ~You dare reply?~
== AERIEJ ~B-but come on! I think I have all right to complain if I'm tired! And I was talking to <CHARNAME>, not you!~
== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN ~Aerie! Stivan! What is going on?~
== TB#STIVJ ~Tsk. You can't even utter a complete phrase without stuttering. Where did you use to live? The world has put and will put obstacles in front of all of us, but that's not reason enough to whine all day long!~
== AERIEJ ~W-what do you know of the hardships I went through? I lost my wings! You don't know what it means to have everything dear torn from you!~
== TB#STIVJ ~Oh, I am moved. Our little elf lost her wings... Poor girl!~
== AERIEJ ~D-don't... Don't mock me!~
== TB#STIVJ ~I lost everything dear I had as well, but I'm not whining and crying in public. Pain is an experience to live privately; spelling it out only proves that you are so egocentric that you want all attention on you.~
== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN ~No matter how hard your life was, that doesn't mean you can spit venom on others!~
== TB#STIVJ IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN ~Mind your own business!~
= ~...~
= ~... Heh. I was joking, Mazzy. Don't look at me like that...~
== MAZZYJ IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN ~I hope I made myself clear, Stivan.~
== TB#STIVJ IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN ~Er... Sure. Crystal clear.~
EXIT

CHAIN 
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanJaheiraTrademeet","GLOBAL",0)
AreaCheck("AR2000")~ THEN TB#STIVJ stivanjaheiratrademeet
~Tell me this, Jaheira: did your druid friends decide to have fun at the expense of those who live here?~
DO ~SetGlobal("tb#StivanJaheiraTrademeet","GLOBAL",1)~
== JAHEIRAJ ~It would be best to avoid hasty judgment, Stivan. I'd rather we wouldn't talk about something we know little or nothing of.~
== TB#STIVJ ~Things aren't what they are, but what they look like.~
== JAHEIRAJ  ~Shut up, halfling. This is not the time for your "wisdom". Someone or something is breaking Balance in this place, and I intend to stop they!~
EXIT

CHAIN 
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
Global("JaheiraCursed","GLOBAL",3)
CombatCounter(0)
Global("tb#StivanJaheiraCursed","GLOBAL",0)~ THEN TB#STIVJ stivanjaheiracurse
~Jaheira, Do you feel well?~
DO ~SetGlobal("tb#StivanJaheiraCursed","GLOBAL",1)~
== JAHEIRAJ ~I felt better, thank you. Being cursed isn't certainly fun, but I'd rather die than whine in front of that dirty slaver.~
== TB#STIVJ ~You look really bad, you know?~
== JAHEIRAJ ~I'm not... (cough) ... I'm not in the mood for listening to your small jokes, Stivan.~
== TB#STIVJ ~I wasn't serious, druid. You know full well how much I like you.~
== JAHEIRAJ ~Would you like to be buried together with Ployer, or would you like your own tomb?~
== TB#STIVJ ~Hey, I was serious, just that once!~
== JAHEIRAJ ~I... I didn't want to be this angry. This curse is having a bad effect on my behavior.~
== TB#STIVJ ~Really? I see no difference.~
== JAHEIRAJ ~... The day I lose my temper, Stivan, you'd be better me miles away.~
EXIT

CHAIN 
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
Global("JaheiraCursed","GLOBAL",10)
CombatCounter(0)
Global("tb#StivanJaheiraCursed","GLOBAL",1)~ THEN TB#STIVJ stivanjaheirapostcurse
~So, Jaheira, how do you feel now?~
DO ~SetGlobal("tb#StivanJaheiraCursed","GLOBAL",2)~
== JAHEIRAJ ~By Silvanus' beard, Stivan! Will you let me be?~
== TB#STIVJ ~Hey! I only asked if you felt well!~
== JAHEIRAJ ~Do you think me a fool? I know very well that you're just looking forward to mocking me once again!~
== TB#STIVJ ~No, not now. I... was taken back by your strength. A lot of misfortunes fell on you lately, like the loss of your husband or Ployer's curse, yet you always fight back with courage and determination.~
== JAHEIRAJ ~I simply move on, Stivan. There's vengeance to be done.~
== TB#STIVJ ~Yes, but... I can't be as strong as you. Many years passed since... since my family's death, yet I still can't get over it.~
== JAHEIRAJ ~...~
= ~... Many things happen, that look like questions. Days pass, or years pass, and life tells you the answer.~
= ~With time you learn that love isn't depending on someone, company isn't safeness. You learn than kisses aren't contacts, gifts aren't promises.~
= ~The cycle of seasons teaches you to build your own roads today, since tomorrow is too uncertain for plans; it teaches you that the only certainty of life is death, and it is the only thing you never know anything of.~
= ~And you begin to accept defeats proudly, with open eyes and an adult's grace, not with a child's pain.~
= ~And you learn that you can't but be strong.~
= ~...~
= ~Khalid...~
== TB#STIVJ ~*SOB*!~
== JAHEIRAJ ~I... I didn't want to make you sad, Stivan. You'd be better to look somewhere else for comfort. I... fear I'm not the best person for this.~
EXIT

CHAIN
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanJaheiraKhalid","GLOBAL",2)~ THEN TB#STIVJ stivanjaheira2
~Jaheira, might I ask why you chose to join <CHARNAME>'s party?~
DO ~SetGlobal("tb#StivanJaheiraKhalid","GLOBAL",3)~
== JAHEIRAJ ~When Khalid and I met him the first time, <CHARNAME> was a young, inexperienced <PRO_MANWOMAN>, needing for guidance. Gorion, <PRO_HISHER> foster father, asked us many times to look after him if anything happened to him, and so it was.~
== TB#STIVJ ~Who is Khalid?~
== JAHEIRAJ ~Khalid is... was my husband.~
== TB#STIVJ ~*Ahem* What happened to him? Did we lose him along the road?~
== JAHEIRAJ ~Your jokes are in bad taste, but I'll ignore them. My husband fell by hand of the wizard we're looking for, and I will have no peace until he his avenged.~
== TB#STIVJ ~Damn, I'm sorry. I didn't know about that.~
== JAHEIRAJ ~There was no way you could know this. Now, if you're done...~
== TB#STIVJ ~Well, now I can't help but ask another thing.~
== JAHEIRAJ ~Speak, if you must, but I can't ensure an answer. You're touching wounds that are still open.~
== TB#STIVJ ~You paid dearly for keeping your word. I don't want to shift blame on <CHARNAME>, but, hadn't you traveled with <PRO_HIMHER>...~
== JAHEIRAJ ~What are you getting at, Stivan? Are you trying to ask me if I would have helped <PRO_HIMHER> even if I knew that it would lead to my husband's death?~
== TB#STIVJ ~Exactly.~
== JAHEIRAJ ~This question deserves no answer. Khalid's murder... was part of a bigger plan, that goes beyond our understanding. Especially yours!~
== TB#STIVJ ~Hey, there's no need to get defensive. Don't forget I lost my family, too.~
== JAHEIRAJ ~My anger is fully justified! They killed Khalid! They violated his corpse, forever taking my husband from me! How could I not be angry?~
= ~I just... wish I could have offered myself in his stead.~
== TB#STIVJ ~...~
= ~... Jaheira, I--~
== JAHEIRAJ ~No. I don't want your condolence.~
EXIT

CHAIN 
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanValygarSphere","GLOBAL",0)
Dead("obshal04")~ THEN TB#STIVJ stivanvalygarsphere
~Damnation! I want to get out of here alive! I was about to lose my arms under those beasts' bites!~
DO ~SetGlobal("tb#StivanValygarSphere","GLOBAL",1)~
== VALYGARJ ~Calm down, Stivan, or you'll attract attention. There is danger everywhere in this place, and screaming like that could be dangerous.~
== TB#STIVJ ~Is it too much to ask to get back to Athkatla with all our limbs still attached?!~
== VALYGARJ ~Is it too much to ask not to reveal our position to every creature that dwells here?~
== TB#STIVJ ~You and your damned ancestor! We'll all end up killed!~
== VALYGARJ ~No, Stivan. It will be Lavok who will end up killed, once and for all.~
EXIT

CHAIN
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
Global("u!SunaDies","GLOBAL",1)
CombatCounter(0)
Global("tb#StivanValygarAboutSuna","GLOBAL",0)~ THEN TB#STIVJ stivanvalygarsuna
~Enough! I can't take any more monsters! My hands are so tired they are bleeding! My head is about to blow up! If that wasn't enough, I've ran out of plumes! And it's all thanks to your woman, ranger!~
DO ~SetGlobal("tb#StivanValygarAboutSuna","GLOBAL",1)~
== VALYGARJ ~What?! Are you accusing Suna Seni of our current situation? It was that Irenicus monster who forced her to work for him!~
== TB#STIVJ ~*Ahem* She wasn't forced. She accepted in exchange of a rather large sum, right?~
== VALYGARJ ~Nobody is innocent, Stivan. We're all guilty in this place. All. Each of us in his own way.~
== TB#STIVJ ~But I did nothing!~
== VALYGARJ ~Then he, who is guiltless, toss the first stone.~
== TB#STIVJ ~... Eh?~
== VALYGARJ ~(Sigh) Ignore that. Let us return to the search for a way out of this place.~
EXIT

CHAIN 
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanMazzyObshal01","GLOBAL",0)
Dead("obshal01")
Dead("obshal02")
Dead("obshal03")~ THEN TB#STIVJ stivanmazzyhalfling
~M-Mazzy, did you hear them? Those monsters were about to eat us! They wanted to feast with *my* and *your* limbs!~
DO ~SetGlobal("tb#StivanMazzyObshal01","GLOBAL",1)~
== MAZZYJ ~This encounter leaves me confused, Stivan, even scared. I never saw halfling... cannibals.~
== TB#STIVJ ~How could they wish to eat their own kind?~
== MAZZYJ ~Hunger is a bad thing. I think that, hadn't we met them, they would end up eating each other.~
== TB#STIVJ ~Heh. I think I would've eaten an arm or leg of yours, rather than dying of starvation.~
== MAZZYJ ~I couldn't say the same, Stivan. Harsh and cynic as you are, I doubt you'd be safe to eat.~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
GlobalGT("A#IM5Quest","GLOBAL",3)
Global("tb#StivanMazzyAboutKram","GLOBAL",0)~ THEN MAZZYJ kram
~I'm happy that Kram found an honest job. With some determination and good will, he can build his own future.~
DO ~SetGlobal("tb#StivanMazzyAboutMazzy","GLOBAL",1)~
== TB#STIVJ  ~More skilled fingers removed from the fine art of theft... Where will we end up?~
== MAZZYJ ~By saying such things, Stivan, people will continue calling halflings thieves. Thanks to Arvoreen, tales like Kram's will erode prejudices such as that.~
== TB#STIVJ ~Well, it shouldn't be too hard to corrupt him...~
== MAZZYJ ~I'm sure he wouldn't give in to the temptation.~
== TB#STIVJ ~Perhaps I could steal something from Galoomp right as he sees? That might bring him back to a thieving career!~
== MAZZYJ ~When you behave like this, Stivan, I feel the urge of beating you.~
== TB#STIVJ ~Are you talking seriously, potato ped-- *OW*!~
== MAZZYJ ~Hmph. You deserve this.~
EXIT


CHAIN 
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
AreaCheck("AR0202")
CombatCounter(0)
Global("tb#StivanKeldornStink","GLOBAL",0)~ THEN TB#STIVJ stivankeldornstink
~(Sniff sniff) What's this smell?~
DO ~SetGlobal("tb#StivanKeldornStink","GLOBAL",1)~
== KELDORJ ~Every corner of this place is filled with the odor of evil. We should advance carefully.~ 
== TB#STIVJ ~Heh. I thought you let go a stinky, paladin!~
== KELDORJ ~...~
EXIT

ADD_TRANS_ACTION BAERIE BEGIN 140 END BEGIN END ~SetGlobal("tb#StivanAerieToldWIngs","GLOBAL",1)~


CHAIN 
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanMazzyDragon","GLOBAL",0)
AreaCheck("ar1402")~ THEN TB#STIVJ stivandragon
~Eeekkk! W... What's that thing?!~
DO ~SetGlobal("tb#StivanMazzyDragon","GLOBAL",1)~
== MAZZYJ ~Here. It's the dragon who defeated me and my friends. Although Amauna suggested us to leave it alone, I'm itching with anger at the thought of sparing such an evil creature!~
== TB#STIVJ ~Fight you if you're fool enough! I don't want to lose my life in such a futile battle!~
== MAZZYJ ~No halfling should ever back away from a test of courage. David never feared in front of Goliath!~
== TB#STIVJ ~Wake up, Mazzy! Reality is different from that stupid child's tale!~
END
IF ~~ THEN REPLY ~(Stay silent).~ EXTERN MAZZYJ StivanMazzyDragon1-1
IF ~!Race(Player1,HALFLING)~ THEN REPLY ~David? Goliath? Whom are you talking about?~ EXTERN MAZZYJ StivanMazzyDragon1-2
IF ~Race(Player1,HALFLING)~ THEN REPLY ~Uhm... I already heard these names. Am I mistaken, or are they the protagonists of an halfling tale?~ EXTERN MAZZYJ StivanMazzyDragon1-3
IF ~Class(Player1,BARD_ALL)~ THEN REPLY ~My ears are always ready for a promising legend. I beg you, tell me of it.~ EXTERN MAZZYJ StivanMazzyDragon1-4
IF ~~ THEN REPLY ~You two, calm down. It's not the time to get nervous for nothing.~ EXTERN MAZZYJ StivanMazzyDragon1-1

CHAIN IF ~~ THEN MAZZYJ StivanMazzyDragon1-1
~That tale, true or false be it, has a teaching you should heed very well. Let me remind you.~
== TB#STIVJ ~There's no need. I know it better than you!~
EXTERN MAZZYJ StivanMazzyDragon1-4

APPEND MAZZYJ
IF ~~ THEN BEGIN StivanMazzyDragon1-2
SAY ~They're the protagonists of a legend that halfling mothers usually tell us when young.~
IF ~~ THEN EXTERN MAZZYJ StivanMazzyDragon1-4
END
END

CHAIN IF ~~ THEN MAZZYJ StivanMazzyDragon1-3
~Exactly, <CHARNAME>. That tale, true or false be it, has a teaching you should heed very well. Let me remind you.~
== TB#STIVJ ~There's no need. I know it better than you!~
EXTERN MAZZYJ StivanMazzyDragon1-4

CHAIN IF ~~ THEN MAZZYJ StivanMazzyDragon1-4
~Near an halfling settlement south of the Gulf of Vilhon was a group of giants that terrorized the local communities. To tell the truth, I can't remember the name of the village.~
== TB#STIVJ ~(Snort!) It was the Forest of Chondal, ignoramus!~
== MAZZYJ ~Since you know it better than me, why don't you continue?~
== TB#STIVJ ~You can be sure of it!~
= ~*Ahem* According to this legend, many years of battles ensued, where halflings tried to cut up their enemies' legs, while giants had fun playing "throw the halfling".~
= ~The situation didn't change until the giant's champion, Goliath, challenged the halflings that lived there. He and his tribe would leave the Forest of Chondal, if anyone managed to defeat him in single combat.~
= ~Nobody dared accept the challenge, except some farmer named David.~
= ~They met in a valley, known as the Valley of Elah. Certain of his victory, Goliath left the honor of first strike to his enemy.~
== MAZZYJ ~His confidence was his undoing, since David put his hand in his pocket, took out a stone, put it in his sling and hit the giant in the head, dropping him to the ground. He then ran to the giant, took his sword and killed him by cutting his head off.~
== TB#STIVJ ~(Sigh) And that was why the halflings of the Forest of Chondal were freed from the giants' menace, as they fled in terror after the death of their champion.~
== MAZZYJ ~Do you see, Stivan? Courage's ideas are like pawns in chess. They can be easily eaten, but they might be the key to winning the game.~
== TB#STIVJ ~Not everybody is a David in his own Valley of Elah, ready to challenge a much bigger and stronger enemy. Neither can anyone kill a giant. Rarely the "good ones" win and live to tell the tale.~
END
IF ~~ THEN REPLY ~We'll fight the dragon, Stivan, whether you like it or not.~ EXTERN TB#STIVJ StivanMazzyDragon1-6
IF ~~ THEN REPLY ~It's too dangerous an enemy, Mazzy. We won't challenge him.~ EXTERN MAZZYJ StivanMazzyDragon1-7
IF ~~ THEN REPLY ~I'll choose what to do only after we are done studying our enemy. It's not a decision to be taken lightly.~ EXTERN TB#STIVJ StivanMazzyDragon1-8

APPEND TB#STIVJ
IF ~~ THEN BEGIN StivanMazzyDragon1-6
SAY ~Y-you're mad, <CHARNAME>! I don't want to die under the bites of that monster! Eeekkk!~
IF ~~ THEN DO ~ApplySpellRES("tb#ssca",Myself)~ EXIT
END
END

APPEND MAZZYJ
IF ~~ THEN BEGIN StivanMazzyDragon1-7
SAY ~I wasn't suggesting anything of the sort, <CHARNAME>. I already fought that beast, and I know very well how strong it is. The problem is... I can feel my fallen friends' cries. They ask justice.~
IF ~~ THEN REPLY ~And they will have it. The Shadow Lord will pay for the horrors he is responsible of.~ EXIT
IF ~~ THEN REPLY ~Knowing your own limits is a sign of wisdom. There's no point in throwing away our lives attacking it; we'll make this beast's owner pay double.~ EXIT
IF ~~ THEN REPLY ~So be it. Prepare yourself, Stivan: we will fight the dragon.~ EXTERN TB#STIVJ StivanMazzyDragon1-6
IF ~~ THEN REPLY ~I know what you're getting at, but we should move on. We waited far too long in this place.~ EXIT
END
END

APPEND TB#STIVJ
IF ~~ THEN BEGIN StivanMazzyDragon1-8
SAY ~You need to think about it, as if the best choice wouldn't be obvious. Well, while you draw your own conclusions, I'll think about the best hiding place, okay?~
IF ~~ THEN EXIT
END
END

BEGIN TB#SLIL
CHAIN 
IF ~Global("tb#StivanLarry","GLOBAL",2)~ THEN TB#SLIL StivanLarry
~Tin-head, it's been *two* hours since you last cleaned me! What are you waiting for?!~
== MINSCJ ~Wait a second, Larry: Minsc is feeding Boo. He will take care of you soon.~
== TB#SLIL ~Now! You must clean me NOW, before rust takes over me!~
== MINSCJ ~Very well. Boo, finish up your nuts by yourself; Minsc must clean his own blade.~
== TB#STIVJ ~You must be really stupid, ranger, to satisfy that weapon's every whim. If he talked to me like that, I'd have covered it in seagull poo until it learns respect!~
== MINSCJ ~Minsc isn't stupid! He cares for his hamster and his blade to be ready for battle!~
== TB#SLIL ~Enough! If I won't get the cleaning I'm due, I'll taste some blood!~
== TB#STIVJ ~OW! Minsc, are you mad?!?~
== MINSCJ ~Minsc didn't do anything! It was Larry! Right, Boo?~
== TB#STIVJ ~Nothing? You were about to cut me in two and you dare tell me you were doing nothing?! It was YOU who was wielding that sword! Did you forget about it?~
== MINSCJ ~Larry acts on his own every now and then! Minsc isn't to blame if his blade attacks on his own!~
== TB#STIVJ ~Dare hit me once again, sword, and I'll send you back in the sewers where you belong!~
== TB#SLIL ~Mwahahahahahaha!~ DO ~DestroySelf()~
EXIT

CHAIN 
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanMazzyDrow","GLOBAL",0)
GlobalGT("PhaereJob","GLOBAL",5)~ THEN TB#STIVJ mazzydrow
~WOW! This body is... is incredible! I'm discovering and doing many things that were impossible before! Don't you find it marvelous, Mazzy?~
DO ~SetGlobal("tb#StivanMazzyDrow","GLOBAL",1)~
== MAZZYJ ~I don't understand your enthusiasm. I'm feeling really uneasy looking like an evil creature.~
== TB#STIVJ ~What uneasiness are you talking about? Being tall and drow has many upsides!~
= ~Your feet aren't hairy.~
= ~Your legs and arms aren't short and stubby.~
= ~Your neck isn't tired by looking up every time you talk with someone.~
= ~You can make long steps.~
= ~You can wield weapons that used to be bigger than you.~
= ~You can take things off tables without needing to stand on your toes.~
= ~You... You can do a lot of things!~
== MAZZYJ ~(Sigh) Enjoy the feeling while you can, then, We'll soon get back to our usual looks, you know.~
== TB#STIVJ ~Heh. That's what *you* think.~
== MAZZYJ ~What are you talking about?~
== TB#STIVJ ~I'll ask that friendly drake to leave me as I am now.~
== MAZZYJ ~What?! You would like to remain with a drow's looks? Would that be your dream in the closet?~
== TB#STIVJ ~I have no dreams in my closet, Mazzy. I prefer to put my clothes in there!~
== MAZZYJ ~This is not the time to joke, Stivan! Adalon's spell is just an illusion. It won't change your nature as an halfling!~
= ~Did you think about the consequences your looks would have? Once on the surface, people will be terrorized by your looks and will avoid you. Some will even try to kill you!~
== TB#STIVJ ~(Snort!) So? This is not much different from what I went through all these years!~
= ~People have always avoided me for my unwashed look, as if I could clean myself after losing everything I had. As for people trying to kill me, guards have been trying to attack me and put me in jail just for sleeping on the street. "We must protect order and peace", they said, while the district's problem were others!~
= ~It would be better if those we meet are scared by my drow looks. Their fear would be out of respect!~
== MAZZYJ ~Stivan, calm down and listen to me.~
= ~I understand better than anyone else how hard is it for a drow to be accepted by society. To most, we aren't but funny and frivolous creatures, scared and fat. Yet, I fought so that things would change at least for me, so that people would see me as I was, not as what prejudice tells them I am.~ 
= ~It was a long and perilous journey, I can't deny it. I felt down on many occasions, but I always brought myself back telling me: "did you fall seven times? Get up eight". At the end, I proved to myself and others that I'm a strong, brave, loyal and honest person.~
== TB#STIVJ ~...~
= ~... Heh. You did your best, Mazzy, but I won't let myself be moved by your little tale. I'll keep these looks, whether you like it or not!~
== MAZZYJ ~Think, Sti--~
== TB#STIVJ ~Enough! I want to hear nothing more!~
EXIT

BEGIN TB#SELF

CHAIN 
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanMazzyDrow","GLOBAL",1)
AreaCheck("ar2500")~ THEN TB#STIVJ mazzypostdrow
~See, Mazzy? *See* how these pompous fools stare at me? Had I kept a drow's appearance, they wouldn't look at me with such smug eyes!~
DO ~SetGlobal("tb#StivanMazzyDrow","GLOBAL",2)~
== MAZZYJ ~You're right. They would have pinned you to the ground with spears and arrows.~
= ~Watch and learn.~
= ~Hey, you! Is there any reason why you're staring at my friend like that? Didn't they teach you that it is rude to stare at people without talking?~
== tb#self ~I look where I like, half woman.~
== MAZZYJ ~Are you sure about that? Would you like me to go there and slap you into looking somewhere else?~
== tb#self ~Er... No. There's no need...~
== MAZZYJ ~That was easy.~ 
= ~Be braver, Stivan. Even halflings, while trying to climb a mountain, might get to the top.~
== TB#STIVJ ~...~
= ~(Blushes) Thank you, Mazzy.~
== MAZZYJ ~Don't mention it.~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
HPPercentLT("tb#Stiv",50)
CombatCounter(0)
Global("tb#StivanAnomen","GLOBAL",6)~ THEN ANOMENJ stivananomen7
~You shouldn't expose yourself that much in battle, halfling. You lack tactics and discipline, and both are vitally needed in melee.~ 
DO ~SetGlobal("tb#StivanAnomen","GLOBAL",7)~
= ~Next time let me handle the bigger enemies: I can defend myself against them. Now, I should heal you.~
== TB#STIVJ ~Heh. Thanks.~
= ~Either way, you were right.~ 
== ANOMENJ ~About what?~
DO ~ActionOverride("Anomen",ForceSpell("tb#Stiv",CLERIC_CURE_MEDIUM_WOUNDS))~
== TB#STIVJ ~It is only when you fear death that you appreciate clerics.~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanAnomen","GLOBAL",8)
AreaCheck("ar2804")~ THEN ANOMENJ stivananomen9
~Ready for the battle?~ 
DO ~SetGlobal("tb#StivanAnomen","GLOBAL",9)~
== TB#STIVJ ~Heh. You can count on it.~
BRANCH ~Global("AnomenRomanceActive","GLOBAL",2)~ BEGIN
== ANOMENJ ~Take heed of my lessons. We must do everything in our power to defend <CHARNAME> - I'd go mad if anything should happen to her.~
== TB#STIVJ ~... Why do you care so much about her?~
== ANOMENJ ~The love I hold for <CHARNAME> is a rose that shows every morning a new petal and a new color, yet its beauty is always the same. No artist might ever paint the taste of her kisses, the perfume of her skin, the music in her voice. I myself aren't worthy to repeat the poetry of her name.~
= ~I'm ready to give my life for her.~
END
BRANCH ~!Global("AnomenRomanceActive","GLOBAL",2)~ BEGIN
== ANOMENJ ~Take heed of my lessons. We must do everything in our power to defend <CHARNAME>.~
== TB#STIVJ ~... I'm sure <PRO_HESHE>'ll be able to handle this by himself.~
== ANOMENJ ~I don't doubt it, but it is our duty to defend <PRO_HIMHER> at any cost.~
END
== TB#STIVJ ~(Gasp!) You can't promise such a thing!~
== ANOMENJ ~Don't worry yourself, my friend. It takes more than a simple mage to put me in danger. But enough waiting: battle awaits for us.~
== TB#STIVJ ~<CHARNAME>...! <CHARNAME>, I beg you, don't let Anomen die! Please!~
END
IF ~~ THEN REPLY ~Nothing will happen to him. We'll defeat that madman, once and for all.~ EXTERN tb#stivj StivanAnomenLastTalk1-1
IF ~!Global("AnomenRomanceActive","GLOBAL",2)~ THEN REPLY ~Rest assured, Stivan: I'll keep an eye out for him.~ EXTERN tb#stivj StivanAnomenLastTalk1-1
IF ~~ THEN REPLY ~I'll do everything I can to defend each and every member of this party. It's the least I could do after all the help you gave me.~ EXTERN tb#stivj StivanAnomenLastTalk1-1
IF ~Global("AnomenRomanceActive","GLOBAL",2)~ THEN REPLY ~Rest assured, Stivan: I'll keep an eye out for him - he's too important to me.~ EXTERN tb#stivj StivanAnomenLastTalk1-1
IF ~Global("AnomenRomanceActive","GLOBAL",2)~ THEN REPLY ~I don't know if we can defeat Irenicus, but promise me this: if anything should happen to me, don't allow Anomen to do anything rash.~ EXTERN tb#stivj StivanAnomenLastTalk1-2

APPEND tb#stivJ
IF ~~ THEN BEGIN StivanAnomenLastTalk1-1
SAY ~(Sniff) Why am I this scared? I was walking fearless towards the battle and now... Now I'm terrorized that that evil men might hurt us!~
= ~If I shouldn't make it, I wish... I wish I was laid to rest in the same tomb as my loved ones. Should anything happen to Anomen, I'll cut you up myself if you won't be decent enough to accompany him!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN StivanAnomenLastTalk1-2
SAY ~So, should you die, I'm authorized to stun him and bring him safe and sound to Athkatla? Is that what you mean?~
IF ~~ THEN REPLY ~Exact--~ GOTO StivanAnomenLastTalk1-3
IF ~~ THEN REPLY ~Act--~ GOTO StivanAnomenLastTalk1-3
IF ~~ THEN REPLY ~Not real--~ GOTO StivanAnomenLastTalk1-3
END

IF ~~ THEN BEGIN StivanAnomenLastTalk1-3
SAY ~Yeah! You're great, <CHARNAME>! What are you waiting for there? Let's get a move on!~ 
IF ~~ THEN EXIT
END
END

CHAIN 
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanKorganUD","GLOBAL",0)
Global("udDrowPlot","GLOBAL",5)~ THEN TB#STIVJ stivankorgan4
~(Gasp!) Those creatures were *monstrous*! My head aches... as if they flayed it!~
DO ~SetGlobal("tb#StivanKorganUD","GLOBAL",1)~ 
== KORGANJ ~Bah! The Underdark isn't the right place for pansies like you! Step aside and let real warriors do the dirty job!~
== TB#STIVJ ~I can perfectly handle myself, Korgan. I just need time to get used to my new appearance.~
== KORGANJ ~Looks don't mean anything, useless sack of goblin spit. Even when you look like a dirty longleg, I still know where to aim my axe.~
= ~Right here... At neck height!~
== TB#STIVJ ~Eeeekkkk!!!~
== KORGANJ ~Har har! Look how he runs, the baby!~
BRANCH ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ BEGIN
== MAZZYJ ~By Arvoreen, Korgan! Don't you understand that scaring away a member of the party is counterproductive?~
== KORGANJ  ~Come on, Mazzy... Have some fun!~
== MAZZYJ ~There are fools who are very good at taking advantage of their own stupidity. You proved for the umpteen time to be one of them.~ 
END
EXIT

CHAIN 
IF ~InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
HPPercentLT("tb#Stiv",30)
CombatCounter(0)
Global("tb#StivanHaerdalis","GLOBAL",3)~ THEN TB#STIVJ stivanhaer4
~I... Don't feel very well...~
DO ~SetGlobal("tb#StivanHaerdalis","GLOBAL",4)~
== HAERDAJ ~<CHARNAME>, I hope you're going to do something to remove our friend from the cold embrace of death. I don't doubt that he's a creature too strange to live, but he's also too rare to die.~
EXIT

CHAIN 
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
HPPercentLT("tb#Stiv",40)
Global("tb#StivanMinsc","GLOBAL",2)~ THEN TB#STIVJ stivanminsc3
~Damn. My wound's blood has dirtied even my plumes.~
DO ~SetGlobal("tb#StivanMinsc","GLOBAL",3)~
== MINSCJ ~Minsc admires your courage, but he doesn't want his little friend to expose himself too much in battle! You should stand back and keep Boo company, every now and then.~
== TB#STIVJ ~Why do you worry about me, Minsc? I... Don't think I deserve your attention.~
== MINSCJ ~This ranger and this hamster believe you only act evil, and you can be sure that they saw evil so many times they can't be mistaken!~
= ~Boo also says that you sometimes deserve some good lesson.~
== TB#STIVJ ~Heh. Maybe I was mistaken in judging you, ranger. After all... you're a good person.~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanMinscDrow","GLOBAL",0)
Global("PhaereJob","GLOBAL",8)~ THEN MINSCJ stivanminscdrow
~Minsc and Boo are wondering why their little friend is so happy lately.~
DO ~SetGlobal("tb#StivanMinscDrow","GLOBAL",1)~
== TB#STIVJ ~This body is a real pleasure! Every simple gesture, from walking to breathing, looks new and completely different!~
== MINSCJ ~Minsc doesn't feel at east wearing somebody else's body. Moreover, it is really hard to kick evil with these thin legs!~
== TB#STIVJ ~What does Boo say?~
== MINSCJ ~Boo fears that if his furry friends saw him this as black as this they would run away scared.~
= ~*Squeak!*~ [ GAM_48 ] 
= ~Can you hear how worried he is?~
== TB#STIVJ ~Heh. It looks like I'm the only one who's happy with his new looks. All the better... nobody else will make the same request to that friendly overgrown lizard!~
EXIT

CHAIN 
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
CombatCounter(0)
Global("AnomenDecide","GLOBAL",4)
Global("tb#AnomenStivanSaerk","GLOBAL",0)
AreaCheck("AR1002")~ THEN TB#STIVJ stivanpretrial
~(Gasp!) What's this sudden trepidation? Why do I feel this worried?~
DO ~SetGlobal("tb#AnomenStivanSaerk","GLOBAL",1)~
== ANOMENJ ~I imagine that your soul is in excruciating wait of receiving justice, just as mine. Come, let us not waste any further time chatting.~
== TB#STIVJ ~Maybe... I should wait here. I lost control of my heart beat, and I'm afraid it'd break himself if I heard the magistrate's sentence with my own ears.~
= ~I'll wait for you here. I'll try to calm myself down, and when you come back... I'll listen to what you have to say.~
== ANOMENJ ~As you wish. <CHARNAME>, let's go.~
EXIT

CHAIN 
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
CombatCounter(0)
Global("KillSaerk","GLOBAL",1)
Global("tb#AnomenStivanSaerk","GLOBAL",1)
AreaCheck("AR1000")~ THEN TB#STIVJ stivanposttrial1
~*Ahem* How did it go, Anomen? How did the magistrate punish Saerk?~
DO ~SetGlobal("tb#AnomenStivanSaerk","GLOBAL",2)~
== ANOMENJ ~The court won't do anything to avenge Moira's death.~
== TB#STIVJ ~What?! The magistrate won't do anything? He'll let Saerk go unpunished?~
== ANOMENJ ~No, I won't allow it. Moira's death will be avenged!~
== TB#STIVJ ~(Snort!) If things are like this, we'll take Saerk down with steel and plumes!~
== ANOMENJ ~<CHARNAME>, to the Bridge District, quick.~
EXIT

CHAIN 
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
CombatCounter(0)
Global("KillSaerk","GLOBAL",2)
Global("tb#AnomenStivanSaerk","GLOBAL",1)
AreaCheck("AR1000")~ THEN TB#STIVJ stivanposttrial2
~*Ahem* How did it go, Anomen? How did the magistrate punish Saerk?~
DO ~SetGlobal("tb#AnomenStivanSaerk","GLOBAL",2)~
== ANOMENJ ~The court won't do anything to avenge Moira's death.~
== TB#STIVJ ~What?! The magistrate won't do anything? He'll let Saerk go unpunished?~
== ANOMENJ ~We don't really know whether that was him. It might be some fantasy of my father, out of the hatred he holds for him.~
== TB#STIVJ ~(Snort!) Are you mad? The proof of his guiltiness is *exactly* the lack of proof! Saerk worries himself about not leaving any traces! He did the same with me!~
== ANOMENJ ~I... I won't let my sister's loss obfuscate my judgment. Such a vengeance, called upon by unproved assumptions, is against the Order's dictates, and I will not follow such a road.~
== TB#STIVJ ~You... You lied to me! You told me we'd punish that evil man, and you turned back on your own word!~
== ANOMENJ ~Enough! I took my decision and won't rethink it! Your past with that man is no concern of mine!~
== TB#STIVJ ~I curse you, Anomen! You denied my just vengeance for your own whim! I will never forgive you this!~
== ANOMENJ ~I have nothing to do with your shrieking, halfling. Now go, before I lose my temper!~
== TB#STIVJ ~(Snort!) So be it, Anomen. If that's what you wish, I'll be gone. Seeing your ugly face makes me mad!~
END
IF ~~ THEN REPLY ~You're making a mistake, Stivan. The responsible of your sorrows might be the same, but the results would be different. If Anomen avenged murder with murder, he'd commit a crime unforgivable for the Order. The same doesn't hold for you.~ EXTERN TB#STIVJ StivanSaysFarewell
IF ~~ THEN REPLY ~Calm down, Stivan. The situation is complex, but you won't achieve anything by leaving or demanding vengeance.~ EXTERN TB#STIVJ StivanSaysFarewell
IF ~~ THEN REPLY ~Try to be reasonable, Stivan, Stivan. Your problem cannot influence somebody else's problem. They must be distinct. Anomen cannot avenge a wrongdoing that isn't his own, or the consequences would fall on him.~ EXTERN TB#STIVJ StivanSaysFarewell

APPEND TB#STIVJ 

IF ~~ THEN StivanSaysFarewell
SAY ~What about me? Don't you think about me?~
= ~*SOB*! Mommy always said that it is impossible not to cry in the face of injustice, and she was right! You back him up, and that hurts me even more than his decision not to help me!~
= ~My travels with you end here, <CHARNAME>. I thought we were friends, but your words showed me I was wrong. Goodbye!~
IF ~~ THEN DO ~SetGlobal("tb#StivanJoined","GLOBAL",0) LeaveParty() EscapeArea()~ EXIT
END
END

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
AreaType(OUTDOOR)
Dead("cefald01")
Global("tb#StivanCernd","GLOBAL",0)~ THEN CERNDJ stivancernd1
~As an insidious mass of black clouds goes away after the storm, so Faldorn's menace has been avoided forever.~
= ~Yet, it appears that Nature is unjustly accused of another crime. Am I right, Stivan?~
DO ~SetGlobal("tb#StivanCernd","GLOBAL",1)~
== TB#STIVJ ~What's this, are you trying to socialize? Sorry, but I have no intention of wasting my breath on you.~
== CERNDJ ~As a druid, it is my duty to intervene to restore Balance and open your eyes to the light of truth. Along our path you will mature, and together we will give sense and meaning to your tragedies.~
== TB#STIVJ ~(Snort!) There's no reason to use such ridiculous talk to call me immature! I'm not stupid, and I can recognize an insult!~
== CERNDJ ~Every creation of the Mother is or was immature. Are there bulbs that never grow into a flower? Or trees that don't yield fruits?~
== TB#STIVJ ~Shut your mouth, druid! Shut up!~
== CERNDJ ~Soon we'll begin our walk. Very soon.~
EXIT

CHAIN 
IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)
CombatCounter(0)
Global("CerndBeggar","GLOBAL",2)
Global("tb#StivanCernd","GLOBAL",1)~ THEN TB#STIVJ stivancernd2
~Heh. It looks like the clouds came back, druid, only to hover around your head. The hot potato you have between your hands will stop you from bothering me with your pathetic thoughts, I hope?~
DO ~SetGlobal("tb#StivanCernd","GLOBAL",2)~
== CERNDJ ~You're wrong. I can't let my personal life interfere with my duty as a druid. Our path begins now.~
== TB#STIVJ ~Oh, no!~
== CERNDJ ~Let us examine the event that marked the beginning of your war against seagulls. Let us recount, second my second, what happened to you, as if we were sorting through a flower's petals.~
== TB#STIVJ ~(Snort!) You're abusing my patience! Who do you believe you are, to demand I tell you of my family's murder?~
== CERNDJ ~Do not mistake my attempt at truth as presumption. At the moment you are sailing through the waters of ignorance, and it is my duty to ensure that the winds of destiny move your ship towards the ocean of knowledge.~
== TB#STIVJ ~I know what you are getting at. You... you dare deny the seagulls' guiltiness!~
== CERNDJ ~Simple sea birds could never commit a crime like the murder of an innocent family. It is not their nature.~
== TB#STIVJ ~Then they must have fallen victims to predatory instincts that day, since I saw them feast with my relatives' corpses!~
== CERNDJ ~Exactly, Stivan. You say that you saw them eat, not while they were killing your parents and brothers.~
== TB#STIVJ ~...~
= ~... Don't try to confuse me with meandering word games. It was seagulls who killed them and desecrated their bodies! It was them!~
== CERNDJ ~The seed of doubt has been cast, and it will grow roots with time.~
EXIT


CHAIN 
IF ~InParty("tb#stiv")
See("tb#stiv")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanCernd","GLOBAL",2)
GlobalGT("Chapter","GLOBAL",2)~ THEN CERNDJ stivancernd3
~Doubt is painted on your face, Stivan.~
DO ~SetGlobal("tb#StivanCernd","GLOBAL",3)~
== TB#STIVJ ~I imagine I should thank you for that.~
== CERNDJ ~I can't help to avoid the birds of anxiety and worry to fly around your head, but I'll do what I can to avoid them building a nest of fear in there.~
== TB#STIVJ ~You could have avoided that one!~
== CERNDJ ~I actually think it represents precisely what you are feeling. You're considering the possibility that the Mother's creatures aren't guilty of your family's death, and this terrifies you.~
== TB#STIVJ ~(Snort!) If it wasn't seagulls who killed my relatives, then who murdered them? More importantly, *why*?~
== CERNDJ ~That's what I wanted to hear, Stivan. The first step of our path has been reached.~
== TB#STIVJ ~Might I ask what are you hoping to achieve with these delirious conversations, aside from confusing me?~
== CERNDJ ~You just understood that, behind anything, there is hidden a multitude of possibilities. You considered again a truth you held as absolute, thought about another possibility, and reached the conclusion that you have no definite answer for the moment.~
= ~The path to our second step is open.~
EXIT

CHAIN 
IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanCernd","GLOBAL",3)
GlobalGT("AsylumPlot","GLOBAL",1)
AreaCheck("ar1600")~ THEN TB#STIVJ stivancerd4
~(Gasp!) This place... Is a colony of the feathered enemy!~
DO ~SetGlobal("tb#StivanCernd","GLOBAL",4)~
== CERNDJ ~Seagulls nest in marine places like beaches, isles or coasts, so it is natural that they're numerous here.~
== TB#STIVJ ~They have a ferocious glare!~
== CERNDJ ~To tell the truth, Athkatlan seagulls are more aggressive, which is easy to understand. The continuous building in the Docks is destroying their habitat, to the point that they're forced to build their nests even on the top of houses far from the sea.~
== TB#STIVJ ~There's all kinds of them!~
== CERNDJ ~That's true. That one is a coral seagull, known for the ease with which it nests on steep terrain. Do you see that one? It's a rosy seagull, easily spotted in saltier waters.~
= ~And, at last...~
= ~The one perched on my shoulder is a seagull of the most common variety. Would you like to ask him anything?~
== TB#STIVJ ~Did you go mad, Cernd?~
== CERNDJ ~Come on; I'll translate for you.~
== TB#STIVJ ~Well... I mean, I... have no idea...~
== CERNDJ ~Any question you might have will be good.~
== TB#STIVJ ~Okay, okay.~
= ~*Ahem* Are you a male... or a female?~
== CERNDJ ~He's a male. He's waiting for his companion's eggs to open.~
= ~Come on, take a closer look.~
== TB#STIVJ ~Are you joking? He'll put a hole in my face!~
== CERNDJ ~He won't, Stivan. He has no reason to be hostile.~
== TB#STIVJ ~...~
= ~Heh. After all... He as a friendly face.~
END
IF ~~ THEN REPLY ~Come on, continue. After all, I have a friend to save and a wizard to kill, but what do I care?~ EXTERN TB#STIVJ StivanCernd1-1
IF ~~ THEN REPLY ~Stivan, are you feeling well?~ EXTERN TB#STIVJ StivanCernd1-1
IF ~~ THEN REPLY ~I can hardly believe it, Cernd. You ended his hate against seagulls!~ EXTERN TB#STIVJ StivanCernd1-1
IF ~~ THEN REPLY ~"And that was how the halfling ended his hate against the feathered enemy". I could write a book about this, eh?~ EXTERN TB#STIVJ StivanCernd1-1

CHAIN IF ~~ THEN tb#stivj StivanCernd1-1
~Wh...~
= ~What the hell is going on? What is this ugly bird doing in front of my face? Shoo, shoo!~
== CERNDJ ~No!~
== TB#STIVJ ~(Gasp!) I was about to fall to the feathered enemy!~
= ~Seagulls! They surrounded us! Attack!!~
== CERNDJ ~(Sigh) <CHARNAME>, you... You just made my efforts useless. I know you weren't doing so on purpose and don't want to blame you, but I'd ask you not to interfere in the future.~
== CERNDJ IF ~OR(2) Class(Player1,DRUID_ALL) Class(Player1,RANGER_ALL)~ THEN ~As a fellow servant of Nature, I expect you to understand how important is it to defend these creatures against the bitter anger of Stivan. If our walk proceeds without interruptions, he'll be soon educated to Balance and the respect of the creatures of the Mother, as it should be.~
== CERNDJ IF ~!Class(Player1,DRUID_ALL) !Class(Player1,RANGER_ALL)~ THEN ~You aren't a servant of Nature, so I don't expect you to understand how important is it to defend these creatures against the bitter anger of Stivan. If our walk proceeds without interruptions, he'll be soon educated to Balance and the respect of the creatures of the Mother, as it should be.~
EXIT

CHAIN IF ~InParty("cernd")
See("Cernd")
!StateCheck("cernd",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanCernd","GLOBAL",4)
GlobalGT("SolaufeinJob","GLOBAL",7)
PartyHasItem("misc9w")
Dead("solaufein")
~ THEN TB#STIVJ killedSola
~I can't believe you killed the only friendly drow in this place!~
== CERNDJ ~The seagulls you kill are equally friendly, and similar cries come to my ears every time you kill one.~
EXTERN TB#STIVJ postSola

CHAIN IF ~InParty("cernd")
See("cernd")
!StateCheck("cernd",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanCernd","GLOBAL",4)
Global("SolaufeinJob","GLOBAL",9)
!Dead("solaufein")
~ THEN TB#STIVJ savedSola
~I liked him. Thank you, <CHARNAME>, for having spared him no matter the risk.~
== CERNDJ ~As <CHARNAME> risked so much just to spare a life, shouldn't you spare seagulls' life in the same way?~
EXTERN TB#STIVJ postSola

CHAIN IF ~InParty("cernd")
See("cernd")
!StateCheck("cernd",CD_STATE_NOTVALID)
Global("tb#StivanCernd","GLOBAL",4)
AreaCheck("ar2401")~ THEN TB#STIVJ noSola
~I look forward to returning to the surface! Ready the fire, <CHARNAME>, tonight I'm off hunting and then we'll have seagull stew for everybody!~
== CERNDJ ~It is in man's nature to kill to eat. However, I doubt that is the real goal of your killings.~
EXTERN TB#STIVJ postSola

CHAIN IF ~~ THEN TB#STIVJ postSola
~Mind your own matters, Cernd!~
== CERNDJ ~Nature is my own matter, as is the teaching of respect for Her.~
= ~It is time to continue our walk.~
DO ~SetGlobal("tb#StivanCernd","GLOBAL",5)~
== TB#STIVJ ~No, it isn't!~
== CERNDJ ~Tell me, Stivan, when did your parents die?~
== TB#STIVJ ~They died eight years ago, and I remember it as clear as yesterday!~
== CERNDJ ~And who killed them?~
== TB#STIVJ ~What sort of questions are you asking? It was a storm of seagulls, and you know it better than me!~
== CERNDJ ~Let us assume that that be true - well, know that seagulls never reach the age of three.~
= ~Even if you killed all the seagulls that live today, you would never kill the ones you believe killed your parents.~
== TB#STIVJ ~I...~
== CERNDJ ~Tell what you're thinking, even if you're afraid of doing so.~
== TB#STIVJ ~I will get my vengeance by killing their children! And the children of their children! And...~
== CERNDJ ~As the plant's roots eat the hardest of rocks with just the strength of patience, so my teachings will eat your hatred. We sowed enough for today.~
EXIT

CHAIN IF ~InParty("tb#stiv")
See("tb#stiv")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanCernd","GLOBAL",5)
Global("Chapter","GLOBAL",6)
AreaType(OUTDOOR)
!AreaCheck("AR2500")
!AreaCheck("AR2601")
~ THEN CERNDJ StivanCernd6
~It is time to continue our walk.~
= ~Your first conversation with a seagull was abruptly interrupted.~
= ~...~
= ~Here, this is a red-headed seagull, knowing for tying itself for life to his relatives - ties stronger than those between human relatives. Do you have any questions for him, Stivan?~
DO ~SetGlobal("tb#StivanCernd","GLOBAL",6)~
== TB#STIVJ ~Well, I...~
== CERNDJ ~Don't hesitate, Stivan. Only by talking with your enemy you will know him and end your conflict.~
== TB#STIVJ ~(Snort!) I'll do it, on condition that you shut up once I'm done.~ 
= ~Now... Are you male or female?~
== CERNDJ ~She's a female. She left her children in the care of their father and is looking for food.~
== TB#STIVJ ~Ah, really? And where do you look for it, by killing babies in their cribs? Or do you prefer to attack grown men?~
= ~...~
= ~Why is he running? Is he shamed by his sins?~
== CERNDJ ~(sigh) He said he cannot forage near where men live, because of the Hunter. He must have recognized you.~
== TB#STIVJ ~Yeah! My reputation is spreading! Soon Athkatla will be free of the menace!~
== CERNDJ ~As the darkest hour is the one before dawn, so hatred is strongest before peace. Our path is nearing its end.~
EXIT

CHAIN IF ~InParty("cernd")
See("cernd")
!StateCheck("cernd",CD_STATE_NOTVALID)
!StateCheck("Stivan",CD_STATE_NOTVALID)
Global("tb#StivanCernd","GLOBAL",7)
AreaType(OUTDOOR)
RealGlobalTimerExpired("tb#StivanCerndTimer","global")~ THEN TB#STIVJ StivanCernd7
~Cernd, could you attract another seagull? I know what I should tell him.~
DO ~SetGlobal("tb#StivanCernd","GLOBAL",8)~
== CERNDJ ~I see that our seeds are flowering. I'll satisfy your request right away.~
= ~...~
= ~Here. This black-tailed seagull traveled far and wide in his life - he usually nests in the remote lands of Halruaa. It is extremely long-lived, some members of its race live up to fifty years.~
== TB#STIVJ ~...~
= ~You lied to me! When you told that seagulls never reach three years old, you lied to me!~
= ~It could have been him who killed my family!~
== CERNDJ ~Lying isn't evil if it is done with good goals.~
== TB#STIVJ ~Shut up! I don't want to hear you!~
== CERNDJ ~As Nature forgives the lion for his killings, might the Great Mother forgive me for this inadmissible error. I hope that the seeds we sowed this far will be stronger than this mistake.~
EXIT

CHAIN IF ~InParty("cernd")
See("cernd")
!StateCheck("cernd",CD_STATE_NOTVALID)
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
Global("tb#StivanCernd","GLOBAL",8)
PartyHasItem("miscb2")~ THEN TB#STIVJ StivanCernd8
~Cernd, I'm sorry for having attacked you. If you lied to me, it was only with good intentions.~
DO ~SetGlobal("tb#StivanCernd","GLOBAL",9)~
== CERNDJ ~I thank you for your understanding.~
= ~Now tel---~
== TB#STIVJ ~*splash*~
= ~In my face, you ugly bird? Then you want war! Com here and I'll deplume you, and your friend too!~
== CERNDJ ~As an icy morning doesn't kill the healthy bulb, so the seeds of pity you hold won't be killed by this incident. Flowering is almost upon you.~
EXIT

CHAIN 
IF ~InParty("Stivan")
See("Stivan")
!StateCheck("Stivan",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanCernd","GLOBAL",9)
Global("tb#StivanSawHell","GLOBAL",1)
AreaCheck("AR2900")~ THEN CERNDJ stivanCernd9
~Are you ready, Stivan? We're about to reach the last step in our long walk. I would have never imagined that you reached its conclusion here in Hell, but if such is the will of destiny, I won't fight it.~
DO ~SetGlobal("tb#StivanCernd","GLOBAL",8)~
== TB#STIVJ ~Must we, Cernd? This place... it frightens me.~
== CERNDJ ~As <CHARNAME> is going through tests that will bring him to question himself and his role, it vitally important that you do the same.~
= ~Let us recount the stepping stones we reached during our path.~
= ~Tell me, Stivan: do you know who ended your family's lives~
== TB#STIVJ ~*Ahem* No.~
== CERNDJ ~Wasn't it done by seagulls?~
== TB#STIVJ ~It wasn't them, Cernd. That I already understood.~
== CERNDJ ~Will you leave the mystery of their death unsolved?~
== TB#STIVJ ~I might never know who caused their deaths, but I can't stay tied to the past. I ignored the present far too much, and I understood it is time to look up to the future. I understood that when I put my relatives' ashes in the crypt.~
== CERNDJ ~What lies in wait for you now?~
== TB#STIVJ ~Heh. That's a good question.~
== CERNDJ ~This is not enough of an answer to me.~
== TB#STIVJ ~Cernd, we're in hell. I must still understands if I'm alive or dead!~
== CERNDJ ~Imagine a day when the trees caress you with their green leaves; a tomorrow where spring writes in the air the delirious alphabet of cyclic time, as dawn grows primulas and tulips all around you. Would you see yourself in such a place?~
== TB#STIVJ ~I think I'll have an allergic fever the first days, but I can imagine myself living in such a place.~
== CERNDJ ~One last question.~
== TB#STIVJ ~I have an head ache, Cernd. I've never thought this long in my life.~
== CERNDJ ~We're almost done. What do you think of life?~
== TB#STIVJ ~Heh. This is hard. A little help?~
== CERNDJ ~The answer is yours.~
== TB#STIVJ ~Well, I... Until some time ago, I would have told you it is the harshest of battlefields; now, instead, I think it is as stage where everybody acts his own role.~
== CERNDJ ~And would you be willing to pick up a copy of the play?~
== TB#STIVJ ~I think so.~
== CERNDJ ~Very well, Stivan. There's nothing else to say. The goal of our path has been reached. Might the Mother's, Chauntea, and the Father's, Silvanus, wisdom guide you towards what lies in wait for you.~
== TB#STIVJ ~...~
= ~... Could I tell you one thing, Cernd?~
== CERNDJ ~Certainly.~
== TB#STIVJ ~Your hair is longer than vines. Could I shorten them a bit?~
== CERNDJ ~We should help <CHARNAME> rescue the Tears of Bhaal and his soul. After that... we shall see.~
== TB#STIVJ ~Yeah!~
DO ~ApplySpellRES("tb#scg","tb#stiv") ChangeAlignment("tb#stiv",CHAOTIC_GOOD) StartCutscene("tb#sfix2")~
EXIT

CHAIN
IF ~InParty("tb#stiv")
InParty(Player1)
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0)
OR(2)
	AreaCheck("AR0509")
	AreaCheck("AR0522")
Global("tb#StivanPCTalk","GLOBAL",1)~ THEN TB#STIVJ inAR0509
~Here we are! It has bee long since I put my furry feet in this place. Samuel, the halfling I mentioned, is there at the counter. Let us greet him.~
DO ~SetGlobal("tb#StivanPCTalk","GLOBAL",2)~
EXIT

CHAIN
IF WEIGHT #-1 ~InParty("tb#stiv")
InParty(Player1)
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanPCTalk","GLOBAL",2)~ THEN FFBART StivanSamuel1
~Greetings, my good friends, and well... Stivan! It has been far too long since I last saw you! I was wondering where you ended up.~
DO ~SetGlobal("tb#StivanPCTalk","GLOBAL",3)~
== TB#STIVJ ~Hey there, Samuel! I'm sorry if I don't come and say 'hi' as frequently as before, but I'm traveling with a party of adventurers, and we're always busy in some heroic task and the like.~
== FFBART ~Oho! This is good news! Finally Tymora smiles on you!~
END
IF ~Global("InteractMazzy","LOCALS",1)~ THEN EXTERN FFBART StivanSamuel1-1
IF ~!Global("InteractMazzy","LOCALS",1)~ THEN EXTERN FFBART StivanSamuel1-2

CHAIN 
IF ~~ THEN FFBART StivanSamuel1-1
~I would have gifted you the boots I used to wear when I traveled along the Sword Coast, but I already gave them to sweet Mazzy.~
BRANCH ~InParty("mazzy")~ BEGIN
== FFBART ~Remember, treat my favorite paladin right.~
== TB#STIVJ ~*Ahem* Sure, Samuel. She and I get on very nicely.~
== FFBART ~Uhm... Is there something between you two?~
== TB#STIVJ ~Between me and the potato peddler? Are you mad?~
== FFBART ~If she hears you call her that, Stivan, she'll make you rethink that.~
== TB#STIVJ ~Heh. I'll try to hold myself, then.~
== FFBART ~If you wait a second, I have a surprise for you. Don't run away!~
END
EXTERN TB#STIVJ StivanSamuel1-3

CHAIN 
IF ~~ THEN FFBART StivanSamuel1-2
~If it is so, let me find the boots I used to wear when I traveled along the Sword Coast. You'll need them more than me. Now, where did I put them...? Ah, here they are. Take them. I hope they fit you nicely.~
DO ~GiveItemCreate("BOOT02",Player1,0,0,0)~
== TB#STIVJ ~Wow! Thank you, Samuel. You're really kind.~
= ~Hey, they fit me perfectly!~
== FFBART ~I had no doubts. If you wait another second, I have another surprise for you. Don't run away!~
EXTERN TB#STIVJ StivanSamuel1-3

APPEND TB#STIVJ
IF ~~ THEN StivanSamuel1-3
SAY ~Very well, we'll wait for you.~
= ~Have you seen how kind he is, <CHARNAME>? He helped me a lot after my parents' and brothers' death.~
IF ~GlobalGT("AnomenDecide","GLOBAL",0)~ THEN REPLY ~It is obvious how much you hold him in high esteem.~ EXTERN TB#STIVJ StivanSamuel1-5
IF ~Global("AnomenDecide","GLOBAL",0)~ THEN REPLY ~It is obvious how much you hold him in high esteem.~ EXTERN TB#STIVJ StivanSamuel1-6
IF ~!Race(Player1,HALFLING) GlobalGT("AnomenDecide","GLOBAL",0)~ THEN REPLY ~I heard that halflings greatly help each other, and this is proof of that.~ EXTERN TB#STIVJ StivanSamuel1-5
IF ~!Race(Player1,HALFLING) Global("AnomenDecide","GLOBAL",0)~ THEN REPLY ~I heard that halflings greatly help each other, and this is proof of that.~ EXTERN TB#STIVJ StivanSamuel1-6
IF ~~ THEN REPLY ~What surprise do you think he holds?~ EXTERN TB#STIVJ StivanSamuel1-4
IF ~GlobalGT("AnomenDecide","GLOBAL",0)~ THEN REPLY ~How did he help you?~ EXTERN TB#STIVJ StivanSamuel1-5
IF ~Global("AnomenDecide","GLOBAL",0)~ THEN REPLY ~How did he help you?~ EXTERN TB#STIVJ StivanSamuel1-6
END

IF ~~ THEN StivanSamuel1-4
SAY ~I don't know. We can't but wait and see.~
IF ~GlobalGT("AnomenDecide","GLOBAL",0)~ THEN EXTERN TB#STIVJ StivanSamuel1-5
IF ~Global("AnomenDecide","GLOBAL",0)~ THEN EXTERN TB#STIVJ StivanSamuel1-6
END

IF ~~ THEN StivanSamuel1-5
SAY ~This dear family friend was the only one to give me a shoulder to lean on after that meanie Saerk did the ugly things I told you about.~
IF ~~ THEN EXTERN TB#STIVJ StivanSamuel1-7
END

IF ~~ THEN StivanSamuel1-6
SAY ~When my parents and brothers were killed by seagulls, I asked my father's partner for help. I had no idea how to run my inheritance, and thought he of all people could help me.~
= ~It was a complete mistake. That cursed man stole all my family's documents, and created forgeries that asserted that my lands were actually owned by the Farrahds since many generations.~
= ~I lost everything. My vineyards, my farms. Even the house I lived in.~
IF ~~ THEN EXTERN TB#STIVJ StivanSamuel1-7
END

IF ~~ THEN StivanSamuel1-7
SAY ~Samuel offered to house me here, in the Five Flagons, but when I started my just crusade against seagulls I had to leave. Some customers didn't like the sight of seagulls being tortured, and I didn't want to ruin Samuel's business, not after all he had done for me.~
IF ~~ THEN REPLY ~This explains everything. He is really a nice person.~ EXTERN FFBART StivanSamuel1-10
IF ~~ THEN REPLY ~Perhaps it could have been wiser to ask him rather than your father's partner for help, don't you think?~ EXTERN TB#STIVJ StivanSamuel1-8
IF ~~ THEN REPLY ~Couldn't you have stopped killing those poor birds? At least you'd have had a roof over your head.~ EXTERN TB#STIVJ StivanSamuel1-9
END

IF ~~ THEN StivanSamuel1-8
SAY ~(Snort!) It's easy to judge after the fact, <CHARNAME>! Nothing could let me imagine that such a thing could have happened!~
IF ~~ THEN EXTERN FFBART StivanSamuel1-10
END

IF ~~ THEN StivanSamuel1-9
SAY ~Heh. I love you when you try to be funny.~
IF ~~ THEN EXTERN FFBART StivanSamuel1-10
END
END

CHAIN 
IF ~~ THEN FFBART StivanSamuel1-10
~Here I am - I'm sorry for the wait!~
== TB#STIVJ ~But that... That is...~
== FFBART ~Yes! It's one of the last bottles of your family's wine. I hold them as dear as a treasure, but I say that we should drink one to celebrate your career as an adventurer!~
== TB#STIVJ ~(Sniff) Thanks, Samuel. I'm moved...~
== FFBART ~Oh, don't cry. It'd be a shame if your salty tears tainted a glass of exceptional wine. Here, take this: one for you, and one for your friend.~
== TB#STIVJ ~Come on, <CHARNAME>, have a drink. I'm sure you'll love it!~
END
IF ~~ THEN REPLY ~Er... I'm afraid I'm abstemious...~ EXTERN TB#STIVJ StivanSamuel1-11
IF ~~ THEN REPLY ~Thank you, but I really don't like wine.~ EXTERN TB#STIVJ StivanSamuel1-11
IF ~~ THEN REPLY ~I love wine, especially red one. Stivan, Samuel, cheers!~ EXTERN TB#STIVJ StivanSamuel1-12

CHAIN
IF ~~ THEN tb#stivj StivanSamuel1-11
~Really? What a shame. Only I and Samuel will celebrate, then. Cheers, my friend!~
== FFBART ~Cheers!~
EXTERN TB#STIVJ StivanSamuel1-12

CHAIN
IF ~~ THEN TB#STIVJ StivanSamuel1-12
~Yeah!~
== FFBART ~Simply divine!~
EXTERN FFWENCH StivanSamuel1-13

CHAIN
IF ~~ THEN FFWENCH StivanSamuel1-13
~Samuel, would you please get a move on?! Why do you stand there talking while I'm killing myself running between tables?~
== FFBART ~Er... Duty calls, friends. I must really go, but come back soon!~
== TB#STIVJ ~You can count on it, Samuel! Thanks for everything and be well!~
= ~...~
= ~... Thanks to you as well, <CHARNAME>. This stop really cheered me up, and now I feel ready to get back to adventuring with red cheeks. Heh.~
EXIT

APPEND TB#STIVJ
IF ~InParty("tb#stiv")
InParty(Player1)
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanPCTalk","GLOBAL",0)~ THEN StivanPC1
SAY ~You know, <CHARNAME>, I'm really happy that you asked me to travel with you. I won't suffer hunger no more, and will find a place where my relatives will be able to rest in peace. I haven't felt this upbeat in years, now!~
IF ~~ THEN DO ~SetGlobal("tb#StivanPCTalk","GLOBAL",1)~ REPLY ~Have you always been poor, Stivan?~ GOTO StivanPC1-1
IF ~~ THEN DO ~SetGlobal("tb#StivanPCTalk","GLOBAL",1)~ REPLY ~But I thought you enjoyed selling plumes.~ GOTO StivanPC1-2
IF ~~ THEN DO ~SetGlobal("tb#StivanPCTalk","GLOBAL",1)~ REPLY ~I'm happy to know this. Your knowledge of the city is unmatched.~ GOTO StivanPC1-3
IF ~~ THEN DO ~SetGlobal("tb#StivanPCTalk","GLOBAL",1)~ REPLY ~Great. Let us continue our march with courage, then.~ GOTO StivanPC1-4
END

IF ~~ THEN  StivanPC1-1
SAY ~Oh no. I once lived in much better conditions!~
IF ~~ THEN GOTO StivanPC1-5
END

IF ~~ THEN StivanPC1-2
SAY ~*Ahem* selling plumes was an odd job I had to do to survive. I vastly preferred my old life.~
IF ~~ THEN GOTO StivanPC1-5
END

IF ~~ THEN StivanPC1-3
SAY ~Heh. My knowledge isn't limited to Amn's capital, you know? I've been in far more places, and let me tell you why.~
IF ~~ THEN GOTO StivanPC1-5
END

IF ~~ THEN StivanPC1-4
SAY ~Yeah! Let's go!~
= ~Ah, One last thing. When you want to rest, we could go to the Five Flagon Inn in the Bridge District and drink some good wine. The owner is an halfling like me, although I'm very much friendlier. Heh.~
IF ~~ THEN EXIT
END

IF ~~ THEN StivanPC1-5
SAY ~My family have owned some vineyards right outside Athkatla for many generations. My father's partner handled the farming, while we handled the selling of the end product: a peerless wine!~ 
= ~Every year, after the wine-making season, my brothers and I set off with daddy to sell our flasks, while mommy stayed home and sold some bottles to the local merchants. Once we came back, we divided our money with the Farrahds.~
IF ~~ THEN REPLY ~So you're an expert as far as wines go, right?~ GOTO StivanPC1-6
IF ~~ THEN REPLY ~Did you always walk the same routes, or did you change them every year?~ GOTO StivanPC1-7
IF ~~ THEN REPLY ~I haven't understood if you lived in the country or in the city.~ GOTO StivanPC1-8
IF ~~ THEN REPLY ~It was a very interesting story. However, we must get back to our duties.~ GOTO StivanPC1-4
END
 
IF ~~ THEN StivanPC1-6
SAY ~Exactly. All thanks to daddy!~
IF ~~ THEN GOTO StivanPC1-9
END

IF ~~ THEN StivanPC1-7
SAY ~A bit of both. We always stopped by the most well-paying places, while we changed around the other towns, to seek the best markets.~
IF ~~ THEN GOTO StivanPC1-9
END

IF ~~ THEN StivanPC1-8
SAY ~We lived in the city, in a small house in the Bridge District. We had a big house in the country, for all the peasants who worked for us.~
IF ~~ THEN GOTO StivanPC1-9
END

IF ~~ THEN StivanPC1-9
SAY ~Our life was marked by a calendar of dates that always gave us confidence. Everything was almost cyclic.... At least until the seagulls came.~
= ~(Snort!) Cursed birds! I go mad just my uttering their names! I still bear the scars of that meeting!~
= ~Judging by your cuts, you must have had some bad experience in your past. Have you been assaulted by a storm of seagulls?~ 
IF ~Gender(Player1,MALE)~ THEN REPLY ~These? They are the result of being tortured by Irenicus, the mage we're hunting.~ GOTO StivanPC1-12
IF ~ Gender(Player1,FEMALE)~ THEN REPLY ~These? They are the result of being tortured by Irenicus, the mage we're hunting.~ GOTO StivanPC1-13
IF ~Gender(Player1,MALE)~ THEN REPLY ~Well, let's see... This one, I received from a kobold in the Nashkel Mines, this one from Sarevok in Baldur’s Gate. Oh, I was forgetting *these*: a gift from Irenicus, the mage who captured and tortured me.~ GOTO StivanPC1-12
IF ~ Gender(Player1,FEMALE)~ THEN REPLY ~Well, let's see... This one, I received from a kobold in the Nashkel Mines, this one from Sarevok in Baldur’s Gate. Oh, I was forgetting *these*: a gift from Irenicus, the mage who captured and tortured me.~ GOTO StivanPC1-13
IF ~Gender(Player1,MALE)~ THEN REPLY ~No close call with seagulls, luckily. These are simply cuts I received in the last battle. The real scars are those that Irenicus gave my soul while torturing me.~ GOTO StivanPC1-12
IF ~ Gender(Player1,FEMALE)~ THEN REPLY ~No close call with seagulls, luckily. These are simply cuts I received in the last battle. The real scars are those that Irenicus gave my soul while torturing me.~ GOTO StivanPC1-13 
IF ~~ THEN REPLY ~Don't change the subject, Stivan. What happened?~ GOTO StivanPC1-10
IF ~~ THEN REPLY ~How could seagulls attack your family? It isn't their nature to be aggressive.~ GOTO StivanPC1-11
END

IF ~~ THEN StivanPC1-10
SAY ~(Stivan pulls out of his backpack the urn with the ashes of his close ones). *This* happened.~
= ~As I was saying: how did you get those cuts? Are they caused by seagulls?~
IF ~Gender(Player1,MALE)~ THEN REPLY ~These? They are the result of being tortured by Irenicus, the mage we're hunting.~ GOTO StivanPC1-12
IF ~ Gender(Player1,FEMALE)~ THEN REPLY ~These? They are the result of being tortured by Irenicus, the mage we're hunting.~ GOTO StivanPC1-13
IF ~Gender(Player1,MALE)~ THEN REPLY ~Well, let's see... This one, I received from a kobold in the Nashkel Mines, this one from Sarevok in Baldur’s Gate. Oh, I was forgetting *these*: a gift from Irenicus, the mage who captured and tortured me.~ GOTO StivanPC1-12
IF ~ Gender(Player1,FEMALE)~ THEN REPLY ~Well, let's see... This one, I received from a kobold in the Nashkel Mines, this one from Sarevok in Baldur’s Gate. Oh, I was forgetting *these*: a gift from Irenicus, the mage who captured and tortured me.~ GOTO StivanPC1-13
IF ~Gender(Player1,MALE)~ THEN REPLY ~No close call with seagulls, luckily. These are simply cuts I received in the last battle. The real scars are those that Irenicus gave my soul while torturing me.~ GOTO StivanPC1-12
IF ~ Gender(Player1,FEMALE)~ THEN REPLY ~No close call with seagulls, luckily. These are simply cuts I received in the last battle. The real scars are those that Irenicus gave my soul while torturing me.~ GOTO StivanPC1-13 
END

IF ~~ THEN StivanPC1-11
SAY ~I don't care what their nature is, the result is the same!~
= ~If my eyes are telling me the truth, your scars look like something seagulls would do. Isn't that so?~
IF ~Gender(Player1,MALE)~ THEN REPLY ~These? They are the result of being tortured by Irenicus, the mage we're hunting.~ GOTO StivanPC1-12
IF ~ Gender(Player1,FEMALE)~ THEN REPLY ~These? They are the result of being tortured by Irenicus, the mage we're hunting.~ GOTO StivanPC1-13
IF ~Gender(Player1,MALE)~ THEN REPLY ~Well, let's see... This one, I received from a kobold in the Nashkel Mines, this one from Sarevok in Baldur’s Gate. Oh, I was forgetting *these*: a gift from Irenicus, the mage who captured and tortured me.~ GOTO StivanPC1-12
IF ~ Gender(Player1,FEMALE)~ THEN REPLY ~Well, let's see... This one, I received from a kobold in the Nashkel Mines, this one from Sarevok in Baldur’s Gate. Oh, I was forgetting *these*: a gift from Irenicus, the mage who captured and tortured me.~ GOTO StivanPC1-13
IF ~Gender(Player1,MALE)~ THEN REPLY ~No close call with seagulls, luckily. These are simply cuts I received in the last battle. The real scars are those that Irenicus gave my soul while torturing me.~ GOTO StivanPC1-12
IF ~ Gender(Player1,FEMALE)~ THEN REPLY ~No close call with seagulls, luckily. These are simply cuts I received in the last battle. The real scars are those that Irenicus gave my soul while torturing me.~ GOTO StivanPC1-13 
END

IF ~~ THEN StivanPC1-12
SAY ~He tortured you? For what?~
IF ~~ THEN REPLY ~Being a Spawn of Bhaal means this and much else.~ GOTO StivanPC1-16
IF ~~ THEN REPLY ~That's what I want to find out. Imoen, the girl that was captured with me, told me he wanted to explore my potential as a Bhaalspawn, even if I don't understand what that means.~ GOTO StivanPC1-16
END

IF ~~ THEN StivanPC1-13
SAY ~What?! Are you joking?  Mommy always said that women are not to be touched, not even with a flower!~
IF ~~ THEN REPLY ~That's what I say, too.~ GOTO StivanPC1-14
IF ~~ THEN REPLY ~I'm afraid Irenicus' mommy didn't tell him the same thing.~ GOTO StivanPC1-14
IF ~~ THEN REPLY ~Er... I don't think that Irenicus knows what chivalry is...~ GOTO StivanPC1-14
END

IF ~~ THEN StivanPC1-14
SAY ~Do you know why he tortured you?~
IF ~~ THEN REPLY ~Being a Spawn of Bhaal means this and much else.~ GOTO StivanPC1-16
IF ~~ THEN REPLY ~That's what I want to find out. Imoen, the girl that was captured with me, told me he wanted to explore my potential as a Bhaalspawn, even if I don't understand what that means.~ GOTO StivanPC1-16
END

IF ~~ THEN StivanPC1-16
SAY ~Bhaal? I already heard that name...~
= ~But of course: He's that playboy who seduced every woman he met during the Time of Disorders, right?~
IF ~~ THEN REPLY ~How can you remember that time?~ GOTO StivanPC1-17
IF ~~ THEN REPLY ~Er... Not really. Bhaal was an evil god who, knowing of the proximity of his death, left behind spawn who would fuel his rebirth.~ GOTO StivanPC1-18
IF ~~ THEN REPLY ~I would call him “Bhaal: playboy by passion, God of Murder by trade”.~ GOTO StivanPC1-18
END

IF ~~ THEN StivanPC1-17
SAY ~*Ahem* You wouldn't tell by looking at me, but I'm older than you, you know?~
= ~I remember those years. Daddy was very worried by the disappearance of Waukeen, the goddess of trade. He feared that his job would suffer from that, and it has been as he feared for a couple of years.~
IF ~~ THEN GOTO StivanPC1-18
END

IF ~~ THEN StivanPC1-18
SAY ~So you aren't a common <RACE> like everyone else! You're worth something behind the skin!~ 
= ~What about your mother?~
IF ~~ THEN REPLY ~I never met her. I know nothing of her. Neither name, neither looks... Nothing.~ GOTO StivanPC1-19
IF ~~ THEN REPLY ~I have no idea who that is. Gorion, my foster father, always avoided the subject.~ GOTO StivanPC1-19
IF ~~ THEN REPLY ~She only deserves my deepest disdain. She abandoned me right after birthing me.~ GOTO StivanPC1-19
END

IF ~~ THEN StivanPC1-19
SAY ~Damn. Your life's tale is more complex than the plot of the shows that are held in the Five Flagons Inn. Have you ever been there? It's in the Bridge District. Maybe we could continue talking there, in front of a glass of good wine. The owner is an halfling like ma, although I'm much friendlier. Heh.~ 
IF ~~ THEN EXIT
END

IF ~InParty("tb#stiv")
InParty(Player1)
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanPCCowled","GLOBAL",0)
Global("Chapter","GLOBAL",2)~ THEN PC2
SAY ~You mentioned a mission when we first met, <CHARNAME>, and I can't help but wonder whether we made any progress lately.~
IF ~~ THEN DO ~SetGlobal("tb#StivanPCCowled","GLOBAL",1)~ REPLY ~More or less.~ GOTO PC2-1a
IF ~Global("SpawnBrus","GLOBAL",0)~ THEN DO ~SetGlobal("tb#StivanPCCowled","GLOBAL",1)~ REPLY ~Not as much as I wish. As it is now, I'm trying to obtain a lot of gold for Gaelan Bayle, the representative of an organization that offered me its help.~ GOTO PC2-1
IF ~!Global("SpawnBrus","GLOBAL",0)~ THEN DO ~SetGlobal("tb#StivanPCCowled","GLOBAL",1)~ REPLY ~I have two contacts that could help me. Gaelan Bayle, a man I met shortly after reaching Athkatla, and a certain "Lady" whose offer I still have to take in consideration.~ GOTO PC2-1
IF ~~ THEN DO ~SetGlobal("tb#StivanPCCowled","GLOBAL",1)~ REPLY ~I doubt we would make any progress if you stopped me every five minutes. Some peace and quiet, if you please.~ GOTO PC2-7
END

IF ~~ THEN PC2-1a
SAY ~More or less, eh? Very well, let's see if I can't think of someone who could help you...~
IF ~~ THEN GOTO PC2-1
END

IF ~~ THEN PC2-1
SAY ~Uhm... The clergy in this town is rich and powerful, but would never help an outsider. They're far too absorbed in keeling before the statues of their gods and such things.~
= ~The same could be said for the Radiant Heart: unless you promise them a "crusade against evil" or some of the silliness they fill their mouth with, they'll keep acting pompously and clean their armors.~
IF ~~ THEN REPLY ~Others?~ GOTO PC2-3
END

IF ~~ THEN PC2-3
SAY ~Other than these... I can't think any other group that could grab the Cowlies by their nose. After all, we're talking about a powerful organization. What do you know about them?~
IF ~~ THEN REPLY ~Nothing, actually. They aren't known along the Sword Coast.~ GOTO PC2-4
IF ~~ THEN REPLY ~I didn't get any useful leads this far. I can't understand if people stay silent out of fear or simple ignorance..~ GOTO PC2-4
IF ~~ THEN REPLY ~I know they are *not* cooperative. Their representative in the Council Building doesn't say a word.~ GOTO PC2-4
END

IF ~~ THEN PC2-4
SAY ~I know nothing of what you need, <CHARNAME>. Nobody knows much about the Cowlies here in Athkatla: it's almost as if they've been here since forever, but that isn't true.~
= ~My family has been living in the capital of Amn for many generations, so the tale of the appearance of those wizardlings has reached me and my brothers.~
= ~However, while most tales grows richer at every telling, this one grew poorer.~
= ~According to what my parents told, the group of the Cowled Wizards was founded two centuries ago by someone from Esmeltaran to preserve the magical tradition of Amn and stop those who would abuse the Weave to be meanies.~
= ~Nobody really knows who those mages are, where their base is at, or why do they find immediately anybody who uses magic. Most importantly, it is a mystery why they suddenly became so... brazen.~
IF ~~ THEN REPLY ~So they grew mad just recently? Strange. I'd have bet that they were this bad since their founding.~ GOTO PC2-5
IF ~~ THEN REPLY ~It looks like another instance of "power corrupts, absolute power corrupts absolutely".~ GOTO PC2-5
IF ~~ THEN REPLY ~Their job might be valid and useful if they were more discerning.~ GOTO PC2-5
END

IF ~~ THEN PC2-5
SAY ~Their behavior changed enormously one year before the loss of my relatives. There was a coup... One of the Cowlies tried to take over the Council, but was discovered and killed off.~
= ~I can't recall anything else. I had but a couple of hairs on my feet and, as I think I already told you, have a poor memory.~
= ~Let's try to look for the nicer side of things. Weren't for the Cowlies, you and I would have never met!~
IF ~~ THEN REPLY ~Things follow things, of course. I imagine it is something I must get used to, especially because of my births.~ GOTO PC2-6
IF ~~ THEN REPLY ~No offense, Stivan, but I would have gladly not known you if that meant not losing Imoen.~ GOTO PC2-7
IF ~~ THEN REPLY ~It's not easy to see the other side of the coin, especially in our condition.~ GOTO PC2-6
END

IF ~~ THEN PC2-7
SAY ~... If that was a joke, <CHARNAME>, know that it was all but funny.~
IF ~~ THEN EXIT
END

IF ~~ THEN PC2-6
SAY ~Mommy always said that you learn by doing. The years I spent on the street proved her right. After all, she was never mistaken.~
IF ~~ THEN EXIT
END
END

CHAIN IF ~Dead("udbalor") Global("tb#stivanUdbalor","GLOBAL",0)~ THEN TB#STIVJ aboutUdBalor
~What... What sort of place did you bring us to, <CHARNAME>?~
= ~Since we got here we had to fight beholder, mind flayer, and now demons! What next, a dragon? An army of drows?~
DO ~SetGlobal("tb#stivanUdbalor","GLOBAL",1)~
BRANCH ~InParty("viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ BEGIN
== TB#STIVJ ~Uhm, excluding those who are here, obviously!~
== VICONIJ ~Hmph. I'm tempted to leave you and join the first drow patrol I spot just to silence you once and for all, jaluk.~
== TB#STIVJ ~Heh. I love you when you want to joke, Viccy!~
== VICONIJ ~Don't test your good luck, short one.~
END
END
IF ~~ THEN REPLY ~I didn't chose this place! The blame is Saemon Havarian's!~ EXTERN TB#STIVJ aboutUdBalor-1
IF ~~ THEN REPLY ~Come on. I have the feeling that we'll be back to Athkatla before you know it.~ EXTERN TB#STIVJ aboutUdBalor-2
IF ~~ THEN REPLY ~Are you scared? I liked it here. Three years of campaign, and evil will be but a memory!~ EXTERN TB#STIVJ aboutUdBalor-3

APPEND TB#STIVJ
IF ~~ THEN aboutUdBalor-1
SAY ~You're a born leader! Always ready to shift blame!~
IF ~~ THEN REPLY ~Actually...~ GOTO aboutUdBalor-4
IF ~~ THEN REPLY ~Now then...~ GOTO aboutUdBalor-4
IF ~~ THEN REPLY ~What are you...~ GOTO aboutUdBalor-4
END

IF ~~ THEN aboutUdBalor-2
SAY ~I hope so...~
IF ~~ THEN EXIT
END

IF ~~ THEN aboutUdBalor-3
SAY ~W-what? You're mad!~
IF ~~ THEN EXIT
END

IF ~~ THEN aboutUdBalor-4
SAY ~Ooh, you know how to deny evidence - you're really cut for command!~
= ~Remember, when you're named Councilor of Amn, name me as the Minister of Aerial defense!~
IF ~~ THEN EXIT
END
END

CHAIN 
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
AreaCheck("AR2600")
CombatCounter(0)
Global("tb#StivanJaheiraTethyr","GLOBAL",0)~ THEN TB#STIVJ JaheiraStivanAr2600
~You look at ease here, Jaheira, as if you were home.~
DO ~SetGlobal("tb#StivanJaheiraTethyr","GLOBAL",1)~
== JAHEIRAJ ~In a way I am. I was born in this very nation, although in a region much more to the south than the one we're in now.~
== TB#STIVJ ~Should you want to go there, I'd gladly accompany you. The roads there touch a number of small halfling villages, well known for the quality of their artisans. Daddy really liked those places.~
== JAHEIRAJ ~The hour of vengeance cannot be delayed, so I'll take the idea in consideration later. Either way, it'd be but a stop in a longer journey.~
== TB#STIVJ ~To go where?~
== JAHEIRAJ ~I think it is my duty to go to Calimshan. I... Don't want to, but I feel it is the right thing to do.~
== TB#STIVJ ~aside for the reasons for the travel, you shouldn't go alone. I had nobody by my side when I visited my family's old vineyards, and it surely wasn't a pleasing experience.~
== JAHEIRAJ ~I suppose it depends on how you went there.~
== TB#STIVJ ~It was inevitable that I had some expectations: that the farm, the road, the vines, once seen, would inspire some feeling in me, but I was surprised when the only thing I felt was a pang of memory, summoned by places and things that I would have never imagined could hurt.~
== JAHEIRAJ ~The place I must go has painful memories, but I'll do everything in my power to remain indifferent. I mean to travel it far and wide, brave and determined, to leave it as soon as I handled certain... formalities.~
= ~Well, I say that we lingered enough. This conversation gave me many things to think about, and I was pleasantly surprised by the depth of your words.~
== TB#STIVJ ~Heh. I always said that I'm unappreciated.~
EXIT




///////////////////////////////////////////
// Misc encounters
///////////////////////////////////////////

CHAIN
IF WEIGHT #0 ~InParty("tb#stiv") InParty("Viconia") !StateCheck("tb#stiv",CD_STATE_NOTVALID) !StateCheck("viconia",CD_STATE_NOTVALID) Global("tb#sdr1","GLOBAL",0)~ THEN TB#SDR1 StivanDrow1
~Follow me, male. You'll fulfill my wishes for as long as I please!~
DO ~SetGlobal("tb#sdr1","GLOBAL",1)~
== TB#STIVJ ~(Blushes) Mommy always said that some things are only to be done once married...~
== TB#SDR1 ~What are you talking about?~
== VICONIJ ~This male is mine, woman. Step aside, or taste my wrath.~
== TB#SDR1 ~Forgive me, sister. I did not know he was yours.~
== TB#STIVJ ~...~
= ~... That woman was about to steal my innocence!~
== VICONIJ ~That is why I told her so. I saved *her* a most terrible fate.~
EXIT

CHAIN
IF WEIGHT #0 ~InParty("tb#stiv") InParty("jaheira") !StateCheck("tb#stiv",CD_STATE_NOTVALID) !StateCheck("jaheira",CD_STATE_NOTVALID) Global("tb#sdr2","GLOBAL",0)~ THEN TB#SDR2 StivanDrow2
~Lower your eyes when in front of me, male!~
DO ~SetGlobal("tb#sdr2","GLOBAL",1)~
== TB#STIVJ ~If I lower my head, how shall I see where I step?~
== TB#SDR2 ~You dare contradict me? The Spider Queen Acolytes will have your heart for this insult!~
== JAHEIRAJ ~There's no need to bother them. I will punish this male myself.~
== TB#SDR2 ~I leave the pleasure to you, woman. Might the tentacles of your rod eat of that worm's flesh!~
== TB#STIVJ ~...~
= ~... I felt already dead. Thank you, Jaheira.~
== JAHEIRAJ ~Careful what you say and how you behave, Stivan. In the future I might not be able to save you.~
EXIT

CHAIN
IF WEIGHT #0 ~InParty("tb#stiv") InParty("anomen") !StateCheck("tb#stiv",CD_STATE_NOTVALID) !StateCheck("anomen",CD_STATE_NOTVALID) Global("tb#sdr3","GLOBAL",0)~ THEN TB#SDR2 StivanDrow3
~You there. You look well-endowed, for a Ched Nasad male. Come, follow me into my lodgings.~
DO ~SetGlobal("tb#sdr3","GLOBAL",1)~
== ANOMENJ ~I, ah... Have work to do for the Matron. Vitally important tasks.~
== TB#SDR3 ~Don't abuse my patience, fool! I'll wait for you in the Female Warrior Society, and don't make me wait!~
== ANOMENJ ~Yes, my lady. I'll be with you... as soon as possible.~
== TB#SDR3 ~Wha... Who dare throw this filth in my face? Who?! If I catch the responsible, I'll throw him in the Spider Pit!~
== TB#STIVJ ~Heh. Seagull poo never forgives.~
EXIT

CHAIN IF WEIGHT #-1 ~IsValidForPartyDialog("tb#stiv")
See("tb#stiv")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
Global("tb#StivanHalflingSlums","GLOBAL",0)~ THEN SLHALF01 stivanHalflingSlums
~By Yondalla! What is an half-fur doing in a district as dangerous as the Slums?~
== TB#STIVJ ~This is one of the most dangerous places of the town, that is correct, but let me tell you, I can handle myself.~
DO ~SetGlobal("tb#StivanHalflingSlums","GLOBAL",1)~
EXIT

CHAIN IF WEIGHT #-1 ~IsValidForPartyDialog("tb#stiv")
See("tb#stiv")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
Global("tb#StivanHalflingBridge","GLOBAL",0)~ THEN BMTOWN4 stivanHalflingBridge
~Hey! Where did my loaf of bread end up?!~
== TB#STIVJ ~(Nom nom nom!) I didn't... I didn't see anything!~
DO ~SetGlobal("tb#StivanHalflingBridge","GLOBAL",1)~
EXIT

CHAIN IF WEIGHT #-1 ~IsValidForPartyDialog("tb#stiv")
See("tb#stiv")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
Global("tb#StivanRose","GLOBAL",0)~ THEN MURDGIRL stivanRose
~Hello, dear. Do you have any plumes to sell?~
DO ~SetGlobal("tb#StivanRose","GLOBAL",1)~
== TB#STIVJ ~Sure, Rose. The usual?~
== MURDGIRL ~Just five this time. Unfortunately I lost some of the customers that wend mad when I used these for erotic games.~
== TB#STIVJ ~(Blushes) I don't... I don't want to know more. Here you go.~
== MURDGIRL ~You're really cute when you blush like that. See you later, dear.~
EXIT

CHAIN IF WEIGHT #-1 ~IsValidForPartyDialog("tb#stiv")
IsValidForPartyDialog("Nalia")
See("tb#stiv")
See("Nalia")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
!StateCheck("Nalia",CD_STATE_NOTVALID)
Global("tb#StivanNaliaOphal","GLOBAL",0)~ THEN NOBLEM3 stivannaliaophal
~Hmm... Your servant looks really obsequious, Nalia. Would you be willing to sell him?~
DO ~SetGlobal("tb#StivanNaliaOphal","GLOBAL",1)~
== NALIAJ ~I don't know whom are you talking about, Lord Ophal. I don't travel with the house servants.~
== NOBLEM3 ~Are you telling me that this creature isn't at your orders?~
== TB#STIVJ ~Stivan the Hunter satisfies every wish of Miss Nalia!~
== NOBLEM3 ~It can even talk. I'm ready to make a big offer, my dear. Would ten gold pieces be enough?~
== TB#STIVJ ~Wow! I didn't think I was worth this much!~
== NALIAJ ~I suggest you leave, Lord Ophal. I don't want your dirty money, and don't treat people like cattle.~
== NOBLEM3 ~A shame. It would have been a great buy.~
EXIT

BEGIN TB#STAND
CHAIN IF ~InParty("tb#Stiv") InParty("Nalia") !StateCheck("tb#Stiv",CD_STATE_NOTVALID) !StateCheck("nalia",CD_STATE_NOTVALID) Global("tb#StivanNaliaTandalon","GLOBAL",0)~ THEN TB#STAND StivanNaliaTandalon
~Nalia... I heard the rumors that you were fallen, but they don't give the idea of your poverty.~
== NALIAJ ~You're exactly like your daughter, Miss Tandolan, if not worse. Either way, I don't carry about what you say about me in your tea rooms.~
== TB#STAND ~But of course, dear. Go back between the gypsies you now belong to.~
== TB#STIVJ ~Real nobility doesn't come from birth, but from actions. The best you could hope for is being named as Ugliest of Uglies, you know?~
== TB#STAND ~How you dare, unwashed monster! I could have you arrested by my guards for such an insult!~
== TB#STIVJ ~What guards? The one that the Shadow Thieves have proven useless infinite times?~
== TB#STAND ~It... It doesn't end here! You have made yourself a new enemy!~
DO ~DestroySelf() SetGlobal("tb#StivanNaliaTandalon","GLOBAL",1)~
== NALIAJ ~...~
= ~...  Thank you, Stivan. You've been really kind.~
== TB#STIVJ ~Heh. I couldn't have done differently. This was one of those times when shutting up was a crime and talking was a duty.~
EXIT