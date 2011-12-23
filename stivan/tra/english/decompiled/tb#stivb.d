BEGIN TB#STIVB

IF ~InParty("tb#stiv")
InParty(Player1)
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0)
GlobalGT("Chapter","GLOBAL",2)
Global("tb#StivanPCTalk","GLOBAL",3)~ THEN stivanPC3
SAY ~Plans for the future: hopes, dreams, ideas... Do you have any, <CHARNAME>?~
IF ~~ THEN DO ~SetGlobal("tb#StivanPCTalk","GLOBAL",4)~ REPLY ~I live by the day. My condition as a Child of Bhaal doesn't leave space for such things.~ GOTO StivanPC3-1
IF ~~ THEN DO ~SetGlobal("tb#StivanPCTalk","GLOBAL",4)~ REPLY ~A welcoming home, a warm fire and my beloved by my side. I would want nothing else.~ GOTO StivanPC3-1
IF ~~ THEN DO ~SetGlobal("tb#StivanPCTalk","GLOBAL",4)~ REPLY ~Money. I would invest it as much as possible, to live without fear of the future.~ GOTO StivanPC3-1
IF ~~ THEN DO ~SetGlobal("tb#StivanPCTalk","GLOBAL",4)~ REPLY ~I like adventure. I think I'll continue traveling and walking up to challenges until my body will allow to do so.~ GOTO StivanPC3-1
END

IF ~~ THEN StivanPC3-1
SAY ~I understand. Right now my life is tied to yours, but I imagine it won't always be like this. When you'll be done with your mission I'll be close to adulthood, and I imagine... Imagine that...~
IF ~Race(Player1,HALFLING)~ THEN REPLY ~Adulthood? Stivan, how old are you, exactly?~ GOTO StivanPC3-2
IF ~!Race(Player1,HALFLING)~ THEN REPLY ~Adulthood? Stivan, how old are you, exactly?~ GOTO StivanPC3-3
END

IF ~~ THEN StivanPC3-2
SAY ~Heh. I'm twenty-nine and, as you well know, we halflings reach adulthood at thirty.~
IF ~~ THEN GOTO StivanPC3-4
END	

IF ~~ THEN StivanPC3-3
SAY ~Heh. I'm twenty-nine. Halflings reach adulthood at thirty, although in some places you must wait some further years.~
IF ~~ THEN GOTO StivanPC3-4
END

IF ~~ THEN StivanPC3-4
SAY ~If... If mommy were alive, she would've build a sling with her own hands, as is tradition in such cases, but I'm afraid I will have to do without.~
= ~I'd really like to know something about my future. There's only one thing I know: I don't want to keep living on the streets. Some people like to believe that poor people love their lot in life, but let me assure you that it is not so.~
IF ~Global("WorkingForAran","GLOBAL",1)~ THEN GOTO StivanPC3-4a
IF ~!Global("WorkingForAran","GLOBAL",1)~ THEN GOTO StivanPC3-4b
END

IF ~~ THEN StivanPC3-4a
SAY ~That said, I think that your recent alliance with the Shadow Thieves is a opportunity I just can't give up.~
= ~I could advance in their ranks, and reach some well-respected place. Not as the leader, though: the Lords of Shadows always end up badly, and I don't really want to find myself with a knife in my back, or worse.~
= ~What do you think about it, <CHARNAME>?~
IF ~Class(Player1,THIEF_ALL)~ THEN DO ~SetGlobal("tb#ShadowsThievesJobs","GLOBAL",1)~ REPLY ~I say that joining the Shadows of Amn is the best idea you could ever have, brother!~ GOTO StivanPC3-5
IF ~~ THEN DO ~SetGlobal("tb#ShadowsThievesJobs","GLOBAL",1)~ REPLY ~You'll have my support, should you wish for it, but everything else is up to you. Don't you think it is time for you to prove your own worth?~ GOTO StivanPC3-5
IF ~~ THEN DO ~SetGlobal("tb#ShadowsThievesJobs","GLOBAL",1)~ REPLY ~You look sure and determined, Stivan. If that's what you believe best, I can't help but encourage you.~ GOTO StivanPC3-5
IF ~~ THEN DO ~SetGlobal("tb#ShadowsThievesJobs","GLOBAL",1)~ REPLY ~It doesn't look like a good idea. You should rather reclaim your own lands. They're yours by right, and with some good worth you could bring the Fristbrowfine name back where it should be.~ GOTO StivanPC3-6
IF ~~ THEN DO ~SetGlobal("tb#ShadowsThievesJobs","GLOBAL",1)~ REPLY ~I wouldn't know. I think the decision is yours and yours alone.~ GOTO StivanPC3-6
END

IF ~~ THEN StivanPC3-5
SAY ~Yes... Yes, it sounds like a great idea! I'd surely have a future as a spy and I already have an idea for my code name: the Hunter!~ 
IF ~~ THEN GOTO StivanPC3-7
END

IF ~~ THEN StivanPC3-6
SAY ~My lands? I... I don't know if I will be able. It's been so long...~
= ~No. I don't really feel like it. I think I must begin anew, and the Guild where we're going sounds like a great start.~ 
IF ~~ THEN GOTO StivanPC3-7
END

IF ~~ THEN StivanPC3-7
SAY ~Heh. I thank you for having listened to me. Let us waste no more time, then, and go to what will soon be my new home!~
IF ~~ THEN EXIT
END

IF ~~ THEN StivanPC3-4b 
SAY ~While I'm a little frightened by Tomorrow, I thought long on what I should do, and decided that I should... *Ahem*... I should take back my own lands.~
IF ~~ THEN DO ~SetGlobal("tb#StivanVineyards","GLOBAL",1)~ REPLY ~You don't sound so sure...~ GOTO StivanPC3-8
IF ~~ THEN DO ~SetGlobal("tb#StivanVineyards","GLOBAL",1)~ REPLY ~Good to know. Need any help?~ GOTO StivanPC3-9
IF ~~ THEN DO ~SetGlobal("tb#StivanVineyards","GLOBAL",1)~ REPLY ~It's not up to me to decide what is right for you. Think for yourself and do what you feel best.~ GOTO StivanPC3-11
IF ~~ THEN DO ~SetGlobal("tb#StivanVineyards","GLOBAL",1)~ REPLY ~To tell the truth, I don't agree. Your vineyards are in your past; if you want to think about the future, you should think of something else, don't you agree?~ GOTO StivanPC3-10
END

IF ~~ THEN StivanPC3-8
SAY ~Fear plays bad tricks, but I won't let it overcome me.~
IF ~~ THEN GOTO StivanPC3-11
END

IF ~~ THEN StivanPC3-9
SAY ~Oh, no. I thank you for the offer, but I feel that this time I should do this alone and with my own strengths.~ 
IF ~~ THEN GOTO StivanPC3-11
END

IF ~~ THEN StivanPC3-10
SAY ~No. I see my future as the correcting of fixable mistakes, luckily.~
IF ~~ THEN GOTO StivanPC3-11
END

IF ~~ THEN StivanPC3-11
SAY ~I made the mistake of not trusting myself, and I let the most precious thing in my family be taken away. I won't repeat that mistake twice.~
= ~It will be hard starting out, but mommy always said that which doesn't kill you makes you stronger. And one day... One day I'll invite you to my country farm, where you'll drink again of the best wine to ever wet your own lips. Heh.~
IF ~~ THEN EXIT
END

CHAIN 
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanViconia","GLOBAL",0)~ THEN TB#STIVB stivan-viconia-1
~I'm glad you were saved from those fanatics, Viconia. I can't imagine they would've hurt you just for your skin color. I always said that clerics are idiots and should be...~
= ~... Viconia, don't look at me like that. You're making me scared.~
DO ~SetGlobal("tb#StivanViconia","GLOBAL",1)~
== BVICONI ~I can't tell how I should consider you, sakphul. There's something in you that makes you different from others of your kind.~
== TB#STIVB ~That is true. You could call me a "town" halfling, since I was born and grew up here, in Athkatla, and not one of the villages as is custom for my race.~
== BVICONI ~But for many things you're exactly like your furry feet friends. Take your own figure: it's even worse than that of the tree-huggers. Even the lowliest of drows would break you as easily as a small branch.~
== TB#STIVB ~I thank you for the compliment, Viconia.~
== BVICONI ~And your annoying habit of handling pins and other lock-picking tools? Isn't that usual for others of your kind to take part in such vile activities?~
== TB#STIVB ~Come on... You're making me blush.~
== BVICONI ~Not to mention your ridiculous hatred for those birds you call seagulls. Don't you have anything better to do than hunting them all day long??~
== TB#STIVB ~*Ahem* You know very well that my reasons are perfectly good, Viconia. If somebody killed your own family, wouldn't you look for vengeance?~
== BVICONI ~No.~
== TB#STIVB ~... No? I thought... well, that...~
== BVICONI ~You're starting to get on my nerves, little one. You talk too much for your own good.~
EXIT

CHAIN 
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanViconia","GLOBAL",2)~ THEN TB#STIVB stivan-viconia-3
~Viconia, did they ever tell you that you're a really beautiful drow?~
DO ~SetGlobal("tb#StivanViconia","GLOBAL",3)~
== BVICONI ~Hmm... Are you feeling well, sakphul? I would've never expected such a compliment from one of your race.~
== TB#STIVB ~I was just giving you a compliment. Do you think halflings unable to appreciate a drow's beauty?~
== BVICONI ~No, instead. My own figure is so great that it could blind anyone. Including the small people.~
== TB#STIVB ~Er... Modesty isn't your strong point...~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanViconia","GLOBAL",3)~ THEN BVICONI stivan-viconia-4
~I couldn't help but notice, little one, that you never allow yourself any carnal pleasure. Are you one of those males that only act on female orders, then?~
DO ~SetGlobal("tb#StivanViconia","GLOBAL",4)~
== TB#STIVB ~(Blushes) I'm just waiting for the right person.~
== BVICONI ~But right. Even you are one of those idiots who claim to look for... How do you surface people call it?~
== TB#STIVB ~The twin soul?~
== BVICONI ~Exactly. Somebody with whim to live all life and share... What? Every days' pains? Old age?~
== TB#STIVB ~Don't be so restrictive, Viconia. Life holds much more: dreams, emotions, hopes...~
== BVICONI ~Bah. As far as I am concerned, there's nothing more boring or stupid than always knowing the same person.~
== TB#STIVB ~Ah, really?~
== BVICONI ~In the Underdark women are free to use any men to satisfy their own lusts. We never tie to somebody forever: our protectors, in fact, cease to be so the instant they become useless in battle or in bed.~
== TB#STIVB ~I'm so glad I'm not a drow male.~
== BVICONI ~You should be sad of it, instead. My own race can give such a pleasure that it would break surface-lings like you. One day, when I feel like it...~
== TB#STIVB ~(Gulp) ... Yes?~
== BVICONI ~... I'll tell you of some erotic tricks imagined and used by yours truly. I am sure you'll be left speechless.~
== TB#STIVB ~Oh, er... Okay, Viconia. Sure. Whenever you wish.~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanViconia","GLOBAL",4)~ THEN BVICONI stivan-viconia-5
~... And so it was that, on the apex of pleasure, he had an heart stroke. His guards thought I did so intentionally, and so I was forced to flee. A most annoying situation, but it taught me how worthless are rivvil in bed.~
== BVICONI IF ~Race(Player1,HUMAN) Global("SleptViconia","GLOBAL",1)~ THEN ~True, <CHARNAME>?~
== TB#STIVB ~Er... My compliments, Viconia. Really extreme.~
DO ~SetGlobal("tb#StivanViconia", "GLOBAL",5)~
== BVICONI ~I assume you want a demonstration of what I just told you, hmm? Maybe on you...?~
== TB#STIVB ~(Gasp!) Well, I...~
== BVICONI ~Would you like my skilled hands to rub your body, making it burn with a passion you can't hold back?~
BRANCH ~Global("AnomenIsNotKnight","GLOBAL",1)~ BEGIN
== TB#STIVB ~Ma... Maybe later, eh?~
== BVICONI ~What?! Are you turning me down?~
== TB#STIVB ~Er... It's really an intriguing offer, Viccy, but...~
== BVICONI ~Get out of my way, sakphul, before I make an eunuch out of you! You disgust me by your own lack of potency!~
END
BRANCH ~Global("AnomenIsNotKnight","GLOBAL",0)~ BEGIN
== TB#STIVB ~A... Are you serious...?~
== BVICONI ~You can forget about it, sakphul. I'd remain chaste for life, rather than bedding an half-man. Did you really believe I was interested in such as you?~
== TB#STIVB ~But... But you...~
== BVICONI ~Tsk. Poor deluded fool.~
END
EXIT


CHAIN 
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanViconia","GLOBAL",5)~ THEN TB#STIVB stivan-viconia-6
~Given the looks you're sneaking at me, I imagine you lack the courage to excuse yourself to the poor way you treated me.~
DO ~SetGlobal("tb#StivanViconia","GLOBAL",6)~
== BVICONI ~I have no intention of apologizing myself to you, deluded fool. And for what, either way? For having been honest?~
== TB#STIVB ~Would you then care to explain why you keep getting near to me as if you wished to tell something?~
== BVICONI ~My being forced to march next to you doesn't mean I want to talk, stupid idiot.~
== TB#STIVB ~And what about when you open your mouth without saying a word? Am I to assume that you're fully breathing?~
== BVICONI ~Your smell is so strong, sakphul, I must breath through my mouth when talking to you.~
== TB#STIVB ~(Sigh) When you wish, Viconia. I'm in no hurry.~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanViconia","GLOBAL",7)~ THEN BVICONI stivan-viconia-7
~I... I believe I should excuse myself to you for what I said last time, Stivan.~
DO ~SetGlobal("tb#StivanViconia","GLOBAL",8)~
== TB#STIVB ~Heh. I wish to reply "it's about time", but I think I'll keep that to me.~
== BVICONI ~You just said so, idiot.~
== TB#STIVB ~Whoops. I'm sorry. Friends as before?~
== BVICONI ~I will take you again into consideration, if that's what you're asking.~
== TB#STIVB ~Heh. I'm so glad things are working again between us, Viccy.~
== BVICONI ~You're starting badly, sakphul. Really badly.~
EXIT

CHAIN 
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
Global("AnomenIsNotKnight","GLOBAL",0)
CombatCounter(0)
Global("tb#StivanAnomen","GLOBAL",0)~ THEN TB#STIVB stivan-anomen-1
~I always wondered, Anomen, why would you fight in the name of Helm. Amongst all gods, he's known as the coldest one.~
DO ~SetGlobal("tb#StivanAnomen", "GLOBAL",1)~
== BANOMEN ~Bullshit! Let me tell you, halfling, that Helm's spirit lightens my heart and guides my blade in battle!~
== TB#STIVB ~"Helm's spirit"? Sure it wasn't just hormones?~
== BANOMEN ~I won't deign your sarcasm of a reply.~
== TB#STIVB ~But of course. The fearless Anomen would never stoop to answering such a insult. Tell me this, then: were you this superior even when your leaders ordered you to clean the asses of their horses?~
== BANOMEN ~Repeat that and it'll be your tongue.~
== TB#STIVB ~Truly. I was wondering how much you were going to resist.~
EXIT

CHAIN 
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
Global("AnomenIsNotKnight","GLOBAL",0)
CombatCounter(0)
Global("tb#StivanAnomen","GLOBAL",1)~ THEN TB#STIVB stivan-anomen-2
~Anomen, it looks like your "respectable" clerical ethic doesn't allow you to use weapons like the sword. Isn't that a shame?~
DO ~SetGlobal("tb#StivanAnomen","GLOBAL",2)~
== BANOMEN ~Not at all. I can appropriately serve Helm even with a mace.~
== TB#STIVB ~After all the trouble you went through to learn how to wield a blade... such a waste of time and effort, dare I say.~
== BANOMEN ~Nothing stops me from remembering my old skills and kill you where you stand.~
== BKELDOR IF ~IsValidForPartyDialog("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN ~I recall repeating a lot of times, young Anomen, that you must learn to control yourself. The Order would never approve of such rash action.~
== BANOMEN IF ~IsValidForPartyDialog("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN ~Sir Keldorn, I do recall repeating you a lot of times I do *not* want your suggestions!~
== TB#STIVB ~(Yawn) You're tiring me with your baseless menaces... Come on, Anomen: don't waste time on formalities and apologize yourself to me.~
== BANOMEN ~What?! It was you who started with the insults!~
== TB#STIVB ~Uhm... That might be so. Even so, I thought that the zealot servants of Good like you were always quick in wanting to end a conflict...~
== BANOMEN ~Forget about it, halfling! Saying sorry would be the start of further insults!~
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
~You look different since you failed your Test, Anomen. You look more relaxed, calm, as if you got rid of too small clothes.~
DO ~SetGlobal("tb#StivanAnomen","GLOBAL",3)~
== BANOMEN ~Yes, you're right. I'm still angry at my expulsion from the Order, but I feel...~
== TB#STIVB ~Free?~
== BANOMEN ~Free from servitude, yes. Obeying and adapting to all those rules was more constricting than I thought.~
== TB#STIVB ~Had you just listened from the first moment to the critiques I sent those fools' way...~
== BANOMEN ~They always said: "better late than never".~
== TB#STIVB ~Right. Yet you still serve Helm.~
== BANOMEN ~The All-Seeing didn't take my powers back from me, halfling, which means that my actions didn't dishonor Him.~
== TB#STIVB ~The Order thinks differently.~
== BANOMEN ~To Hell with the Order! The only thing that matters are the facts. And they speak loud and clear.~
EXIT


CHAIN 
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanKeldorn","GLOBAL",0)~ THEN TB#STIVB stivan-keldorn-1
~You're getting old, Keldorn. I understand that it's hard to accept for a sixty years old, but... accept this: it is time to put the sword back into its sheathe.~
DO ~SetGlobal("tb#StivanKeldorn","GLOBAL",1)~
== BKELDOR ~The fight against evil is never-ending, halfling. I'll keep on fighting for as long as Torm will lend me the strength to do so.~
= ~By the way: I'm not sixty years old.~
== TB#STIVB ~I know: I wanted to spare you five years for reasons of... tact.~ 
= ~Either way, seeing your determination, I suggest you to be careful. You could be killed by a stronger foe at any moment or, if the worst comes to worst, be crushed by the weight of your own armor.~
== BKELDOR ~Very funny. I, at least, could and still can carry it. I doubt that your think shoulders would be capable of the same.~
EXIT

CHAIN
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LadyMaria","GLOBAL",5)
Global("tb#StivanKeldorn","GLOBAL",1)~ THEN TB#STIVB stivan-keldorn-4
~*Ahem* I'm more or less happy that matters between you and your wife solved themselves, but your age is still an issue.~
DO ~SetGlobal("tb#StivanKeldorn","GLOBAL",2)~
== BKELDOR ~As I already said, I don't live my years as a weight. Wrinkles aren't but a trace of the time, not unlike those in the trees' hearts.~
== TB#STIVB ~So I must assume that you two stayed together as a distraction. You know, it happens in a lot of marriages, where you end up staying together out of laziness.~
== BKELDOR ~Another word on Lady Maria and it'll be your own last.~
== TB#STIVB ~Heh. You can calm yourself, grandpa. I had enough fun with you for now.~
== BKELDOR ~... Enough, <CHARNAME>. Let it be known that, the next time your doubt ally insults me, I'll follow whatever my honor dictates.~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
AreaType(DUNGEON)
CombatCounter(0)
Global("tb#StivanEdwinInDungeon","GLOBAL",0)~ THEN BEDWIN StivanEdwinInDungeon
~What do you find so interesting in that wall, halfling? Do you think it acceptable to rub it while softly uttering words?~
DO ~SetGlobal("tb#StivanEdwinInDungeon","GLOBAL",1)~
== TB#STIVB ~I like to talk with the wall, Edwin. He's the only one who never contradicts me.~
== BEDWIN ~(He's a dangerous person. I've always said so).~
EXIT

CHAIN 
IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanEdwin","GLOBAL",0)~ THEN TB#STIVB stivan-edwin1
~Edwin, why don't you talk a bit about your Thay? It's a place where I've never been, and would like to know more about it.~
DO ~SetGlobal("tb#StivanEdwin","GLOBAL",1)~
== BEDWIN ~Thay isn't "mine", stupid halfling (but it will soon be). Either way, if you want to know more about a place you wouldn't survive a single day in, you should ask the simians' touristic bureau.~
== TB#STIVB ~How much hate, how much hate... Have you ever wondered where does your animosity come from?~
== BEDWIN ~I wonder a lot of things, little fly, but I fear they all transcend your limited gibberling's understanding. (Edwin, how can you hope that this human refuse knows the meaning of the term "transcend"? I should find something easier...)~
= ~(Bah! Living among these illiterate peasants is destroying my language!)~
== TB#STIVB ~You're a frustrated man, Edwin.~
== BEDWIN ~My dear sodomite simian, would you like to learn new ways to use bananas? You see, there are holes in your body where--~
== TB#STIVB ~That's an interesting idea, wizard. You must have surely tried that yourself.~
== BEDWIN ~NO! (That damned bitch in the Docks must have talked! I should have shut her up with a Fire Ball, not just knock her out!)~
== TB#STIVB ~Poor Edwin. Betrayed by one word too much. You should never drink before bedding a wench...~
== BEDWIN ~You should shut your mouth, halfling, before I... I... (By the gods! They're tricking me!)~
== TB#STIVB ~... <CHARNAME>, it would be best to resume whatever we were doing before stopping. Edwin... is losing control.~
EXIT

CHAIN 
IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
Global("tb#StivanEdwinScroll","GLOBAL",1)
CombatCounter(0)
Global("tb#StivanEdwin","GLOBAL",1)~ THEN TB#STIVJ stivan-edwin-2
~Uhm... Where the hell did he put that scroll? It's been the first time I've been taking a peek in his backpack, but I still haven't found it...~
DO ~SetGlobal("tb#StivanEdwinScroll","GLOBAL",2)~
= ~Uh? And what's this? I'm sure it wasn't there the last -- *EEKKK*!~
== EDWINJ ~Even a stupid mouse trap can stop a snooping simian.~
== TB#STIVJ ~Da... Damn you, wizard! Look how my hand's swollen!~
== EDWINJ ~Take a look at my belongings once more, halfling, and you'll have far worse surprises.~
== TB#STIVJ ~<CHARNAME>, let me beg you! Since the scroll is the party's, I have the right to take a peek at it as I wish!~
END
IF ~~ THEN REPLY ~Stivan is right, Edwin. Take out the scroll.~ EXTERN EDWINJ StivanEdwin1
IF ~Global("EdwinRomanceActive","GLOBAL",2)~ THEN REPLY ~I'm interested in that artifact as well, Edwin. Be a good pumpkin and show it.~ EXTERN EDWINJ StivanEdwin2
IF ~~ THEN REPLY ~An interesting argument, Stivan. Am I mistaken, or you only remember about being in this party when it's in your own interest to do so?~ EXTERN TB#STIVJ StivanEdwin3
IF ~~ THEN REPLY ~I want no part in affairs that don't matter me. Handle this by yourselves.~ EXTERN EDWINJ StivanEdwin1

APPEND EDWINJ
IF ~~ StivanEdwin1
SAY ~No! I won't allow some stupid simian to put its paws on my scroll!~
IF ~~ THEN EXTERN EDWINJ StivanEdwin5
END 
END

CHAIN
IF ~~ THEN EDWINJ StivanEdwin2
~Pu... Pumpkin?~ 
= ~Foolish woman, haven't you yet understood that I'm not you vegetable?!~
== TB#STIVJ ~Don't change the subject! Edwin, take that scroll out!~
END EDWINJ StivanEdwin5

APPEND TB#STIVJ
IF ~~ StivanEdwin3
SAY ~Er... Well, I...~
= ~Don't change the subject! Edwin, take that scroll out!~
IF ~~ THEN EXTERN EDWINJ StivanEdwin5
END
END

CHAIN EDWINJ StivanEdwin5
~Snoop in my pack as much as you want, pathetic creature. You will *never* find it. (Obviously, should I say. Only a genius like me would imagine to hide it in his unmentionables).~
== EDWINJ IF ~Global("EdwinRomanceActive","GLOBAL",2)~ THEN ~(You're really cool, Edwin. Look at <CHARNAME>'s face. Open mouth, big eyes... even an idiot would figure out that those are clear signals of the vast admiration she has for me).~
= ~(... Well, she can close her mouth now. She looks like an idiot standing like that).~
== TB#STIVJ ~...~
== EDWINJ ~... What? Why are you looking at me like that? Your brain's gears have jammed?~
== TB#STIVJ ~Heh. It's really true that you must always look in the most unexpected places.~
== EDWINJ ~W... Why are you getting close? Shoo!~
== TB#STIVJ ~Stay still, Edwin...~
== EDWINJ ~What... What *the hell* are you doing? Hands off, you pig! Don't touch me! Don't touch my... No! NO! NOOOOO!~
== TB#STIVJ ~Yeah! Mine at last!!~
== EDWINJ ~DO NOT DARE...!!!~
DO ~SetGlobal("TB#StivanSusanScene","GLOBAL",1) StartCutSceneMode() StartCutScene("tb#ssus1")~
EXIT

BEGIN TB#SSUS
IF ~!Global("tb#StivanSusanScene","GLOBAL",2)~ THEN 0
SAY ~*Squeak*!~ [ GAM_48 ] 
IF ~~ THEN EXIT
END

CHAIN IF ~Global("TB#StivanSusanScene","GLOBAL",2)~ THEN TB#SSUS tb#sus
~... You must give me...~
= ~Uh? Where... Where am I?~
== TB#STIVJ ~Wow! And who would you be?~
== EDWINJ ~It's her! She's the bitch from the Docks!!~
== TB#SSUS ~Hey, sexy. Do you want to take a look at me titties?~
== EDWINJ ~Forget about it! You're about to figure out what happens to those who talk too much!~
DO ~SetGlobal("TB#StivanSusanScene","GLOBAL",3) StartCutSceneMode() StartCutScene("tb#ssus2")~
EXIT

CHAIN IF ~Global("TB#StivanSusanScene","GLOBAL",4)~ THEN EDWINJ susan-finale
~Justice is done. As for you, halfling...~
== TB#STIVJ ~The power... I held... the power...~
== EDWINJ ~I'm feeling tempted to make you explode right now, but I'll keep my anger in check for the moment. You'll suffer your proper punishment after I've understood everything from that scroll (and it will be harsh for you then).~
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
SAY ~<CHARNAME>, the situation is getting insufferable!~
IF ~~ THEN DO ~SetGlobal("EdwinComplainsOfStivan","GLOBAL",1)~ REPLY ~(Yawn) What do you want? I was sleeping...~ GOTO EdwinComplainsOfStivan1
IF ~~ THEN DO ~SetGlobal("EdwinComplainsOfStivan","GLOBAL",1)~ REPLY ~I hope you woke me up for a valid reason, wizard.~ GOTO EdwinComplainsOfStivan3
IF ~Global("EdwinRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("EdwinComplainsOfStivan","GLOBAL",1)~ REPLY ~If you want to spend the night with me, Edwin, you should say so before I head to bed. I'm sleepy right now...~ GOTO EdwinComplainsOfStivan2
IF ~Global("EdwinRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("EdwinComplainsOfStivan","GLOBAL",1)~ REPLY ~Finally! I've awaited this long to bring you to the brink of passion! Now let it explode and trample us!!~ GOTO EdwinComplainsOfStivan2
IF ~~ THEN REPLY ~Shut up and get back to bed...~ GOTO EdwinComplainsOfStivan3
END

IF ~~ THEN EdwinComplainsOfStivan1
SAY ~Don't yawn in my face, wooden-headed idiot! (Maybe I should stop here. I don't want to extinguish my personal insult reservoir).~
IF ~~ THEN GOTO EdwinComplainsOfStivan4
END

IF ~~ THEN EdwinComplainsOfStivan3
SAY ~How you dare treat me like that, insolent <PRO_RACE>? Should I remind you that you have the great Edwin Odesseiron before you? The next time you offend me you'll be ashes!~
IF ~~ THEN GOTO EdwinComplainsOfStivan4
END

IF ~~ THEN EdwinComplainsOfStivan2
SAY ~What the hell are you saying, woman? I have no sexual desires and, had I them, I doubt a clumsy monkey such as you would be able to fulfill them! (Keep going like this, Edwin. The more you treat her like this, the more she'll be wanting).~
IF ~~ THEN GOTO EdwinComplainsOfStivan4
END

IF ~~ THEN EdwinComplainsOfStivan4
SAY ~That halfling is a problem for all of us. Every night, he's always thrashing in his sleep or uttering random words. How could I ever rest if my sleep is disturbed by that simian?~
IF ~~ THEN REPLY ~Is he disturbing the others as well? And why haven't they complained?~ GOTO EdwinComplainsOfStivan5
IF ~~ THEN REPLY ~All right, I got it: as soon as we're awake I'll ask him about this.~ GOTO EdwinComplainsOfStivan6
IF ~Global("EdwinRomanceActive","GLOBAL",2)~ THEN REPLY ~If you wish, I could talk to him and tell him his disquiet sleep disturbs my little tomato.~ GOTO EdwinComplainsOfStivan7
END

IF ~~ THEN EdwinComplainsOfStivan5
SAY ~Who, these simians? They obviously lack the courage to tell so. (I wasn't expecting such a question.... maybe <PRO_HESHE>'s starting to understand the world around him? No, it must have been a random spark of intelligence in <PRO_HISHER> empty head).~ 
IF ~~ THEN REPLY ~Understood, Edwin: tomorrow I'll speak to him and see if anything could be done.~ GOTO EdwinComplainsOfStivan6
END

IF ~~ THEN EdwinComplainsOfStivan7
SAY ~... Little tomato? <CHARNAME>, did you take one blow too many to the head or are you simply getting stupider?~
IF ~~ THEN REPLY ~Understood, Edwin: tomorrow I'll speak to him and see if anything could be done.~ GOTO EdwinComplainsOfStivan6
END

IF ~~ THEN EdwinComplainsOfStivan6
SAY ~Phew... You finally got it! (By the bones of Elminster. This <PRO_MANWOMAN> is as thick-headed as a banshee!)~
IF ~~ THEN EXIT
END
END

CHAIN 
IF ~Global("tb#StivanEdwinaDrunk","GLOBAL",1)~ THEN TB#STIVJ stivanedwinpresleep
~Would you like a drink, miss Odesseiron? Would you prefer some dark wine from Berduska or the soft, whine one from Tethyr?~
DO ~SetGlobal("tb#StivanEdwinaDrunk","GLOBAL",2)~
== EDWINJ ~Fetch me a beer, halfling, and leave no tip.~
== TB#STIVJ ~But, Miss Edwina! How many times have I told you not to dirty your mouth with such talk?~
== EDWINJ ~I'll dirty the floors of this tavern with your blood if you don't shut up. I-want-a-beer!~
== TB#STIVJ ~Absolutely not. What you need is a selection of good wines carefully picked out by me.~
== EDWINJ ~I never doubted that miniature simians had a small brain, but it looks like your head holds an enormous hole. Is I so hard to GO to the counter, BUY a beer and TAKE it to me?~
== TB#STIVJ ~You talk too much, Miss Edwina, and inappropriately on top of it. Let a connoisseur like yours truly guide you.~
== EDWINJ ~Not even dea--~
== TB#STIVJ ~Since you sound so glad of this, I say we begin with a small glass of red wine. It pairs nicely with your vest, eh?~
== EDWINJ ~It's a robe, idio-- Gulp!~
== TB#STIVJ ~Good, isn't it? The one they serve in this tavern is one of the sweetest. Would you like some brandy from Cormyr next?~
== EDWINJ ~Forget about it! I have no intention to continue gulping down the concoctions of this place!~
== TB#STIVJ ~(Sigh) So be it. I'm tired of arguing. Next time I'll talk to a man. A *real* male.~
== EDWINJ ~Next.~
== TB#STIVJ ~Excellent. Would you like some dry wine from Arabella?~
== EDWINJ ~Give it to me.~
== TB#STIVJ ~An hippopotamus is finer than you, Miss Edwina.~
== EDWINJ ~Gulp!~
== TB#STIVJ ~Uhm... And what's this? Alurlyath wine?~
== EDWINJ ~What sort of name is "Alurlyath"?~
== TB#STIVJ ~I have no idea, I've never tried it. (Sniff sniff) By its smell, it must be very strong. It would be best to water it down.~
== EDWINJ ~Give me a glass as it is, halfling. I'm not a woman.~
== TB#STIVJ ~Ah no?~
== EDWINJ ~POUR!~
== TB#STIVJ ~You forgot the magic word, Miss Edwina.~
== EDWINJ ~But of course.~
= ~*NOW*!~
== TB#STIVJ ~(Sigh) You're hopeless. Here, all yours.~
== EDWINJ ~Gulp!~
= ~Is there *HIC!*... anything else?~
== TB#STIVJ ~No, that was the last one they had. A passable selection, after all.~
= ~But... Miss Edwina, your face is all red! Did you drink too much, perhaps?~
== EDWINJ ~I'm not drunk. I'm just *HIC!* tired and *HIC!* tired and *HIC!* tired and...~
== TB#STIVJ ~I noticed you're tiered. I have an headache as well... Let me take you to your room, my dear.~
DO ~RestParty()~
EXIT

CHAIN 
IF ~Global("tb#StivanEdwinaDrunk","GLOBAL",3)~ THEN EDWINJ stivanEdwinAfterNight 
~(What a bad night... I dreamed I spent all night sleeping with that halfling. I'm so glad it was just a nightmare).~
= ~(Uhm... I should get up, but I feel as if there's some weight on my chest... Bah! I must have eaten something heavy).~
= ~(Note of the day: I should complain with the cook of this squalid place).~
= ~(But...)~
= ~(Wait...)~
= ~(I did *not* eat last night! Then why am I feeling so heavy? I feel all over my body...)~
= ~(Calm down, Edwin. Breathe deeply and try to recall everything that has happened in this lowly tavern).~
= ~(...)~
= ~(... The halfling got you drunk, alright. But next? He brought he into my room and..)~
= ~(...)~
= ~(Bah! I can't remember anything! It's a pity I can't cast divination spells – this one of the few times it would've been useful).~
= ~(This heaviness isn't leaving me. It's starting right here, on my breasts. I also feel some itch in my cleavage. More on the side of Patricia than on Thelma...)~
DO ~SetGlobal("tb#StivanEdwinaDrunk","GLOBAL",4)~
== TB#STIVJ ~... Patricia? You called one of your breasts Patricia?~
== EDWINJ ~AHHHHHH!~
== TB#STIVJ ~*Ouch!* You didn't need to throw me on the floor like that!~
== EDWINJ ~W-W-W-What...?!~
== TB#STIVJ ~You're more beautiful than ever after waking up, Miss Edwina.~
== EDWINJ ~WHAT THE HELL WERE YOU DOING ON TOP OF ME?!~
== TB#STIVJ ~I was sleeping, before you started a monologue.~
== EDWINJ ~We... we slept together? That's what you're saying?~
== TB#STIVJ ~Exactly.~
== EDWINJ ~BY-~
= ~BY THE HEAVENS! I slept with the halfling!~
== TB#STIVJ ~Well, I never slept with a woman before this time, after all.~
== EDWINJ ~NOOOOOOO!!!!!!!~
== TB#STIVJ ~It doesn't sound that bad, Miss Edwina. Next time I'll try and remember to sleep next to you, rather than on top of you.~
== EDWINJ ~My... My first time as a woman... Deflowered by an halfling...~
== TB#STIVJ ~Deflowered? What are you talking about? We simply fell asleep while you were slapping me. Did you imagine that...~
== EDWINJ ~...~
== TB#STIVJ ~The horror! How can you think such a thing?~
== EDWINJ ~It would have been a privilege, *idiot*! Either way, you aren't telling the truth. You abused *me*.~
== TB#STIVJ ~You know fully well that I would've never done that. Especially with you.~
== EDWINJ ~Bah! Do you think you can get off this that easily? You're a pervert. You possessed me.~
== TB#STIVJ ~Edwin... Miss Edwina, If you don't believe my words you're free to inspect your continued wholesomeness by yourself.~
== EDWINJ ~That's what I was about to do! (Check flora e fauna, Edwin, *now*).~
= ~(Tap tap)~
= ~(Strish strish)~
= ~(Paf paf)~
= ~(Strush strush)~
= ~... Uhh...~
== TB#STIVJ ~Miss Edwina! Does this seem the right moment to talk with your right hand?~
== EDWINJ ~Oh my god...~
== TB#STIVJ ~*Ahem* Miss Edwina?~
== EDWINJ ~What do you want?!~
== TB#STIVJ ~Did you check you weren't deflowered by me?~
== EDWINJ ~Deflowered? What are you talking about, simian?~
== TB#STIVJ ~You were accusing me of raping you!~
== EDWINJ ~Stop saying such idiotic things, halfling, or I'll send you in one of the Nine Hells!~
== TB#STIVJ ~Enough, I give up.~
== EDWINJ ~(Gods... This body is so full of surprises... Or are my enchanter's hands doing the miracle?)~
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
~You and Minsc are a really beautiful couple, Miss Edwina. Look at you: one has the brawn, the other the brain.~
DO ~SetGlobal("tb#StivanEdwina","GLOBAL",1)~
== BEDWIN ~Shut up!!~
== TB#STIVB ~When will you get married?~
== BEDWIN ~I'd rather live in the forests of Chault than live with that ape!~
== BMINSC ~Ooh, glorious day, Boo! The lady in read wants to marry Minsc! But why hadn't she said so from the start?~
== BEDWIN ~There will be no marriage, idiot!~
== BMINSC ~Boo always says that women wait for the man to make the first move. Minsc is wondering if Edwin's sister wants to listen to another poem.~
== BEDWIN ~NOO!!!~
== TB#STIVB ~By your nervousness I must imagine they are near. Have you chosen your dress?~
== BEDWIN ~I chose how I should end you, halfling! I'll strangle you!~
== TB#STIVB ~Tell me this, Miss Edwina: will you be wearing red or white?~
== BEDWIN ~Red, obv... What the hell are you making me say?!?~
== TB#STIVB ~I had no doubt. It'll be an honor to be your best man.~
EXIT

CHAIN 
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
TimeOfDay(Night)
CombatCounter(0)
Global("tb#StivanMinscUB","GLOBAL",0)
Global("WWBooGone","GLOBAL",3)~ THEN TB#STIVB minscPostUB
~(Sigh) "Stars yet again hide their luminous body around the Moon... And as she brightens at the apex of her glory, everything is silent on Earth".~
= ~Well... *Almost* everything...~
DO ~SetGlobal("tb#StivanMinscUB","GLOBAL",1)~
== BMINSC ~Keep your eyes open, Boo! Even after nightfall, the defenders of justice must stay vigilant to oppose evil!~
= ~Minsc is so happy to have found you again, Boo. Without you he was falling asleep like a stone.~
== TB#STIVB ~I liked you more when you were depressed, ranger. Even if brief, it was the only time when stupid things weren't flowing out of you mouth.~
== BMINSC ~Minsc is tired of listening to your evil talk, halfling! It is time to straighten you up and give you solid kicks in the back! Woe to you, evil: Minsc is about to...~
= ~What, Boo? You want to take him on by yourself? Minsc understands, but...~
= ~Alright, Boo: Minsc will leave the glory of battle to you! Get ready for hamster justice, Stivan!~
== TB#STIVB ~I'm shaking out of fear.~
== BMINSC ~GO FOR THE EYES, BOO! GO FOR THE EYES! RAARGHHH!!!!~ [ MINSC10 ] 
== TB#STIVB ~...~
= ~... Well? Where did your monstrous hamster end up?~
= ~Oh, but...~
= ~Ow! *Ow*!~
= ~That beast is in my armor! *Ow* He's biting me -OW!- everywhere!~
= ~I'll teach you a lesson, rat!~
= ~(Stonf)~
= ~(Stonf stonf)~
== BEDWIN IF ~IsValidForPartyDialog("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN ~(The halfling is punching himself? So he's a masochist... Good to know. Let's see if he'll be as pleased after I set him on fire!)~
== TB#STIVB ~No! Not there, not there, not there!~
= ~(Stonf!)~
= ~OW...~
== BMINSC ~Well done, Boo! You taught evil a lesson it won't easily forget! Now come back to Minsc... you deserve two nice nuts!~
EXIT

CHAIN 
IF ~InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
AreaType(OUTDOOR)
CombatCounter(0)
Global("tb#StivanHaerdalis","GLOBAL",0)~ THEN TB#STIVB stivan-dalis-1
~Die, filthy seagull! You too, disgusting bird! You're next, ugly feathered being!~
DO ~SetGlobal("tb#StivanHaerdalis","GLOBAL",1)~
== BHAERDA ~I must say that you treat seagulls with real kindness, Stivan. Tell me why you hate them so, would you kindly?~
== TB#STIVB ~They killed my parents! They feasted with their bodies and slept on their remains! How could I not hate them?!~
== BHAERDA ~Hmm... Really strange behavior for some birds. Either way, hate is love, my seagull.~
== TB#STIVB ~*Don't* call me seagull!~
== BHAERDA ~It is done, Stivan. You will be my seabird.~
== TB#STIVB ~I told you I do not wa--~
== BHAERDA ~Yes yes yes. I could not have chosen a better name.~
EXIT

CHAIN
IF ~InParty("tb#stiv")
See("tb#stiv")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("PlanarPrison","GLOBAL",2)
Global("tb#StivanHaerdalis","GLOBAL",1)~ THEN BHAERDA stivan-dalis-2
~I seem to understand, my seagull, that you traveled far and wide on this land called Faerun. Is that so?~
DO ~SetGlobal("tb#StivanHaerdalis","GLOBAL",2)~
== TB#STIVB ~Yes, Haer'Dalis. I have been in many places, some prettier than others, but I still haven't visited many other locations.~
== BHAERDA ~Ever been in Sigil?~
== TB#STIVB ~No, and I don't even understand how I should get there. All those conduits, inter-planar spheres, parallel dimensions... it's too complicated for me.~
== BHAERDA ~It's actually easier than you think.~
= ~You ca reach Sigil using three types of portals: permanent, temporary and mobile ones. I will only explain the former two, since explaining the nature of mobile conduits would be too complex for your ears.~
= ~Permanent portals, as the name says, will remain as they are until entropy calls them back. Temporary portals, on the other hand, will appear or disappear at any moment, or be activated by some object, formula or spell, that can unlock the conduit on command.~
= ~To give you an idea, the one opened by my Raelis to the Cambion prison was a temporary portal, disappeared as soon as my ancient storm reached its destination.~
== TB#STIVB ~WOW! It sounds really interesting!~
== BHAERDA ~Keep in mind that inter-planar travel is far more risky than the land travel you're used to. One time, for example, I saw a Collector enter a temporary conduit. He should have never done so: his body remained at the entrance, while his legs ended up at the exit of the portal.~
= ~Tsk. Were he smart enough to listen to me, he could still claim to own a more or less intact body.~
== TB#STIVB ~Er... I think I'll keep traveling by foot. It's far safer. Thanks anyway, Haer'Dalis, for this intriguing tale.~
== BHAERDA ~Thankful of entertaining my listeners. As usual, of course.~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanHaerdalis","GLOBAL",2)~ THEN BHAERDA stivan-dalis-3
~For the umpteen time, we bathed our blades in blood. Soon vultures will feast with the bodies we left behind and nothing will remain of our enemies...~
DO ~SetGlobal("tb#StivanHaerdalis","GLOBAL",3)~
== TB#STIVB ~Death is often your foremost thought, Haer'Dalis. Don't you think life equally worthy of consideration?~
== BHAERDA ~An why should I, my seagull? Or existence is aught but a long walk, full of trouble and despair. We tread this path only to reach our deserved goal - oblivion, the end of our ever so long fatigue.~
== TB#STIVB ~Far from me to criticizing your dark thoughts, but... Don't you think you're sounding a bit too pessimistic?~
== BHAERDA ~No, young sea bird. I simply described reality as it is.~
== TB#STIVB ~And that is?~
== BHAERDA ~A ship that, broken by endless storms, reaches a dock of fatal quiet.~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("HaerDalisRomanceActive","GLOBAL",2)
Global("tb#StivanHaerDalisAerie","GLOBAL",0)~ THEN BHAERDA stivan-dalis-rom
~I would be grateful, Stivan, if you stopped mistreating my dove. I don't like seeing her with her plumes in a mess.~
DO ~SetGlobal("tb#StivanHaerdalisAerie","GLOBAL",1)~
== TB#STIVB ~*Ahem* Haer'Dalis, could you tell me what do you find so interesting in her? I... simply can't understand that.~
== BHAERDA ~What is uninteresting for someone could well be the focal point of the attention of somebody else. In terms you might understand, my seagull, mind your own matters.~
EXIT

CHAIN
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
TimeOfDay(Night)
AreaType(OUTDOOR)
CombatCounter(0)
Global("tb#StivanAerie","GLOBAL",1)~ THEN BAERIE AerieScared
~Uh? I thought I heard some sound...~
DO ~SetGlobal("tb#StivanAerie","GLOBAL",2)~
= ~...~
= ~... I must have imagined that.~
= ~But... But I feel like someone...~
== TB#STIVB ~BUH!~
== BAERIE ~Ahhhh!~
== TB#STIVB ~Heh. Far too easy.~
== BAERIE ~E-Enough, Stivan! I... I can't take you anymore! I'm tired of your insulting sparks, tired of your jokes, tired of you! <CHARNAME>... <CHARNAME>, I plead you, tell him something!~
END
IF ~~ THEN REPLY ~Shh... Come here, Aerie. Don't mind him.~ EXTERN BAERIE AerieScared1
IF ~~ THEN REPLY ~I expect you to be braver. You can't get scared by something like this.~ EXTERN BAERIE AerieScared1
IF ~~ THEN REPLY ~You behavior is worse than childish, Stivan.~ EXTERN TB#STIVB AerieScared2
IF ~~ THEN REPLY ~Halfling, try pestering Aerie once more and I'll break your face!~ EXTERN TB#STIVB AerieScared2
IF ~~ THEN REPLY ~I'm going crazy. I can't take you anymore...~ EXTERN TB#STIVB AerieScared2

CHAIN IF ~~ THEN BAERIE AerieScared1
~I... Don't want to look silly, but he keeps insulting me, making me nervous. I... I don't know if I will be able to stay calm. I... need some rest, now...~
BRANCH ~InParty("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID)~ BEGIN
== BMAZZY IF ~~ THEN ~I'm wondering how long I will renounce the temptation of slapping you silly!~
== TB#STIVB ~Heh. Patience is the virtue of the strong, Mazzy.~
== BMAZZY ~Know that I'm running out of it myself!~
END
BRANCH ~InParty("Korgan") StateCheck("Korgan",CD_STATE_NOTVALID)~ BEGIN
== BKORGAN ~Well done, boy! I myself couldn't have done better!~
BRANCH ~InParty("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID)~ BEGIN
== BMAZZY ~It is really true that a fool will always find some bigger fool who admires him.~
== BKORGAN ~Come on, Mazzy... He didn't do anything wrong!~
== BMAZZY ~(Sigh) Good sense, then will never have heroes.~
END
END
EXIT

CHAIN IF ~~ THEN TB#STIVB AerieScared2
~(Laughs) Sorry, <CHARNAME>. I can resist anything, except for temptations.~
BRANCH ~InParty("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID)~ BEGIN
== BMAZZY IF ~~ THEN ~I'm wondering how long I will renounce the temptation of slapping you silly!~
== TB#STIVB ~Heh. Patience is the virtue of the strong, Mazzy.~
== BMAZZY ~Know that I'm running out of it myself!~
END
BRANCH ~InParty("Korgan") StateCheck("Korgan",CD_STATE_NOTVALID)~ BEGIN
== BKORGAN ~Well done, boy! I myself couldn't have done better!~
BRANCH ~InParty("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID)~ BEGIN
== BMAZZY ~It is really true that a fool will always find some bigger fool who admires him.~
== BKORGAN ~Come on, Mazzy... He didn't do anything wrong!~
== BMAZZY ~(Sigh) Good sense, then will never have heroes.~
END
END
EXIT

CHAIN
IF ~InParty("jan")
See("jan")
!StateCheck("jan",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanJan","GLOBAL",0)~ THEN TB#STIVB StivanJan1
~You know, Jan, I think you could be a great bard with your quick tongue.~
DO ~SetGlobal("tb#StivanJan","GLOBAL",1)~
== BJAN ~Well, perhaps it is about time I reveal a secret I never told anybody of. You should know, Stivvy, that before I started peddling vegetables, a job better paid than you'd think, I had to find some way to live by the day. I had already stopped working for Golodon the Unmanned, so--~
== TB#STIVB ~Golodon the Unmanned?~
== BJAN ~Yes. Don't ask me about the name. To this day, nobody knows its reason.~
== TB#STIVB ~Heh. Go on, I'm listening to you.~
== BJAN ~Now that you mention it, I think it was given to him by his wife. A friendly lass, although it was her who made my teacher's breath that dangerous, so powerful somebody created a spell named "Golodon the Unmanned's Horrid Wilting". One day I'll show it to you, although it is difficult to escape its effects when you're a meter and a turnip tall.~ //" I hate my editor
== TB#STIVB ~"A meter and a turnip"? What the hell are you talking about?~
== BJAN ~By uncle Scratchy's beard! Didn't you know that gnomes measure distances by the turnip?~
== TB#STIVB ~*Ahem* Should I?~
== BJAN ~My boy, you really need some lessons about gnomes' traditions! I must end my story first. As I was saying..~
= ~Uh...~
= ~Er...~
= ~I forgot it...~
== TB#STIVB ~You'll tell me about it as soon as you'll remember it.~
== BJAN ~I think I'll explain you how we gnomes measure our toenails, in the meantime. You see, you must know that we gnomes...~
== TB#STIVB ~(Sigh)~
EXIT
 
CHAIN
IF ~InParty("Jan")
See("Jan")
!StateCheck("Jan",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanJan","GLOBAL",1)~ THEN TB#STIVB StivanJan2
~Jan, did you remember about the secret you wanted to tell me?~
DO ~SetGlobal("tb#StivanJan","GLOBAL",2)~
== BJAN ~It is so. This is very good, Stivvy, because I've lately started to forget things. About forgetfulness, did I ever tell you that Uncle Scratchy used to forget his own name?~
== TB#STIVB ~No, you never told me about it, but that wasn't what you wanted to talk about...~
== BJAN ~Since you mentioned him, why change the subject? As I was saying, poor uncle. He was a real gentleman. He used to steal turnips and jewels here and there, but he would forget where he stashed his proceedings, be they vegetables or precious things. Everybody said that he owns such a large amount of riches and produce to attract any adventurer. My dear Aunt Petunia has been trying to look for that treasure with her own shadow drake. It's a nice beast, you know?~
== TB#STIVB ~... Are you talking about your drake?~
== BJAN ~No, my aunt.~
== TB#STIVB ~Ah.~
= ~Should I ever meet her, I'll do my best not to harass her.~
== BJAN ~Now, let's get to business. The secret I wanted to tell you was about...~
= ~About...~
= ~...~
= ~Stivvy... The more I think about it, the more I forget about it.~
== TB#STIVB ~*Ahem* Mommy always said that it's better to stay silent and look stupid than to talk and remove any doubt.~
== BJAN ~Your mommy must have been a wise woman. It is a shame her current situation doesn't allow her to talk, otherwise I'm sure she would’ve figured out a solution for my forgetfulness. Or, I might drink some turnip juice. Let me tell you about its beneficial properties.~
== TB#STIVB ~...~
EXIT
 
CHAIN
IF ~InParty("tb#stiv")
See("tb#stiv")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanJan","GLOBAL",2)~ THEN BJAN StivanJan3
~A bard! I have been a bard before I started peddling turnips! That's the secret I wanted to tell you, Stivvy!~
DO ~SetGlobal("tb#StivanJan","GLOBAL",3)~
== TB#STIVB ~Heh. You finally remembered it.~
== BJAN ~It has been a peerless experience. My listeners were so enthralled by my tales that they were never shy in gifting me vegetables. A tomato one day, a potato the next, I ended up owning so many produce that one day I wondered: "why shouldn't I try to sell them?". And that was how I started my career as a vegetable peddler, although I must confess that one of those is my favorite. Have I ever told you which?~
== TB#STIVB ~It is turnips, no?~
== BJAN ~How did you get it?~
== TB#STIVB ~Heh. I just guessed.~
= ~Tell me this, Jan. How did you learn to entertain your listeners?~
== BJAN ~It was all thanks to a small book I always carry with me. Let me take it out. It should be here, right between "the Sins of the Flesh Golem" of Ma Jansen and "How to ensure your self-brewed beer makes you burp a lot" by Aunt Kadie. Here... No, wait, this is Uncle Cletus' treatise on how to die multiple times before being buried.~
== TB#STIVB ~I never imagined that your family sired so many writers.~
== BJAN ~And yet it is so, Stivvy. Turnip farming and writing are two skills every Jansen is born with. Still, there is one thing where yours truly is the best. It is something I never told anybody, not even Ma and Pa.~
== TB#STIVB ~And that would be?~
== BJAN ~Have I ever told you I have been the first Jansen-born story teller?~
== TB#STIVB ~That's what you just said!~
== BJAN ~This isn't nice, Stivvy. You don't mock a gnome! Not right after he told you his secrets!~
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
== BJAN ~Yes, my good friend?~
== TB#STIVB ~Jan, I feel a bit... strange.~
== BJAN ~Eh, I understand you! I myself, a long time ago, felt very ill after eating some stale turnip soup. It happened in far 1348, when Aunt Petunia decided she actually liked her own name. It was an horrible year, that one. Turnips went bad right after being unearthed, without a reason. And then we figured out it was Cousin Jowen's farts that caused that. The whole clan decided to close the hole that smell came out from as he slept. Poor cousin! The next day, as he tried to let loose the air from his guts, he died of breathlessness. A sad tale, that one.~
== TB#STIVB ~*Ahem* My problem isn't about vegetables or gas. I... I'm feeling something I never felt before. It is a strange feeling... It stuns me, it... confuses me...~
== BJAN ~I told you not to eat that many turnips, last night.~
== TB#STIVB ~What turnips? I... don't understand what is happening to me. I feel a smell, but I don't know what that is... I just know it stupefies me, and it is the odor I would like to feel on my skin...~
== BJAN ~After all, Ma Jansen's perfume is peerless.~
== TB#STIVB ~And my heavy breathing... Might that be...~
== BJAN ~... A badly swallowed turnip?~
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
~Yeah! A hit! And that's one hundred and ten in a week!~
DO ~SetGlobal("tb#StivanJaheira","GLOBAL",1)~
== BJAHEIR ~I'm getting tired of seeing you kill every bird you see, Stivan. Don't you understand that doing so won't bring your parents back to life?~
== TB#STIVB ~I only attack seagulls!~
== BJAHEIR ~That's a detail, and you know fully well. A stem of folly embellishes the tree of wisdom, but your behavior is almost unreasonable.~
== TB#STIVB ~Heh. As they say, there is a thin line between genius and madness.~
== BJAHEIR ~Yes. Very thin.~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanJaheiraBalance","GLOBAL",0)
Global("lyrosjob","global",3)~ THEN BJAHEIR stivanjaheirabalance
~Stivan, have you ever wondered if your actions helped preserve the Balance?~
DO ~SetGlobal("tb#StivanJaheiraBalance","GLOBAL",1)~
== TB#STIVB ~The Balance? I don't think there's a middle way, Jaheira. If a sovereign must govern, it will do so with either the iron fist or the velvet glove. Mommy always said that there is no third way.~
== BJAHEIR ~Apart from tyranny and self-abnegation there is also wisdom, acting in the interest of the greater good.~
== TB#STIVB ~But how would you judge an act good or evil? Something that helps me might hurt you.~
== BJAHEIR ~There are universally acknowledged moral positions, Stivan. Life, for instance, is the greater good, and must be preserved by any means necessary.~
== TB#STIVB ~An hypocrite idea. Am I mistaken, or did your Harper friends not hesitate a second before assassinating that  Zhentarim?~
== BJAHEIR ~This is where wisdom comes in at. Since Xzar menaced the life of multiple people, it was necessary to kill him.~
== TB#STIVB ~Jaheira, we have a long trail of bodies at our backs. Would that mean that the Harpers will target us soon?~
== BJAHEIR ~We only killed in self-defense. Conflict, unfortunately, is inevitable.~
== TB#STIVB ~... I fear I'll never understand what you mean.~
== BJAHEIR ~It is natural. I myself must still learn a lot on Balance.~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanYoshimo","GLOBAL",0)~ THEN BYOSHIM Athkatla
~If I understood correctly, Stivan, Athkatla is your home town.~
DO ~SetGlobal("tb#StivanYoshimo","GLOBAL",1)~ 
== TB#STIVB ~Exactly. I've lived in the capital of Amn for almost thirty years, and nobody knows its streets better than I do.~
== BYOSHIM ~And what do you think of the City of Coin? Does it seem different than in the past?~
== TB#STIVB ~Uhm... Must I be honest?~
== BYOSHIM ~Honesty is a complex matter, friend. Just tell what you think.~
== TB#STIVB ~As you wish. Athkatla has always been the same: a degraded crime haven, held in check by those Cowled madmen.~ 
== BYOSHIM ~That is to say, a pretty place to live in.~
== TB#STIVB ~Yes. Can I ask, Yoshimo, why did you choose to come here of all places?~
== BYOSHIM ~Let us say that I... had my reasons.~
== TB#STIVB ~Another sentence comes out of your mouth without saying anything. Do you do that on purpose?~
== BYOSHIM ~Oh, no. It comes... natural.~
EXIT

CHAIN 
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanYoshimo","GLOBAL",1)~ THEN TB#STIVB yoshimo1
~Your skill with the katana is really surprising, Yoshi. Am I mistaken, or is it one of the favorite weapons in in Kara-Tur?~
DO ~SetGlobal("tb#StivanYoshimo","GLOBAL",2)~
== BYOSHIM ~Absolutely not, my little friend. To begin with, the sword with a curved blade and a single cut  you call katana is actually named uchigatana. It is only wielded by samurai or those in the warrior caste, while everybody else is forbidden from using it.~
= ~During a fight the blade might be used in many ways. I, for example, like to wield it in a single hand; some, instead, pair it with a wakisashi, creating a pairing called daisho; others still, finally, wield it two-handed.~
== TB#STIVB ~Wow!~
== BYOSHIM ~This tale always interests people. I still haven't figured out why.~
== TB#STIVB ~Would you teach me to wield a katana as a real samurai, Yoshi?~
== BYOSHIM ~I would be glad, didn't it take such a long time.~
== TB#STIVB ~I beg you! I'm ready to train harshly for all the months that will be needed!~
== BYOSHIM ~Months? It takes years to learn how to wield a katana like a Kara-Turan warrior, Stivan.~
== TB#STIVB ~But... But I don't have that much time!~
== BYOSHIM ~(Smile) Then you will learn that there are many other things worthy of learning. If nothing else in the world were interesting, it'd be a dull place.~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanYoshimo","GLOBAL",2)~ THEN BYOSHIM yoshimo2
~I see you're still looking at my blade, Stivan. Did you spot a stain I didn't notice?~
DO ~SetGlobal("tb#StivanYoshimo","GLOBAL",3)~
== TB#STIVB ~No, instead. Your katana shines as if it were freshly forged. It's enchanted, right?~
== BYOSHIM ~Yes.~
== TB#STIVB ~How did you get hold of it?~
== BYOSHIM ~The tale of this blade is anything but interesting. Were I to tell, yo wouldn't hear anything tragic or glorious about it.~
== TB#STIVB ~Heh. You know full well that I will still listen.~
== BYOSHIM ~As you wish. The katana you see was gifted to me by a Wu Jen friend of mine, back in Kara-Tur.~
== TB#STIVB ~Er... What does Wu Jen mean?~
== BYOSHIM ~That is how mages are named back in Kara-Tur. This Wu Jen owed me a favor and, for lack of other solutions, decided to fulfill that debt with this blade.~
== TB#STIVB ~A perfect match, I must say.~
== BYOSHIM ~More than you think.~
== TB#STIVB ~And what about the weapon you used before receiving this one? What did you do of it?~
== BYOSHIM ~It was a common blade. I kept using it for some time during training, but it broke with time.~
= ~...~
== TB#STIVB ~Is everything all right, Yoshi?~
== BYOSHIM ~It looks like you have the power to resurrect old memories, my little friend... Or, shall we say, your shameless curiosity reopened old wounds. Either way, we lingered enough for today. Let us continue.~
EXIT

CHAIN 
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanYoshimo","GLOBAL",3)~ THEN TB#STIVB Yoshitaciturno
~You grew silent lately, Yoshi. Why don't you tell something about you and Kara-Tur?~
DO ~SetGlobal("tb#StivanYoshimo","GLOBAL",4)~
== BYOSHIM ~Silence is necessary with those with a job such as ours. Either way, there isn't much to tell about me. The place I used to live in wasn't up to my expectations, so I decided to come here in Athkatla.~
= ~The rest, as they say, is history.~
== TB#STIVB ~You just told your life in two sentences! Come on, tell me more: why didn't you fell at ease in Kara-Tur?~
== BYOSHIM ~You ask too many questions, Stivan. It really is true that curiosity is female.~
== TB#STIVB ~Heh. You might be laconic in your answers, Yoshimo, but you don't lack for humor. And so be it. If you wish to isolate yourself, I won't force you to talk, but... remember that talking to others helps.~
== BYOSHIM ~Not always, my friend. Not always.~
EXIT

CHAIN 
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanKorgan","GLOBAL",0)~ THEN TB#STIVB stivankorgan1
~You know, Korgan, today is the anniversary of the death of my relatives. It has been eight years since they were killed.~
DO ~SetGlobal("tb#StivanKorgan","GLOBAL",1)~
== BKORGAN ~Be thankful your parents weren't long-legs. If they were, know I wouldn't have waited a second before throwing an axe in your face.~
== TB#STIVB ~I should feel lucky, then. Are your parents still alive?~
== BKORGAN ~Bah! As far as I care, they can wither away in hell!~
== TB#STIVB ~What about your brothers?~
== BKORGAN ~Tsk. A bunch of worthless bastards.~
== TB#STIVB ~Uhm... A shining example of family love. Why do you hate your relatives that much?~
== BKORGAN ~Do not start asking about things that are none of your matter, halfling. Enough told, should I meet any of them, he won't come back home alive. Even if he will, he'll be lacking a limb or two.~
EXIT

CHAIN 
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanKorgan","GLOBAL",1)~ THEN TB#STIVB stivankorgan2
~Korgan, did you ever lose your head for a woman?~
DO ~SetGlobal("tb#StivanKorgan","GLOBAL",2)~
== BKORGAN ~It is women who lose their heads to me! By my axe, obviously! Har har!~
== TB#STIVB ~Er... Let me rephrase the question. Have you ever fallen in love?~
== BKORGAN ~Do I look like the sort of people that might worm at the feet of some female?~
== TB#STIVB ~I wouldn't say so, but mommy always said that, if you fall in love with a woman, you must be good enough to catch her attention.~
== BKORGAN ~Let me tell you about one of my women, then. Back when I was with the group of mercenaries we cut up, I was intrigued by a bitch that worked in the Docks. She had a pair of jugs that big, she could choke you with a hug!~
== TB#STIVB ~Er... Yes. What was her name?~
== BKORGAN ~How would I know? I don't care about such meaningless details.~
== TB#STIVB ~... But of course.~
== BKORGAN ~That whore was wanted by dozens of men, who were ready to duel to the death for one night with her. I didn't feel like fighting: I and my companions were paid as guards to a nobleman, and I wanted some fun without having to tire myself.~
= ~So, one night I suggested to the men that wanted her to solve the matter not with steel, but with another challenge. The bitch would have gone with whom, between has, could have peed the farthest.~
== TB#STIVB ~An heroic duel. Let me guess: you won?~
== BKORGAN ~Sure! I suggested that right because I knew I would have won. There's no dwarf who--~
== TB#STIVB ~Who is your peer, yes. I got it, Korgan: you never fell in love with a woman. In fact, I don't understand why I thought of asking you such a question...~
EXIT

CHAIN 
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanValygar","GLOBAL",0)~ THEN TB#STIVB stivanvalygar1
~Valygar, Is there a good reason you chose to become a ranger? I heard you have noble births: you could have used your name and riches to live a comfortable life.~
DO ~SetGlobal("tb#StivanValygar","GLOBAL",1)~
== BVALYGA ~I could have, but I did not do so for many reasons. To start with, Corthala is not a good name: what noble would have wanted to have dealings with a cursed family?~
= ~On top of that, I'm a sober man. I have never liked luxury and wealth.~
== TB#STIVB ~You must be out of your mind for not having been attracted to the aristocratic life.~ 
== BVALYGA ~If you knew it, Stivan, you wouldn't think so.~
EXIT

CHAIN 
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanValygar", "GLOBAL",1)~ THEN TB#STIVB stivanvalygar2
~Valygar, you told me why you weren't attracted by worldly life, but I still don't understand why you chose to become a ranger.~
DO ~SetGlobal("tb#StivanValygar", "GLOBAL",2)~
== BVALYGA ~It would be more correct to call me an explorer, rather than a ranger. The latter, in fact, is a title that is only given to those who distinguished themselves in defending nature.~
BRANCH ~GlobalLT("tb#StivanMinsc","GLOBAL",3) IsValidForPartyDialog("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ BEGIN
== TB#STIVB ~Well, if Minsc is a ranger, it mustn't be hard to become one.~
== BMINSC ~Minsc's hearing is finer than Boo's and we both heard you! I have become a ranger because nobody kicked evil in its backside as much as I!~
== TB#STIVB ~Thank you, Minsc, for explaining what I was getting at. You were saying, Valygar?~
END
== BVALYGA ~I served amongst the guards of Amn for a number of years. I was deployed as an explorer in forests and other wild places for my hiding skills, and it was there that I felt the duty to do what I could to defend earth and its creatures.~
== TB#STIVB ~I see. In other words, you defend bushes and grass to give a meaning to your life.~
== BVALYGA ~I never told you that, Stivan.~
== TB#STIVB ~Oh, don't worry. I critique nothing and nobody. I just think that all this business of serving Mother Nature is silly.~
== BVALYGA ~To call something you don't know "silly" doesn't speak in your defense, especially since it was you who asked me to tell you how I became that very thing.~
== TB#STIVB ~The problem is--~
== BVALYGA ~I see no problem, Stivan, apart from your stereotypes and prejudices.~
== TB#STIVB ~I did--~
== BVALYGA ~Enough. Fools never understand when it is time to shut up, so it is better that I end this conversation. We have nothing more to tell to each other, at least until you won't learn to think before talking.~
EXIT

CHAIN 
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
Dead("Lavok02")
CombatCounter(0)
Global("tb#StivanValygar","GLOBAL",2)~ THEN TB#STIVB stivanvalygar2
~Valygar, I've been thinking about something for a little while.~
DO ~SetGlobal("tb#StivanValygar","GLOBAL",3)~
== BVALYGA ~Are you sure you thought that through?~
== TB#STIVB ~Sure. I never let my mouth come before my thought, don't you think?~
== BVALYGA ~I don't really think that, but… I'm listening.~
== TB#STIVB ~*Ahem* Do you have your ancestor's sphere in mind?~
== BVALYGA ~I can't see how I could forget about it.~
== TB#STIVB ~Well, you see... I mean... After all, don't you think it's a shame to leave it unused? There, all alone between the junk in the Slums...~
== BVALYGA ~Pardon, how would you use it?~
== TB#STIVB ~If I told you so, I'd ruin the surprise. Trust me. I know I'll be careful and use that properly.~
== BVALYGA ~Sorry, but I want nothing more to do with that sphere. In my mind still lingers the memory of the destruction and anguish it caused, and in the hands of incautious people it could become dangerous yet again.~
== TB#STIVB ~But you could do a lot of things with that artifact!~
== BVALYGA ~Such as?~
== TB#STIVB ~Well, we could use it to get rid Faerun of all seagulls. Yes, that's a very great idea!~
== BVALYGA ~... You've already said too many stupid things for today. My no is final.~
EXIT

CHAIN 
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
Global("tb#StivanAerieToldWIngs","GLOBAL",1)
CombatCounter(0)
Global("tb#StivanDislikesAerie","GLOBAL",0)~ THEN TB#STIVB stivanaeriewings
~So, elf, you lost your wings while pathetically trying to save some child. Very stupid of you, but it doesn't surprise me..~
DO ~SetGlobal("tb#StivanDislikesAerie","GLOBAL",1)~
== BAERIE ~H... How would you know? Are you snooping on my conversations with  <CHARNAME>?~
END
IF ~GlobalGT("tb#StivanAerie","GLOBAL",99)~  THEN EXTERN BAERIE stivanAerieWings1
IF ~GlobalLT("tb#StivanAerie","GLOBAL",100)~ THEN EXTERN tb#stivb stivanAerieWings2

CHAIN IF ~~ THEN BAERIE stivanAerieWings1
~It doesn't matter, I shouldn't even listen to you.~
EXIT

CHAIN IF ~~ THEN tb#STIVB stivanAerieWings2
 ~I didn't snoop nothing. Your loud wailing simply reached my ears. Poor boy... I can't understand how he could tolerate you.~
== BAERIE ~<CHARNAME> would never be bothered by my tales and crying! You.. you aren't, are you?~
END
IF ~~ THEN REPLY ~Absolutely not. (To Stivan) Will you shut up by yourself, or do you need some help with that?~ EXTERN TB#STIVB StivanDislikesAerie1-1
IF ~~ THEN REPLY ~You know very well I gladly listen. Pay no heed to what he says.~ EXTERN TB#STIVB StivanDislikesAerie1-1
IF ~~ THEN REPLY ~It is a pleasure to listen to you, but I wish you were stronger.~ EXTERN BAERIE StivanDislikesAerie1-2
IF ~~ THEN REPLY ~Well, Stivan is right. You are boring and repetitive, sometimes.~ EXTERN BAERIE StivanDislikesAerie1-3

APPEND BAERIE
IF ~~ THEN StivanDislikesAerie1-2
SAY ~I... Only try to me myself... With all my good and bad sides. But I'll try to... to be stronger, if that is what you wish.~
IF ~~ THEN EXIT
END

IF ~~ THEN StivanDislikesAerie1-3
SAY ~Ah yes? V- very well, <CHARNAME>: i-i-if I am that boring and r-repetitive, I will bother you no more! I... didn't think was such a burden to you!~
IF ~~ THEN DO ~SetGlobal("AerieRomance","global",3)~ EXIT
END
END

APPEND TB#STIVB

IF ~~ THEN StivanDislikesAerie1-1
SAY ~Heh. You sometimes need other people's lips to tell truths you don't want to accept. You should thank me!~
IF ~~ THEN REPLY ~Stivan, I understand you don't like Aerie, but that doesn't mean I have to accommodate your whims.~ EXTERN TB#STIVB StivanDislikesAerie1-4
IF ~~ THEN REPLY ~I don't need *you* to tell me what I feel for her! Who do you think you are?~ EXTERN TB#STIVB StivanDislikesAerie1-4
IF ~~ THEN REPLY ~I'm tired of how you treat her, halfling. Try bothering her again, and you're out of the party.~ EXTERN TB#STIVB StivanDislikesAerie1-4
END

IF ~~ THEN StivanDislikesAerie1-4
SAY ~Poor <CHARNAME>... You're walking proof that man is imperfect. Yet I must understand and forget, given the way you were born.~
= ~(Stivan pulls out his tongue at you).~
IF ~~ THEN REPLY ~You really want to die, halfling.~ EXTERN TB#STIVB StivanDislikesAerie1-5
IF ~~ THEN REPLY ~I only leave you alive because I like some of your sharp sentences.~ EXTERN TB#STIVB StivanDislikesAerie1-5
IF ~~ THEN REPLY ~(Sigh) It's worse than a baby.~ EXTERN TB#STIVB StivanDislikesAerie1-5
END

IF ~~ THEN StivanDislikesAerie1-5
SAY ~Heh. It is a pleasure to travel with you, boy.~
IF ~~ THEN EXIT
END
END

CHAIN 
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanImoen","GLOBAL",0)~ THEN TB#STIVB stivanimoen1
~And so you would be <CHARNAME>'s sister, as well as the daughter of Bhaal. Did you know that Stivan has divine parents, too?~
DO ~SetGlobal("tb#StivanImoen","GLOBAL",1)~
== BIMOEN2 ~I thought as well that the Lord of Murder wasn't the only one who sowed his semen far and wide. It looks like the gods like to get every woman they meet pregnant.~
== TB#STIVB ~Heh. My mommy was lucky enough to meet the great Brandobaris.~
== BIMOEN2 ~Brandobaris? The halfling god of sneaking and thieving?~
== TB#STIVB ~Exactly. It was him who gave Stivan the heavy task of ridding Faerun of Seagulls. Moreover, my births make me the best thief of the party, so... step aside!~
== BIMOEN2 ~Wait, but... Didn't you start hunting them only after the death of your parents?~
== TB#STIVB ~Damn. That girl is brighter than I thought... ~
= ~*Ahem* Either way, it is I who is the best thief of this party!~
== BIMOEN2 ~I don't think so. Don't you know that, before learning the arcane arts, I was known all along the Sword Coast as "Imoen the Quick"?~
== TB#STIVB ~If that's the way you want to put it, it will be steel that will decide who is the best of us! Get ready to tas...~
= ~Hey, but...~
= ~Where's my blade?~
== BIMOEN2 ~This thing here? Sorry, Stivan... I took it without asking. Or should I say I stole it from under your nose?~
== TB#STIVB ~ (Snort!) So be it, girl. If you want war, it will be war!~
== BIMOEN2 ~As you wish. I already won the first battle!~
EXIT
 
CHAIN 
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanImoen","GLOBAL",1)~ THEN TB#STIVB stivanimoen2
~And so the brave Stivan sneaks silently towards his worst enemy. With inaudible feet he gets near the still unsuspecting victim, holds his lethal weapon  and...~
DO ~SetGlobal("tb#StivanImoen","GLOBAL",2)~
== BIMOEN2 ~Imoen the Quick doesn't need to turn around to dodge the lethal seagull plume thrown by her enemy and, with a nimble movement, readies her blade and jumps to face her enemy!~ 
== TB#STIVB ~Steel sounds in the air, blades looking for wounds yet to open!~
== BIMOEN2 ~Imoen the quick disarms her enemy with a knock...~
== TB#STIVB ~Not fair -- *Ouch*!~
== BIMOEN2 ~... And points her blade to the throat of the enemy!~
== TB#STIVB ~Take this!~
== BIMOEN2 ~Aarghh! What...?~
== TB#STIVB ~Heh. Seagull poo in the eyes hurts like mad.~ 
== BIMOEN2 ~Bleah! This smells!~
== TB#STIVB ~And we're tied one to one. Next battle I'll win, witch!~
== BIMOEN2 ~Don't count on it, shorty.~
EXIT


CHAIN 
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanImoen","GLOBAL",2)~ THEN TB#STIVB stivanimoen3
~(Pant pant) I'm tired...~
DO ~SetGlobal("tb#StivanImoen","GLOBAL",3)~
== BIMOEN2 ~ (Pant pant) Me too!~
== TB#STIVB ~Give up, Imoen... I'm the best!~
== BIMOEN2 ~Wait. I have a idea.~
== TB#STIVB ~Do you think me foolish enough to fall for your trap?~
== BIMOEN2 ~No, I'm serious. Our battle could never end; why don't we submit to our leader's judgment?~
== TB#STIVB ~...~
= ~... We have a leader?~
== BIMOEN2 ~I'm talking about <CHARNAME>...~
== TB#STIVB IF~Gender(Player1,MALE)~ THEN ~Not fair! He's your brother, he will never be objective!~
== TB#STIVB IF~Gender(Player1,FEMALE)~ THEN ~Not fair! She's your sister, she will never be objective!~
== BIMOEN2 ~<CHARNAME> is a good judge. He will never let something as trivial as divine birth in the way of his fairness.~
== BIMOEN2 IF~Gender(Player1,MALE)~ THEN ~(Whispering) Remember, little brother, choose me!~
== BIMOEN2 IF~Gender(Player1,FEMALE)~ THEN ~(Whispering) Remember, little sister, choose me!~
== TB#STIVB ~*Ahem* So, <CHARNAME>? Who is the best thief? The Great Seagull Hunter... or the Coast Witch?~
END
IF ~Class(Player1,THIEF)~ THEN REPLY ~It is obvious *I* am the best.~ EXTERN BIMOEN2 tb#StivanImoen1-1
IF ~~ THEN REPLY ~ (Sigh) Why did you pull me into this?~ EXTERN BIMOEN2 tb#StivanImoen1-1
IF ~~ THEN REPLY ~I'd say both.~ EXTERN BIMOEN2 tb#StivanImoen1-1
IF ~~ THEN REPLY ~Neither of you.~ EXTERN BIMOEN2 tb#StivanImoen1-1
IF ~~ THEN REPLY ~Imoen mixes the many uses of magic with her hand skills. She's the best..~ EXTERN BIMOEN2 tb#StivanImoen1-1
IF ~~ THEN REPLY ~Stivan mixes the art of war with great sneaking skills. He's the best.~ EXTERN BIMOEN2 tb#StivanImoen1-1

CHAIN IF ~~ THEN BIMOEN2 tb#StivanImoen1-1
~Are you happy with <PRO_HISHER> reply?~
== TB#STIVB ~Heh. Should I?~
== BIMOEN2 ~Taste this! Cinnamon cookie!!~
== TB#STIVB ~Take that! Seagull plume!!~
EXIT

CHAIN IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanImoen","GLOBAL",3)~ THEN TB#STIVB stivanimoen4
~I want to suggest an alliance, most harsh of rivals.~
DO ~SetGlobal("tb#StivanImoen","GLOBAL",4)~
== BIMOEN2 ~I'm having so much fun beating you in thieving skill... why should I take up on your offer?~
== TB#STIVB ~My offer is to put our challenge aside and exchange some tricks!~
== BIMOEN2 ~A most interesting idea... I didn't think you such a great negotiator, you know?~
== TB#STIVB ~Heh. One of many useful skills I picked up from daddy.~
== BIMOEN2 ~Can you do anything to improve my fighting skill?~
== TB#STIVB ~That's a challenge - you're incapable of either dodging or dealing attacks.~
== BIMOEN2 ~Thank you for the kind words! Really nice! What would you like to learn, then?~
== TB#STIVB ~Can you teach me how to become invisible using magic?~
== BIMOEN2 ~I never heard of halfling wizards...~
== TB#STIVB ~Please please please?~
== BIMOEN2 ~So be it, I'll give it a try.~
== TB#STIVB ~Thanks!~
EXIT

CHAIN IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanImoen","GLOBAL",4)~ THEN TB#STIVB stivanimoen5
~Come on! Attack!~
DO ~SetGlobal("tb#StivanImoen","GLOBAL",5)~
== BIMOEN2 ~Take this!~
== TB#STIVB ~Good! Now go back and dodge!~
== BIMOEN2 ~Ow!~
== TB#STIVB ~Again! Deflect and counterattack!~
== BIMOEN2 ~Ow! Take (pant) this!~
== TB#STIVB ~You're losing your balance! Try again!~
== BIMOEN2 ~(Pant pant) I'm exhausted... have mercy!~
== TB#STIVB ~Come on, just five minutes and it will be your turn to teach me!~
== BIMOEN2 ~Very well... Dodge this!~
EXIT

CHAIN IF ~InParty("tb#stiv")
See("tb#stiv")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanImoen","GLOBAL",5)
HPGT("tb#Stiv",20)~ THEN BIMOEN2 stivanimoen6
~Repeat after me! Incertus... Pulcher... Imperium!~ [ CAS_PM6F ] 
DO ~SetGlobal("tb#StivanImoen","GLOBAL",6)~
BRANCH ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ BEGIN
== BNALIA ~Imoen! That's a Magic Missile he's casting on himself! Did you go mad?~
== BIMOEN2 ~Whoops.~
== TB#STIVB ~Wha-~
== BNALIA ~Don't distract yourself, Stivan! You could set off an explosion if you don't finish the spell properly!~
== TB#STIVB ~(Gasp!)~
END
== TB#STIVB ~Incertus... Pulcher... Imperium!~ [ CAS_PM6M ] 
EXIT

CHAIN IF ~Global("tb#StivanImoen","GLOBAL",7)~ THEN TB#STIVJ stivanimoen6-a
~Ouch!~
= ~Di... did you (ow!) want to take me out?~
DO ~SetGlobal("tb#StivanImoen","GLOBAL",8)~
== BIMOEN2 ~Sorry, my bad!~
== TB#STIVB ~Sorry? At least (ow!) give me something to heal (ouch!) the wound!~
== BIMOEN2 ~You're a big crier, it's barely a scratch!~
== TB#STIVB ~Ow ow ow ow..~
== BIMOEN2 ~You're really a man-child.~
= ~Here, an Healing Potion.~
== TB#STIVB ~(Gulp) Thanks, now I feel better!~
DO ~ReallyForceSpell(Myself,CLERIC_CURE_LIGHT_WOUNDS)~
EXIT

CHAIN IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanImoen","GLOBAL",8)~ THEN TB#STIVB stivanimoen7
~You're getting much better with the blade, Imoen!~
DO ~SetGlobal("tb#StivanImoen","GLOBAL",9)~
== BIMOEN2 ~Thank you! Modestly, I'm unbeatable!~
DO %ApplySpellRES("spcl141","Imoen2")
ApplySpellRES("spcl441","Imoen2")
DisplayString("Imoen2",~Bonus: +1 THAC0, +1 damage, -1 Armor Class~)%
== TB#STIVB ~We shall see... ready for another spar?~
== BIMOEN2 ~Never felt readier! Take THIS!~
== TB#STIVB ~Wha-~
= ~(Bum!)~
= ~Ouch! My head!~
== BIMOEN2 ~I won! I made you fall!~
== TB#STIVB ~How many times must I tell you, Imoen, trying to tackle on an armed enemy is a terrible idea!~
== BIMOEN2 ~That might be so, but it's always worked on you!~
== TB#STIVB ~That's because I don't want to point my weapon at you and run you through!~
= ~Why did everybody turn their heads and is looking at us?~
== BIMOEN2 ~I couldn't tell if it's for the rumble, because we're on top of each other, or because they've heard the double entendre you just uttered.~
== TB#STIVB IF ~Global("AnomenIsNotKnight","GLOBAL",0)~ THEN ~Heh. It's not a bad feeling after all - I promise I won't get angry at you if you try to tackle me like this next time.~
== TB#STIVB IF ~Global("AnomenIsNotKnight","GLOBAL",1)~ THEN ~...~
= ~How can they think something like that? I'm innocent, innocuous and ingenious!~
== BIMOEN2 ~Come on, slowpoke, get up - we already put up enough of a show.~
EXIT

CHAIN IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanImoen","GLOBAL",9)~ THEN TB#STIVB stivanimoen8
~Let's see if I understood it. Manus... Potentis... Paro!~ [ CAS_PM2M ] 
DO ~SetGlobal("tb#StivanImoen","GLOBAL",10)~
== BIMOEN2 ~No! You still got it wrong! You'll end up a toad if you're not careful!~
== TB#STIVB ~Maybe... fairy tales always end up nicely for toads after they find their own princess.~
BRANCH ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ BEGIN
== TB#STIVB ~And I already met Miss Nalia!~
== BNALIA ~I fear I must shatter your illusion, Stivan.~
== TB#STIVB ~My bad! I always forget that you aren't a princess!~
END
== BIMOEN2 ~Come on, silly, try again! Veritas... Credo... Oculos!~ [ CAS_PM1F ] 
== TB#STIVB ~Okay! Veritas... Credo... Oculos!~ [ CAS_PM1M ] 
DO ~ApplySpell("tb#stiv",WIZARD_INVISIBILITY)~
== TB#STIVB ~Help! I can't see my own hands!~
DO ~AddSpecialAbility("spin118")~
== BIMOEN2 ~You... you made it! Congratulations!~
== TB#STIVB ~Yippee!~
EXIT

CHAIN IF ~InParty("tb#stiv")
See("tb#stiv")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanImoen","GLOBAL",10)~ THEN BIMOEN2 stivanimoen9
~Ready for another spar, Stivan?~
DO ~SetGlobal("tb#StivanImoen","GLOBAL",11)~
== TB#STIVB ~Never been readier! Dodge this!~
== BIMOEN2 ~Child's play! Block this!~
== TB#STIVB ~Nothing's easier! Take this!~
== BIMOEN2 ~Ow!~
== TB#STIVB ~Sorry Imoen, I didn't want to hurt you!~
== BIMOEN2 ~Not a problem, it's just a flesh wound.~
BRANCH ~Global("AnomenIsNotKnight","GLOBAL",1)~ BEGIN
== TB#STIVB ~You've gotten better, but you'll never beat me!~
== BIMOEN2 ~We shall see... Seagull poo!~
== TB#STIVB ~Wha- Not fair! That was *my* ace in the hole!~
== BIMOEN2 ~Ha! The master, beaten by his own student!~
END
BRANCH ~Global("AnomenIsNotKnight","GLOBAL",0)~ BEGIN
== TB#STIVB ~You've gotten better, but you won't ever beat me without tackling me!~
== BIMOEN2 ~I don't need such cheap tricks. I'll beat you honorably, I just need some more training.~
== TB#STIVB ~I'm dead serious, I won't get angry if you jump on top of me!~
== BIMOEN2 ~...~
= ~I don't think you understand women very well.~
== BIMOEN2 IF ~Gender(Player1,MALE)~ THEN ~You're worse than <CHARNAME> when he was a teenager, Stivan.~
END
EXIT

CHAIN IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanImoen","GLOBAL",11)
HaveSpellRES("spin118")
Global("AnomenIsNotKnight","GLOBAL",0)~ THEN TB#STIVB stivanimoen10
~Veritas... Credo... Oculos!~ [ CAS_PM1M ] 
= ~Heh, I'm a genius! This is the perfect crime!~
DO ~SetGlobal("tb#StivanImoen","GLOBAL",12) SpellRES("spin118","tb#stiv")~
== BIMOEN2 ~I wouldn't try it if I were you. Invisibility breaks if you touch something.~
== TB#STIVB ~Er, I was talking about a plan for taking my vineyards back. Mommy always said that women are not to be touched, not even with a flower, and I always obey her!~
= ~(Maybe that witch is bluffing? I must take advantage of the situation!)~
== BIMOEN2 ~By the way, I've just created a new spell: "Imoen the Quick's Irreversible Transformation in Seagull". Would you like me to cast it on you?~
== TB#STIVB ~...~
= ~Very well, you won. I'll keep my hands in check.~
EXIT

CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanMinsc","GLOBAL",0)~ THEN TB#STIVB stivanminsc1
~I see you talk a lot with your own hamster, Minsc. I didn't think that these fur balls were such interesting talkers.~
DO ~SetGlobal("tb#StivanMinsc","GLOBAL",1)~
== BMINSC ~Boo is a great chatter, and a great bard too! He writes epic poems every time we kick evil in the butt!~
== TB#STIVB ~... I can't see how an hamster could write a song.~
== BMINSC ~He does! Boo always sings every time he is happy, for example about the triumph of justice over evil, or the victories of us paladins against villainy! He also sings about me changing his bedding, sometimes.~
== TB#STIVB ~You rangers have a powerful imagination.~
== BMINSC ~But it is all true! Boo, our friend Stivan is doubting your singing skills!~
= ~What did you say, Boo? You would like to prove him that you are one of the best hamster bards in Rasheman? You want to demonstrate your skills? Very well! Get ready, halfling: you're about to witness my hamster's poetry!~
= ~*Squeak*!~ [ GAM_48 ] 
= ~Have you heard that?!~
== TB#STIVB ~...~
EXIT

CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanMinsc","GLOBAL",1)~ THEN TB#STIVB stivanminsc2
~Boo, would you please not scream like a madman in battle? Your cries are about to make me deaf!~
DO ~SetGlobal("tb#StivanMinsc","GLOBAL",2)~
== BMINSC ~Haha! Have you heard, Boo? Your voice is so powerful it can stun our halfling friend! Keep going like that!~
== TB#STIVB ~... I was talking to you, ranger. While I keep mixing up your names, you're obviously the one who shakes the ground with his roaring.~
== BMINSC ~But Minsc cannot stay as silent as a fish! He must fill his lungs with air and stun enemies with his sounding war cry! Get ready, villainy: Minsc is about to give air to his vocal drums!~
== TB#STIVB ~Did you mean vocal *chords*?~
== BMINSC ~Er... "Drums" is a word of Boo! Right, Boo?~
== TB#STIVB ~Ookay... Either way, I would be grateful if you stopped stunning me. We can defeat evil discreetly, you know?~
== BMINSC ~Minsc will keep morale high with his loud voice, Boo will make sure he won't get his throat sore. It has always been like that, and with time you'll appreciate this ranger's war songs. Boo is sure of that!~
EXIT


CHAIN 
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanAnomen","GLOBAL",3)~ THEN TB#STIVB  stivananomen4
~Don't you find this incredible, Anomen? Who would ever think that both my ruin and your father's was caused by the same sneaking Saerk?~
DO ~SetGlobal("tb#StivanAnomen","GLOBAL",4)~
== BANOMEN ~It doesn't surprise me. That men was always known for his villainy and opportunism. How could the Order kick me out for having killed such filth?~
= ~Hadn't I listened to you and <CHARNAME>, I'm sure that I would be tormented by the remorse for having left Moira's murder go unavenged. After all she went through... After taking care of my drunkard father... How could I forget about it and wait that Justice take its course?~ 
= ~It doesn't make sense. By Helm's beard, why did a girl as noble and altruistic as her die so young? Why?~
== TB#STIVB ~*Ahem* I don't have a reply, but I can imagine how you feel. When I think of my close ones, I always feel like I never spent enough time with them, or that I have been too bad a boy. Not to mention the survivor's guilt...~
== BANOMEN ~I... I don't know why are we talking about this, but I don't feel at ease.~
== TB#STIVB ~But you should. We have far more things in common than you think.~ 
== BANOMEN ~Things in common? Don't compare me to you, felon!~
== TB#STIVB ~... Felon?~
== BANOMEN ~I might have been expelled from the Order, but that doesn't make me a beggar!~
== TB#STIVB ~Hey! What took over you?~
== BANOMEN ~Get away! Get out of my sight!~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanAnomen","GLOBAL",4)~ THEN BANOMEN stivananomen5
~I fear I had been too quick, last time. I didn't want to insult you. Perhaps I should explain myself.~
DO ~SetGlobal("tb#StivanAnomen","GLOBAL",5)~
== TB#STIVB ~(Snort!) That's the least you could do!~
== BANOMEN ~You and I have a lot of things in common, you're right. In our lives we knew loss in various forms, and I should have listened to you and ask you for advice rather than attack you. The problem is that...~
== TB#STIVB ~You have a lot of bent-up anger and it explodes on a whim.~
== BANOMEN ~Exactly. There are times when I feel as if an otherworldly strength is moving through me. If I let myself loose in those moments, I could break anything. Such is the power of the anger of many years, I guess.~
== TB#STIVB ~Time taught me that I should divert anger as much as possible. For example, when I feel particularly angry I kill a seagull in some particularly creative way. I immediately feel better after doing so!~
== BANOMEN ~Hmph. It's easy to say that time fixes up things. It's harder to make you believe that it is so.~
= ~Either way... Thanks.~
== TB#STIVB ~I didn't hear that. What did you say?~
== BANOMEN ~... Don't make me repeat that.~
== TB#STIVB ~Heh. You're welcome.~
EXIT

CHAIN 
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanAnomen","GLOBAL",5)~ THEN TB#STIVB stivananomen6
~Uhm? What is that thing you are playing with, Anomen?~
DO ~SetGlobal("tb#StivanAnomen","GLOBAL",6)~
== BANOMEN ~This? It's a ring. A very precious one.~
== TB#STIVB ~Strange. I'm usually the first person to check all chests we meet. Had I found such an item, I would have kept... I mean, I would have checked it for traps before handing it off to <CHARNAME>. Heh.~
== BANOMEN ~This is not loot, this is... A gift.~
= ~When I moved into the Order's quarters, my sister and I began to write and confess to each other. We were always close, but we grew closer after Sir Ryan Trawl took me under his wing. I would have never believed that distance would have such power.~
= ~In her letters, Moira mentioned her financial difficulties. My father began to sell some goods and fired some guards to pay his debts off, but they were already too much. Far too much.~
= ~My sister had to do servile tasks. Cleaning, cooking... Tasks that were below her stature and she wasn't used to.~
== TB#STIVB ~*Ahem* I know full well how harsh and hard to swallow is it to descend into poverty.~
== BANOMEN ~Even so, she never complained about her troubles. Later, I also learned that she had to sell some jewelry and clothing to help my father face his financial troubles.~
== TB#STIVB ~How did you find out?~
== BANOMEN ~Hmph. One of the Squires in the Order had just bought a ring for her beloved, and was telling everybody the low price he had acquired it for. I was shocked to see that it was the ring that my mother gave Moira before dying.~
= ~After recovering from the shock, I told him to hand it to me because it was my family's.~
== TB#STIVB ~Being an aspiring goody two-shoes, he must have handed it back that very instant.~
== BANOMEN ~It didn't go like that. After laughing to my face, he told me that it wasn't his problem if his family would have had to move to the Slums. The other squires, after hearing him, started laughing with him.~
= ~After such an insult, I went completely mad.~
= ~Furious, I hit him in the face, and if the other squires didn't stop me I would have kept punching him. His face was a blood mask... I then learned I broke his nose, but in that moment I had such an anger, such a blind hatred burning in me...~
= ~My rage was harshly punished by the Order, but I still had my sister's ring back. I found it the next day in my quarters.~
== TB#STIVB ~Well, it must be worth a lot if you didn't hesitate to put your rigid discipline aside to have it back. Will you keep it as a memento of your mother and Moira's?~
== BANOMEN IF~Global("AnomenRomanceActive","GLOBAL",2)~ THEN ~No. I want to give it to <CHARNAME> as soon as I can find the moment to do so. That... that will seal our love.~
== BANOMEN IF~!Global("AnomenRomanceActive","GLOBAL",2)~ THEN ~No. I'll give it to the woman I will marry one day, as a token of my love for her.~
== TB#STIVB ~Ah. Well. I'm... happy to know so.~
== BANOMEN ~Is there something wrong?~
== TB#STIVB ~No no. I just noticed we've been talking a lot. I wouldn't want to slow the party down.~
== BANOMEN ~Indeed you are right, my friend. Let us continue, then.~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanAnomen","GLOBAL",7)~ THEN BANOMEN stivanomen8
~This isn't good. When you charge an enemy, you must keep your weapon at chest height. That way, you'll be ready for either attack or defense against possible surprise attacks.~
DO ~SetGlobal("tb#StivanAnomen","GLOBAL",8)~
== TB#STIVB ~Uhm... Like this?~
== BANOMEN ~Exactly. Let us try again.~
= ~No, this isn't right. You don't have enough confidence with your armor. You must improve your balance; wearing a very heavy armor would be good exercise.~
== TB#STIVB ~I don't get it. If I wore heavier armor, I'd be slower, not the other way.~
== BANOMEN ~Maybe the first moment; with time, your training will give you grace when in light armor.~
= ~Again.~ 
== TB#STIVB ~(Pant pant) I'm tired...~
== BANOMEN ~Good. That means your muscles are working correctly. Let us continue a little further.~
== TB#STIVB ~... Somebody help me!~
EXIT

CHAIN 
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanKorgan","GLOBAL",2)~ THEN TB#STIVB stivankorgan3
~Uhm?~ 
DO ~SetGlobal("tb#StivanKorgan","GLOBAL",3)~
= ~A book fell out of your backpack, Korgan.~
== BKORGAN ~Eh? What the hell are you talking about? I don't waste my time reading. Books are for pansies, exactly like that weakling Pimlico.~
== TB#STIVB ~Let's see what is it about.~
= ~...~
= ~Oh!~
= ~Ohhh!~
= ~Ooohhhhh!~
= ~(Blushes) But... But this is a collection of licentious poetry!~
== BKORGAN ~Give me, sand-headed fool, or I'll show you your own guts!~
== TB#STIVB ~"I saw a lass next to her lover.
He softly took her hand;
They looked each other in the eye,
Then looked around for her parents;
And since they didn't see them,
Quickly... Well, did as we all do".~
= ~Ohhh! How audacious!~
== BVICONI IF~IsValidForPartyDialog("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN ~Poor hargluk. You need the yellow pages of a book to satisfy your own libido.~
== BKORGAN ~You'll see how audacious I am in opening you up! Give it to me!~
== TB#STIVB ~So it is yours!~
== BKORGAN ~Give it back or I'll make your face unrecognizable!~
== TB#STIVB ~Er... No, thank you. It's an interesting thought, but it's just not for me. Here's your book.~
= ~I didn't think you were the type for this sort of book. I thought you favored books with pictures!~
== BKORGAN ~Damn bastard, come here! I'll cut your damned sewer tongue up!~
== TB#STIVB ~Eeeekkkk!~
== BEDWIN IF~IsValidForPartyDialog("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN ~(Excellent. It all went as planned).~
EXIT

CHAIN 
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanNalia","GLOBAL",0)~ THEN TB#STIVB stivannalia1
~Miss Nalia, let me repeat once more how happy I am to travel with you. There's no beggar in this town who doesn't know the goodness of your heart!~
DO ~SetGlobal("tb#StivanNalia","GLOBAL",1)~ 
== BNALIA ~Please, don't be this formal to me. I already the servants and guards in the Manor for that. Instead, could you repeat me your name??~
== TB#STIVB ~Ooohhhhh! As every self-respecting noble, you dislike peasants to the point you forget their names!~
== BNALIA ~No, it's not like that! I just... am very tense, and can't think of anything, except for defending my house.~
== TB#STIVB ~Heh. You don't need to excuse yourself. Either way, I am Stivan. Stivan the Hunter.~
== BNALIA ~A pleasure, Stivan. I am... Well, you already know who I am. It's always strange to see that others know you, while you don't know who are you talking to.~
== TB#STIVB ~Are you saying you never heard of my prowess as a seagull exterminator?~
== BNALIA ~Auntie filters out everything from the outside world. There are few things I get to know without her allowing it.~
= ~Some years ago, for instance, for my Father's birthday, a bard sang some... explicit poems. Auntie really disliked those "obscene" verses and quickly kicked the story teller out. Since then, nobody dared utter anything bawdy in the manor.~
= ~I'm sorry I interrupted you. You were saying?~
== TB#STIVB ~For me... For me it would be a great honor if I could... kiss your hand. Would you let this halfling let his lips on your royal skin?~
== BNALIA ~Only if you stop calling me "Miss".~
== TB#STIVB ~That's impossible, Miss Nalia.~
= ~*Smack*~
= ~Heh. Now I can die happy.~
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
~(Sniff) Miss Nalia... I... I am *so* sorry for your loss!~
DO ~SetGlobal("tb#StivanNaliaFatherDeath","GLOBAL",1)~
== BNALIA ~Don't be so sad, Stivan. It's... It's something I must learn to live with. After all, a close one's death isn't a new experience to me. I already suffered it years ago, when I lost my Mother, even if I was a mere child then.~
== BJAHEIR IF ~IsValidForPartyDialog("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN ~ Death is part of life itself. We always wish that such a moment never comes, although it is ineluctable.~
== TB#STIVB ~You're... You're so royal, even in sorrow! This... (Sniff) This makes me cry even more!~
== BNALIA ~Stop it, Stivan, or... or I'll start crying too.~
END
IF ~~ THEN REPLY ~And me too... *SOB*!~ EXTERN BNALIA AfterFatherDeath1-1
IF ~~ THEN REPLY ~Might I ask how you lost your mother? I never knew my own.~ EXTERN BNALIA AfterFatherDeath1-2
IF ~~ THEN REPLY ~I know what you're going through, Nalia. Try to find some courage and live on; prove to yourself your strength.~ EXTERN BNALIA AfterFatherDeath1-3
IF ~~ THEN REPLY ~I don't want to sound unsympathetic, but those who have work to do lack the time for tears.~ EXTERN BNALIA AfterFatherDeath1-4

APPEND BNALIA

IF ~~ THEN BEGIN AfterFatherDeath1-1
SAY ~You too, <CHARNAME>! I...~
= ~I didn't expect you to share my sorrow like this, but I don't want to afflict you. I will find strength and go on. It's the only thing I could do.~
= ~(Smiles) Let us continue, now, before you start crying yet again!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN AfterFatherDeath1-2
SAY ~Really? So we're both orphans, although I guess I'm lucky I spent some time with my own mother, no matter how little.~ 
= ~Mother was a great woman, you know? She had a generous and untiring soul, and was always ready to help those in need. Unfortunately she died young... She took on a disease no healer could find a cure for.~
= ~Auntie often repeats that it was surely something she catched from some poor man she helped, hoping I get afraid and get back between the safe walls of the manor. In fact, she doesn't do anything, except convince me I should follow my mother's example.~
= ~But enough reminiscence. It would be better to get back to whatever we were doing. Some distraction would be good.~
IF ~~ THEN EXIT
END
END

CHAIN
IF ~~ THEN BNALIA AfterFatherDeath1-3
~That's what I'm about to do. I thank you for your closeness, <CHARNAME>, and yours too, Stivan.~
== TB#STIVB ~(Sniff) Duty, Miss Nalia. Duty...~
EXIT

CHAIN
IF ~~ THEN BNALIA AfterFatherDeath1-4
~Your words are harsh and painful, but truthful. Let us go, Stivan. Let us not make <CHARNAME> waste any more time.~
== TB#STIVB ~(Snort!) You're a monster! How could you be that mean to Miss Nalia in such a difficult moment? Weren't my eyes full of tears, I'd choke you with every plume I have in my sack!~
EXIT

CHAIN 
IF ~InParty("tb#Stiv")
See("tb#Stiv")
!StateCheck("tb#Stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanNaliaFatherDeath","GLOBAL",1)
Global("tb#StivanNaliaManor","GLOBAL",0)
Global("KeepPlot","GLOBAL",0)~ THEN BNALIA stivannaliakeep
~I never thought I'd miss my manor, but it is so. And to think that I used to feel breathless between its walls and wished nothing but to flee from it!~
DO ~SetGlobal("tb#StivanNaliaManor","GLOBAL",1)~
== TB#STIVB ~It's just normal that you miss it. Big or small, rich or poor, home will always be the place of our love. Did you know how I lost mine?~
== BNALIA ~No, you never told me so. How did that happen?~
== TB#STIVB ~Nothing like the invasion you suffered.~
= ~When my parents and siblings were killed, I asked my father's partners for help, since I didn't know how to handle money and vineyards. It was a fatal mistake, since that coward stole my papers and showed the court false documents, where he was named as the owner of everything that was my family's.~
= ~Ruin came quickly, but... *Ahem* This isn't the point.~
= ~I did anything I could to keep my home close. Why didn't you do the same with your manor?~ 
== BNALIA IF ~!Class(Player1,FIGHTER_ALL)~ THEN ~I had no chance. If <CHARNAME> were a warrior, I could have named him <PRO_LADYLORD> of the manor, so that he could take care of it; however, since <PRO_HESHE> is a <CLASS>, that was ruled out.~
== BNALIA IF ~Class(Player1,FIGHTER_ALL)~ THEN ~I didn't give up immediately. I asked <CHARNAME> to become <PRO_LADYLORD> of the manor, but <PRO_HESHE> refused.~
== TB#STIVB ~But why did you put all chips on <PRO_HESHE>? There are many warriors who would die for such a chance. That guy near the palisade, for example?~
== BNALIA ~I thought of Captain Arat as well, but he refused.~
== TB#STIVB ~Why?~
== BNALIA ~He feels guilty of my father's death. He thinks he should have done more to save him.~
== TB#STIVB ~I see.~
BRANCH ~IsValidForPartyDialog("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ BEGIN
== TB#STIVB ~What about Korgan?~
== BKORGAN ~(Belches) Eh?~
== TB#STIVB ~... Forget about that.~
END
== TB#STIVB ~*Ahem* and me? Didn't you think about me?~
== BNALIA ~... You?~
== TB#STIVB ~Yes! Just imagine it: your manor, restored to its former glory by Master Stivan's wise guidance. A fortress of peace and wealth, where siege weapons would only act to kill the attacking birds.~
= ~It would be perfect!~
== BNALIA ~Er... I think you could have needed some guidance the first dozen of years. Just to learn some... basic facts. For instance, never mention seagulls to Auntie.~
== TB#STIVB ~Why?~
== BNALIA ~It's better you don't, Stivan. Trust me.~
== TB#STIVB ~Heh. You'd be the perfect guide. What do you think? Could it be done?~
== BNALIA ~I don't know, Stivan. I guess there's no law against it, but I need time to think about it. I don't know if returning to the manor is what I really want.~
EXIT

CHAIN 
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
CombatCounter(0)
Global("NaliaIsaeaPlotDone","GLOBAL",1)
Global("tb#StivanNaliaPrison","GLOBAL",0)~ THEN TB#STIVB stivannaliaprison
~I felt your absence while you were jailed, Miss Nalia. It was worse than running out of seagull poo!~
DO ~SetGlobal("tb#StivanNaliaPrison","GLOBAL",1)~
== BNALIA ~Er... I guess I should feel glad of that...~
== TB#STIVB ~Did someone dare hurt you? If it were so, don't hesitate in telling me: Stivan the Hunter will punish any attack on your person!~
== BNALIA ~Nothing out of the appropriate, Stivan. Instead, I learned something useful. There were some men - Shadow Thieves, given the hoods - I talked with about traps and locks. They mentioned a new device, thought up by the Guards of Athkatla, that could cut your hands off if you don't correctly deactivate it before moving the tumblers.~
= ~See? Even whose without blue blood can be--~
== TB#STIVB ~Eeeekkkk!~
== BNALIA ~What's wrong, Stivan?!~
== TB#STIVB ~Your robe...!~
== BNALIA ~My robe? It looks fine to me.~
== TB#STIVB ~It's stained!~
== BNALIA ~(Sigh) And I feared it was something bad. I'll clean it as soon as...~
= ~Stivan, what are you doing?~
== TB#STIVB ~Let me handle it, Miss Nalia! Noting removes stains better than seagull poo!~
== BNALIA ~Truly, Stivan, there's no need--~
== TB#STIVB ~Don't worry! That stain won't live to see tomorrow!~
= ~...~
= ~... See? Completely gone!~
== BNALIA ~It obviously disappeared! You put a hole in my robe!~
== TB#STIVB ~Whoops.~
= ~I'm sorry, Miss Nalia, I... just wanted to help...~
== BNALIA ~It's not a problem, Stivan. I know very well you just wanted to help.~
== TB#STIVB ~Eeeekkkk!~
== BNALIA ~What's wrong now?!~
== TB#STIVB ~Your face... It's dirty! Let me...~
== BNALIA ~Oh no! Not the face!~
EXIT

CHAIN
IF ~InParty("tb#stiv")
InParty("Cernd")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
!StateCheck("Cernd",CD_STATE_NOTVALID)
CombatCounter(0)
GlobalGT("tb#StivanCernd","GLOBAL",2)
Global("BJaheira11","LOCALS",1)
Global("tb#StivanCerndJaheira","GLOBAL",0)~ THEN BJAHEIR  jaheirastivancernd
~I couldn't help but listen to your last conversation with the boy, Cernd, and it looks like you want to teach him about the Balance. Is that so?~
DO ~SetGlobal("tb#StivanCerndJaheira","GLOBAL",1)~
== BCERND ~It is.~
== TB#STIVB ~Uhm... I feel as if those two were talking about me...~
== BJAHEIR ~An ambitious plan. Why did you take this responsibility on?~
== BCERND ~Hatred calls for hatred, as love calls for love, and it is our duty to counteract the negative tendency. Besides...~
= ~I'm sorry if I hesitate, but I strongly feel as if his destiny will one day influence us all. I don't know what lies in wait for him, but I know I must strive to direct him along the right path.~
== BJAHEIR ~"It is our tomorrow that dictates the laws of our today". It is one of the first lessons we learn, although it's not an easy one to keep in mind.~
= ~You'll have my support and my help, if you don't think they would slow you down.~
== BCERND ~You're welcome, Jaheira. An artisan and his tools are but one thing when they're working, so I can't be but glad of your offer.~
== BJAHEIR ~...~
== BCERND ~...~
== TB#STIVB ~(Snort!) Stop staring at me like that!~
== BJAHEIR ~I fear we're in for harsh work.~
== BCERND ~As the drop cuts the stone, so we will break into his soul with infinite patience. Even the strongest of fortresses has a crack in its walls, and access to its heart is guaranteed once found.~ 
EXIT


CHAIN
IF ~InParty("tb#stiv")
InParty("Cernd")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
!StateCheck("Cernd",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanValygar","GLOBAL",2)
GlobalGT("tb#StivanCernd","GLOBAL",2)
Global("tb#StivanCerndValygar","GLOBAL",0)~ THEN BVALYGA valygarstivancernd
~Is there a particular reason you decided to took the impertinent one under your wing, Cernd? You look like teacher and student, but I can't tell what you want to teach him.~
DO ~SetGlobal("tb#StivanCerndValygar","GLOBAL",1)~
== TB#STIVB ~*Ahem* Who exactly is impertinent?~
== BCERND ~As a bird defends its child, blind and hungry, from a world they cannot roam, so I take care of Stivan, waiting for the day he will fly off on his own wings.~
== TB#STIVB ~These bird metaphors are *really* tiring. Would you kindly stop comparing me to a bird?~
== BVALYGA ~You chose an hard and unwilling student, don't you think?~
== TB#STIVB ~Do you have a problem with me, ranger?~
== BCERND ~Dog and cat never get on easily, but they know how to live with each other if needed. Try to ignore your dislike of each other in the name of the party's well being.~
== BVALYGA ~My perplexity is well founded, but I trust in your good sense. Act as you feel better, druid.~
EXIT

CHAIN
IF ~InParty("tb#stiv")
!StateCheck("tb#stiv",CD_STATE_NOTVALID)
CombatCounter(0)
Global("tb#StivanJan","GLOBAL",3)~ THEN BJAN jan4
~Look what I found, Stivvy: the book from where I learned how to entertain people during the Great Turnip Recession. Have I ever talked about it?~
DO ~SetGlobal("tb#StivanJan","GLOBAL",4)~
== TB#STIVB ~No, and I'd rather you didn't. You'd just end up in another monologue with no tail and no head. Let me look at your book, instead.~
== BJAN ~"Ten small steps to become a bard", by Volo Geddarm. This isn't the first version, obviously, but rather one amended with the fruits of my bardic experience and the author's suggestions.~
== TB#STIVB ~What?! Are you joking? Did you really know and work with the great Volo?~
== BJAN ~Sure, although my career as a writer started many years before that cooperation. My first book was "Don't throw anything of a woman away - 21 ways to cook them". A great tome, that one. It suggests a radical new way of handling the gentle sex, although the problem isn't cooking them, but digesting them.~
= ~I still don't know if women prefer to be caught, surprised or understood. What do you think about it?~
== BMAZZY IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN ~(Sigh) What nonsense I have to listen to...~
== TB#STIVB ~The first thing this book says is that dwarves, halflings and gnomes shouldn't consider the bardic career.~
= ~"Those creatures, known for fat limbs, short body and horrid voice, aren't appropriate for the complex art we are about to discuss".~
= ~But that's racist!~
== BJAN ~Don't listen to such garbage, Stivvy. I am living proof of how far a gnomish bard can go.~
== TB#STIVB ~*Ahem* It says that Jan Jansen wrote the first chapter...~
== BJAN ~That Jan Jansen isn't worth a single turnip, trust me. If Aunt Petunia weren't in the Moonshe on mission, she'd give him a good thrashing, she would!~
== TB#STIVB ~...~
EXIT


CHAIN IF ~Global("tb#StivanAerie","GLOBAL",100) InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN baerie post-quest
~I... I noticed you avoid me, Stivan.~
DO ~SetGlobal("tb#StivanAerie","GLOBAL",101)~
== tb#stivb ~And that's what I'm about to continue doing. If I heard your laments, I doubt I could keep myself from insulting you.~
== baerie ~B-but... I thought that...~
BRANCH ~GlobalLT("tb#stivanCernd","GLOBAL",3)~ BEGIN // senza cernd, o dopo pochi dialoghi tra di loro
== tb#stivb ~What? Things would be different between us after what happened in the circus? There's no difference to me, you're still the same big crying baby!~
== baerie ~O-Okay! I'll let you gaze into the emptiness that is your life by yourself if that is what you wish!~
== tb#stivb ~Just about time!~
END
BRANCH ~GlobalGT("tb#stivanCernd","GLOBAL",4)~ BEGIN // dopo il banter a Brynnlaw, Stivan sta cominciando a cambiare visione del mondo
== tb#stivb ~I... am sorry,, Aerie. We disagree on too many things, especially how to handle life's hardships. I doubt it would be better if I didn't talk to you, instead of opening my mouth and telling you something I would then be sorry of.~
== baerie ~I... See. I thank you for your calm honesty.~
BRANCH ~InParty("cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ BEGIN
== bcernd ~I see you're becoming responsible in your behavior towards our travel companions. I am glad of this development.~
== tb#stivb IF ~GlobalLT("tb#stivanCernd","GLOBAL",8)~ THEN // prima del banter "Cernd, potresti attirare un'altro gabbiano? Ora so che cosa dirgli."
~(covers his hears) Lalalalala, I-don’t-hear-you!~
== tb#stivb IF ~GlobalGT("tb#stivanCernd","GLOBAL",7)~ THEN // dopo il suddetto banter
~I... Bah! If I kept going this way, you'll make me go soft enough to open an hospital for feathered beings or clean some paladin's shoes!~
END
END
EXIT
