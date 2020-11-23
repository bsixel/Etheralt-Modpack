// Make the electric engines require steel - the usual gating
recipes.removeByRecipeName("techguns:itemshared_70_electricengine");
recipes.addShaped("techguns_itemshared_70_electricengine_steel", <techguns:itemshared:70>, [[<ore:wireCopper>, <ore:dustRedstone>, <ore:wireCopper>], [<ore:ingotSteel>, <techguns:itemshared:57>, <ore:ingotSteel>], [<ore:wireCopper>, <ore:dustRedstone>, <ore:wireCopper>]]);

// Change blast furnace recipe to require steel - it's basically the best way to make steel, so gate it behind getting steel from another
recipes.removeByRecipeName("techguns:simplemachine_11_blast_furnace");
recipes.addShaped("techguns_simplemachine_11_blast_furnace_steel", <techguns:simplemachine:11>, [[<ore:plateSteel>, <ore:dustRedstone>, <ore:plateSteel>], [<ore:plateSteel>, <minecraft:furnace>, <ore:plateSteel>], [<minecraft:stonebrick>, <ore:blockIron>, <minecraft:stonebrick>]]);
