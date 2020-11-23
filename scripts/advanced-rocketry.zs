// Make tweaks to AR's silicon usage so we can use the silicons from other mods
val arSiliconIngot = <libvulpes:productingot:3>;
val siliconOreDict = <ore:itemSilicon>;
val arSiliconBoule = <libvulpes:productboule:3>;

siliconOreDict.add(arSiliconIngot);
recipes.replaceAllOccurences(arSiliconIngot, siliconOreDict);

// Add some missing basalt oredict entries. Should probably move them somewhere else eventually
val basaltOreDict = <ore:stoneBasalt>;
val polishedBasaltOreDict = <ore:stoneBasaltPolished>;
basaltOreDict.addItems([<advancedrocketry:basalt>, <climaticbiomesjbg:basalt>]);
polishedBasaltOreDict.addItems([<climaticbiomesjbg:basalt_polished>]);

// Add the ability to make the AR airtight seal enchanted book in the Ender IO enchanter
val sealedEnchant = <enchantment:advancedrocketry:spacebreathing>;
val superHighPressureTank = <advancedrocketry:pressuretank:3>;
//mods.enderio.Enchanter.addRecipe(sealedEnchant, superHighPressureTank, 1, 60);

// Tweak recipes for warp controller and core
// Controller
recipes.removeByRecipeName("advancedrocketry:warpmonitor");
recipes.addShaped("advancedrocketry_warpmonitor", <advancedrocketry:warpmonitor>, 
	[[<ore:plateSteel>, <advancedrocketry:misc>, <ore:plateSteel>],
	 [<advancedrocketry:ic:3>, <opencomputers:case1>, <advancedrocketry:ic:3>],
	 [<ore:plateSteel>, <advancedrocketry:ic:2>, <ore:plateSteel>]]);

// Core
recipes.removeByRecipeName("advancedrocketry:warpcore");
recipes.addShaped("advancedrocketry_warpcore", <advancedrocketry:warpcore>,
	[[<ore:plateTitanium>, <advancedrocketry:ic:2>, <ore:plateTitanium>],
	 [<nuclearcraft:fusion_connector>, <opencomputers:case3>, <nuclearcraft:fusion_connector>],
	 [<ore:plateTitanium>, <advancedrocketry:ic:2>, <ore:plateTitanium>]]);
