import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;
import mods.ctutils.utils.Math;

var finishedTome = <akashictome:tome>.withTag(
	{
	   "akashictome:is_morphing":1 as byte,
	   "akashictome:data":{
		  "tconstruct":{
			 "id":"tconstruct:book",
			 "Count":1 as byte,
			 "tag":{
				"akashictome:definedMod":"tconstruct"
			 },
			 "Damage":0 as short
		  },
		  "sereneseasons":{
			 "id":"sereneseasons:season_clock",
			 "Count":1 as byte,
			 "tag":{
				"akashictome:definedMod":"sereneseasons"
			 },
			 "Damage":0 as short
		  },
		  "integratedtunnels":{
			 "id":"integrateddynamics:on_the_dynamics_of_integration",
			 "Count":1 as byte,
			 "tag":{
				"akashictome:definedMod":"integratedtunnels"
			 },
			 "Damage":0 as short
		  },
		  "theoneprobe":{
			 "id":"theoneprobe:probenote",
			 "Count":1 as byte,
			 "tag":{
				"akashictome:definedMod":"theoneprobe"
			 }
		  },
		  "conarm":{
			 "id":"conarm:book",
			 "Count":1 as byte,
			 "tag":{
				"akashictome:definedMod":"conarm"
			 },
			 "Damage":0 as short
		  },
		  "immersiveengineering":{
			 "id":"immersiveengineering:tool",
			 "Count":1 as byte,
			 "tag":{
				"akashictome:definedMod":"immersiveengineering"
			 },
			 "Damage":3 as short
		  },
		  "roots":{
			 "id":"patchouli:guide_book",
			 "Count":1 as byte,
			 "tag":{
				"akashictome:definedMod":"roots",
				"patchouli:book":"roots:roots_guide"
			 },
			 "Damage":0 as short
		  },
		  "environmentaltech":{
			 "id":"valkyrielib:guide",
			 "Count":1 as byte,
			 "tag":{
				"akashictome:definedMod":"environmentaltech"
			 }
		  },
		  "engineersdecor":{
			 "id":"patchouli:guide_book",
			 "Count":1 as byte,
			 "tag":{
				"akashictome:definedMod":"engineersdecor",
				"patchouli:book":"engineersdecor:engineersdecor_manual"
			 },
			 "Damage":0 as short
		  },
		  "deepmoblearning":{
			 "id":"patchouli:guide_book",
			 "Count":1 as byte,
			 "tag":{
				"akashictome:definedMod":"deepmoblearning",
				"patchouli:book":"deepmoblearning:book"
			 },
			 "Damage":0 as short
		  },
		  "mysticalworld":{
			 "id":"patchouli:guide_book",
			 "Count":1 as byte,
			 "tag":{
				"akashictome:definedMod":"mysticalworld",
				"patchouli:book":"mysticalworld:world_guide"
			 },
			 "Damage":0 as short
		  },
		  "projecte":{
			 "id":"projecte:item.pe_manual",
			 "Count":1 as byte,
			 "tag":{
				"akashictome:definedMod":"projecte"
			 },
			 "Damage":0 as short
		  },
		  "thermalfoundation":{
			 "id":"thermalfoundation:tome_lexicon",
			 "Count":1 as byte,
			 "tag":{
				"akashictome:definedMod":"thermalfoundation"
			 },
			 "Damage":0 as short
		  },
		  "opencomputers":{
			 "id":"opencomputers:tool",
			 "Count":1 as byte,
			 "tag":{
				"akashictome:definedMod":"opencomputers"
			 }
		  },
		  "twilightforest":{
			 "id":"patchouli:guide_book",
			 "Count":1 as byte,
			 "tag":{
				"akashictome:definedMod":"twilightforest",
				"patchouli:book":"twilightforest:guide"
			 },
			 "Damage":0 as short
		  },
		  "cookingforblockheads":{
			 "id":"cookingforblockheads:recipe_book",
			 "Count":1 as byte,
			 "tag":{
				"akashictome:definedMod":"cookingforblockheads"
			 },
			 "Damage":1 as short
		  },
		  "cyclicmagic":{
			 "id":"guideapi:cyclicmagic-guide",
			 "Count":1 as byte,
			 "tag":{
				"akashictome:definedMod":"cyclicmagic",
				"G-API_Category_Page":0
			 },
			 "Damage":0 as short
		  },
		  "opencomputers1":{
			 "id":"opencomputers:tool",
			 "Count":1 as byte,
			 "tag":{
				"akashictome:definedMod":"opencomputers1"
			 },
			 "Damage":4 as short
		  },
		  "academy":{
			 "id":"academy:tutorial",
			 "Count":1 as byte,
			 "tag":{
				"akashictome:definedMod":"academy"
			 }
		  },
		  "techguns":{
			 "id":"patchouli:guide_book",
			 "Count":1 as byte,
			 "tag":{
				"akashictome:definedMod":"techguns",
				"patchouli:book":"techguns:techguns_manual"
			 },
			 "Damage":0 as short
		  },
		  "appliedenergistics2":{
			 "id":"appliedenergistics2:sky_compass",
			 "Count":1 as byte,
			 "tag":{
				"akashictome:definedMod":"appliedenergistics2"
			 },
			 "Damage":0 as short
		  },
		  "naturescompass":{
			 "id":"<naturescompass:naturescompass>",
			 "Count":1 as byte,
			 "tag":{
				"akashictome:definedMod":"naturescompass"
			 },
			 "Damage":1 as short
		  }
	   }
	});

// List of special abilities to choose from on player's first join
var availablePowers = [
	<geneticsreborn:glasssyringe:1>.withTag({owner: "none", "0": "GeneticsRebornEAT_GRASS", pure: 1 as byte}),
	<geneticsreborn:glasssyringe:1>.withTag({owner: "none", "0": "GeneticsRebornFIRE_PROOF", pure: 1 as byte}),
	<geneticsreborn:glasssyringe:1>.withTag({owner: "none", "0": "GeneticsRebornITEM_MAGNET", pure: 1 as byte}),
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
		event.player.give(finishedTome);
		// Pick a random special ability for the player
		val playerPower = availablePowers[Math.floor(Math.random() * availablePowers.length)];
		logger.logInfo("New player has logged in: " + event.player.name);
		logger.logInfo("Giving them " + playerPower.tag[0]);
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
