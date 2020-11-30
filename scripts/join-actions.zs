import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;
import mods.ctutils.utils.Math;

val starterGuide = <patchouli:guide_book>.withTag({"patchouli:book": "patchouli:modpack_guide"});

// List of special abilities to choose from on player's first join
var availablePowers = [
	<geneticsreborn:glasssyringe:1>.withTag({owner: "none", "0": "GeneticsRebornEAT_GRASS", pure: 1 as byte}),
	<geneticsreborn:glasssyringe:1>.withTag({owner: "none", "0": "GeneticsRebornFIRE_PROOF", pure: 1 as byte}),
	<geneticsreborn:glasssyringe:1>.withTag({owner: "none", "0": "GeneticsRebornJUMP_BOOST", pure: 1 as byte}),
	<geneticsreborn:glasssyringe:1>.withTag({owner: "none", "0": "GeneticsRebornMILKY", pure: 1 as byte}),
	<geneticsreborn:glasssyringe:1>.withTag({owner: "none", "0": "GeneticsRebornMORE_HEARTS", pure: 1 as byte}),
	<geneticsreborn:glasssyringe:1>.withTag({owner: "none", "0": "GeneticsRebornNIGHT_VISION", pure: 1 as byte}),
	<geneticsreborn:glasssyringe:1>.withTag({owner: "none", "0": "GeneticsRebornNO_FALL_DAMAGE", pure: 1 as byte}),
	<geneticsreborn:glasssyringe:1>.withTag({owner: "none", "0": "GeneticsRebornPHOTOSYNTHESIS", pure: 1 as byte}),
	<geneticsreborn:glasssyringe:1>.withTag({owner: "none", "0": "GeneticsRebornPOISON_PROOF", pure: 1 as byte}),
	<geneticsreborn:glasssyringe:1>.withTag({owner: "none", "0": "GeneticsRebornRESISTANCE", pure: 1 as byte}),
	<geneticsreborn:glasssyringe:1>.withTag({owner: "none", "0": "GeneticsRebornSAVE_INVENTORY", pure: 1 as byte}),
	<geneticsreborn:glasssyringe:1>.withTag({owner: "none", "0": "GeneticsRebornSPEED", pure: 1 as byte}),
	<geneticsreborn:glasssyringe:1>.withTag({owner: "none", "0": "GeneticsRebornSTRENGTH", pure: 1 as byte}),
	<geneticsreborn:glasssyringe:1>.withTag({owner: "none", "0": "GeneticsRebornWATER_BREATHING", pure: 1 as byte}),
	<geneticsreborn:glasssyringe:1>.withTag({owner: "none", "0": "GeneticsRebornWOOLY", pure: 1 as byte}),
	<geneticsreborn:glasssyringe:1>.withTag({owner: "none", "0": "GeneticsRebornWITHER_PROOF", pure: 1 as byte}),
	<geneticsreborn:glasssyringe:1>.withTag({owner: "none", "0": "GeneticsRebornXP_MAGNET", pure: 1 as byte}),
	<geneticsreborn:glasssyringe:1>.withTag({owner: "none", "0": "GeneticsRebornSTEP_ASSIST", pure: 1 as byte}),
	<geneticsreborn:glasssyringe:1>.withTag({owner: "none", "0": "GeneticsRebornINFINITY", pure: 1 as byte}),
	<geneticsreborn:glasssyringe:1>.withTag({owner: "none", "0": "GeneticsRebornHASTE", pure: 1 as byte}),
	<geneticsreborn:glasssyringe:1>.withTag({owner: "none", "0": "GeneticsRebornCLIMB_WALLS", pure: 1 as byte})
] as IItemStack[];

events.onPlayerLoggedIn(function(event as crafttweaker.event.PlayerLoggedInEvent) {
	if (isNull(event.player.data.wasGivenStarters)) {
		// Give the player the guidebook to end all guidebooks (akashic tome)
		event.player.give(starterGuide);
		// Pick a random special ability for the player
		val playerPower = availablePowers[Math.floor(Math.random() * availablePowers.length)];
		logger.logInfo("New player has logged in: " + event.player.name);
		logger.logInfo("Giving them " + playerPower.tag[0]);
		playerPower.clearTooltip();
		var tagText = playerPower.tag[0] as string;
		var tooltip = "Power: " + tagText.substring(14).toLowerCase().replaceAll("_", " ");
		playerPower.addTooltip(tooltip);
		logger.logInfo("Giving them the standard akashictome");
		// Give the player their ability
		event.player.give(playerPower);
		event.player.update({wasGivenStarters: true});
	}
});

// Make sure the wasGivenStarters flag persists across deaths
events.onPlayerRespawn(function(event as crafttweaker.event.PlayerRespawnEvent) {
		event.player.update({wasGivenStarters: true});
});
