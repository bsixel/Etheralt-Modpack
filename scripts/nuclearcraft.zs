// Make the nuclearcraft solenoids require steel, gates the progression behind doing other tech stuff first
recipes.removeByRecipeName("nuclearcraft:item.nuclearcraft.part.wire_copper");
recipes.addShaped("nuclearcraft_item.nuclearcraft.part.wire_copper_from_steel", <nuclearcraft:part:4> * 2, [[<ore:ingotCopper>, <ore:ingotCopper>], [<ore:ingotSteel>, <ore:ingotSteel>], [<ore:ingotCopper>, <ore:ingotCopper>]]);

// Make the silicons all interchangeable
recipes.replaceAllOccurences(<enderio:item_material:5>, <ore:itemSilicon>);
recipes.replaceAllOccurences(<nuclearcraft:gem:6>, <ore:itemSilicon>);
