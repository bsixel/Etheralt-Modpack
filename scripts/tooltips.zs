import crafttweaker.item.IItemStack;

// Warn users not to try and place backpacks in the world, currently bugged
<improvedbackpacks:backpack>.addTooltip(format.red("WARNING! Do not SHIFT+Click place into the world, bugged!"));
<improvedbackpacks:ender_backpack>.addTooltip(format.red("WARNING! Do not SHIFT+Click place into the world, bugged!"));

// Warn the user that Scaling Health heart containers do not increase health
<scalinghealth:heartcontainer>.addTooltip(format.red("This doesn't seem to increase your overall strength, but it will certainly heal you."));

// Warn the users the Lamp of Cinders will be consumed on activating portals - they should craft more for their friends (or suffer through more adventures!)
<twilightforest:lamp_of_cinders>.addTooltip(format.red("This item is used to active hellish portals - but be warned, it will consume the lamp. Craft more for your friends!"));
