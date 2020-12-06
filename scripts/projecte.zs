// Basically nerf Project E so you can't use it for a while. Project E is super OP so just... max lock it behind magic 50.
mods.compatskills.ModLock.addModLock("projecte", "reskillable:magic|50");

// Change the recipe for the final star shard
recipes.removeByRecipeName("projectex:final_star_shard");
recipes.addShaped("projectex_final_star_shard_expensive", <projectex:final_star_shard>, [[<projectex:colossal_star_omega>.withTag({}), <projectex:colossal_star_omega>.withTag({}), <projectex:colossal_star_omega>.withTag({})], [<projectex:colossal_star_omega>.withTag({}), <avaritia:resource:5>, <projectex:colossal_star_omega>.withTag({})], [<projectex:colossal_star_omega>.withTag({}), <projectex:colossal_star_omega>.withTag({}), <projectex:colossal_star_omega>.withTag({})]]);

// Once you have the Final Star (infinite item duplicator), let the user craft more with it. But first, tweak the recipe
recipes.removeByRecipeName("projectex:final_star");
recipes.addShaped("projectex_final_star", <projectex:final_star>, [[<projectex:power_flower:15>, <projectex:power_flower:15>, <projectex:power_flower:15>], [<projectex:power_flower:15>, <avaritia:resource:6>, <projectex:power_flower:15>], [<projectex:power_flower:15>, <projectex:power_flower:15>, <projectex:power_flower:15>]]);

recipes.addShapeless(<projectex:final_star>*2, [<projectex:final_star>]);

// Change the transmutation table recipe, it's broken
recipes.removeByRecipeName("projecte:philosophers_stone_alt");
recipes.removeByRecipeName("projecte:philosophers_stone");

// Refs
val vibraniumIngot = <taiga:vibranium_ingot>;
val neutroniumIngot = <avaritia:resource:4>;
val elementiumIngot = <botania:manaresource:7>;
val glowstoneIngot = <mekanism:ingot:3>;

// These new recipes will force the players to get pretty far in both tech and botania before even thinking about projecte
recipes.addShaped("projecte_philosophers_stone_alt_new", <projecte:item.pe_philosophers_stone>.withTag({}), [[glowstoneIngot, elementiumIngot, glowstoneIngot], [elementiumIngot, vibraniumIngot, elementiumIngot], [glowstoneIngot, elementiumIngot, glowstoneIngot]]);
recipes.addShaped("projecte_philosophers_stone_new", <projecte:item.pe_philosophers_stone>.withTag({}), [[elementiumIngot, glowstoneIngot, elementiumIngot], [glowstoneIngot, vibraniumIngot, glowstoneIngot], [elementiumIngot, glowstoneIngot, elementiumIngot]]);

// Stone alch table - limited conversions, so it's accesible before normal Project E
recipes.removeByRecipeName("projectex:stone_table");
recipes.addShaped("projectex_stone_table_easy", <projectex:stone_table>, 
	[[<minecraft:stonebrick> | <minecraft:stonebrick:1> | <minecraft:stonebrick:2> | <minecraft:stonebrick:3>, <minecraft:stonebrick> | <minecraft:stonebrick:1> | <minecraft:stonebrick:2> | <minecraft:stonebrick:3>, <minecraft:stonebrick> | <minecraft:stonebrick:1> | <minecraft:stonebrick:2> | <minecraft:stonebrick:3>], 
	 [<minecraft:stonebrick> | <minecraft:stonebrick:1> | <minecraft:stonebrick:2> | <minecraft:stonebrick:3>, elementiumIngot, <minecraft:stonebrick> | <minecraft:stonebrick:1> | <minecraft:stonebrick:2> | <minecraft:stonebrick:3>],
	 [<minecraft:stonebrick> | <minecraft:stonebrick:1> | <minecraft:stonebrick:2> | <minecraft:stonebrick:3>, <minecraft:stonebrick> | <minecraft:stonebrick:1> | <minecraft:stonebrick:2> | <minecraft:stonebrick:3>, <minecraft:stonebrick> | <minecraft:stonebrick:1> | <minecraft:stonebrick:2> | <minecraft:stonebrick:3>]]);
