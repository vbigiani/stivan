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
~Oh! Stivan, you have a butterfly on your hair!~
DO ~SetGlobal("tb#StivanAerie", "GLOBAL",3)~
== TB#STIVB ~...~
= ~... Not anymore.~
== BAERIE ~NO! You... You killed her! Why? Why did you do that?!~
== TB#STIVB ~She won't mistake my hair for a flower next time.~
== BAERIE ~H-How will there be a next time if you killed her? You're... You're a monster!~
== TB#STIVB ~Since you really cared for that butterfly, take her remains and bury them. Here: right in my hand. I think you'll have no small trouble putting them together...~
== BAERIE ~AHHH! D-don't get close!~
== TB#STIVB ~What? You don't want the remains of that small broken-wings creature no more? Oh, my bad: that's what happened to your wings, right?~
== BAERIE ~N-no!~
== BMAZZY IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN ~Now stop, Stivan! You crossed a line!~
== TB#STIVB ~You're right: they've atrophied and withered away!~
== BAERIE ~S-stop it!~
== TB#STIVB ~You do know they'll never grow back?~
== BMAZZY IF ~IsValidForPartyDialog("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN ~*Stop it*!~
== BAERIE ~Ahhh!~
== TB#STIVB ~"And that's how Aerie broke down in tears and ran away". When I want to get rid of somebody unlikable I can be *so* cruel... Mwahahahah!~
== BMINSC IF ~IsValidForPartyDialog("Minsc")~ ~I don't understand. Why is our friend Stivan speaking ill of sweet Aerie?~
== BAERIE IF ~!Dead("quaylem") !Dead("quayle")~ THEN ~*SOB*! I chose. I'm gone... I'm returning to Uncle Quayle!~
== BAERIE IF ~OR(2) Dead("quaylem") Dead("quayle")~ THEN ~*SOB*! I chose. I'm gone... I'm returning to the Circus!~
== BAERIE ~<CHARNAME>, don't... don't look for me. Not before getting rid of that... that...~
END
IF ~OR(2) Global("aerieRomanceActive","GLOBAL",1) Global("aerieRomanceActive","GLOBAL",2)~ THEN REPLY ~Aerie, no! Don't leave me alone!~ EXTERN BAERIE aeriegone3
IF ~OR(2) Global("aerieRomanceActive","GLOBAL",1) Global("aerieRomanceActive","GLOBAL",2)~ THEN REPLY ~I thought... I thought that you and I had something special. Instead, I see you don't hesitate before turning your back on me. Don't I mean anything to you?~ EXTERN BAERIE aeriegone1
IF ~!Global("aerieRomanceActive","GLOBAL",1) !Global("aerieRomanceActive","GLOBAL",2)~ THEN REPLY ~So long. Go away and never come back.~ EXTERN BAERIE aeriegone3
IF ~~ THEN REPLY ~I knew it'd end up like that. Stivan, you're an idiot!~ EXTERN BAERIE aeriegone3
IF ~~ THEN REPLY ~You should be ashamed of yourself. is that how you thank me for saving you from Kalah?~ EXTERN BAERIE aeriegone2

CHAIN IF ~~ THEN BAERIE aeriegone1
~I... It is I who means nothing to you, otherwise you wouldn't have let him hurt me like that! Now... it's over.~
EXTERN BAERIE aeriegone3

CHAIN IF ~~ THEN BAERIE aeriegone2
~No, it didn't go like that. You... saved me only to hand me over to another one! But now... now it's over.~
EXTERN BAERIE aeriegone3

CHAIN IF ~~ THEN BAERIE aeriegone3
~Goodbye, <CHARNAME>.~
BRANCH ~IsValidForPartyDialog("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ BEGIN
== BJAHEIR ~Why don't you face the problem instead of running away? If you back away at every difficulty, you'll learn nothing from life.~
== BAERIE ~What could I learn from someone that evil? And I'm older than you Jaheira... I don't need your help!~
== BJAHEIR ~Age doesn't mean experience. You'll learn it with time, I hope.~
END
BRANCH ~IsValidForPartyDialog("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ BEGIN
== BCERND ~You should be ashamed of yourself, Stivan. Cruelty against animals is training for cruelty against humans.~
== TB#STIVB ~What *the hell* has that to do with that idiot's leaving?~
== BCERND ~Did you forget that your debacle started with your killing of an innocent butterfly?~
== TB#STIVB ~Oh, really?~
== BCERND ~...~
END
BRANCH ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ BEGIN
== BMAZZY ~*Slap!*~
== TB#STIVJ ~Ouch!~
== BMAZZY ~*Slap!*~
== TB#STIVJ ~Ow!~
== BMAZZY ~*Slap!*~
== TB#STIVJ ~I get it, now stop it!~
== BMAZZY ~I'll only stop the moment you'll have adequately offered your apologies! *Slap!*~
== TB#STIVJ ~Poor deluded - Ow!~
END
BRANCH ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ BEGIN
== BNALIA ~Stivan! Your behavior has been inappropriate beyond words!~
== TB#STIVB ~Eh?~
== BNALIA ~You have the moral imperative of going to apologize for your vile attack!~
== TB#STIVB ~Come on, I don't understand smart language! Talk like you eat!~
== BNALIA ~...~
END
== BEDWIN IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN ~(Is he learning how to treat women from me?)~
BRANCH ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ BEGIN
== BVICONI ~And so you chose to fly away, sister of light? Oh, my bad... I forgot you can't fly no more..~
== BAERIE ~It-it's going to feel good to be without you!~
== BVICONI ~I could say the same.~
END
== BVALYGA IF ~InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN ~I don't know if I should feel glad for having rid the party of a wizard, or angry for harboring a demon.~
== BIMOEN2 IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN ~Stivan! Your behavior was everything but nice!~
BRANCH ~IsValidForPartyDialog("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ BEGIN
== BYOSHIM ~It is a shame you're going away.~
== BAERIE ~I have no choice, Yoshimo. I... I'm sorry...~
END
== BKORGAN IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN ~Har har! My congratulations, boy! I'll pay for your prostitute this night, you deserve it!~
== BKELDOR IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN ~How long will you keep abusing our patience, halfling?~
== BANOMEN IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenIsNotKnight","GLOBAL",0)~ THEN ~Come now, <CHARNAME>! How can you continue to host such a trouble-seeker?~
== BANOMEN IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenIsNotKnight","GLOBAL",1)~ THEN ~Aerie is surely a ball to the foot, but the way you got rid of her was excessive. You should never completely burn a bridge.~
BRANCH ~InParty("haerdalis") !StateCheck("haerdalis",CD_STATE_NOTVALID) Global("HaerDalisRomanceActive","GLOBAL",2)~ BEGIN
== BHAERDA ~Wait, Aerie! Don't let this sparrow live without you!~
== BAERIE ~I don't want you to follow me. I... Am really disappointed by your behavior.~
== BHAERDA ~What have I done to sow sadness and displeasure in your heart?~
== BAERIE ~You haven't uttered a single word in my defense! You observed the display of my humiliation without opening your mouth! I... don't want a man who watches with amusement my being derided. No women would..~
END
== BHAERDA IF ~InParty("haerdalis") !StateCheck("haerdalis",CD_STATE_NOTVALID) !Global("HaerDalisRomanceActive","GLOBAL",2)~ THEN ~Does that seem the proper way to treat a lady, my seagull?~
BRANCH ~IsValidForPartyDialog("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) Global("MinscWitch","GLOBAL",1)~ BEGIN
== BMINSC ~What is happening? Why is my witch leaving? Boo! Boo, wake up! We must follow Aerie!~
== BAERIE ~Minsc, you... you'd follow me? Oh, I am grateful, but.. what about your duty towards <CHARNAME>?~
== BMINSC ~Boo says that we can't leave our favorite hero, but Minsc swore to defend you to the last breath! What will we do if some evil man will hurt you like glorious Dynaheir? And what will we do if the bad mage will try to imprison <CHARNAME> again?~
= ~...~
= ~Boo says that nobody knows if the egg or the chicken came first, but Minsc does not have time for philosophical questions!~
== BAERIE ~You don't have to worry. From this moment I.. am no longer your witch. I'll be again a normal Avariel who lost her winds. G-goodbye...~
== BMINSC ~No! NOOO! This ranger and this hamster have lost their witch... again! NOOOOO!!!~
END
== TB#STIVB ~Uhm... Maybe I exaggerated a bit. Do you think I should say 'sorry'?~
END
IF ~~ THEN REPLY ~'A bit'?! You're lucky your head is still attached to the rest of your body! You will apologize this instant!~ EXTERN tb#stivb aeriegone4
IF ~~ THEN REPLY ~I think Aerie is a bother too, but her skills are needed for our mission. Let's go to the Circus, and let's hope she accepts your reparations.~ EXTERN tb#stivb aeriegone4
 
APPEND tb#stivb
  IF ~~ THEN aeriegone4
  SAY ~Heh. Modestly, I'm the best guy at faking apologies there ever was!~
  IF ~~ THEN REPLY ~Stivan!~ GOTO aeriegone5
  END
END

CHAIN IF ~~ THEN tb#stivb aeriegone5
~That's stronger than me, <CHARNAME>. I can resist anything, except temptations.~
BRANCH ~InParty("haerdalis") !StateCheck("haerdalis",CD_STATE_NOTVALID) Global("HaerDalisRomanceActive","GLOBAL",2)~ BEGIN
== BHAERDA ~Oh, gods! The elders do not lie when they say that you know the depth of your love only on the hour of goodbyes!~
== TB#STIVB ~We're not in a theater, Haer'Dalis. Save your drama for another occasion.~
== BHAERDA ~You'd better offer your apologies to my sweet love as soon as possible, otherwise I won't hesitate to wet my blades with your blood to have my dove back.~
END
BRANCH ~IsValidForPartyDialog("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) Global("MinscWitch","GLOBAL",1)~ BEGIN
== TB#STIVB ~Uhm? What's this roaring noise?~
== BMINSC ~RRRAAAARRGGHHH! Boo does not understand how such an evilness could fit a body as small as yours, but Minsc does not care! EVIL, MEET MY SWORD!~
== TB#STIVB ~Eeekkk!~
== BMINSC ~We will tear your ill-speaking limbs and crush your vile bones! Boo won't leave a single scrap behind!~
== TB#STIVB ~I-I'll fix everything! I'll persuade the elf to come back and --~
== BMINSC ~Worthless promises! We only believe what our eyes see, and there is no witch in sight right now! No witch... (sniff) ... for the umpteen time!~
== TB#STIVB ~Don't cry, Minsc. You're making me feel guilty...~
== BMINSC ~*SOB*! Oh, poor me! Why are Minsc's witches always menaced by evil little men? And why Minsc can never protect them?~
END
== TB#STIVB ~Let's go to the circle and see if the big crying baby has calmed herself.~
END
IF ~~ DO ~ActionOverride("aerie",LeaveParty()) ActionOverride("aerie",SetGlobal("KickedOut","LOCALS",1)) ActionOverride("Aerie",LeaveAreaLUA("ar0607","",[469.437],14))~ UNSOLVED_JOURNAL ~Aerie leaves the party.

Stivan insulted Aerie to the point to force her to leave the party in tears. I must go back to the Circus and see if she's willing to forgive us.~ EXIT


APPEND aeriep
  IF WEIGHT #-1 ~GlobalGT("tb#StivanAerie","GLOBAL",2) GlobalLT("tb#StivanAerie","GLOBAL",100) OR(2) !Dead("tb#stiv") InPartyAllowDead("tb#stiv")~ angry
  SAY ~No, <CHARNAME>, I don't want to talk to you. Not until Stivan will have apologized.~
  IF ~~ THEN EXIT
  END
  IF WEIGHT #-1 ~GlobalGT("tb#StivanAerie","GLOBAL",2) GlobalLT("tb#StivanAerie","GLOBAL",100) Dead("tb#stiv") !InPartyAllowDead("tb#stiv")~ angry2
  SAY ~Hello, <CHARNAME>. I see you've gotten rid of Stivan... permanently.~
  IF ~~ THEN DO ~SetGlobal("tb#StivanAerie","GLOBAL",100)~ GOTO angry3
  END

  IF ~~ THEN angry3
  SAY ~D... Do you want me to come back with you?~
  COPY_TRANS aeriep 0
  END
END

APPEND quayle
  IF WEIGHT #-1 ~GlobalGT("tb#StivanAerie","GLOBAL",2) GlobalLT("tb#StivanAerie","GLOBAL",100)~ angry
    SAY ~How you dare show yourself here after what your "friend" did to my Aerie?~
    IF ~~ THEN EXIT
  END
END

CHAIN IF WEIGHT #-100 ~Global("tb#StivanAerie","GLOBAL",3) IsValidForPartyDialog("tb#stiv")~ THEN aeriep assassination
~What are you doing here, <CHARNAME>?~
BRANCH ~IsValidForPartyDialog("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) Global("MinscWitch","GLOBAL",1)~ BEGIN
== BMINSC ~Aerie! You're safe and sound! Oh, your running away has almost broken Boo's little heart, and Minsc's heart was on the verge of breaking too!~
== AERIEP ~I am glad to see you again. I'm sad I've made you suffer, but... you must accept the idea you won't see me again.~
== BMINSC ~No! I won't accept it! Without you Boo and I are as a sheathe without a sword, an hilt without a blade or... an hamster without nuts! You can't leave us!~
== AERIEP ~I...~
== BMINSC ~Minsc understands that you want to be left alone. Sometimes powerful Dynaheir would ask her fierce guardians to leave her alone a bit, but she wouldn't have left them, no sir! She knew very well that after a dark and difficult moment Minsc and Boo were ready to cheer her up!~
== AERIEP ~I'm... moved, Minsc. Only know I know how much you and your hamster loved me!~
== tb#stivj ~*Ahem* I imagine it's my turn. Well, I...~
END
== tb#stivj ~Aerie, behind you! Cast Stoneskin!~
== AERIEP ~Shut up! Why should I listen to you?~
== tb#stivj ~Shut up and do as I say!~
END
IF ~~ THEN DO ~SetGlobal("tb#StivanAerie","GLOBAL",4)~ EXIT

CHAIN IF WEIGHT #-100 ~Global("tb#StivanAerie","GLOBAL",5) Dead("tb#sass") IsValidForPartyDialog("tb#stiv")~ THEN aeriep postassassination
~(Pant pant) Thanks, Stivan. I... Didn't expect such a selfless gesture from you.~
== tb#stivj ~I'm sorry, Aerie, I had been an idiot.~
== aeriep ~It's far too easy to hurt people and then say 'sorry'!~
== tb#stivj ~I am sorry, Aerie, but I don't know what to do, other than repeat the empty ritual of offering an apology.~
= ~Careful! Another one!~
DO ~SetGlobal("tb#StivanAerie","GLOBAL",6)~
EXIT

CHAIN IF WEIGHT #-100 ~Global("tb#StivanAerie","GLOBAL",7) NumDead("tb#sass",3) IsValidForPartyDialog("tb#stiv")~ THEN aeriep divination1
~Baervan help me! Who could hate me enough to send all these assassins?~
== tb#stivj ~I don't know.~
BRANCH ~InParty("haerdalis") !StateCheck("haerdalis",CD_STATE_NOTVALID) Global("HaerDalisRomanceActive","GLOBAL",2)~ BEGIN
== BHAERDA ~My love! Are you hurt? Are you hurt? Are you fine?~
== AERIEP ~Y-yes... I think so, I'm just a little shaken...~
== BHAERDA ~I'm sorry. Forgive me for not having defended your honor as I should have. Instinct dictates duty, but intelligence offers excuses for avoiding it.~
== AERIEP ~This... this is not really the moment.~
== BHAERDA ~I plead you, don't turn me away. Give this sparrow the possibility of redeeming himself from his errors. A broken love, if rebuilt, grows stronger than before.~
= ~Embrace me; embrace me once more, and let your honey lips lie on mine!~
== AERIEP ~(Blushes) We... will talk about this later, after we've understood what's going on...~
END
== tb#stivj ~Is it me or do these guys have the same face? As if they were... twins.~
= ~Gasp! One of them just vanished in thin air!~
== aeriep ~I'm afraid I'm victim of some curse! Some.. somebody wants me dead!~
== BMINSC IF ~IsValidForPartyDialog("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN ~Who?! Who dares attempt to take innocent Aerie's life?!~
== BEDWIN IF ~IsValidForPartyDialog("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN ~Somebody who wants to get rid of a potential enemy. In Thay such spells are commonplace, even if in this case the caster must be out of his mind. (Who would be afraid of such a stuttering fool? *I* am the real menace!)~
END
IF ~OR(2) Kit(Player1,INQUISITOR) Kit(Player1,WIZARDSLAYER)~ THEN REPLY ~I know enough about the dark arts to know that such a ritual requires an object of the victim's. Did you lose something lately?~ EXTERN aeriep divination4
IF ~OR(2) Class(Player1,MAGE_ALL) Class(Player1,SORCERER) !Alignment(Player1,MASK_EVIL)~ THEN REPLY ~I studied enough about curses to know that such a ritual requires an object of the victim's. Did you lose something lately?~ EXTERN aeriep divination4
IF ~OR(2) Class(Player1,MAGE_ALL) Class(Player1,SORCERER) Alignment(Player1,MASK_EVIL)~ THEN REPLY ~I us..studied enough about curses to know that such a ritual requires an object of the victim's. Did you lose something lately?~ EXTERN aeriep divination4
IF ~~ THEN REPLY ~We will do anything possible to protect you. Do you know how to stop these summonings?~ EXTERN aeriep divination2
IF ~~ THEN REPLY ~I don't understand. Did something happen since you left us~ EXTERN aeriep divination3
IF ~~ THEN REPLY ~Obviously all this wouldn't have happened if you didn't leave as theatrically as you did. Ideas are welcome.~ EXTERN aeriep divination2

APPEND aeriep
  IF ~~ THEN divination2
    SAY ~It isn't possible to stop such a curse if you don't know how it was cast! Whomever started all of this must have something of mine... but what?~
    IF ~~ THEN EXTERN aeriep divination4
  END
  
  IF ~~ THEN divination3
    SAY ~No... I ran here straight away. I-I started emptying my backpack and noticed something dear to me was missing...~ 
    IF ~~ THEN EXTERN aeriep divination4
  END
END

CHAIN IF ~~ THEN aeriep divination4
~My... My amulet! With a raccoon-shaped pendant! I thought I'd lost it during a battle, but... that wizard must have stolen it!~
== tb#stivj ~*Ahem* Is it a wooden amulet?~
== aeriep ~Y-yes, but... How do you know? I've always kept it close to avoid ruining it...~
== tb#stivj ~Well, I... It's possible it ended up in the possession of the wrong person...~
END
IF ~~ THEN REPLY ~Do you know who that is?~ EXTERN tb#stivj divination5
IF ~~ THEN REPLY ~This question is pretty obvious, Stivan. If Aerie never wore the amulet, how could you know what material was it made out of?~ EXTERN tb#stivj divination5
IF ~~ THEN REPLY ~I'd rather not say out loud what I'm thinking...~ EXTERN tb#stivj divination5

CHAIN IF ~~ THEN tb#stivj divination5
~La... Last night, during my watch, I stole that trinket from her backpack and threw it away in anger. I later saw somebody picking it up, but...~
== aeriep ~NOO! How... How could you risk my life for something that futile? What were you thinking?!~
== tb#stivj ~(Gulp!) I didn't imagine it was a bad guy!~
== aeriep ~Oh, damn, we can't... I can't lose more time! <CHARNAME>, I... I must find out where the author of this sorcery lives, but I need you to back me up while I cast my divination! I beg you, help me!~
END
IF ~~ THEN REPLY ~I will do so, but let me catch my breath and prepare for the next attack.~ EXTERN aeriep divination6
IF ~~ THEN REPLY ~You don't have to repeat yourself. I'll defend you at the risk of my life!~ EXTERN aeriep divination7

APPEND aeriep
  IF ~~ THEN divination6
  SAY ~Please, be quick!~
    IF ~~ THEN DO ~SetGlobal("tb#StivanAerie","GLOBAL",8)~ EXIT
  END

  IF ~~ THEN divination7
  SAY ~Thanks. I... Will end this terrible nightmare...~
    IF ~~ THEN DO ~SetGlobal("tb#StivanAerie","GLOBAL",9)~ EXIT
  END

  IF WEIGHT #-100 ~Global("tb#StivanAerie","GLOBAL",8) IsValidForPartyDialog("tb#stiv")~ ready
  SAY ~Are you ready?~
    IF ~~ THEN REPLY ~Not yet.~ EXTERN aeriep divination6
    IF ~~ THEN REPLY ~Yes. We'll back you up.~ EXTERN aeriep divination7
  END
END

CHAIN IF WEIGHT #-100 ~Global("tb#stivanAerie","GLOBAL",10) GlobalTimerExpired("tb#StivanAerieTimer","AR0607") IsValidForPartyDialog("tb#stiv")~ THEN aeriep gotTarget
~T-the enchantment was broken before I could read completely read it! I saw a fuzzy image of the location, but I don't know where it is. It could.. it could even not be here in Athkatla, and in that case... Oh, <CHARNAME>, help me!~
END
IF ~~ THEN REPLY ~Wherever he is, we'll find him. Describe the place you saw.~ EXTERN aeriep gotTarget1
IF ~~ THEN REPLY ~Don't let panic take over, Aerie. Take a deep breath and try to focus the vision.~ EXTERN aeriep gotTarget1
IF ~~ THEN REPLY ~I don't intend to leave your alone, but I need to know where is the responsible of this mess. Other than Stivan.~ EXTERN aeriep gotTarget1

CHAIN IF ~~ THEN aeriep gotTarget1
~(Sniff) It... it's a palace. It's s-surrounded by numerous guards, while the road it faces is empty. It's very scary...~
== tb#stivj ~Anything else?~
== aeriep ~From the outside... it looks very rich and... there is a banner on the entrance. A talon banner, I believe...~
== tb#stivj ~*Ahem* I think I figured out which building that is, but I don't know if I should be glad for the discovery or tear my hair out for what lies in wait for us.~
END
IF ~~ THEN REPLY ~What lies in wait for *you*. Don't presume I forgot about your responsibility.~ EXTERN tb#stivj gotTarget2
IF ~~ THEN REPLY ~By the gods, will you get to the point?~ EXTERN tb#stivj gotTarget2
IF ~~ THEN REPLY ~I hope you'll tell me it's here in Athkatla and not on the Cloud Peaks.~ EXTERN tb#stivj gotTarget2

CHAIN IF ~~ THEN tb#stivj gotTarget2
~In the Bridge District is a palace: the mansion of Ester Necri.~
= ~Even if she is one of our people, she's extremely evil. I doubt there is an meaner halfling than her!~
== aeriep ~Y-you...?~
== tb#stivj ~I...~
== aeriep ~You'd claim you aren't evil? You-you gave my killer the weapon for the deed!~
== tb#stivj ~I'm not evil! Mommy always said that I'm just a little... hyper-active, that's all!~
= ~Don't look at me like that, elf. I'm a good halfling, and I'll prove so! If I rescued your trinket, would you be able to end the curse?~
== aeriep ~Y-yes... Having it back would be enough to end the spell cast on it.~
== tb#stivj ~Very well, I'll handle it. You'll have your cloak back and you'll say in front of everyone that I'm not mean!~
== aeriep ~It's an amulet, Stivan...~
== tb#stivj ~That's what I said. <CHARNAME>, take care of Aerie while I sneak into Ester's mansion. I don't want to risk my feet's hairs just to find her dead on my return.~
END
IF ~~ THEN REPLY ~You messed up enough, boy; better than I worry about it. I wouldn't want your next your next distraction to hand me over to our enemies.~ EXTERN tb#STIVJ gotTarget3
IF ~~ THEN REPLY ~You, instead. Try to go unnoticed and don't get distracted by a seagull.~ EXTERN tb#STIVJ gotTarget4
IF ~~ THEN REPLY ~Your plan might work, but I won't let you go without due preparation. Let me put some supplies in your backpack before you go.~ EXTERN tb#STIVJ gotTarget5

APPEND tb#stivj
  IF ~~ THEN gotTarget3
  SAY ~Heh. You're going to figure out what "merchant's ears" means.~
    IF ~~ THEN DO ~SetGlobal("tb#StivanAerie","GLOBAL",12)~ UNSOLVED_JOURNAL ~Aerie leaves the group.
 
In the Circus I found Aerie, luckily before she was killed by mysterious assassins. It looks like the elf had been a victim of a curse cast upon her by an halfling necromancer via her amulet. Since he's partly responsible for what happened, Stivan offered to rescue it: that's the only way to end the enchantment. I'll try to defend Aerie from further attacks in the meantime.~ GOTO gotTarget7
  END
  
  IF ~~ THEN gotTarget4
  SAY ~Heh. I'll do my best.~
    IF ~~ THEN DO ~SetGlobal("tb#StivanAerie","GLOBAL",12)~ UNSOLVED_JOURNAL ~Aerie leaves the group.
 
In the Circus I found Aerie, luckily before she was killed by mysterious assassins. It looks like the elf had been a victim of a curse cast upon her by an halfling necromancer via her amulet. Since he's partly responsible for what happened, Stivan offered to rescue it: that's the only way to end the enchantment. I'll try to defend Aerie from further attacks in the meantime.~ GOTO gotTarget7
  END
  
  IF ~~ THEN gotTarget5
  SAY ~Okay, although I can't promise you'll have them back. Heh.~
    IF ~~ THEN DO ~SetGlobal("tb#StivanAerie","GLOBAL",11)~ UNSOLVED_JOURNAL ~Aerie leaves the group.
 
In the Circus I found Aerie, luckily before she was killed by mysterious assassins. It looks like the elf had been a victim of a curse cast upon her by an halfling necromancer via her amulet. Since he's partly responsible for what happened, Stivan offered to rescue it: that's the only way to end the enchantment. I'll try to defend Aerie from further attacks in the meantime.~ EXIT
  END

  IF WEIGHT #-100 ~Global("tb#StivanAerie","GLOBAL",11)~ gotTarget6
  SAY ~Are you ready to protect Aerie while I do my job?~
    IF ~~ THEN REPLY ~Yes. Try not to get yourself killed, please.~ EXTERN tb#STIVJ gotTarget4
    IF ~~ THEN REPLY ~Not yet, but I've almost finished sorting out what you might need.~ EXTERN tb#STIVJ gotTarget5
  END
END

APPEND aeriep
  IF WEIGHT #-100 ~Global("tb#StivanAerie","GLOBAL",11)~ THEN gotTarget
  SAY ~Maybe.. you should talk with Stivan.~
    IF ~~ THEN EXTERN tb#stivj gotTarget6
  END
END

CHAIN IF ~~ THEN tb#stivj gotTarget7
~Later!~
== MINSCJ IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN ~Boo asks whether it is wise to let the little one go by himself. Minsc is worried too, but <CHARNAME>'s trust is never misplaced!~
== HAERDAJ IF ~InParty("haerdalis") !StateCheck("haerdalis",CD_STATE_NOTVALID) Global("HaerDalisRomanceActive","GLOBAL",2)~ THEN ~Whether 'tis true that luck aids the brave or not, it feels fitting that this seagull flies towards the shores of expiation. If he doesn't return in victory... Well, there'll be a Guardian of Fate awaiting for him.~
BRANCH ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ BEGIN
== MAZZYJ ~Stop, Stivan. You cannot handle such a menace by yourself. Let me accompany you.~
== tb#stivj ~(Snort!) Must you always complain about anything I do or say? Didn't you insist that I fix my error?~
== MAZZYJ ~Yes, but not rashly!~
END
BRANCH ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ BEGIN
== KORGANJ ~Let's see if I got it together correctly, wuss. You're saving that crying baby's life, right when we might get rid ourselves of her forever?~
== tb#stivj ~... Do I have to answer you?~
== KORGANJ ~Joke of a man! Dirty pile of...~
== tb#stivj ~*Ahem* I should go.~
END
EXIT

BEGIN TB#SNEC

IF ~!Dead("tb#sgua") !PartyHasItem("tb#sloc")~ THEN necri
SAY ~Who's there?~
IF ~!StateCheck("tb#stiv",STATE_INVISIBLE)~                                       THEN REPLY ~(Cut her throat silently)~ DO ~SetGlobal("tb#sslitfail","TB#S00",1)~ EXIT
IF ~StateCheck("tb#stiv", STATE_INVISIBLE)~                                       THEN REPLY ~(Cut her throat silently)~ DO ~SetGlobal("tb#sslitsucc","TB#S00",1)~ EXIT
IF ~!StateCheck("tb#stiv", STATE_INVISIBLE)~                                      THEN REPLY ~(Try to steal the amulet)~ DO ~SetGlobal("tb#sslitfail","TB#S00",1)~ EXIT
IF ~StateCheck("tb#stiv", STATE_INVISIBLE) CheckStatLT("tb#stiv",100,PICKPOCKET)~ THEN REPLY ~(Try to steal the amulet)~ DO ~SetGlobal("tb#spickfail","TB#S00",1)~ EXIT
IF ~StateCheck("tb#stiv", STATE_INVISIBLE) CheckStatGT("tb#stiv",99,PICKPOCKET)~  THEN REPLY ~(Try to steal the amulet)~ DO ~SetGlobal("tb#spicksucc","TB#S00",1)~ EXIT
IF ~~                                                                             THEN REPLY ~(Try asking why she is sending assassins against Aerie)~ DO ~SetGlobal("tb#sask","TB#S00",1)~ EXIT
END

IF ~Dead("tb#sgua")~ THEN kill
SAY ~You! You killed my guards! Die!~
IF ~~ THEN DO ~SetGlobal("tb#sslitfail","TB#S00",1)~ EXIT
END

IF ~True()~ THEN last
SAY ~Who's there?~
IF ~~ THEN DO ~SetGlobal("tb#sslitfail","TB#S00",1)~ EXIT
END

CHAIN IF WEIGHT #-100 ~Global("tb#StivanAerie","GLOBAL",13) PartyHasItem("tb#sloc") InMyArea("tb#stiv")~ THEN aeriep final
~The amulet! You have it!~
== tb#stivj ~Here you go, with my excuses for the mess I started.~
DO ~SetGlobal("tb#StivanAerie","GLOBAL",99) EraseJournalEntry(~Aerie leaves the party.

Stivan insulted Aerie to the point to force her to leave the party in tears. I must go back to the Circus and see if she's willing to forgive us.~) EraseJournalEntry(~Aerie leaves the group.
 
In the Circus I found Aerie, luckily before she was killed by mysterious assassins. It looks like the elf had been a victim of a curse cast upon her by an halfling necromancer via her amulet. Since he's partly responsible for what happened, Stivan offered to rescue it: that's the only way to end the enchantment. I'll try to defend Aerie from further attacks in the meantime.~) AddJournalEntry(~Aerie leaves the group.
 
Stivan was able to rescue Aerie's wooden pendant, and she broke the enchantment right away. The halfling apologized to the still-wary elf. I can only hope they're done attacking each other... I can't take it anymore!~,QUEST_DONE)~

== aeriep ~Now... now I'll break that horrible curse forever!~
EXIT

CHAIN IF WEIGHT #-100 ~Global("tb#StivanAerie","GLOBAL",99)~ THEN tb#stivj final
~Did it work?~
DO ~SetGlobal("tb#stivanAerie","GLOBAL",100)~
== aeriep ~Y-yes... I think so.~
BRANCH ~InParty("haerdalis") !StateCheck("haerdalis",CD_STATE_NOTVALID) Global("HaerDalisRomanceActive","GLOBAL",2)~ BEGIN
== aeriep ~Haer'Dalis, I... I was so very much afraid! I was afraid of dying and... losing you...!~
== HAERDAJ ~Come here, my love. A single embrace will be enough to give quiet and calm to your heart. I was afraid as well that the Star of Osiris would soon show your way towards the Dead Reign's gates, but your place is here, by my side.~
END
BRANCH ~IsValidForPartyDialog("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) Global("MinscWitch","GLOBAL",1)~ BEGIN
== MINSCJ ~Hamsters and rangers everywhere, rejoice! Aerie is safe!~
== aeriep ~It's also thanks to you. You protected me with courage and strength even after I removed your duty from you. I.. no matter how shaken I was, I shouldn't have left you that way.~
== MINSCJ ~Minsc's large shoulders will endure this and much more. You.. will you become my witch again?~
== aeriep ~Certainly, Minsc. I'll be your witch for as long as your dajemma isn't over.~
== MINSCJ ~Have you heard, evil?! Your reek will NEVER tear a ranger and his hamster away from their witch!~
END
== tb#stivj ~Might I ask why you care so much for that trinket?~
== aeriep IF ~OR(2) Dead("quaylem") Dead("quayle")~ THEN ~It's a gift from Uncle Quayle. He gave it to me when he started telling me of the adventures of Baervan and his loyal raccoon Chiktika Fastpaws. Aside from the memories, th-that's everything left of him...~
== aeriep IF ~!Dead("quaylem") !Dead("quayle")~ THEN ~It's a gift from Uncle Quayle. He gave it to me when he started telling me of the adventures of Baervan and his loyal raccoon Chiktika Fastpaws. I-I like to hold it close when I'm feeling him homesick...~
== tb#stivj ~Great. Now I feel even worse for having thrown it away.~
== aeriep ~Every action has its consequences, and those who act rashly like you cause the biggest troubles!~
== tb#stivj ~I gave you my apologies, it is up to you what you want to do with them.~
== aeriep ~You-you can't expect me to accept them right away. forgiveness comes with time and.. it doesn't always come.~
== aeriep ~<CHARNAME>, do... do you want me again in your party?~
COPY_TRANS aeriep 0