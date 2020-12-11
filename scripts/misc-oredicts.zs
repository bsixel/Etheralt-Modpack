import mods.nuclearcraft.manufactory;
import mods.immersiveengineering.Crusher;

val basicCircuitOreDict = <ore:circuitBasic>;
val advancedCircuitOreDict = <ore:circuitAdvanced>;
val eliteCircuitOreDict = <ore:circuitElite>;
basicCircuitOreDict.add(<opencomputers:material:4>);
basicCircuitOreDict.add(<advancedrocketry:ic>);
advancedCircuitOreDict.add(<advancedrocketry:ic:2>);

// Add cross-circuit compat
recipes.replaceAllOccurences(<opencomputers:material:4>, basicCircuitOreDict);
recipes.replaceAllOccurences(<advancedrocketry:ic>, basicCircuitOreDict);
recipes.replaceAllOccurences(<advancedrocketry:ic:2>, advancedCircuitOreDict);

// Unify hammers
val engHammer = <immersiveengineering:tool>;
val dseIronHammer = <dse:hammeriron>;
val dseSteelHammer = <dse:hammersteel>;
val plateHammerOredict = <ore:plateHammer>;

// The other two are already in it
plateHammerOredict.add(engHammer);

recipes.replaceAllOccurences(engHammer, plateHammerOredict);
recipes.replaceAllOccurences(dseIronHammer, plateHammerOredict);
recipes.replaceAllOccurences(dseSteelHammer, plateHammerOredict);

// Add the ability to break down prismarine
val prismarineBrick = <ore:blockPrismarineBrick>;
val prismarineBlock = <ore:blockPrismarine>;
val prismarineShard = <minecraft:prismarine_shard>;
val prismarineDust = <minecraft:prismarine_crystals>;
// Hammers first
recipes.addShapeless(prismarineShard*9, [prismarineBrick, plateHammerOredict.transformDamage()]);
recipes.addShapeless(prismarineShard*4, [prismarineBlock, plateHammerOredict.transformDamage()]);
recipes.addShapeless(prismarineDust, [prismarineShard, plateHammerOredict.transformDamage()]);

// Machine recipes - TODO: Might be able to let unify figure out the rest, just give it to one machine?
// Nuclearcraft manufactory - shard -> dust already there
manufactory.addRecipe([prismarineBrick, prismarineShard*9]);
manufactory.addRecipe([prismarineBlock, prismarineShard*4]);

// IE Crusher
// Shard -> dust already exists but we're replacing it to make the crusher slightly more profitable
Crusher.addRecipe(prismarineShard*9, prismarineBrick, 2048);
Crusher.addRecipe(prismarineShard*4, prismarineBlock, 2048);
Crusher.removeRecipe(prismarineDust);
Crusher.addRecipe(prismarineDust, prismarineShard, 2048, prismarineDust, 0.1);
