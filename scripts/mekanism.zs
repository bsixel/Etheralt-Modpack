// Remove the fusion reactor and add tooltips stating it's been disabled
recipes.remove(<mekanismgenerators:reactor>);
recipes.remove(<mekanismgenerators:reactor:1>);
recipes.remove(<mekanismgenerators:reactor:2>);
recipes.remove(<mekanismgenerators:reactor:3>);
recipes.remove(<mekanismgenerators:reactorglass>);
recipes.remove(<mekanismgenerators:reactorglass:1>);

<mekanismgenerators:reactor>.addTooltip(format.red("The fusion reactor has been disabled."));
<mekanismgenerators:reactorglass>.addTooltip(format.red("The fusion reactor has been disabled."));

// Gate mekanism behind steel acquisition
recipes.remove(<mekanism:machineblock:8>);
recipes.addShaped("mekanism_machineblock_8_steel", <mekanism:machineblock:8>, 
	[[<ore:ingotSteel>, <minecraft:furnace>, <ore:ingotSteel>],
	 [<ore:dustRedstone>, <ore:ingotOsmium>, <ore:dustRedstone>],
	 [<ore:ingotSteel>, <minecraft:furnace>, <ore:ingotSteel>]]);
