import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;
import mods.ctutils.utils.Math;


# EXAMPLE ONLY DO NOT UNCOMMENT!
# WOULD MAKE COBBLESTONE NOT DROP FROM BROKEN BLOCKS UNTIL MINING LEVEL 16.
#mods.compatskills.BlockDropsLock.addBlockDropLock(<minecraft:cobblestone>, "reskillable:mining|16");


// Give XP for crafting if the player's building level is over 10
events.onPlayerCrafted(function(event as crafttweaker.event.PlayerCraftedEvent){
    if (event.player.skillData.getSkillInfo(<skill:reskillable:building>).getLevel() >= 10 && Math.random() > 0.95) {
		event.player.xp += 1;
	}
});

// Give XP for mining things if the player is over mining level 10
events.onBlockBreak(function(event as crafttweaker.event.BlockBreakEvent){
    if (event.isPlayer && event.player.skillData.getSkillInfo(<skill:reskillable:mining>).getLevel() >= 10 && Math.random() > 0.95) {
		event.experience += 1;
	}
});

// Lock gliders behind level 10 agility (I know, I'm evil)
mods.compatskills.Requirement.addRequirement(<techguns:glider>, "reskillable:agility|10");
mods.compatskills.Requirement.addRequirement(<openglider:hang_glider_advanced>, "reskillable:agility|10");
mods.compatskills.Requirement.addRequirement(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:glide"}), "reskillable:agility|10");
mods.compatskills.Requirement.addRequirement(<openglider:hang_glider_basic>, "reskillable:agility|10");

// Lock slime sling behind level 5 agility
mods.compatskills.Requirement.addRequirement(<tconstruct:slimesling:*>, "reskillable:agility|5");

// Lock all shears, not just the vanilla ones
for item in itemUtils.getItemsByRegexRegistryName(".*shears.*") {
	mods.compatskills.Requirement.addRequirement(item, "reskillable:gathering|5");
}
