// Change machine chassis/frame recipes to require steel+immersive petroleum lubricant, and all be the same and interchangeable

val steelIngot = <thermalfoundation:material:160>;
val lubricantBucket = <forge:bucketfilled>.withTag({FluidName: "lubricant", Amount: 1000});

// Ender IO machine chassis
recipes.remove(<enderio:item_material>);
recipes.addShaped("simple_chassis_enderio", <enderio:item_material>, 
					[[<ore:barsIron>, steelIngot, <ore:barsIron>], 
					[steelIngot, lubricantBucket, steelIngot],
					[<ore:barsIron>, steelIngot, <ore:barsIron>]]);

// Thermal Expansion machine frame
recipes.remove(<thermalexpansion:frame>);
recipes.addShaped("machine_frame_basic_thermal", <thermalexpansion:frame>, 
					[[<ore:barsIron>, steelIngot, <ore:barsIron>], 
					[steelIngot, lubricantBucket, steelIngot],
					[<ore:barsIron>, steelIngot, <ore:barsIron>]]);
					
// Mekanism steel casing
recipes.remove(<mekanism:basicblock:8>);
recipes.addShaped("steel_casing_mekanism", <mekanism:basicblock:8>, 
					[[<ore:barsIron>, steelIngot, <ore:barsIron>], 
					[steelIngot, lubricantBucket, steelIngot],
					[<ore:barsIron>, steelIngot, <ore:barsIron>]]);

// Add OreDict for the base machine things
val base_machine = oreDict.baseMachine;
					
// Add all the above to the base machine oreDict
base_machine.addItems([<enderio:item_material>, <thermalexpansion:frame>, <mekanism:basicblock:8>]);

// Make all recipes that take the above take any of them
recipes.replaceAllOccurences(<enderio:item_material>, <ore:baseMachine>);
recipes.replaceAllOccurences(<thermalexpansion:frame>, <ore:baseMachine>);
recipes.replaceAllOccurences(<mekanism:basicblock:8>, <ore:baseMachine>);


