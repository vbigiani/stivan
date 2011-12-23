APPEND tb#stivj

IF ~GlobalTimerNotExpired("tb#stivanAngry","GLOBAL")~ THEN PIDAngry
SAY ~(Stivan ignores you when you try to talk to him. He gives you the cold shoulder and gets back to his thoughts).~
IF ~~ THEN DO ~StartCutScene("tb#sfix")~ EXIT
END

IF ~IsGabber(Player1) OR (6)
AreaCheck("AR2900")
AreaCheck("AR2901")
AreaCheck("AR2902")
AreaCheck("AR2903")
AreaCheck("AR2904")
AreaCheck("AR2905")
~ THEN PIDHell
SAY ~K-Keep close, <CHARNAME>. This place is frightening, and I d-don't know how long I'll manage not to run away.~
IF ~~ THEN DO ~StartCutScene("tb#sfix2")~ EXIT
END

IF ~IsGabber(Player1)~ THEN BEGIN PID1
SAY ~Stivan the Hunter is listening to you, <CHARNAME>!~
IF ~HPPercentGT("tb#stiv",74)~ THEN REPLY ~Is everything all right, my friend?~ GOTO PD1-1
IF ~HPPercentLT("tb#stiv",75) HPPercentGT("tb#stiv",49)~ THEN REPLY ~Is everything all right, my friend?~ GOTO PD1-2
IF ~HPPercentLT("tb#stiv",50) HPPercentGT("tb#stiv",24)~ THEN REPLY ~Is everything all right, my friend?~ GOTO PD1-3
IF ~HPPercentLT("tb#stiv",25)~ THEN REPLY ~Is everything all right, my friend?~ GOTO PD1-4
IF ~Race(Player1,HALFLING)~ THEN REPLY ~It is a pleasure to travel in the company of another halfling.~ GOTO PD2-2
IF ~!Race(Player1,HALFLING)~ THEN REPLY ~It is a pleasure to travel in your company.~ GOTO PD2-2
IF ~~ THEN REPLY ~Let's talk about our companions. What do you think about...~ GOTO PD3-1
IF ~~ THEN REPLY ~I need your guidance, Stivan. Tell me everything you know about Athkatla.~ GOTO PD4-1
IF ~Global("knowsmurders","GLOBAL",1) OR(2) Global("MerchantHide","GLOBAL",0) Global("TalkedToHooker2","GLOBAL",0)~ THEN REPLY ~I'm looking into the recent killings in the Bridge District. Do you know anything about them?~ GOTO PD5
IF ~~ THEN REPLY ~I was wondering if you knew anything about Irenicus, the mage we're hunting.~ GOTO PD6
IF ~GlobalLT("Chapter","GLOBAL",4)~ THEN REPLY ~Since you're Athkatlan, I was wondering if you knew anything about where the people arrested by the Cowled Wizards are kept?~ GOTO PD7
IF ~GlobalLT("Chapter","GLOBAL",4)~ THEN REPLY ~What do you know about the Guild War?~ GOTO PD8
IF ~Global("TMAcceptance","GLOBAL",1) Dead("cefald01")  OR(2) Dead("trgeni01") Global("geniesgone","GLOBAL",1)~ THEN REPLY ~I seem to recall you've already been to Trademeet.~ GOTO PD9-solved
IF ~Global("TMAcceptance","GLOBAL",1) OR(2) !Dead("cefald01") !Dead("trgeni01") OR(2) !Dead("cefald01") !Global("geniesgone","GLOBAL",1)~ THEN REPLY ~I seem to recall you've already been to Trademeet.~ GOTO PD9
IF ~Global("WorkingForAran","GLOBAL",1)~ THEN REPLY ~Do you think I did the right thing in turning down Bodhi's offer?~ GOTO PD10
IF ~Global("WorkingForBodhi","GLOBAL",1)~ THEN REPLY ~Do you think I did the right thing in accepting Bodhi's offer?~ GOTO PD11
IF ~Global("MaeVarWork","GLOBAL",3)~ THEN REPLY ~I need you to sneak into the Temple of Talos and acquire the Necklace of the Weathermistress.~ GOTO PD12
IF ~Global("MaeVarWork","GLOBAL",1)~ THEN REPLY ~I need you to sneak into the Temple of Lathander and acquire the golden statuette.~ GOTO PD12
IF ~Global("EdwinJob","GLOBAL",3)~ THEN REPLY ~I need to acquire Edwin's documents without drawing undue attention to myself. I thing you're good enough to pick his pockets unseen, are you?~ GOTO PD13
IF ~Global("SpawnBarg","GLOBAL",1) Global("RoenalConvict","GLOBAL",0)~ THEN REPLY ~To be able to free Nalia we'll need to acquire enough evidence to condemn Isaea. Do you think you're able to sneak in his residence and look for any compromising documents?~ GOTO PD14
IF ~Global("crothfCreate","GLOBAL",1) !Global("TakenBlame","GLOBAL",1)~ THEN REPLY ~Have you ever heard about Aulava and Tiiro?~ GOTO PD18-1
IF ~Global("tb#EdwinComplainsOfStivan","GLOBAL",1)~ THEN REPLY ~Stivan, Edwin says you're disquiet during the nights.~ DO ~SetGlobal("tb#EdwinComplainsOfStivan","GLOBAL",2)~ GOTO PD16
IF ~~ THEN REPLY ~I need to make sure you're not a doppelganger. What's the thing Stivan hates the most in the world?~ GOTO PD15
IF ~~ THEN REPLY ~It's all right. Let's go.~ EXIT
IF ~~ THEN REPLY ~Stivan, your voice sounds like a seagull's noise.~ GOTO PD17
END


IF ~~ THEN BEGIN PD1-1
SAY ~I never felt this good!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD1-2
SAY ~It's all right.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD1-3
SAY ~I'm feeling a bit weak. At times I feel like I'm seeing double, but I'd imagine it's a simple headache.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD1-4
SAY ~(Cough) Not at all... The way I'm feeling, a simple seagull could take me down...~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD2-2
SAY ~Heh. I'm even too friendly a guy!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-1
SAY ~... Yes?~
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
IF ~InParty("Nalia") !Dead("TorGal")~ THEN REPLY ~Nalia?~ GOTO PD3-21
IF ~InParty("Nalia")  Dead("TorGal")~ THEN REPLY ~Nalia?~ GOTO PD3-22
IF ~InParty("Mazzy")~ THEN REPLY ~Mazzy?~ GOTO PD3-23
IF ~InParty("Korgan")~ THEN REPLY ~Korgan?~ GOTO PD3-24
IF ~InParty("Imoen2")~ THEN REPLY ~Imoen?~ GOTO PD3-26
IF ~InParty("Minsc") GlobalLT("tb#StivanMinsc","GLOBAL",3)~ THEN REPLY ~Minsc?~ GOTO PD3-27
IF ~InParty("Minsc") GlobalGT("tb#StivanMinsc","GLOBAL",2)~ THEN REPLY ~Minsc?~ GOTO PD3-28
IF ~~ THEN REPLY ~It's all right.~ EXIT
END

IF ~~ THEN BEGIN PD3-2
SAY ~...~
= ~... I don't think I need to say anything else.~ 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-3
SAY ~Heh. We've been getting on really well since he became a woman!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-4
SAY ~*Ahem* Is it me, or there's something between you and the Red Danger?~
IF ~~ THEN REPLY ~That might be.~ GOTO PD3-4a
IF ~~ THEN REPLY ~I wouldn't say so. We don't do anything but yell at each other!~ GOTO PD3-4b
IF ~~ THEN REPLY ~I'd never thought Edwin could be this... fascinating. But he is. He cast a spell me.~ GOTO PD3-4c
END

IF ~~ THEN BEGIN PD3-4a
SAY ~Well, if you don't know it yourself, don't bash your head at it. After all, don't they sat that if the brain is looking, the heart is finding?~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-4b
SAY ~Mommy always said that quarreling comes before loving. It's already been done, <CHARNAME>.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-4c
SAY ~Heh. You said it yourself. There's no way it would've happened without sorcery.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-5
SAY ~His tales are as meandering as seagulls' flights - and you don't know, <CHARNAME>, just how much they are. Other than that, he's alright~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-6
SAY ~He's a good bard, but, er... He has the bad habit of calling me Seagull. Of all pet names, why did he choose *that*?~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-7
SAY ~Are you talking about the wingless feathered one? Well, if she doesn't stop freeing the seagulls I capture, I swear she'll be missing some extra limbs!~
IF ~GlobalLT("tb#StivanAerie","GLOBAL",100)~ THEN EXIT
IF ~GlobalGT("tb#StivanAerie","GLOBAL",99)~ THEN GOTO PD3-7a
END

IF ~~ THEN BEGIN PD3-8
SAY ~Damned bird guardian... How could Haer'Dalis fall in love with such a creature?~
IF ~GlobalLT("tb#StivanAerie","GLOBAL",100)~ THEN EXIT
IF ~GlobalGT("tb#StivanAerie","GLOBAL",99)~ THEN GOTO PD3-7a
END

IF ~~ THEN BEGIN PD3-7a
SAY ~What's worse, ever since she threw that hissy fit and left the party, I can't even call her out when she distracts during battle!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-9
SAY ~She's your... well, you are... you do...~
IF ~~ THEN REPLY ~Come on, Stivan. You can say it.~ GOTO PD3-9a
IF ~~ THEN REPLY ~You're stuttering just like her, right now.~ GOTO PD3-9a
IF ~~ THEN REPLY ~She's my girlfriend, we're lovers and we do what every couple does. Is that what you were going to say?~ GOTO PD3-9a
END

IF ~~ THEN BEGIN PD3-9a
SAY ~(Blushes) Bah! I just hope you won't drag me in your issues!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-10
SAY ~Heh. I really like getting on her nerves, but I must say she's a really interesting person.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-11
SAY ~Well... How could you fall in love with her after all the trouble her Harpist friends dragged you into?~
IF ~~ THEN REPLY ~This is none of your matter.~ GOTO PD3-11a
IF ~~ THEN REPLY ~When you are in love, you don't worry about details such as those.~ GOTO PD3-11b
IF ~~ THEN REPLY ~Jaheira is blameless, Stivan. It was her leaders who took the initiative against me.~ GOTO PD3-11b
END

IF ~~ THEN BEGIN PD3-11a
SAY ~(Snort!) It was you who brought this up!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-11b
SAY ~Love is really something bad. It makes you stop using your brain.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-12
SAY ~It looks like that druid wants to convince me of something, but I can't tell *what*.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-13
SAY ~A mummy talks more than he does, but he magically regains his loquaciousness every time I say something he doesn't like!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-14
SAY ~Tsk. That bigot paladin isn't worthy of my time.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-15
SAY ~I like Yoshi. He's stylish, he's mysterious and he always says the right thing at the right time.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-16
SAY ~Heh. It's a victory when I manage to talk to her and receive less than four insults.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-17
SAY ~(Snort!) I can't figure out why she's stopped feeling like your better.~
IF ~~ THEN REPLY ~That's because we're lovers, Stivan.~ GOTO PD3-17a
IF ~~ THEN REPLY ~I assure you that every talk of ours is sprinkled with her funny pet names. "Stupid idiot" and "Iblith filth" are the ones she uses the most.~ GOTO PD3-17b
IF ~~ THEN REPLY ~Heh. That's because I'm a real Latin Lover.~ GOTO PD3-17a
END

IF ~~ THEN BEGIN PD3-17a
SAY ~...~
= ~... Viconia must have gone mad. There's no other explanation.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-17b
SAY ~Of course. It seemed odd that she'd gone softer on you.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-18
SAY ~*Ahem* I can understand why some people feel like they need a purpose to their life, but why would he look for that in the Order...?~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-19
SAY ~I thought he was a lost person, but he's gotten smarter ever since he was expelled from the Order.~
= ~... Lucky me.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-20
SAY ~(Snort!) You shouldn't even mention him! He wanted to throw away every chance of revenge I had on Saerk to enter that bunch of buffoons. It's as if he didn't exist to me!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-21
SAY ~Rather than asking me what I think of MISS Nalia, why don't we hurry and defend her lands?~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-22
SAY ~It is an honor to travel with her.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-23
SAY ~I'll shut her up permanently soon enough. She doesn't do anything but get mad at me!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-24
SAY ~Korgan is a good dwarf after all... as long as you ignore him when he belches in your face or threatens to gut you.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-26
SAY ~She's all right, for your sister.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-27
SAY ~... Minsc is the hamster and Boo the ranger, right?~
IF ~~ THEN REPLY ~No, it's the other way around.~ GOTO PD3-27a
IF ~~ THEN REPLY ~Er... Yes, it's like that.~ GOTO PD3-27b
END

IF ~~ THEN BEGIN PD3-27a
SAY ~Damn, I'll never figure them out!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-27b
SAY ~Heh. I managed to memorize their names!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD3-28
SAY ~The ranger... Minsc... he didn't deserve my insults. He and his hamster are good people, after all.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD4-1
SAY ~Heh. Throwing modesty aside, I think I could guide you around the City of Coin better than anyone else. Let me take our map... Here. What district do you need help with?~
IF ~~ THEN REPLY ~(You point at the Promenade).~ GOTO PD4-2
IF ~~ THEN REPLY ~(You point at the Slums).~ GOTO PD4-3
IF ~~ THEN REPLY ~(You point at the Bridge District).~ GOTO PD4-4
IF ~~ THEN REPLY ~(You point at the Government District).~ GOTO PD4-5
IF ~~ THEN REPLY ~(You point at the Temple District).~ GOTO PD4-6
IF ~!Global("EntryTest","GLOBAL",7) ~ THEN REPLY ~(You point at the Graveyard District).~ GOTO PD4-7a
IF ~Global("EntryTest","GLOBAL",7) ~ THEN REPLY ~(You point at the Graveyard District).~ GOTO PD4-7b
IF ~~ THEN REPLY ~(You point at the Docks).~ GOTO PD4-8
END

IF ~~ THEN BEGIN PD4-2
SAY ~Waukeen's Promenade is the most important location for commercial exchanges in all Amn. That's also where used to sell our wine to the local or traveling merchants, while I was traveling with the rest of the family.~
= ~I imagine you don't need food and goods, but rather supplies and equipment. There' a place, the Adventurer's Mart, which looks like your kind of place. Daddy never liked its over-proud owner, and me neither. There aren't many other places, <CHARNAME>: that guy has bought out most of the other stores.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD4-3
SAY ~Athkatla has the sad title of being one of the poorest cities of Amn, and the Slums really give that away. That's a no man's land, where everybody does as he pleases, and cut-purses and other lowlife thrive. Imagine, they tried to hold me up! I had to give them all my seagull plumes, to save my life.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD4-4
SAY ~The Bridge District is where you asked the powerful and Famous Stivan the Hunter to join with you!~
= ~It's not by chance that you met me there. When my family was alive, I lived right there. I'd gladly take you to my house, but when I lost it it was sold to a nobleman by the name of Lord Balthis, and his guards don't allow strangers to enter. It is a shame.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD4-5
SAY ~While squalor and poverty are common, don't you think that Athkatla doesn't have its noble class. Their sumptuous residences are found right in that District. The guards kick out anybody who looks like a beggar, so... *Ahem* I warned you.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD4-6
SAY ~*Ahem* That's not really my favorite part of town. The Temple District is where the cults of Helm, Lathander and Talos can be found. Mommy always said that, one day, Yondalla's temple will be there as well, but that has not yet been so.~
= ~I don't particularly like religious people, so I'd appreciate it if we went there as rarely as possible.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD4-7a
SAY ~As you might easily imagine from the name, that is the part of town where the deceased people rest. I hope that, one day, my relatives will rest there as well..~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD4-7b
SAY ~As you might easily imagine from the name, that is the part of town where the deceased people rest. Now my relatives rest there as well, and it's all thanks to you!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD4-8
SAY ~The Docks hold the biggest amount of seagulls I have ever seen, so we must look out for our heads while we are there.~
= ~I heard that it is there that the Shadow Thieves are found, but I don't know if that's true or not. I do know, however, that a skilled dwarf, who can create really powerful weapons, lives there. Maybe we could go there and ask him to create something for you, no?~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD5
SAY ~It's most certainly the work of seagulls. I've seen the latest victim, and he was certainly perforated by a beak. I tried to tell this to the lieutenant who's conducting the investigations, but he told me to stop wasting his time. You'll see I was right.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD6
SAY ~I swear that, until not much time ago, there was a fish-seller in the Docks whose name was Irenicus. Don't look at me like that, it's all true!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD7
SAY ~... In jail?~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD8
SAY ~Is there a guild war? Why did nobody tell me?!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD9
SAY ~Yes, I've already been there. Daddy was in really good relations with the caravan chief that used to stop in Trademeet right on our arrival. I think his name was... Feeraa? Or Raafee?~
= ~Bah. I can't recall his name, but I'm sure I could tell him apart if I met him. Maybe he has some information on what's happening there.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD9-solved
SAY ~Yes, I've already been there. Daddy was in really good relations with the caravan chief that used to stop in Trademeet right on our arrival.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD10
SAY ~I'm happy you decided to remain loyal to the Shadow Thieves. I really prefer them - you can't deny they're friendly, while that woman... she was simply scary!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD11
SAY ~I don't know. I only know that our contact scares me out...~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD12
SAY ~Heh. My skilled hands could steal the whole temple without anyone noticing!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD13
SAY ~You can count on him. When we're in the Sea's Gift, you'll be amazed by my skill!~
IF ~~ THEN DO ~SetGlobal("#tbStivanMarcus","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN PD14
SAY ~I'd be ready to look through every corner of that house if it'll free Miss Nalia. I can't stand the idea that her royal person is stowed away in a squalid prison!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD15
SAY ~Heh. A doppelganger will never be as skilled as me in killing seagulls. or gutting those buffoons from the Radiant Heart. or cutting up those foolish worshipers. Or...~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD16
SAY ~*Ahem* If Edwin feels bothered by yours truly, why doesn't he tell me so himself?~
IF ~~ THEN REPLY ~He said you mutter during your sleep.~ GOTO PD16-2
IF ~Global("EdwinRomanceActive","GLOBAL",2)~ THEN REPLY ~Just for once, Edwin was smart enough to figure out that a neutral third party would've been better. Otherwise, you wouldn't have done anything but insult each other, isn't that so?~ GOTO PD16-4
IF ~!Global("EdwinRomanceActive","GLOBAL",2)~ THEN REPLY ~Just for once, Edwin was smart enough to figure out that a neutral third party would've been better. Otherwise, you wouldn't have done anything but insult each other, isn't that so?~ GOTO PD16-5
END

IF ~~ THEN BEGIN PD16-2
SAY ~Ah yes? Well, I don't know what to do about it. Anybody could have troubled sleep, no?~
IF ~~ THEN REPLY ~Is there some nightmare bothering you?~ GOTO PD16-3
IF ~Global("EdwinRomanceActive","GLOBAL",2)~ THEN REPLY ~Just for once, Edwin was smart enough to figure out that a neutral third party would've been better. Otherwise, you wouldn't have done anything but insult each other, isn't that so?~ GOTO PD16-4
IF ~!Global("EdwinRomanceActive","GLOBAL",2)~ THEN REPLY ~Just for once, Edwin was smart enough to figure out that a neutral third party would've been better. Otherwise, you wouldn't have done anything but insult each other, isn't that so?~ GOTO PD16-5
END

IF ~~ THEN BEGIN PD16-4
SAY ~In any case, our dear wizard could sleep in your arms and away from me, since I bother him so much. I see no other solution.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD16-5
SAY ~In any case, our dear wizard could sleep away from me, since I bother him so much. I see no other solution.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PD17
SAY ~Oh, no!~
= ~Is... is it better now?~
IF ~~ THEN DO ~StartCutScene("tb#sfix")~ EXIT
END

IF ~~ THEN PD18-1
SAY ~Oh, yes. Two really friendly guys. Last month they stole a cart of supplies from a merchant fro Scornubel, and then they gave everything to the poor in the Bridge District, me included. Then, the girl set the cart on fire - I heard they really liked fires.~
IF ~Global("BonnieClyde","GLOBAL",2)~ THEN REPLY ~Oh, great. Now they'll burn everything down and tell I told them to do so. Couldn't you warn me?~ GOTO PD18-2
IF ~Global("BonnieClyde","GLOBAL",4)~ THEN REPLY ~It is good they were separated. If they continued seeing each other, Athkatla would be naught but ashes.~ GOTO PD18-3
IF ~~ THEN REPLY ~I don't envy their parents. It must be brutal to have such wild children.~ GOTO PD18-3
IF ~~ THEN REPLY ~People should follow their example. Everybody should be free to do as he feels better. I can't see why their family couldn't let them be.~ GOTO PD18-4
END

IF ~~ THEN PD18-2
SAY ~You didn't ask me!~
IF ~~ THEN EXIT
END

IF ~~ THEN PD18-3
SAY ~Heh. My parents never had such problems with me and my brothers. We've been always good and obedient. Well, we got in trouble every now and then, but never on purpose, and Mommy never had to do more than slap us a bit.~
IF ~~ THEN EXIT
END

IF ~~ THEN PD18-4
SAY ~Heh. Great spirits have always been violently opposed by average minds.~
IF ~~ THEN EXIT
END
END

CHAIN
IF ~~ THEN TB#STIVJ PD16-3
~Well... I don't recall precisely the last dream I had, but I'll gladly tell you what I can, if you think it will help.~
= ~I'm being eaten alive by seagulls, <CHARNAME>. A enormous flock of those birds hurls itself at me, but I can't run because my feet are as lead, and... and they start eating me, perforating me with their horrible beaks and...~
= ~And nobody comes to my help.~
= ~What such a dream might mean... I don't know.~
== HAERDAJ IF ~InParty("Haerdalis") !StateCheck("Haerdalis",CD_STATE_NOTVALID)~ THEN ~"Never underestimate dreams". My Raelis always said me so, but I never cared much for it. I had other think in my head, you'll understand.~
END
IF ~Global("EdwinRomanceActive","GLOBAL",2)~ THEN EXTERN TB#STIVJ PD16-4
IF ~Global("EdwinRomanceActive","GLOBAL",2)~ THEN EXTERN TB#STIVJ PD16-5
