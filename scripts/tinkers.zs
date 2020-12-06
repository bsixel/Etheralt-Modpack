import crafttweaker.item.IItemStack;

# Tweak some Tinkers stuff
# Lock modifiers, add casting stuff, tweak materials etc

# Cast obsidian chests
# A little cheaty, but quite useful and people probably won't even remember to check the recipe anyways ;)
mods.tconstruct.Casting.addBasinRecipe(<ironchest:iron_chest:6>, <minecraft:chest>, <liquid:obsidian>, 1152, true, 600);

# Change the casting recipe for high oven bricks to require nether brick instead of normal brick
val scorchedBrick = <tcomplement:materials:1>;
mods.tconstruct.Casting.removeTableRecipe(scorchedBrick);
mods.tconstruct.Casting.addTableRecipe(scorchedBrick, <minecraft:netherbrick>, <liquid:stone>, 18, true);

# Change recipe for smart output to require scorched stone instead
val scorchedStone = <tcomplement:scorched_block>;
recipes.remove(<tinker_io:smart_output>);
recipes.addShaped("smart_output_nethered", <tinker_io:smart_output>, [[scorchedBrick, <minecraft:ice>, scorchedBrick], [<minecraft:ice>, null, <minecraft:ice>], [scorchedBrick, <minecraft:ice>, scorchedBrick]]);

# Tweak recipe for excavate modifiers
recipes.remove(<oeintegration:excavatemodifier>);
recipes.addShaped("excavation_modifier5", <oeintegration:excavatemodifier>*5, [[<ore:ingotIron>, <ore:slimeball>, <ore:ingotIron>], [<ore:dustRedstone>, <tconstruct:ingots:2>, <ore:dustRedstone>], [<ore:ingotIron>, <ore:slimeball>, <ore:ingotIron>]]);
recipes.addShaped("excavation_modifier25", <oeintegration:excavatemodifier>*25, [[<ore:ingotIron>, <ore:slimeball>, <ore:ingotIron>], [<ore:dustRedstone>, <taiga:vibranium_ingot>, <ore:dustRedstone>], [<ore:ingotIron>, <ore:slimeball>, <ore:ingotIron>]]);


# Add a crazy recipe for creative modifiers, because why not?
val vibraniumBlock = <taiga:vibranium_block>;
val reinforced_modifier = <tconstruct:materials:14>;
recipes.addShaped("creative_modifier_vibr", <tconstruct:materials:50>, 
	[[vibraniumBlock, reinforced_modifier, vibraniumBlock],
	[reinforced_modifier, <minecraft:nether_star>, reinforced_modifier],
	[vibraniumBlock, reinforced_modifier, vibraniumBlock]]);

# Stop players from using weapons and armor above a certain strength until certain levels
# TODO: Maybye move to another file since this affects all weapons/armor not just tinkers.
# That being said, diamond is locked behind 10 already, so this is mostly tinkers.
mods.compatskills.ArmorLock.addArmorLock(5, "reskillable:defense|3");
mods.compatskills.ArmorLock.addArmorLock(10, "reskillable:defense|7");
mods.compatskills.ArmorLock.addArmorLock(20, "reskillable:defense|15");
mods.compatskills.DamageLock.addDamageLock(6, "reskillable:attack|5");
mods.compatskills.DamageLock.addDamageLock(10, "reskillable:attack|12");
mods.compatskills.DamageLock.addDamageLock(100, "reskillable:attack|30");

# Similar to above but harvest level of blocks or the harvest level capability of tools
# Tool levels
mods.compatskills.HarvestLock.addToolLevelLock(2, "reskillable:mining|7", "reskillable:gathering|7"); # Iron pickaxe level
mods.compatskills.HarvestLock.addToolLevelLock(3, "reskillable:mining|12", "reskillable:gathering|12"); # Diamond pickaxe level
mods.compatskills.HarvestLock.addToolLevelLock(4, "reskillable:mining|17", "reskillable:gathering|17"); # Cobalt pickaxe level? I think?
mods.compatskills.HarvestLock.addToolLevelLock(5, "reskillable:mining|22", "reskillable:gathering|22"); # Taiga Stuff? I think?
# Block levels
mods.compatskills.HarvestLock.addBlockLevelLock(2, "reskillable:mining|7", "reskillable:gathering|7"); # Iron pickaxe level
mods.compatskills.HarvestLock.addBlockLevelLock(3, "reskillable:mining|12", "reskillable:gathering|12"); # Diamond pickaxe level
mods.compatskills.HarvestLock.addBlockLevelLock(4, "reskillable:mining|17", "reskillable:gathering|17"); # Cobalt pickaxe level? I think?
mods.compatskills.HarvestLock.addBlockLevelLock(5, "reskillable:mining|22", "reskillable:gathering|22"); # Taiga Stuff? I think?

# Reusable list for Tinkers parts
val tinkersPartsArmor as IItemStack[] = [
	<conarm:armor_plate:0>,
	<conarm:armor_trim:0>,
	<conarm:boots_core:0>,
	<conarm:chest_core:0>,
	<conarm:helmet_core:0>,
	<conarm:leggings_core:0>,
	<conarm:polishing_kit:0>
];
val tinkersPartsWeaponToolHybrid as IItemStack[] = [
	<tconstruct:axe_head:0>,
	<tconstruct:broad_axe_head:0>,
	<tconstruct:hammer_head:0>
];
val tinkersPartsWeapons as IItemStack[] = [
	<tconstruct:arrow_head:0>,
	<tconstruct:arrow_shaft:0>,
	<tconstruct:bow_limb:0>,
	<tconstruct:bow_string:0>,
	<tconstruct:cross_guard:0>,
	<tconstruct:fletching:0>,
	<tconstruct:knife_blade:0>,
	<tconstruct:large_sword_blade:0>,
	<tconstruct:kama_head:0>,
	<tconstruct:hand_guard:0>,
	<tconstruct:large_plate:0>,
	<tconstruct:sharpening_kit:0>,
	<tconstruct:wide_guard:0>,
	<tconstruct:pan_head:0>,
	<tconstruct:sword_blade:0>
];
val tinkersPartsTools as IItemStack[] = [
	<tconstruct:pick_head:0>,
	<tconstruct:sign_head:0>,
	<tconstruct:shovel_head:0>,
	<tconstruct:excavator_head:0>,
	<tconstruct:scythe_head:0>,
	<tcomplement:chisel_head:0>
];

# Stop players from making tinkers tools until level 7
# Never mind, don't do that, it's rude. Keep this commented out unless you're a serious masochist
/*for part in tinkersPartsArmor {
	mods.compatskills.Requirement.addRequirement(part, "reskillable:defense|7");
}
for part in tinkersPartsWeaponToolHybrid {
	mods.compatskills.Requirement.addRequirement(part, "reskillable:attack|7", "reskillable:gathering|7");
}
for part in tinkersPartsWeapons {
	mods.compatskills.Requirement.addRequirement(part, "reskillable:attack|7");
}
for part in tinkersPartsTools {
	mods.compatskills.Requirement.addRequirement(part, "reskillable:mining|7", "reskillable:gathering|7");
}*/

# lock some modifiers until you've leveled up certain skills
# Tools first
mods.compatskills.ModifierLock.addModifierLock("oreexcavate", "reskillable:mining|10", "reskillable:gathering|10");
mods.compatskills.ModifierLock.addModifierLock("harvestwidth", "reskillable:mining|5", "reskillable:magic|7");
mods.compatskills.ModifierLock.addModifierLock("harvestheight", "reskillable:mining|5", "reskillable:magic|7");
mods.compatskills.ModifierLock.addModifierLock("enderpickup", "reskillable:mining|10", "reskillable:gathering|10");
mods.compatskills.ModifierLock.addModifierLock("reinforced", "reskillable:mining|10", "reskillable:gathering|10", "reskillable:attack|10");
mods.compatskills.ModifierLock.addModifierLock("hitech", "reskillable:building|15");
mods.compatskills.ModifierLock.addModifierLock("soulbound", "reskillable:magic|15");
mods.compatskills.ModifierLock.addModifierLock("silktouch", "reskillable:magic|5", "reskillable:mining|5", "reskillable:gathering|5");
mods.compatskills.ModifierLock.addModifierLock("luck", "reskillable:magic|5", "reskillable:mining|5", "reskillable:gathering|5");
mods.compatskills.ModifierLock.addModifierLock("smite", "reskillable:magic|5", "reskillable:attack|5");
mods.compatskills.ModifierLock.addModifierLock("bone_shock", "reskillable:magic|5", "reskillable:attack|5");
mods.compatskills.ModifierLock.addModifierLock("bane_of_arthopods", "reskillable:magic|5", "reskillable:attack|5");
mods.compatskills.ModifierLock.addModifierLock("necrotic", "reskillable:magic|10", "reskillable:attack|10");
mods.compatskills.ModifierLock.addModifierLock("shulking", "reskillable:magic|10");
mods.compatskills.ModifierLock.addModifierLock("glowing", "reskillable:magic|5", "reskillable:mining|5", "reskillable:gathering|5");

# Armors
mods.compatskills.ModifierLock.addModifierLock("glowing_armor", "reskillable:magic|5", "reskillable:defense|10");
mods.compatskills.ModifierLock.addModifierLock("resistant_armor", "reskillable:magic|5", "reskillable:defense|10");
mods.compatskills.ModifierLock.addModifierLock("blast_resistant_armor", "reskillable:magic|5", "reskillable:defense|10");
mods.compatskills.ModifierLock.addModifierLock("projectile_resistant_armor", "reskillable:magic|5", "reskillable:defense|10");
mods.compatskills.ModifierLock.addModifierLock("fire_resistant_armor", "reskillable:magic|5", "reskillable:defense|10");
mods.compatskills.ModifierLock.addModifierLock("soulbound_armor", "reskillable:magic|15");
mods.compatskills.ModifierLock.addModifierLock("shulkerweight_armor", "reskillable:magic|5");
mods.compatskills.ModifierLock.addModifierLock("powerful_armor", "reskillable:magic|10", "reskillable:attack|10");
mods.compatskills.ModifierLock.addModifierLock("dexterous_armor", "reskillable:magic|10", "reskillable:gathering|10");
mods.compatskills.ModifierLock.addModifierLock("telekinetic_armor", "reskillable:magic|10", "reskillable:gathering|10");
