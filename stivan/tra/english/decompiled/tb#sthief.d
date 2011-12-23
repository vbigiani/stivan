/* Variables:

tb#ShadowsThievesJobs: tracks the quests.
    1: had the banter about hopes for the future.
    2: Initial talk with to Mitsu.
    3: Trying to steal Missy's pin.
    4: Stole (and reported) Missy's pin.
    5: Sent to Vulova's.
    6: Saved Vulova.
    7: Reported about Vulova.
    8: Sent to Mitsu in CH6.
    9: 'get snoopers out'
   10: Sent to Most Holy Radiant Heart.
   11: Killed MHRP.
   20: Refused to kill the MHRH.
   21: Sent to Rosalina.
   22: Rosalina created.
   23: Rosalina fleed.
  100: quest failed, Stivan is angry.
  101: quest failed, Stivan is understanding.
  102: quest finished.
*/

BEGIN tb#sros
BEGIN tb#scar
BEGIN tb#sros1
BEGIN tb#sros2
BEGIN tb#sros3
BEGIN tb#sros4

CHAIN IF WEIGHT #-1 ~IsValidForPartyDialog("tb#stiv") Global("tb#ShadowsThievesJobs","GLOBAL",1)~ THEN arnman04 stivanMitsu1
~What?! Since when is there another halfling between the Shadow Thieves?~
== arnman03 ~They're the guys sent by Gaelan, Mitsu. The chief told to treat them right.~
== arnman04 ~What's your name, little boy?~
== tb#stivj ~Stivan the Hunter. And you are...?~
== arnman04 ~My name is none of your matter. Enough told, I've proven as the best and only skilled halfling in this guild. Let me stress "only".~
== tb#stivj ~*Ahem* I'm afraid that's going to change, since I'm equally determined in advancing in your organization.~
== arnman03 ~Wow! The kid knows what he wants. I think he'll give you some trouble.~
== arnman04 ~I don't think so! Go speak with Aran about any business you have, then come back to me. If you want to join our organization, you'll have to do what *I* say.~
DO ~SetGlobal("tb#ShadowsThievesJobs","GLOBAL",2)~
EXIT

CHAIN IF WEIGHT #-1 ~IsGabber("tb#stiv") Global("tb#ShadowsThievesJobs","GLOBAL",2) GlobalGT("aranjob","GLOBAL",0)~ THEN arnman04 stivanMitsu2
~Here you are, boy. Are you still sure you want to learn under the unbeatable Mitsu?~
== arnman03 ~You're still trying to get rid of him, eh?~
== arnman04 ~Trying can't hurt.~
== tb#stivj ~Yes. Thanks to <CHARNAME> I've acquired some self-esteem, and I'm sure I'm good enough to become a good Shadow Thief. A better one than you, maybe.~
== arnman03 ~Well said!~
== arnman04 ~Don't get over your head. So many young boys started with your pride and ended up staying in the lower ranks for the rest of their lives. Like Cuchul, for instance.~
== arnman03 ~Er... Don't listen to her, friend. She rambles, sometimes.~
== arnman04 ~I think it's time for your initiation ritual.~
= ~Here, in the guild, is a wardrobe keeper. Every self-respecting thief must be able to steal her pin, or he's worth nothing.~
== arnman03 ~Be careful. Missy has become paranoid after having been the victim of so many thefts. You’d better be cautious.~
== tb#stivj ~You can count on it. I'll come back as a winner sooner than you're expecting!~
= ~<CHARNAME>, will you help me handle some jobs for the guild?~
END
IF ~~ THEN DO ~SetGlobal("tb#ShadowsThievesJobs","GLOBAL",100) SetGlobalTimer("tb#StivanAngry","GLOBAL",ONE_DAY)~ REPLY ~I'd rather not. Aran gave me a job, and I don't have time to waste on other errands.~ EXTERN tb#stivj FirstJob1-1
IF ~~ THEN DO ~SetGlobal("tb#ShadowsThievesJobs","GLOBAL",3)~ REPLY ~Sure. As I've said, I'm fully backing up your decision of finding your place in this organization, and I'll be glad to help you.~ EXTERN tb#stivj FirstJob1-2
IF ~~ THEN DO ~SetGlobal("tb#ShadowsThievesJobs","GLOBAL",3)~ REPLY ~Fine for me, as long as you're quick about it. I must save Imoen as soon as possible.~ EXTERN tb#stivj FirstJob1-2
IF ~~ THEN DO ~SetGlobal("tb#ShadowsThievesJobs","GLOBAL",3)~ REPLY ~So be it. While you're having fun with your thefts, I'll think of the most painful way to make Irenicus pay for what he did to me.~ EXTERN tb#stivj FirstJob1-2

CHAIN IF ~~ THEN tb#stivj FirstJob1-1
~(Sniff) It's not fair. First you tell me to advance in the Shadow Thieves, then you force me to turn down the offer. You're really mean! Mean mean!~
== arnman04 ~Well. The runner-ups have been wiped out cleanly.~
== arnman03 ~You can be so mean, Mitsu.~
== arnman04 ~Eheheheh...~
EXIT

CHAIN IF ~~ THEN tb#stivj FirstJob1-2
~Yeah! I knew I could count on you!~
BRANCH ~IsValidForPartyDialog("Mazzy")~ BEGIN
  == MAZZYJ ~Is such an alliance good for you, Stivan?~
  == tb#stivj ~Don't be such a party-popper. I'm not a kid you must reprieve every time.~
END
BRANCH ~IsValidForPartyDialog("Minsc")~ BEGIN
  == MINSCJ ~Minsc and Boo don't tolerate theft! Who will console the wardrobe keeper when she'll find out she's lost her pin?~
  == tb#stivj ~I'm just borrowing it, Minsc. She won't even notice its absence.~
  == MINSCJ IF ~Global("WWBooGone","GLOBAL",0)~ THEN ~I will ensure you'll keep your word. Minsc's heart would be broken if you stole his hamster or his sword!~
  == MINSCJ IF ~!Global("WWBooGone","GLOBAL",0)~ THEN ~I will ensure you'll keep your word. Minsc's heart was almost broken when his hamster was stolen, and he doesn't want others to suffer like him!~
END
END
IF ~~ THEN UNSOLVED_JOURNAL ~Stivan and the Shadow Thieves

A Shadow Thief named Mitsu offered Stivan the chance of proving his worth in the guild by running some errands for her. Before that, the halfling must pass an initiation rite by stealing the pin of Missy, the wardrobe keeper.~ EXIT

CHAIN IF WEIGHT #-1 ~NumTimesTalkedToGT(2) Global("tb#ShadowsThievesJobs","GLOBAL",3) !PartyHasItem("tb#spin") IsGabber("tb#stiv")~ THEN ARNGRL01 firstjob
~Still here? Does ANYONE have a CLOAK to give me?~
== tb#stivj ~I'm feeling a bit hot. keep my mantle!~
== ARNGRL01 ~Ewww! What are these stains?~
== tb#stivj ~Oh, just a little bit of seagull poo, nothing to worry about.~
== ARNGRL01 ~What...~
== tb#stivj ~Now that I think about it, I usually sleep on the road, and maybe it got wet with the urine of some wild dog.~
== ARNGRL01 ~Ewww, shut up! You're making me feel sick...~
== tb#stivj ~Oh, now I remember that those stains are! One year ago a drunken half-orc threw up on me on his way out of the Copper Coronet, and I never got around to washing it.~
== ARNGRL01 ~Uurgkh!~
== tb#stivj ~Yes, it went exactly like that! (Yoink, it's mine!)~
END
IF ~~ THEN DO ~CreateItem("tb#spin",1,0,0)~ EXIT

APPEND arnman04
  IF WEIGHT #-1 ~IsGabber("tb#stiv") Global("tb#ShadowsThievesJobs","GLOBAL",3)~ THEN firstjob2
    SAY ~Have you come to give up, young one?~
    IF ~PartyHasItem("tb#spin")~ THEN DO %SetGlobal("tb#shadowsThievesJobs","GLOBAL",4) TakePartyItem("tb#spin") DestroyItem("tb#spin") EraseJournalEntry(~Stivan and the Shadow Thieves

A Shadow Thief named Mitsu offered Stivan the chance of proving his worth in the guild by running some errands for her. Before that, the halfling must pass an initiation rite by stealing the pin of Missy, the wardrobe keeper.~)% EXTERN tb#stivj firstjob2-1
    IF ~!PartyHasItem("tb#spin")~ THEN EXTERN tb#stivj firstjob2-2
  END
END

CHAIN IF ~~ THEN tb#stivj firstjob2-2
~Er, I'm still working on it, let me reassure you...~
== arnman03 ~You'd better hurry up, Mitsu isn't known for her patience.~
== arnman04 ~Yes, hurry up! If you make me wait too much I'll write a letter to Aran, and then you can forget about joining us!~
== arnman03 ~I thought you were illiterate?~
== arnman04 ~Who, me? I can write and talk more better than a bard, myself!~
EXIT

CHAIN IF ~~ THEN tb#stivj firstjob2-1
~You're wrong, Mitsu. Here I am, victoriously holding Missy's pin.~
== arnman03 ~So you aren't hopeless, boy. Mitsu took some weeks herself to get the pin her time around.~
== arnman04 ~Shut up! As for you, Hunter, don't get proud. It's time to start working on serious matters.~
== arnman04 IF ~!Dead("mook")~ ~It is better that you end Aran's job first. Rescuing the cargo has priority. Come back after you've helped Mook.~
END
IF ~Dead("mook")~ THEN EXTERN arnman04 secondJob1-1
IF ~!Dead("mook")~ THEN EXIT

CHAIN IF WEIGHT #-1 ~IsGabber("tb#stiv") Dead("mook") Global("tb#shadowsThievesJobs","GLOBAL",4)~ THEN arnman04 secondJob
~Damn. It is good that the cargo was rescued, but Mook's loss wasn't planned.~
== arnman03 ~Yep. She was a skilled lass. I learned a lot from her.~
== arnman04 ~Listen well, Hunter. I'm about to hand you your first job.~
EXTERN arnman04 secondJob1-1

CHAIN IF ~~ THEN arnman04 secondJob1-1
~Our organization is backed up by a number of nobles here in Athkatla. Chief amongst them is Armagaran Vulova, whose life is at risk even as we speak.~
== tb#stivj ~(Gasp!) Armagaran Vulova is one of the richest merchants in town! Who would want him dead?~
== arnman03 ~The rival guild, obviously.~
== arnman04 ~The Lord of Shadows wants him shielded against any and all menaces. If you accept the job, you'll be responsible of his well-being. If you fail or renounce, you're out.~
== tb#stivj ~If <CHARNAME> doesn't mind...~
END
IF ~~ THEN REPLY ~I'm in it. Where can I find this nobleman?~ GOTO SecondJob1-2
IF ~~ THEN REPLY ~So be it. However, I'll ignore any further requests, have I made myself clear?~ GOTO SecondJob1-2
IF ~~ THEN REPLY ~I do. I must find Imoen and Irenicus as soon as possible, and such a task would slow me down too much.~ GOTO SecondJob1-3

CHAIN IF ~~ THEN arnman04 SecondJob1-2
~I'm really curious to find out how you'll hold up. He lives in the Government District. Go there as soon as possible, or it'll be the end of Armagaran... and of your career.~
== NALIAJ IF ~IsValidForPartyDialog("Nalia")~ THEN ~I would have never imagined that Vulova backed up the Shadow Thieves. Auntie wouldn't believe so even if she saw them with her eyes.~
== JAHEIRAJ IF ~IsValidForPartyDialog("Jaheira")~ THEN ~We're delaying unnecessarily our meeting with Irenicus. Let us be done with these distractions as soon as possible.~
END IF ~~ THEN DO ~SetGlobal("tb#shadowsThievesJobs","GLOBAL",5)~ UNSOLVED_JOURNAL ~Stivan and the Shadow Thieves

Mitsu gave Stivan his first task: he must protect a nobleman by the name of Armagaran Vulova from an ambush by the rival guild. His palace is in the Government District, and it would be best if I went there as soon as possible. Otherwise, it might be too late for him.~ EXIT

CHAIN IF ~~ THEN arnman04 SecondJob1-3
~Have you heard, lil' boy? No mission, no recruiting. It is a shame... for you.~
== tb#stivj ~You're a snake, Mitsu! You know that <PRO_HESHE> has an urgent job with Aran and cannot lose time in such a way!~
== arnman04 ~... Oh really?~
== tb#stivj ~Ugly one! One day... You'll pay!~
END
IF ~~ THEN SOLVED_JOURNAL ~Stivan and the Shadow Thieves

Mitsu gave Stivan his first real job, but I had to renounce it to avoid losing time. Stivan went angry with the thief, but he acknowledged my priorities and didn't scream at me.~ DO ~SetGlobal("tb#shadowsThievesJobs","GLOBAL",101)~ EXIT

BEGIN TB#SVUL

CHAIN IF WEIGHT #-1 ~InParty("tb#stiv") InMyArea("tb#stiv") Global("tb#shadowsThievesJobs","GLOBAL",5) !Dead("tb#svam1")~ THEN tb#svul tb#svul-1
~Who are you? Why are you here?~
== tb#stivj ~I am glad to meet you, Lord Vulova. My name is Stivan, and these are my friends. We are sent by the Shadow Thieves to protect you.~
== tb#svul ~I knew that other men were coming, but, as I've already told your leaders, my men are more than enough.~
== tb#stivj ~*Ahem* I must contradict you. The menace looming on you is big, you know?~
== tb#svul ~My men will be able to handle it. Bring my thanks to the Lord of Shadows: his attention is still welcome.~
= ~Uhm... Why is it so cold?~
END
IF ~~ THEN DO ~CreateCreatureObject("vamflf01","tb#svul",1,0,0) CreateCreatureObject("tb#svam1","tb#svul",1,0,0) CreateCreatureObject("vamflm01","tb#svul",1,0,0)~ EXIT

APPEND tb#svul
  IF WEIGHT #-1 ~Dead("tb#svam1") CombatCounter(0)~ THEN tb#svul-2
  SAY ~By... by the Gods! I... I...~
  IF ~~ THEN REPLY ~Are you alright, old man? Were you injured?~ GOTO tb#svul-3
  END
  
  IF ~~ THEN tb#svul-3
  SAY ~I'm... alright, if you can say so. I've never seen such an horror in my life... and I have seen a lot of years.~
  = ~Thanks for your help, boy. Please, tell the Shadow Thieves that I'm leaving Athkatla. It's not safe for me right now, but I'll keep contact.~
  = ~Guards, to the Gate District.~
  IF ~~ THEN DO ~SetGlobal("tb#ShadowsThievesJobs","GLOBAL",6) EscapeArea()~ EXIT
  END
END

CHAIN IF WEIGHT #-1 ~IsGabber("tb#stiv") Global("tb#ShadowsThievesJobs","GLOBAL",6)~ THEN arnman04 SecondJob4
~You're back. Do you have anything to report?~
== tb#stivj ~The rival guild sent a trio of Vampires to kill Vulova!~
== arnman03 ~By Mask! Vampires?!~
== arnman04 ~So the rumors I head were true. Is he safe and sound?~
== tb#stivj ~He's unhurt. He's leaving the town, and I can't blame him.~
== arnman04 ~Yes, that is for the best. Cuchul, send word to Arkanis and his squad. They must watch over him and ensure he gets to safety without further trouble.~
== arnman03 ~Sure.~
== arnman04 ~As for you, Hunter...~
== tb#stivj ~Yes ma'am!~
== arnman04 ~Get out of here for a while. Cuchul and I have more important things to do, and can't waste any further time on you..~
== tb#stivj ~Hey, what about my recruiting?~
== arnman04 ~We'll call on you when we need you. Now get lost.~
== tb#stivj ~(Snort!) Harpy!~
== arnman04 ~What did you just say?!~
== arnman03 ~I? Er... Nothing. I'll wait to hear from you, Mitsu.~
END IF ~~ THEN SOLVED_JOURNAL ~Stivan and the Shadow Thieves

We saved Armagaran Vulova from an ambush from the rival guild. Mistu will contact Stivan when she needs him again.~ DO %SetGlobal("tb#ShadowsThievesJobs","GLOBAL",7) EraseJournalEntry(~Stivan and the Shadow Thieves

Mitsu gave Stivan his first task: he must protect a nobleman by the name of Armagaran Vulova from an ambush by the rival guild. His palace is in the Government District, and it would be best if I went there as soon as possible. Otherwise, it might be too late for him.~)% EXIT

APPEND tb#stivj
IF WEIGHT #-1 ~Global("tb#ShadowsThievesJobs","GLOBAL",7) Dead("c6Bodhi")~ THEN bodhidead
SAY ~I can't believe it! We've killed the ugly one!~
IF ~~ THEN REPLY ~Yeah. Her sharp canines won't threaten our throats any longer. Irenicus is next, I think.~ GOTO AfterBodhiDeath1-1
IF ~~ THEN REPLY ~Not yet, Stivan. You should know that a vampire only really dies if you pierce his heart with a wooden stake. Would you like to handle that yourself?~ GOTO AfterBodhiDeath1-2
IF ~~ THEN REPLY ~We'... we'll party later. Now... I must catch my breath.~ GOTO AfterBodhiDeath1-3
END

IF ~~ THEN AfterBodhiDeath1-1
SAY ~The wizard is scarier. What he did to you and your sister... that's beyond comprehension.~
IF ~~ THEN  GOTO AfterBodhiDeath1-3
END

IF ~~ THEN AfterBodhiDeath1-2
SAY ~Er... To you the honor. Last time I did that, the beast shrieked so loud I almost fell into its sarcophagus. Brrr...~
IF ~~ THEN  GOTO AfterBodhiDeath1-3
END

IF ~~ THEN AfterBodhiDeath1-3
SAY ~I can't still understand how you manage to stand. I thought that the soul was needed to live, but you're disregarding that at every breath. From whence comes the spark of life, then?~
IF ~~ THEN REPLY ~It really comes from the soul. Even if I look fine, it really isn't so. I feel as if my strength were the sand in a hourglass. Wile it's falling down, I'm getting emptier.~ GOTO AfterBodhiDeath1-4
IF ~~ THEN REPLY ~No mere man could live without a soul, but I am no mere man. You'd be dead already, if you were in my shoes.~ GOTO AfterBodhiDeath1-5
IF ~~ THEN REPLY ~That's a question for a philosopher.~ GOTO AfterBodhiDeath1-6
END

IF ~~ THEN AfterBodhiDeath1-4
SAY ~... If that's the price to pay to be the child of a god, I'd rather remain an average guy.~
IF ~~ THEN GOTO AfterBodhiDeath1-7
END

IF ~~ THEN AfterBodhiDeath1-5
SAY ~Yes, yes, I understood you're special, but you aren't perfect either. I saw you pick your nose yesterday, you know?~
IF ~~ THEN  GOTO AfterBodhiDeath1-7
END

IF ~~ THEN AfterBodhiDeath1-6
SAY ~Mommy always said that whomever thinks of the world is a philosopher. You don't need a special name to talk about the universal questions.~
IF ~~ THEN  GOTO AfterBodhiDeath1-7
END

IF ~~ THEN AfterBodhiDeath1-7
SAY ~Either way, it is time we sent that bitch in the Abyss, right? We also have to bring those long legs their pocket lamp, although I'd rather go visit Mitsu before leaving town again.~
= ~We've been away from Athkatla for months, but I doubt that she's looked for me all this time. That harpy is surely lying through her teeth to deny me the recruitment I deserve!~
IF ~~ THEN DO ~SetGlobal("tb#ShadowsThievesJobs","GLOBAL",8)~ UNSOLVED_JOURNAL ~Stivan and the Shadow Thieves

Not having heard from Mitsu, Stivan would like to go meet her at the Guild to obtain the place he deserves.~ EXIT
END
END

CHAIN IF WEIGHT #-2 ~IsGabber("tb#stiv") Global("tb#ShadowsThievesJobs","GLOBAL",8)~ THEN arnman03 ThirdJob
~Hey there, friends! It really is true that whomever isn't busted is met again!~
== arnman04 ~Uhm? What are you doing here, Hunter?~
== tb#stivj ~Heh. Thanks for your welcome. I was wondering if you were ever going to recruit me as I deserve.~
== arnman04 ~You must have read my mind, little boy, since I had just the job for you.~
== arnman03 ~It was really more like "let's see who we can hand this hot potato off to".~
== arnman04 ~Cuchul!~
== arnman03 ~Er... Did I say that out loud?~
== arnman04 ~Tell your friends to go somewhere else. There are far too many ears in here, and I don't want any of those.~
== arnman03 ~<CHARNAME> can remain. Gaelan said that <PRO_HIMHER> is to be trusted.~
== arnman04 ~So be it. Everybody else, go away.~
DO ~SetGlobal("tb#ShadowsThievesJobs","GLOBAL",9)~
BRANCH ~IsValidForPartyDialog("Yoshimo")~ BEGIN
== arnman04 ~Wait. You can remain. You look nice enough.~
== YOSHJ ~Thank you, my lady.~
== arnman03 ~She's been eyeballing you up since she saw you, friend. There's something going on here...~
== arnman04 ~Oh, shut up, Cuchul!~
== YOSHJ ~I am so glad of your attention. Maybe we can dine together later?~
== arnman03 ~Ooh!~
== arnman04 ~(Blushes) That, I wasn't expecting...~
== tb#stivj ~*Ahem* I don't want to interrupt, but I need to hear what my job will be.~
== arnman04 ~Uh? Eh? Oh, right, you job. I'll tell you everything as soon as your friends are out of earshot.~
END
EXIT

CHAIN IF WEIGHT #-1 ~IsGabber("tb#stiv") Global("tb#ShadowsThievesJobs","GLOBAL",9)
OR(3) !IsValidForPartyDialog(Player2) Name("Yoshimo",Player2) Name("tb#stiv",Player2)
OR(3) !IsValidForPartyDialog(Player3) Name("Yoshimo",Player3) Name("tb#stiv",Player3)
OR(3) !IsValidForPartyDialog(Player4) Name("Yoshimo",Player4) Name("tb#stiv",Player4)
OR(3) !IsValidForPartyDialog(Player5) Name("Yoshimo",Player5) Name("tb#stiv",Player5)
OR(3) !IsValidForPartyDialog(Player6) Name("Yoshimo",Player6) Name("tb#stiv",Player6)
~ THEN arnman04 ThirdJob1
~Now then, boy. This job is dangerous. *really* dangerous. I wouldn't be surprised if you gave up.~
== tb#stivj ~Nothing could be more dangerous than the flock of seagulls I fought some months ago here in the Docks. Those beasts were more blood-thirsty than... than...~
== arnman03 ~Seagulls?~
== arnman04 ~Blood-thirsty?~
== tb#stivj ~*Ahem* We'll talk about that later.~
== arnman04 ~The knights of the  Most Noble Order of the Radiant Heart have been giving us much trouble lately. They even arrested some of our new guys while they were helping a noble get rid of useless things, if you catch my drift.~
== arnman03 ~What Mitsu is saying is that we must repay for our offense. We can't handle more trouble-makers, the rival guild is already trouble enough.~
== arnman04 IF ~!IsValidForPartyDialog("Yoshimo")~ THEN ~Right, Cuchul. And this is where you and <CHARNAME> come in at.~
== arnman04 IF ~IsValidForPartyDialog("Yoshimo")~ THEN ~Right, Cuchul. And this is where you, <CHARNAME> and the other boy come in at.~
== arnman04 ~For some days the Radiant Heart will host in its halls a group of Tyr followers from Cormyr. I've heard that they came in town for a celebration, and are bringing an artifact known as the Shield of the Left-Handed with them.~
== arnman03 ~It would be impossible to steal it. It's guarded night and day, and nobody who isn't from the Order could ever get close to it.~
== arnman04 ~What we need is a carnage, Stivan. A proof that the Shadow Thieves rule this town and nobody could ever stand up to us. Are you up to the job?~
== tb#stivj ~You might not know as much, but this is a lifetime dream! Of course I'm up to it!~
BRANCH ~IsValidForPartyDialog("Yoshimo")~ BEGIN
== YOSHJ ~This is madness. Should we even survive, which I strongly doubt, the leaders of the Order will do anything in their power to bring us to justice.~
== arnman03 ~Calm down, my friend. Mistu won't leave you to them - She'd do anything to defend you.~
== arnman04 ~Well, companions are to be helped, right?~
== arnman03 ~Companion? Did you mean "brother", right?~
== arnman04 ~Er... Yes.~
END
== arnman04 ~You have your job, Hunter. I don't need to explain you where those cursed paladins' stronghold is, so go there and avenge our busted brothers!~
== tb#stivj ~Heh. At your orders, chief!~
== arnman03 ~As soon as that is done, you'll be a full-fledged Shadow Thief.~
== arnman04 ~I will be the judge of that!~
== arnman03 ~Stop being such a stick in the mud, Mitsu, or I'll tell everything to Gaelan. Have I made myself clear?~
== arnman04 ~(Screams) Damned men! You will always do everything to put women down! Ever since I was here you've done anything you could to usurp my position! Do you think that you could be the better of us just because you have three legs? Well, let me tell you...~
== arnman03 ~... You'd best go, brothers. My friend has just started on one of her feminist tirades...~
END IF ~~ THEN UNSOLVED_JOURNAL ~Stivan and the Shadow Thieves

Mitsu gave Stivan his next mission: rescue a sacred shield from a party of Tyr followers from Cormyr, hosted in the Radiant Heart Order. It looks like the artifact is guarded so closely that the only option is a bloodbath. I must still decide if I should help the halfling or no.~ DO ~SetGlobal("tb#ShadowsThievesJobs","GLOBAL",10)~
EXIT

CHAIN IF WEIGHT #-1 ~AreaCheck("ar0903") Global("tb#stivanar0903","GLOBAL",0) Global("tb#ShadowsThievesJobs","GLOBAL",10)~ THEN tb#stivj inar0901
~This place is so filled of paladins that I'm feeling sick!. Bah... ready for the carnage, <CHARNAME>?~
DO ~SetGlobal("tb#stivanar0903","GLOBAL",1)~
BRANCH ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ BEGIN
== KELDORJ ~Carnage? What are you talking about?~
== TB#STIVJ ~Heh. We're about to send your friends in the other-life, grandpa.~
== KELDORJ ~You should weight carefully your next words - I'd be sorry if they were your last.~
== TB#STIVJ ~Are you talking to <CHARNAME> or me?~
== KELDORJ ~Both, but just as far as the first part of the sentence goes.~
== TB#STIVJ ~... Eh?~
END
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenIsNotKnight","GLOBAL",1)~ THEN ~I should kill you where you stand just for thinking of such an abomination!~
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenIsNotKnight","GLOBAL",1)~ THEN ~An interesting idea, but the filth that dwells in this place is not worthy of my blade.~
END
IF ~!Alignment(Player1,MASK_GOOD)~ THEN REPLY ~A great idea, now that you mention it.~ EXTERN tb#stivj inAr0903-1
IF ~!Alignment(Player1,MASK_GOOD)~ THEN REPLY ~I'm looking forward to getting hold of that artifact. Let's go!~ EXTERN tb#stivj inAr0903-1
IF ~!Alignment(Player1,MASK_GOOD)~ THEN REPLY ~First strike is *mine*!~ EXTERN tb#stivj inAr0903-1
IF ~!Alignment(Player1,MASK_GOOD)~ THEN REPLY ~Forget about it. I'd like to do so as well, but this is suicide.~ EXTERN tb#stivj inAr0903-2
IF ~!Alignment(Player1,MASK_EVIL)~ THEN REPLY ~Forget about it. I'm not planning on making an enemy out of these defenders of all that is good.~ EXTERN tb#stivj inAr0903-2
IF ~!Alignment(Player1,MASK_EVIL)~ THEN REPLY ~I never allowed such a thing, Stivan. I won't commit such a monstrosity.~ EXTERN tb#stivj inAr0903-2
IF ~!Alignment(Player1,MASK_EVIL)~ THEN REPLY ~Absolutely not. We won't stain our hands with blood for futile reasons.~ EXTERN tb#stivj inAr0903-2

CHAIN IF ~~ THEN tb#stivj inAr0903-1
~Yeah! Let's get this started, folks!~ DO ~SetGlobal("TempleShout0903","GLOBAL",1)~
== KELDORJ IF ~InParty("Keldorn") !StateCheck("keldorn",CD_STATE_NOTVALID)~ THEN ~What are you doing? Alarums, brothers, alarums!~ DO ~LeaveParty() Enemy()~
== ANOMENJ IF ~InParty("anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenIsNotKnight","GLOBAL",1)~ THEN ~Betrayal! Die, <CHARNAME>!~ DO ~LeaveParty() Enemy()~
EXIT

APPEND tb#stivj
IF ~~ THEN inAr0903-2
SAY ~But... But Mitsu won't allow me in the Shadow Thieves if we refuse! She's waiting for nothing less than this to get rid of me!~
IF ~~ THEN REPLY ~Not my problem.~ EXTERN tb#stivj inAr0903-3
IF ~~ THEN REPLY ~I'm sorry, but I don't want the deaths of innocent people on my conscience.~ EXTERN tb#stivj inAr0903-3
IF ~~ THEN REPLY ~Oh, right. Let's not waste any further time and let's get done with this as soon as possible.~ EXTERN tb#stivj inAr0903-1
END

IF ~~ THEN inAr0903-3
SAY ~Please... Please, <CHARNAME>, think of me. I've been at your side for all this time helping you as best as I could; why won't you do the same? Why do you want others to help you and not do the same with them?~
IF ~~ THEN REPLY ~Hypocrite. I offered you a place in my party and you're calling me thankless?~ EXTERN tb#stivj inAr0903-4 
IF ~~ THEN REPLY ~Don't try to confuse me with your words. I'm unmovable in my decision.~ EXTERN tb#stivj inAr0903-4
IF ~Class(Player1,PALADIN)~ THEN REPLY ~The crime you're asking me to commit on my brothers is unacceptable, Stivan. There's nothing else to say.~ EXTERN tb#stivj inAr0903-4 
IF ~~ THEN REPLY ~So be it. But stop looking at me with those big begging eyes, okay?~ EXTERN tb#stivj inAr0903-1
END

IF ~~ THEN inAr0903-4
SAY ~(Snort!) If that's your way, the least you could do is to convince Mitsu not to punish me with expulsion or whatever else she holds for those that renounce their duties!~
IF ~~ THEN REPLY ~That sounds easy. I'll make sure she won't punish you.~ EXTERN tb#stivj inAr0903-5
IF ~~ THEN REPLY ~I'll try, but I can't guarantee anything.~ EXTERN tb#stivj inAr0903-5
IF ~~ THEN REPLY ~I want nothing more to do with that damned guild, Stivan. I wash my hands of it.~ EXTERN tb#stivj inAr0903-6
IF ~~ THEN REPLY ~You won, I'd rather kill innocent men than discuss with Mitsu. Ready yourself for battle.~ EXTERN tb#stivj inAr0903-1
END

IF ~~ THEN inAr0903-5
SAY ~Let's get back to the Docks, then. I'm really curious to see how you'll manage to convince that witch not to get angry at me.~
IF ~~ THEN UNSOLVED_JOURNAL ~Stivan and the Shadow Thieves

I refused to take part in the carnage required to obtain the Shield of the Left Handed. I still reassured Stivan that I'll convince Mitsu not to end his training.~
DO %SetGlobal("tb#ShadowsThievesJobs","GLOBAL",20) EraseJournalEntry(~Stivan and the Shadow Thieves

Mitsu gave Stivan his next mission: rescue a sacred shield from a party of Tyr followers from Cormyr, hosted in the Radiant Heart Order. It looks like the artifact is guarded so closely that the only option is a bloodbath. I must still decide if I should help the halfling or no.~)%
EXIT
END

IF ~~ THEN inAr0903-6
SAY ~Damn you, <CHARNAME>! First you suggest me a career between the Shadow Thieves, then you deny me the possibility once it arises. Go bash your head against a tree to get your ideas straight!~
IF ~~ THEN 
DO %EraseJournalEntry(~Stivan and the Shadow Thieves

Mitsu gave Stivan his next mission: rescue a sacred shield from a party of Tyr followers from Cormyr, hosted in the Radiant Heart Order. It looks like the artifact is guarded so closely that the only option is a bloodbath. I must still decide if I should help the halfling or no.~) SetGlobal("tb#ShadowsThievesJobs","GLOBAL",100) SetGlobalTimer("tb#StivanAngry","GLOBAL",ONE_DAY)% EXIT
END
END

CHAIN IF WEIGHT #-1 ~AreaCheck("ar0903") Dead("Heartg1")
Dead("Heartg2")
Dead("Heartg3")
Dead("Heartg4")
Dead("Heartg5")
Global("tb#stivanClearedAR0903","GLOBAL",0)~ THEN tb#stivj ClearedAr0903
~(Pant) We... We did it!~
DO ~SetGlobal("tb#stivanClearedAR0903","GLOBAL",1) SetGlobal("tb#ShadowsThievesJobs","GLOBAL",11)~
BRANCH ~IsValidForPartyDialog("Korgan")~ BEGIN
== KORGANJ ~By the Nine Hells! Those pansies wore more iron than the mines of the Blood Stone!~
== TB#STIVJ ~... I can add nothing more to that.~
== KORGANJ ~What to say? You left me speechless, boyo. You have it in you, when you want to.~
== TB#STIVJ ~It was an harsh battle, but... Heh. They deserved it.~
END
EXIT

CHAIN IF WEIGHT #-1 ~Global("tb#ShadowsThievesJobs","GLOBAL",20)~ THEN arnman04 FourthJob
~Well, Hunter? Did you teach those self-deluded fools a lesson?~
== tb#stivj ~(Snort!) Please, <CHARNAME>! Explain her what the hell were you thinking!~
END
IF ~~ THEN REPLY ~Sorry, Mitsu, but we aren't going to carry out your task.~ EXTERN arnman04 FourthJob1-5
IF ~~ THEN REPLY ~The Paladins are alive, and will remain so. I won't kill them to satisfy your whims.~ EXTERN arnman04 FourthJob1-5
IF ~~ THEN REPLY ~I think you really wanted to get rid of us. Otherwise why would you send us to destroy an army of warriors armed to the teeth?~ GOTO FourthJob1-5
IF ~Class(Player1,PALADIN)~ THEN REPLY ~You're a fool if you thought I'd betray my own brothers.~ EXTERN arnman04 FourthJob1-5


CHAIN IF ~~ THEN arnman04 FourthJob1-5
~Really? Well, that's a shame. For your little friend, I mean. Such a refusal just blew out any chances he might have had of a future here in the Guild. And to think that I was almost getting ready to the idea of having another halfling thief between us.~
== tb#stivj ~Great. Now the futures holds me nothing but... the junk and squalor it held before!~
END
IF ~~ THEN REPLY ~You won't find your place here, Stivan, bu I won't leave you in a corner of Athkatla.~ EXTERN tb#stivj FourthJob1-6
IF ~~ THEN REPLY ~Is that the self-esteem you thought you had? If you become poor again, it'll be for lack of determination, not for my own wrong-doing!~ EXTERN tb#stivj FourthJob1-6
IF ~~ THEN REPLY ~Not so fast. Cuchul, the last time you said you'd tell everything to Gaelan if the small one gave any trouble.~ EXTERN arnman03 FourthJob1-7
IF ~~ THEN REPLY ~Come on, Mitsu, don't be so harsh. Why don't you give us another task? Preferably one that doesn't involve such a carnage.~ EXTERN arnman04 FourthJob1-8

CHAIN IF ~~ THEN tb#stivj FourthJob1-6
~...~
= ~... Let's get out of here. There's no point in remaining in this place. I need time to... think.~
== arnman03 ~I'm sorry, friend. I'll be here if you need anything.~
== tb#stivj ~I'll keep that in mind. Thank you.~
END IF ~~ THEN
SOLVED_JOURNAL ~Stivan and the Shadow Thieves

Not rescuing the Shield of the Left Handed halted Stivan's career between the Shadow Thieves. The halfling now closed himself into a deep silence.~
DO %EraseJournalEntry(~Stivan and the Shadow Thieves

Mitsu gave Stivan his next mission: rescue a sacred shield from a party of Tyr followers from Cormyr, hosted in the Radiant Heart Order. It looks like the artifact is guarded so closely that the only option is a bloodbath. I must still decide if I should help the halfling or no.~) SetGlobal("tb#ShadowsThievesJobs","GLOBAL",100) SetGlobalTimer("tb#StivanAngry","GLOBAL",ONE_DAY)%
EXIT

APPEND arnman03
IF ~~ THEN FourthJob1-7
SAY ~Er... Did I really say that?~
IF ~~ THEN EXTERN arnman04 FourthJob1-9
END
END

APPEND arnman04
IF ~~ THEN FourthJob1-8
SAY ~I don't really think so! You being the chosen one of Aran doesn't mean that *I* have to live up to your every wish!~
IF ~~ THEN GOTO FourthJob1-9
END

IF ~~ THEN FourthJob1-9
SAY ~We Shadow Thieves have rules. Whomever refuses a job for personal reasons is out, and that's it. No second chances.~
IF ~Global("PlayerThiefGuild","GLOBAL",1) Global("PGFailed","GLOBAL",1) CheckStatLT(Player1,13,CHR)~ THEN REPLY ~You'd better cooperate, you know? I have the resources to make your life Hell. I'm the head of a Thief Guild, after all.~ EXTERN arnman03 FourthJob1-10
IF ~Global("PlayerThiefGuild","GLOBAL",1) Global("PGFailed","GLOBAL",1) CheckStatGT(Player1,12,CHR)~ THEN REPLY ~You'd better cooperate, you know? I have the resources to make your life Hell. I'm the head of a Thief Guild, after all.~ GOTO FourthJob1-11
IF ~~ THEN REPLY ~As you wish. I'll just tell the Radiant Heart your plan, in all details. I imagine you'll like to meet them after that.~ GOTO FourthJob1-11
IF ~~ THEN REPLY ~You don't want me as your friend. Would you like to find out exactly what I did to Bodhi's followers?~ GOTO FourthJob1-11
IF ~CheckStatLT(Player1,13,CHR)~ THEN REPLY ~I doubt that your leaders would approve of what you just said. Stop being a prima donna, or I'll make sure they'll know everything of your little dramas.~ EXTERN arnman03 FourthJob1-10
IF ~CheckStatGT(Player1,12,CHR)~ THEN REPLY ~I doubt that your leaders would approve of what you just said. Stop being a prima donna, or I'll make sure they'll know everything of your little dramas.~ GOTO FourthJob1-11
IF ~Class(Player1,MAGE_ALL)~ THEN REPLY ~Careful what you're saying. I just need to say a word and you'll become a rat, a nice meal for one of the wild dogs in the Docks.~ GOTO FourthJob1-11
IF ~~ THEN REPLY ~Understood. I won't bother you further.~ EXTERN tb#stivj FourthJob1-6
END
END

CHAIN IF ~~ THEN arnman03 FourthJob1-10
~I doubt that threatening Mitsu was a good idea...~
== arnman04 ~Do you really think I would've gotten here if I let myself be scared by such a cheap <PRO_RACE>? It's final. You should just get used to it.~
EXTERN tb#stivj FourthJob1-6

CHAIN IF ~~ THEN arnman04 FourthJob1-11
~Okay, Okay, let us remain CALM. There's no need to make things harder. For this time I can ignore the issue... but on two conditions.~
= ~This disobeying cannot go unpunished, so you'll have to pay a fine of... say... 500 gold pieces.~
== arnman03 ~Since when do we hand out fines?~
== arnman04 ~... There goes your slice, Cuchul.~
== arnman03 ~Whoops.~
== arnman04 ~In addition to that, you must solve an annoying issue. Something for a spineless male like my colleague.~
== arnman03 ~Hey, I heard that!~
== arnman04 ~There's a woman in the Government District, an independent one, who is practicing a well-paying activity without our permission. Make sure she understands that she's going to make us angry if she keeps doing that.~
END
IF ~~ THEN REPLY ~What exactly is she doing?~ EXTERN arnman03 FourthJob1-12
IF ~~ THEN REPLY ~How can I recognize her?~ EXTERN arnman03 FourthJob1-13
IF ~PartyGoldGT(499)~ THEN DO ~TakePartyGold(500) DestroyGold(500)~ REPLY ~It's a deal. Here's the money for your "fine".~ GOTO FourthJob1-14
IF ~PartyGoldLT(500)~ THEN REPLY ~I'm in, but I don't have the money to pay.~ GOTO FourthJob1-15

APPEND arnman03
IF ~~ THEN FourthJob1-12
SAY ~Lending money at an high rate. In a day she makes more than I am paid in an year!~
IF ~~ THEN REPLY ~How can I recognize her?~ GOTO FourthJob1-13
IF ~PartyGoldGT(499)~ THEN DO ~TakePartyGold(500) DestroyGold(500)~ REPLY ~It's a deal. Here's the money for your "fine".~ EXTERN arnman04 FourthJob1-14
IF ~PartyGoldLT(500)~ THEN REPLY ~I'm in, but I don't have the money to pay.~ EXTERN arnman04 FourthJob1-15
END

IF ~~ THEN FourthJob1-13
SAY ~She's such a eccentric loud-mouth that you can't miss her. Trust Mitsu.~
IF ~~ THEN REPLY ~What exactly is she doing?~ GOTO FourthJob1-12
IF ~PartyGoldGT(499)~ THEN DO ~TakePartyGold(500) DestroyGold(500)~ REPLY ~It's a deal. Here's the money for your "fine".~ EXTERN arnman04 FourthJob1-14
IF ~PartyGoldLT(500)~ THEN REPLY ~I'm in, but I don't have the money to pay.~ EXTERN arnman04 FourthJob1-15
END
END

APPEND arnman04
IF ~~ THEN FourthJob1-14
SAY ~Perfect. Do this low-rank job and your friend will be one of us in all aspects.~
IF ~~ THEN DO ~SetGlobal("tb#ShadowThiefFinePaid","GLOBAL",1)~ GOTO FourthJob1-16
END

IF ~~ THEN FourthJob1-15
SAY ~Why are you traveling with such beggars, Hunter? The long-legs I mentioned will have quite some money with her, so you can just loot her body to pay the fine. Once that is dealt with, you'd better come back with the gold, or I'll get angry.~
IF ~~ THEN GOTO FourthJob1-16
END

IF ~~ THEN FourthJob1-16
SAY ~Good luck!~
IF ~~ THEN UNSOLVED_JOURNAL ~Stivan and the Shadow Thieves

I managed to convince Mitsu to give us another job to ensure Stivan will become one of the Shadow Thieves. I must go to the Government Quarter and force an independent money lender to leave the town. It sounds like she's a loud-mouth usurer.~ DO ~SetGlobal("tb#shadowsthievesJobs","GLOBAL",21)~
EXIT
END
END

CHAIN IF ~NumTimesTalkedTo(0)~ THEN TB#sros Rosalina
~Are you a poorly-paid employee who couldn't afford even the smallest of harems? Or a lusty old man who dreams of dying between the arms of the most beautiful of courtesans?~
= ~Are you a fallen noble who would want to wear once again finery woven by Calimshite slaves? or a simple pleasant who wants to get rid of her old garments?~
= ~Whomever you are and whatever you wish, we can help you! Ask Sounding Coin for a loan!~
= ~Sounding Coin is your trusted money lender. Mortgages up to ten thousand gold pieces in a few minutes and without guarantees!~
== tb#sros1 ~Really? No counter-lending or...~
== tb#sros ~Yes! We just need to know your name and where your children study.~
= ~You can say it loud and clear: finally, easy money for everyone! we're just over four th... *Cough cough*... seven... *Cough cough*... fourt... *Cough cough*... yearly rate. Think of it: it's slightly less than an house a minute!~
== tb#sros3 ~Have you heard, dear? Think of the status we'll obtain if the other nobles knew how much we paid!~
== tb#sros4 ~You're right, darling. The Jyssev family would die of envy!~
== tb#sros ~No more waiting, no more sacrifices! With Sounding Coin you can have all you wish *right now* And you don't even need to walk here to make your payments: our associate will be dispatched to your own house to collect them.~
= ~Let me show him. Come here, Carlino!~
== TB#SCAR ~Me Carlino!~
== tb#sros ~Isn't he lovely?~
= ~For any further question or doubt, take a look at the rules and regulations. They're here, written on the chest of our dear Carlino.~
== tb#sros2 ~It's written in goblinesque!~
== tb#sros ~With Sounding Coin you can even afford lessons in such an unintelligible tongue. Think of when you'll be able to understand every single word the goblins utter as they are hanging you and your family to a tree!~
== tb#sros2 ~...~
== tb#sros ~Come on, show yourselves!~
DO ~ActionOverride("tb#sros1",EscapeArea()) ActionOverride("tb#sros2",EscapeArea()) ActionOverride("tb#sros3",EscapeArea()) ActionOverride("tb#sros4",EscapeArea()) ~
EXIT

CHAIN IF ~IsValidForPartyDialog("tb#stiv") !Allegiance(Myself,ENEMY)~ THEN tb#sros rosalina2
~You, there! You really need some cleaning up. Ask us for a loan, and the rich baths of Waterdeep will remove most of your stains, crusts and foul odors, if not all of them!~
== tb#stivj ~(Snort!) Why does everybody obsess over my personal hygiene?~
BRANCH ~IsValidForPartyDialog("Mazzy")~ BEGIN
== tb#sros ~You can even bring your own girlfriend. Look how they're cute. It's really true, Ao makes them and then pairs them!~
== MAZZYJ ~(Blushes) I'm not her girlfriend, and you're really annoying!~
END
== tb#sros ~You there, would you like a loan?~
END
IF ~~ THEN REPLY ~I don't want your damned money. I'm here by the wish of the Shadow Thieves.~ GOTO MonetaSonante1-1
IF ~~ THEN REPLY ~Now that I think of it.. I do. I need 500 gold pieces.~ GOTO MonetaSonante1-2

APPEND TB#sros
IF ~~ THEN MonetaSonante1-1
SAY ~You want a Shadow Thief? With Sounding Coin *you can*!~
IF ~~ THEN REPLY ~You didn't understand me. Your money-lending is angering the Shadow Thieves, and they asked us to make you leave.~ GOTO MonetaSonante1-3
END

IF ~~ THEN MonetaSonante1-2
SAY ~Great! here, use them as you prefer. I just need to know your name and where your children usually go.~
IF ~~ THEN REPLY ~I doubt it. The Shadow Thieves want you to stop your activity. They really don't like that somebody operates money lending on their own.~ GOTO MonetaSonante1-3
END

IF ~~ THEN MonetaSonante1-3
SAY ~Really? Tell me, whom would I have "angered" exactly?~
IF ~~ THEN REPLY ~Have you ever heard of Mitsu?~ GOTO MonetaSonante1-4
END

IF ~Dead("tb#scar") HPLT(Myself,2)~ THEN flee
SAY ~Cu... Curse you! It won't end here!~
IF ~~ THEN DO ~SetGlobal("tb#ShadowsThievesJobs","GLOBAL",23) EscapeArea()~ EXIT
END
END

CHAIN IF ~~ THEN tb#sros MonetaSonante1-4
~Mi... Mitsu? That stupid, angry little dwarf? CARLINO?!?~
== TB#SCAR ~Y-yes, mistress?~
== tb#sros  ~Didn't I tell you to handle that despicable annoying girl once and for all!~
== TB#SCAR ~Carlino tried but... But the baby halfling did the boo-boos to Carlino!~
== tb#sros  ~The boo-boos, eh? I will break my own wrists, but my slaps will hurt you more!~
== TB#SCAR ~Ow! Ow!!~
== tb#sros  ~Stupid idiot! As for you... I'm sorry for this little diversion. I'm sure we can find a mutually satisfactory agreement.~
= ~How much do you want? One? Two? Three gold pieces? Take the money and leave. I have a job to do.~
== tb#stivj ~(Snort!) Now I'm REALLY angry! Take this!~
== tb#sros  ~Aarghh!~
== tb#stivj ~Heh. Fresh seagull body. I can imagine it hurts to get one in the face.~
== tb#sros  ~Ca... Carlino! Protect your mistress!~
== TB#SCAR ~Yes! Bad customers now handle Carlino!~
END
IF ~~ THEN DO ~ActionOverride("tb#scar",Enemy()) ActionOverride("tb#sros",Enemy())~ EXIT

CHAIN IF WEIGHT #-1 ~OR(2) Global("tb#ShadowsThievesJobs","GLOBAL",23) PartyHasItem("tb#sshi")~ THEN arnman04 final
~Why are you still complaining, Cuchul?~
== arnman03 ~Because I'm tired! I've been writing condolence letters for hours, and my skilled fingers would rather do something else!~
== arnman04 ~The war with the rival guild killed a lot of brothers. Would you rather announce the deaths house by house?~
BRANCH ~Global("tb#ShadowsThievesJobs","GLOBAL",23)~ BEGIN
== arnman04 ~(Sigh) do you have something to say, Hunter? Have you handled that money lender?~
== tb#stivj ~We managed to make her flee, but she's not really "eccentric"; more like "mad".~
== arnman03 ~And her brute?~
== tb#stivj ~If you're talking about the rate collector, he won't be a problem anymore.~
== arnman04 ~Good to know. Those two were a real thorn in the side. My colleague should've handled them, but he obviously failed.~
== arnman03 ~I couldn't turn down that much money!~
== arnman04 ~Speaking of money, do you have enough to pay for the fine?~
== tb#stivj ~Yes. Directly from the hands of that lovely lender.~
END
BRANCH ~PartyHasItem("tb#sshi")~ BEGIN
== arnman04 ~(Sigh) Do you have something to say, Hunter? Did you rescue the Shield of the Hunter?~
== tb#stivj ~*We* rescued it! It would've been impossible by myself.~
== arnman03 ~By Mask's dagger! <CHARNAME> and the boy really stole that mass of tin!~
== arnman04 ~I'm stupefied. I would've never imagined that you'd saw that through. Do you have any idea how much that artifact would fetch on the black market?~
== tb#stivj ~I only know it's as heavy as useless. Don't you think the paladins would try to get it back?~
== arnman04 ~You have nothing to fear. I want to hand it off to Booter - it will surely be safe with him.~
DO ~TakePartyItem("tb#sshi") DestroyItem("tb#sshi")~
END
== arnman04 ~Well now... If things are... I mean...~
== arnman03 ~What Mitsu wants to say is that now you're a true Shadow Thief. Welcome, Brother!~
== tb#stivj ~Yeah! I made it! Yes!~
== arnman03 ~When do we begin?~
== tb#stivj ~I will be back as soon as <CHARNAME> will have rescued something he cannot just give up. Heh.~
== arnman04 ~Yes, Aran mentioned that possibility. Try not to get yourself killed, Stivan. I'm getting used to the idea of having you on the team.~
== tb#stivj ~I'll try my best not to let you down. Once I'm back, we'll be the deadliest of trios! We will call ourselves...~
= ~*Ahem* The name isn't really a priority right now.~
= ~<CHARNAME>, I... don't know what else to say, except 'thanks'. Really.~
== arnman03 ~Take care of yourself!~
END
IF ~~ THEN SOLVED_JOURNAL ~Stivan and the Shadow Thieves

Mitsu knows of our victory. Now Stivan is a full-fledged Shadow Thief, and finally has somewhere he can call 'home'.~ DO ~SetGlobal("tb#ShadowsThievesJobs","GLOBAL",102)~
EXIT

