// Lock certain dimensions behind skill levels
// Most others will simply be annoying to get to by virtue of their portal mechanics

// Nether - not until you've mined and magik'd a bit
// TODO: Maybe add a modpack guidebook or something? To warn users?
mods.compatskills.DimensionLock.addDimensionLock(-1, "reskillable:mining|10", "reskillable:magic|10", "reskillable:attack|10");
// Additionally, nether portals can only be made NetherEx style with their Rime and Steel - however we're adding an extra recipe using the Lamp of Cinders to make it before getting to the nether
recipes.addShapeless(<twilightforest:lamp_of_cinders>*2, [<twilightforest:lamp_of_cinders>]);
