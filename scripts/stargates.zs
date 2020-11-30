// Add recipes for the Stargate crystals, made up of crystals from either AR or AoA or Quark

// First, oredict the crystals
val blueOredict = <ore:blueCrystal>;
val yellowOredict = <ore:yellowCrystal>;
val redOredict = <ore:redCrystal>;

blueOredict.add(<aoa3:blue_crystal>);
blueOredict.add(<advancedrocketry:crystal:1>);
blueOredict.add(<quark:crystal:5>);

yellowOredict.add(<aoa3:yellow_crystal>);
yellowOredict.add(<advancedrocketry:crystal:4>);
yellowOredict.add(<quark:crystal:3>);

redOredict.add(<aoa3:red_crystal>);
redOredict.add(<advancedrocketry:crystal:3>);
redOredict.add(<quark:crystal:1>);

recipes.addShapedMirrored("stargate_controller_crystal", <sgcraft:sgcontrollercrystal>,
	[[yellowOredict, redOredict, yellowOredict],
	 [redOredict, <ore:netherStar>, redOredict],
	 [yellowOredict, redOredict, yellowOredict]]);
	 
recipes.addShapedMirrored("stargate_core_crystal", <sgcraft:sgcorecrystal>,
	[[<minecraft:sea_lantern>, blueOredict, <minecraft:sea_lantern>],
	 [blueOredict, <ore:netherStar>, blueOredict],
	 [<minecraft:sea_lantern>, blueOredict, <minecraft:sea_lantern>]]);