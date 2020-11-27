val vibraniumIngot = <taiga:vibranium_ingot>;
val iceDragonsteel = <iceandfire:dragonsteel_ice_ingot>;
val fireDragonsteel = <iceandfire:dragonsteel_fire_ingot>;
val iceDragonBlood = <iceandfire:ice_dragon_blood>;
val fireDragonBlood = <iceandfire:fire_dragon_blood>;

// Change dragonsteel ingots to require vibranium instead of iron
mods.iceandfire.recipes.removeFireDragonForgeRecipe(fireDragonsteel);
mods.iceandfire.recipes.removeIceDragonForgeRecipe(iceDragonsteel);

mods.iceandfire.recipes.addFireDragonForgeRecipe(vibraniumIngot, fireDragonBlood, fireDragonsteel);
mods.iceandfire.recipes.addIceDragonForgeRecipe(vibraniumIngot, iceDragonBlood, iceDragonsteel);