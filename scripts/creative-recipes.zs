// Add recipes for creative items
// In general, they'll all require the Final Star from Project Ex, since that's... infinite and horribly broen.

// Final star definition
val finalStar = <projectex:final_star>;

// Creative dragon meal - tame any ice and fire dragon instantly! Even those pesky colossal ones!
recipes.addShapeless(<iceandfire:creative_dragon_meal>, [<iceandfire:dragon_meal>, finalStar]);

// Creative YABBA barrel upgrade
recipes.addShapeless(<yabba:upgrade_creative>, [<yabba:upgrade_star_tier>, finalStar]);

// Mekanism Creative Bin
recipes.addShapeless(<mekanism:basicblock:6>.withTag({tier: 4}), [<mekanism:basicblock:6>.withTag({tier: 3}), finalStar]);

// Mekanism Creative Fluid Tank
recipes.addShapeless(<mekanism:machineblock2:11>.withTag({tier: 4}), [<mekanism:machineblock2:11>.withTag({tier: 3}), finalStar]);

// Mekanism Creative Energy Cube
recipes.addShapeless(<mekanism:energycube>.withTag({tier: 4}), [<mekanism:energycube>.withTag({tier: 3}), finalStar]);

// Mekanism Creative Gas Tank
recipes.addShapeless(<mekanism:gastank>.withTag({tier: 4}), [<mekanism:gastank>.withTag({tier: 4}), finalStar]);

// Cyclic Infinite Battery
recipes.addShapeless(<cyclicmagic:battery_infinite>, [<cyclicmagic:battery>, finalStar]);

// Thermal Expansion Creative Conversion Kit
recipes.addShapeless(<thermalfoundation:upgrade:256>, [<thermalfoundation:upgrade:35>, finalStar]);

// Thermal Creative Flux Capacitor
recipes.addShapeless(<thermalexpansion:capacitor:32000>, [<thermalexpansion:capacitor:4>, finalStar]);

// Thermal Creative Hypoinfuser
recipes.addShapeless(<thermalinnovation:injector:32000>, [<thermalinnovation:injector:4>, finalStar]);

// Thermal Creative Chemical Quiver
recipes.addShapeless(<thermalinnovation:quiver:32000>, [<thermalinnovation:quiver:4>, finalStar]);

// AE2 Creative ME Storage Cell
recipes.addShapeless(<appliedenergistics2:creative_storage_cell>.withTag({}), [<extracells:storage.physical:3>.withTag({upgrades: {}, config: {}, fuzzyMode: "IGNORE_ALL"}), finalStar]);

// AE2 Creative Energy Cell
recipes.addShapeless(<appliedenergistics2:creative_energy_cell>, [<appliedenergistics2:dense_energy_cell>.withTag({}), finalStar]);

// Creative DankNull
recipes.addShapeless(<danknull:dank_null_6>, [<danknull:dank_null_5>, finalStar]);

// Immersive Engineering Creative Capacitor
recipes.addShapeless(<immersiveengineering:metal_device0:3>, [<immersiveengineering:metal_device0:2>, finalStar]);

// Deep Mob Learning Creative Model Learner
recipes.addShapeless(<deepmoblearning:creative_model_learner>, [<deepmoblearning:deep_learner>, finalStar]);

// Random Things Creative Player Interface
recipes.addShapeless(<randomthings:creativeplayerinterface>, [<randomthings:playerinterface>, finalStar]);

// Advanced Rocketry Creative Power Input Plug
recipes.addShapeless(<libvulpes:creativepowerbattery>, [<libvulpes:forgepowerinput>, finalStar]);

// Botania Infinite Mana Pool
recipes.addShapeless(<botania:pool:1>, [<botania:pool:3>, finalStar]);

// Botania Infinite Mana Tablet
recipes.addShapeless(<botania:manatablet>.withTag({mana: 500000, creative: 1 as byte}), [<botania:manatablet>, finalStar]);