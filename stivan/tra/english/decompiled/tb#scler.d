BEGIN tb#scler

IF ~Global("tb#StivanEntryTest","GLOBAL",1)~ THEN BEGIN FirstDialogueClerk
SAY ~Greetings to you, <PRO_LADYLORD>. How can I be of service?~
IF ~~ THEN REPLY ~I... well... need a tomb.~ GOTO FirstDialogueClerk1
IF ~~ THEN REPLY ~My friend is looking for a tomb where the ashes of his close ones might lie. How much would that cost?~ GOTO FirstDialogueClerk1
IF ~~ THEN REPLY ~Strange... you're not as nervous as the other clerks in here.~ GOTO FirstDialogueClerk2
IF ~~ THEN REPLY ~Another time, perhaps.~ EXIT
END

IF ~~ THEN BEGIN FirstDialogueClerk2
SAY ~Differently from those mad fools, I love my work. Being rude to customers, moreover, would make me look like unprofessional and remove any chances I might have to be elected as best employee of <YEAR>.~
= ~(Wink wink) Can I help you in any way?~
IF ~~ THEN REPLY ~I... well... need a tomb.~ GOTO FirstDialogueClerk1
IF ~~ THEN REPLY ~My friend is looking for a tomb where the ashes of his close ones might lie. How much would that cost?~ GOTO FirstDialogueClerk1
IF ~~ THEN REPLY ~Another time, perhaps.~ EXIT
END

IF ~~ THEN BEGIN FirstDialogueClerk1
SAY ~I am terribly sorry, but you came in a bad moment. I'm afraid we ran out of headstones and the like.~
IF ~~ THEN REPLY ~Pardon? are you saying you don't have anywhere to bury the dead?~ GOTO FirstDialogueClerk3
IF ~~ THEN REPLY ~But I need one. What can we do?~ GOTO FirstDialogueClerk3
IF ~~ THEN REPLY ~I understand. We'll be back in a couple of days, in that case.~ GOTO FirstDialogueClerk4
IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN REPLY ~Have you heard, Stivan? I'm afraid you'll have to do without your tomb. The matter is over.~ EXTERN TB#STIVJ FirstDialogueClerk5
END

IF ~~ THEN BEGIN FirstDialogueClerk3
SAY ~I'm afraid it is so. Since last month, the number of dead or missing people has been frighteningly on the rise. Usually we have a dozen deaths per day - be it by hunger or a violent death - but right now we're handling triple that amount.~
IF ~~ THEN GOTO FirstDialogueClerk4
END

IF ~~ THEN BEGIN FirstDialogueClerk4
SAY ~I doubt that this will change in such a small time span. The Council of Six should have approved a plan for enlarging the Graveyard, but the recent trouble in Maztica has halted all of that. You can't do much but wait like everybody else.~
IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN REPLY ~Have you heard, Stivan? I'm afraid you'll have to do without your tomb. The matter is over.~ EXTERN TB#STIVJ FirstDialogueClerk5
IF ~~ THEN REPLY ~Isn't there a small corner, a hole where I could put that damned urn?~ GOTO FirstDialogueClerk6
IF ~~ THEN REPLY ~You're really sure you can't help me in any way?~ GOTO FirstDialogueClerk6
END

IF ~~ THEN BEGIN FirstDialogueClerk6
SAY ~Well... I think there's a possibility, my <PRO_LADYLORD>, but it is a desperate one. I only mention it because you look like a skilled <RACE>.~
= ~Most people are waiting for new crypts to be built, or old ones to be enlarged. Among those, however, there is one where not even the Cowled Wizards would dare tread. They say that, in there, lives an ancient king, known for his violence in life, but it might be just a old legend.~
= ~If you're brave enough to go in there to claim its ownership or, in the worst of cases, to clean it of whomever roams it, it is yours. Athkatla's inhabitants are a superstitious bunch, so I doubt anyone would ever dream of buying that crypt.~
IF ~~ THEN REPLY ~Very well. I'll go take a look.~ GOTO FirstDialogueClerk7
IF ~~ THEN REPLY ~It doesn't look like I have much choice. Where is that tomb?~ GOTO FirstDialogueClerk7
IF ~~ THEN REPLY ~I'm sorry, but I have no intention of breaking into a tomb. The matter is over, Stivan.~ EXTERN TB#STIVJ FirstDialogueClerk5
END

IF ~~ THEN BEGIN FirstDialogueClerk7
SAY ~The tomb is in the North-East, near a monument built to Kelemvor.~
= ~Be cautious, my <PRO_LADYLORD>. It would be bad for my career if anything happened to you.~
IF ~~ THEN DO ~SetGlobal("tb#stivanEntryTest","GLOBAL",2)~ UNSOLVED_JOURNAL ~Looking for a tomb.

A clerk in the Council of Six Building explained us that there are currently no free tombs. However, he also mentioned that there is one where no one dares to tread because of voices about its inhabitant. Not scared by such tales, I decided to explore it: after cleaning it of any trouble I might find, in fact, we'd be free to claim it for Stivan's relatives.~ EXIT
END

IF ~Global("tb#StivanEntryTest","GLOBAL",2)~ THEN BEGIN SecondDialogueClerk
SAY ~It is always a pleasure to see you again, my <PRO_LADYLORD>. Is there anything new?~
IF ~~ THEN REPLY ~Not yet.~ GOTO SecondDialogueClerk1
IF ~Dead("bhcrypt")~ THEN REPLY ~Yes. I managed to remove the previous owner of the tomb.~ GOTO SecondDialogueClerk6
IF ~~ THEN REPLY ~I was wondering if I could ask you some questions.~ GOTO SecondDialogueClerk2
END

IF ~~ THEN BEGIN SecondDialogueClerk1
SAY ~I understand. I'll get back to work.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SecondDialogueClerk2
SAY ~Of course. What do you need to ask.~
IF ~~ THEN REPLY ~What do you know about the Shadow Thieves?~ GOTO SecondDialogueClerk3
IF ~~ THEN REPLY ~Who should I ask about if I wanted to cast spells in the city?~ GOTO SecondDialogueClerk4
IF ~~ THEN REPLY ~One of my friends was arrested by the Cowled Wizards. Do you happen to know where they keep their prisoners?~ GOTO SecondDialogueClerk5
END

IF ~~ THEN BEGIN SecondDialogueClerk3
SAY ~Bad people. I hope you'll never have to deal with them.~
IF ~~ THEN REPLY ~Who should I ask about if I wanted to cast spells in the city?~ GOTO SecondDialogueClerk4
IF ~~ THEN REPLY ~One of my friends was arrested by the Cowled Wizards. Do you happen to know where they keep their prisoners?~ GOTO SecondDialogueClerk5
IF ~~ THEN REPLY ~I have to go now.~ GOTO SecondDialogueClerk1
END

IF ~~ THEN BEGIN SecondDialogueClerk4
SAY ~Talk with Corneil. It is him who looks after such matters, even if he deserves to work as a farmer for his arrogance.~
IF ~~ THEN REPLY ~What do you know about the Shadow Thieves?~ GOTO SecondDialogueClerk3
IF ~~ THEN REPLY ~One of my friends was arrested by the Cowled Wizards. Do you happen to know where they keep their prisoners?~ GOTO SecondDialogueClerk5
IF ~~ THEN REPLY ~I have to go now.~ GOTO SecondDialogueClerk1
END

IF ~~ THEN BEGIN SecondDialogueClerk5
SAY ~I'm afraid I can't help you with that. I only handle tombs.~
IF ~~ THEN REPLY ~What do you know about the Shadow Thieves?~ GOTO SecondDialogueClerk3
IF ~~ THEN REPLY ~Who should I ask about if I wanted to cast spells in the city?~ GOTO SecondDialogueClerk4
IF ~~ THEN REPLY ~I have to go now.~ GOTO SecondDialogueClerk1
END

IF ~~ THEN BEGIN SecondDialogueClerk6
SAY ~So the voices I told you about were correct. Very well... now I should handle all bureaucratic matters; in four to five weeks you'll become the lawful owners of that tomb and will be able to use it freely.~ 
IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN 
UNSOLVED_JOURNAL ~Looking for a tomb.

The clerk in the Council of Six Building has started the procedures required to make Stivan properly acquire the tomb. He promised he will send for us as soon as he is done, and also offered to keep the urn safe in the meantime.~ EXTERN TB#STIVJ SecondDialogueClerk8
IF ~OR(2) !InParty("tb#stiv") StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN GOTO SecondDialogueClerk7
END

IF ~~ THEN BEGIN SecondDialogueClerk7
SAY ~I see that your friend isn't with you. If I'm not mistaken, he mentioned he wanted to put an urn in there. Come back with him, my <PRO_LADYLORD>: I might have a solution for his... er... "problem" while the required documents are ready.~
IF ~~ THEN EXIT
END

IF ~Global("tb#stivanEntryTest","GLOBAL",4)~ THEN BEGIN ThirdDialogueClerk
SAY ~I was anxiously waiting to see you again, my <PRO_LADYLORD>!~
IF ~OR(2) !InParty("tb#stiv") StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN GOTO ThirdDialogueClerk1-1
IF ~InParty("tb#stiv") !StateCheck("tb#stiv",CD_STATE_NOTVALID)~ THEN GOTO ThirdDialogueClerk1-2
END 

IF ~~ THEN BEGIN ThirdDialogueClerk1-1
SAY ~The documents for the ownership of the crypt are ready, but I need your friend to sign them. Come back with him.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ThirdDialogueClerk1-3
SAY ~Write Lawrence! Lawrence Cutterwere!~
IF ~~ THEN EXIT
END


IF ~GlobalLT("tb#StivanEntryTest","GLOBAL",4)~ THEN BEGIN pre_quest1
SAY ~I am sorry, <PRO_LADYLORD>, but I am terribly busy. Could I ask you to come back later?~
IF ~~ THEN EXIT
END

IF ~GlobalGT("tb#StivanEntryTest","GLOBAL",4)~ THEN BEGIN pre_quest2
SAY ~Whew... And now that's done. I have only three hundred and forty bodies left to bury, now!~
IF ~~ THEN EXIT
END


APPEND TB#STIVJ
IF ~~ THEN BEGIN FirstDialogueClerk5
SAY ~I thought you'd try more to help me, <CHARNAME>! Instead, you throw the towel at the first sign of trouble! I will have nothing to do with you! I'm gone!~
IF ~~ THEN DO %SetGlobal("tb#StivanJoined","GLOBAL",0) LeaveParty() EscapeArea()  EraseJournalEntry(~Looking for a tomb.

While we were exploring the Bridge District we found Stivan, an halfling native of Athkatla, whom I asked for help in my search of Imoen and Irenicus. In exchange for a tomb where he might put the ashes of his close ones, Stivan offered us his guidance in his town and his defense against... er... seagulls. The halfling said I should go in the Government District and ask some clerk in the Council of Six.~) EraseJournalEntry(~Looking for a tomb.

The clerk in the Council of Six Building has started the procedures required to make Stivan properly acquire the tomb. He promised he will send for us as soon as he is done, and also offered to keep the urn safe in the meantime.~) EraseJournalEntry(~Looking for a tomb.

A clerk in the Council of Six Building explained us that there are currently no free tombs. However, he also mentioned that there is one where no one dares to tread because of voices about its inhabitant. Not scared by such tales, I decided to explore it: after cleaning it of any trouble I might find, in fact, we'd be free to claim it for Stivan's relatives.~) EraseJournalEntry(~Looking for a tomb.

A messenger informed us that the documents for the transferal of the crypt are ready. I can go pick them up any time I wish from the clerk Lawrence in the Council of Six building.~)% SOLVED_JOURNAL ~Looking for a tomb.

Not having found a tomb where Stivan might put the ashes of his relatives, I suggested him to give up. The halfling left the party in anger, claiming I should have done more to help him.~ EXIT
END
END

CHAIN IF ~~ THEN tb#stivj SecondDialogueClerk8
~What?! I can't wait that long! My urn has already risked breakage far too many times!~
== TB#SCLER ~(Cough) As an exceptional favor, young man, I could stash it in the warehouse where the Cowled Wizards keep guard of their artifacts. It will be doubtlessly safe there.~ 
== TB#STIVJ ~So be it. Here it is. Treat it with due respect, have I made myself clear?~
== TB#SCLER ~Uhm... Really ugly...~
== TB#STIVJ ~Nobody asked for your judgment!~
== TB#SCLER ~See you soon, my <PRO_LADYLORD>. A messenger will warn you as soon as the documents are ready. Remember to come by yours truly to take back the urn of your... er... "friend".~ DO ~SetGlobal("tb#stivanEntryTest","GLOBAL",3) TakePartyItem("tb#surn") AddXPObject(Player1,2000) AddXPObject(Player2,2000) AddXPObject(Player3,2000) AddXPObject(Player4,2000) AddXPObject(Player5,2000) AddXPObject(Player6,2000) AddXPObject("tb#Stiv",3000)~ 
EXIT

CHAIN IF ~~ THEN TB#SCLER ThirdDialogueClerk1-2
~The documents for the transferal of the urn are ready. I just need a dozen signatures from your friend.~
= ~Er... you do know how to write a signature, my young man?~
== TB#STIVJ ~Sure! Where do I need to sign?~
== TB#SCLER ~Here, here, here, and....~
== TB#STIVJ ~...~
= ~... Done.~ 
== TB#SCLER ~Tsk. What an ugly writing style. You should have claimed you were illiterate and sign with an 'X'.~
= ~And here is your urn. If you want a suggestion, you should change it: it is an insult to good taste and proper behavior. It looks like a night vase!~
== TB#STIVJ ~ (Snort!) Give it to me!~
DO ~GiveItemCreate("tb#sdocu","tb#stiv",0,0,0) GiveItemCreate("tb#surn","tb#stiv",0,0,0) SetGlobal("tb#stivanEntryTest","GLOBAL",5)~
== TB#SCLER ~(Wink wink) My <PRO_LADYLORD>, if you were satisfied by my work, don't hesitate to nominate me as the best employee of <YEAR>.~
END 
IF ~~ THEN REPLY ~Er... Sure, you can count on it.~ EXTERN TB#SCLER ThirdDialogueClerk1-3
IF ~~ THEN REPLY ~You just did your job.~ EXTERN TB#SCLER ThirdDialogueClerk1-3
IF ~~ THEN REPLY ~Let's get out of here *now*. I'm going to choke on all the bureaucracy that is lingering in these halls!~ EXTERN TB#SCLER ThirdDialogueClerk1-3


// miscellaneous employees
APPEND CIVIL02
IF WEIGHT #-1 ~Global("tb#StivanEntryTest","GLOBAL",1) InParty("tb#stiv")~ THEN BEGIN FemaleClerk
SAY ~I hope you have a proper reason to disturb me.~
IF ~~ THEN REPLY ~Could you tell me who handles the Graveyard District?~ GOTO FemaleClerk1-1
IF ~~ THEN REPLY ~I don't want to waste my time in idle chatter. I want a tomb.~ GOTO FemaleClerk1-2
IF ~~ THEN REPLY ~Nothing. Sorry for my intrusion.~ EXIT
END

IF ~~ THEN FemaleClerk1-1
SAY ~Do I have "Map of the Council of Six" written on my forehead? No! Mind your own business and don't bother me!~
IF ~~ THEN EXIT
END

IF ~~ THEN FemaleClerk1-2
SAY ~Moron! You won't get any help out of me! Get out!~
IF ~~ THEN EXIT
END
END

APPEND CLERK01
IF WEIGHT #-1 ~Global("tb#StivanEntryTest","GLOBAL",1) InParty("tb#stiv")~ THEN BEGIN ConfusedClerk
SAY ~Uhm... Now, where did I put that document I was working on?~
= ~Oh! Look. I searched for it for a day without noticing I was holding it!~
IF ~~ THEN REPLY ~I don't know if I should ask you for help, but I need to know who handles tomb allotment in this town.~ GOTO ConfusedClerk1-1
IF ~~ THEN REPLY ~I can't take another idiot. I'd rather go somewhere else.~ EXIT
END

IF ~~ THEN ConfusedClerk1-1
SAY ~Er...~
= ~Well...~
= ~It should...~
= ~I think...~
= ~Now...~
IF ~~ THEN REPLY ~Do you know whom I should ask or not?~ GOTO ConfusedClerk1-2
IF ~~ THEN REPLY ~As charming as an orc. It's pretty clear you've forgotten your own name.~ GOTO ConfusedClerk1-2
IF ~~ THEN REPLY ~I don't have time to waste with such an idiot. Goodbye.~ EXIT
END

IF ~~ THEN ConfusedClerk1-2
SAY ~Er... No. I can't really recall who handles that. I'm sorry.~
IF ~~ THEN EXIT
END
END

APPEND COUNSEC
IF WEIGHT #-1 ~Global("tb#StivanEntryTest","GLOBAL",1) InParty("tb#stiv")~ THEN BEGIN GovernmentOfficial
SAY ~Get out of my way, <RACE>. You're casting a shadow, and I need light to fill up these reports.~
IF ~~ THEN REPLY ~I won't get away until you've helped me, cretin. Who buries the dead? You?~ GOTO GovernmentOfficial1-1
IF ~~ THEN REPLY ~Should I ask you for a tomb?~ GOTO GovernmentOfficial1-1
IF ~~ THEN REPLY ~Goodbye.~ EXIT
END

IF ~~ THEN GovernmentOfficial1-1
SAY ~How you dare mistake me with such a low-rank peasant? I handle reports! Reports, understood? And now begone, you're treading on the approval of a new colony in New Amn! Away, away!~
IF ~~ THEN EXIT
END
END

APPEND CIVIL03
IF WEIGHT #-1 ~Global("tb#StivanEntryTest","GLOBAL",1) InParty("tb#stiv")~ THEN BEGIN NiceClerk
SAY ~You look lost, <LADYLORD>. Maybe I could help.~
IF ~~ THEN REPLY ~My friend needs a place to put the urn with the ashes of his relatives. Who handles that sort of thing here?~ GOTO NiceClerk1-1
IF ~~ THEN REPLY ~I hope so. Do you handle tombs and the like?~ GOTO NiceClerk1-1
IF ~~ THEN REPLY ~I don't think so, goodbye.~ EXIT
END

IF ~~ THEN NiceClerk1-1
SAY ~You should ask Lawrence Cutterwere. He's right next to me.~
= ~Poor guy. He works like a slave to be named the Employee of the Year, but he doesn't know that Llarsh will corrupt everyone as usual.~
IF ~~ THEN EXIT
END
END
