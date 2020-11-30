import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.data.IData;

	print("==================================================");
	print("============== LOADING AKASHIC TOME ==============");
	print("==================================================");

	// Add a recipe for the pack guide
	recipes.addShapeless(<patchouli:guide_book>.withTag({"patchouli:book": "patchouli:modpack_guide"}), [<minecraft:cobblestone>]);

	var finishedTome = <akashictome:tome>.withTag({
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
		  "theoneprobe":{
			 "id":"theoneprobe:probenote",
			 "Count":1 as byte,
			 "tag":{
				"akashictome:definedMod":"theoneprobe"
			 }
		  },
		  "immersiveengineering":{
			 "id":"immersiveengineering:tool",
			 "Count":1 as byte,
			 "tag":{
				"akashictome:definedMod":"immersiveengineering"
			 },
			 "Damage":3 as short
		  },
		  "rftools":{
			 "id":"rftools:rftools_manual",
			 "Count":1 as byte,
			 "tag":{
				"akashictome:definedMod":"rftools"
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
		  "industrialrenewal":{
			 "id":"industrialrenewal:ir_manual",
			 "Count":1 as byte,
			 "tag":{
				"akashictome:definedMod":"industrialrenewal"
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
		  "patchouli":{
			 "id":"patchouli:guide_book",
			 "Count":1 as byte,
			 "tag":{
				"akashictome:definedMod":"patchouli",
				"patchouli:book":"patchouli:modpack_guide"
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
		  "academy":{
			 "id":"academy:tutorial",
			 "Count":1 as byte,
			 "tag":{
				"akashictome:definedMod":"academy"
			 }
		  },
		  appliedenergistics2:{
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
		  "midnight":{
			 "id":"patchouli:guide_book",
			 "Count":1 as byte,
			 "tag":{
				"akashictome:definedMod":"midnight",
				"patchouli:book":"midnight:eternal_night"
			 },
			 "Damage":0 as short
		  },
		  "conarm":{
			 "id":"conarm:book",
			 "Count":1 as byte,
			 "tag":{
				"akashictome:definedMod":"conarm"
			 },
			 "Damage":0 as short
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
		  rftools1:{
			 "id":"rftools:rftools_shape_manual",
			 "Count":1 as byte,
			 "tag":{
				"akashictome:definedMod":"rftools1"
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
		  "twilightforest":{
			 "id":"patchouli:guide_book",
			 "Count":1 as byte,
			 "tag":{
				"akashictome:definedMod":"twilightforest",
				"patchouli:book":"twilightforest:guide"
			 },
			 "Damage":0 as short
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
		  opencomputers1:{
			 "id":"opencomputers:tool",
			 "Count":1 as byte,
			 "tag":{
				"akashictome:definedMod":"opencomputers1"
			 },
			 "Damage":4 as short
		  },
		  "techguns":{
			 "id":"patchouli:guide_book",
			 "Count":1 as byte,
			 "tag":{
				"akashictome:definedMod":"techguns",
				"patchouli:book":"techguns:techguns_manual"
			 },
			 "Damage":0 as short
		  }
	   }
	});

	mods.jei.JEI.addItem(finishedTome);

	recipes.addShapeless(finishedTome, [<minecraft:stick>]);

	var addedBooks = [
		<tconstruct:book>,
		<sereneseasons:season_clock>,
		<integrateddynamics:on_the_dynamics_of_integration>,
		<theoneprobe:probenote>,
		<conarm:book>,
		<immersiveengineering:tool>,
		<patchouli:guide_book>,
		<projecte:item.pe_manual>,
		<thermalfoundation:tome_lexicon>,
		<opencomputers:tool>,
		<cookingforblockheads:recipe_book>,
		<opencomputers:tool>,
		<academy:tutorial>,
		<appliedenergistics2:sky_compass>,
		<naturescompass:naturescompass>
	] as IItemStack[];

	for itemBook in addedBooks {
		itemBook.addTooltip(format.gold("Included within the standard Akashic Tome"));
	}