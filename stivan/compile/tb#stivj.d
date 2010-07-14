INTERJECT_COPY_TRANS BANOMEN 22 tb#stiv_hillgnasher
// OMG HILLGNASHER GIANTS
== TB#STIVJ IF ~IsValidForPartyDialog("Stivan") InMyArea("Stivan") !StateCheck("Stivan",CD_STATE_NOTVALID)~ THEN ~Non farmi ridere, Anomen. Non hai mai visto un solo gigante in vita tua, figuriamoci venti!~
== ANOMENJ ~Ti consiglio di tenere a freno la tua lingua, halfing, prima che ti faccia ingoiare uno di quei volatili per cui tanto impazzisci.~
EXIT

INTERJECT_COPY_TRANS ABYDEM01 0 tb#stiv_demon
// Demon in Planar Sphere
== TB#STIV IF ~IsValidForPartyDialog("Stivan") InMyArea("Stivan") !StateCheck("Stivan",CD_STATE_NOTVALID)~ THEN
~Uh-oh... Temo che qui le cose si mettano male...~
END
