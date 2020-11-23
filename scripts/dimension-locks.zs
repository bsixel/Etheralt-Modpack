// Lock certain dimensions behind skill levels
// Most others will simply be annoying to get to by virtue of their portal mechanics

// Nether - not until you've mined and magik'd a bit
// TODO: Maybe add a modpack guidebook or something? To warn users?
mods.compatskills.DimensionLock.addDimensionLock(-1, "reskillable:mining|10", "reskillable:magic|10", "reskillable:attack|10");
// Additionally, the nether portal must be activated (per player!) by right clicking it with a Lamp of Cinders from the Twilight Forest (forces the players to basically complete the TF before entering the nether)
// That's handled in the configs for restrictedportals. Add an extra recipe for it here.
recipes.addShapeless(<twilightforest:lamp_of_cinders>*2, [<twilightforest:lamp_of_cinders>]);

// The End - locked behind some combat and magic experience
mods.compatskills.DimensionLock.addDimensionLock(1, "reskillable:attack|15", "reskillable:magic|15");

// Twilight Forest - behind combat and mining and gathering
mods.compatskills.DimensionLock.addDimensionLock(7, "reskillable:mining|7", "reskillable:magic|7", "reskillable:attack|7");