@270  = ~Certo, eccola qui! Sono contenta di poter aiutare... Spero che tu riesca a scoprire cosa abbia combinato Jafir! Povero Kalah, era cos� carino! Voleva soltanto qualche amico...~
~Eek! You're villains too!~
INTERJECT_COPY_TRANS 
== TB#STIVJ IF ~IsValidForPartyDialog("tb#Stiv") !StateCheck("tb#Stiv",CD_STATE_NOTVALID)~ THEN 
~Strano. Credevo di conoscere ogni singolo mercante di Athkatla, ma non ho idea di chi sia questo Jafir. Ad ogni modo, c'� una scorciatoia per arrivare alla Gru Zoppa - sar� felice di mostrartela quando vorrai andarci.~
END

// Battuta di Jafir

@302  = ~Non c'� motivo di continuare questa commedia, mortali. Ho venduto la lampada a Kalah intuendo la distruzione che la sua piccola testolina avrebbe causato una volta ottenuto l'accesso ai suoi poteri.~
INTERJECT_COPY_TRANS 
== TB#STIVJ IF ~IsValidForPartyDialog("tb#Stiv") !StateCheck("tb#Stiv",CD_STATE_NOTVALID)~ THEN 
~Questo bruttone si � preso gioco della fragilit� dello gnomo! Non possiamo lasciare che lo faccia di nuovo con altre ignare vittime!~
EXIT

@299  = ~Eccellente. La parola necessaria per attivare la lampada � Markesh, il vero nome del genio imprigionato al suo interno. Adesso me ne andr�, Primevo! Possa la tua misera esistenza essere pi� sgradevole possibile al nostro prossimo incontro...~
INTERJECT_COPY_TRANS 
== TB#STIVJ IF ~IsValidForPartyDialog("tb#Stiv") !StateCheck("tb#Stiv",CD_STATE_NOTVALID)~ THEN 
~Lo lasciamo scappare? In questo modo si prender� gioco di qualcun altro!~
EXIT

@309  = ~Lo far�, lo far�... Me ne andr� via, ricomincer� da capo in un posto dove la mia razza viene accettata. Grazie ancora per avermi dato un'altra opportunit�.~
INTERJECT_COPY_TRANS 
== TB#STIVJ IF ~IsValidForPartyDialog("tb#Stiv") !StateCheck("tb#Stiv",CD_STATE_NOTVALID)~ THEN 
~Un gesto ammirevole, <CHARNAME>, sebbene io... *Ahem*... avessi in mente un altro desiderio. Ad ogni modo, speriamo che questa volta abbia pi� fortuna.~
EXIT

@259  = ~E' una richiesta da brividi, mortale, ma � stata eseguita! Adesso ti devo lasciare.~
INTERJECT_COPY_TRANS 
== TB#STIVJ IF ~IsValidForPartyDialog("tb#Stiv") !StateCheck("tb#Stiv",CD_STATE_NOTVALID)~ THEN 
~Cosa?! Hai inflitto una simile tormento a quel povero gnomo?~
= ~Tu... Tu sei un mostro, <CHARNAME>! Preferisco tornare a vendere piume piuttosto che viaggiare con un essere malvagio come te!~
EXIT
