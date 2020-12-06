# Change how steel is made, and use it for a bunch more recipes. Basically, slows progression and makes it less annoying to make machines from various mods.

# First - make it so we can't alloy to make steel. Should still be able to melt down existing steel to get liquid steel, don't worry.
mods.tconstruct.Alloy.removeRecipe(<liquid:steel>);

# Material refs

# Steel
val steel = <thermalfoundation:material:160>;
val steelBlock = <ore:blockSteel>;

# Iron
val iron = <minecraft:iron_ingot>;

# Pulverized Iron
val pulverizedIron = <thermalfoundation:material>;

// Coal
val coal = <minecraft:coal>;

// Charcoal
val charcoal = <minecraft:coal:1>;

// Coal dusts
val pulverizedCoal = <thermalfoundation:material:768>; # Pulverized coal (thermal)

// Charcoal dusts
val pulverizedCharcoal = <thermalfoundation:material:769>; # Pulverized charcoal (thermal)

// Coal Cokes
val immersiveCoke = <immersiveengineering:material:6>; # Immersive
val thermalCoke = <thermalfoundation:material:802>; # Thermal

// Coal Coke Dusts
val cokeDust = <immersiveengineering:material:17>;

// Remove Thermal Expansion's induction smelter recipes that create steel from coal/charcoal/coke and iron
// NOTE: Thermal Expansion is currently removed due to oversaturation of tech mods
/*mods.thermalexpansion.InductionSmelter.removeRecipe(pulverizedCoal*4, iron);
mods.thermalexpansion.InductionSmelter.removeRecipe(pulverizedCoal*4, pulverizedIron);
mods.thermalexpansion.InductionSmelter.removeRecipe(pulverizedCharcoal*4, pulverizedIron);
mods.thermalexpansion.InductionSmelter.removeRecipe(immersiveCoke, pulverizedIron);
mods.thermalexpansion.InductionSmelter.removeRecipe(pulverizedCharcoal*4, iron);
mods.thermalexpansion.InductionSmelter.removeRecipe(immersiveCoke, iron);*/

// Remove the shaped recipe for IE blast brick before making it the same as the RC one
recipes.removeShaped(<immersiveengineering:stone_decoration:1> * 3, [[<ore:ingotBrickNether>, <ore:ingotBrick>, <ore:ingotBrickNether>], [<ore:ingotBrick>, <minecraft:blaze_powder>, <ore:ingotBrick>], [<ore:ingotBrickNether>, <ore:ingotBrick>, <ore:ingotBrickNether>]]);
// Add shaped for IE version that's equal to RC version
recipes.addShaped("blast_furnace2", <immersiveengineering:stone_decoration:1> * 4, [[<minecraft:soul_sand>, <minecraft:nether_brick>, <minecraft:soul_sand>], [<minecraft:nether_brick>, <minecraft:magma_cream:*>, <minecraft:nether_brick>], [<minecraft:soul_sand>, <minecraft:nether_brick>, <minecraft:soul_sand>]]);

// Then remove the IE reinforced blast brick recipe and replace it
val steelPlate = <ore:plateSteel>;
val blastBrick = <immersiveengineering:stone_decoration:1>;
// Remove old one
recipes.removeShaped(<immersiveengineering:stone_decoration:2>, [[<ore:plateSteel>], [<immersiveengineering:stone_decoration:1>]]);
// Use RC blast brick instead
recipes.addShaped("blast_brick_reinforced", <immersiveengineering:stone_decoration:2>, 
	[[null, steelPlate, null],
	[steelPlate, blastBrick, steelPlate],
	[null, steelPlate, null]]);
	
// Remove furnace recipes that only require... a furnace for steel. Too easy!
furnace.remove(steel);