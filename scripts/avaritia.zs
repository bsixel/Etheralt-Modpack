// TODO: Add shapeless recipe for catalyst using some iridium stuff
//mods.avaritia.addShapeless("shapeless-infinity-catalyst", <avaritia:resource:5>, );]

// Only allow using the neutronium collector and condensor in space. Something about... neutrons get absorbed by the atmosphere so you can't do it on land?
mods.compatskills.TileEntityLock.addTileEntityLock("minecraft:neutron_collector", "or|[dim|-2]~[dim|6999]");
mods.compatskills.Requirement.addRequirement(<avaritia:neutron_collector>, "or|[dim|-2]~[dim|6999]");
mods.compatskills.TileEntityLock.addTileEntityLock("minecraft:neutronium_compressor", "or|[dim|-2]~[dim|6999]");
mods.compatskills.Requirement.addRequirement(<avaritia:neutronium_compressor>, "or|[dim|-2]~[dim|6999]");

<avaritia:neutronium_compressor>.addTooltip(format.gold("Due to the strange nature of particle physics in this universe, it seems this can only be used in outer space..."));
<avaritia:neutron_collector>.addTooltip(format.gold("Due to the strange nature of particle physics in this universe, it seems this can only be used in outer space..."));

// Change the collector to require iridium and vibranium. Because... space tech magic. Or something.
val quartzBlock = <ore:blockQuartz>;
val ironBlock = <ore:blockIron>;
val redstoneBlock = <ore:blockRedstone>;
val crystalIngot = <ore:ingotCrystalMatrix>;
val vibraniumBlock = <taiga:vibranium_block>;
val iridiumBlock = <ore:blockIridium>;
mods.avaritia.ExtremeCrafting.remove(<avaritia:neutron_collector>);
mods.avaritia.ExtremeCrafting.addShaped("avaritia_neutron_collector_expensive", <avaritia:neutron_collector>,
 [[iridiumBlock, iridiumBlock, quartzBlock, quartzBlock, quartzBlock, quartzBlock, quartzBlock, iridiumBlock, iridiumBlock],
  [iridiumBlock, null, quartzBlock, quartzBlock, quartzBlock, quartzBlock, quartzBlock, null, iridiumBlock],
  [ironBlock, null, null, redstoneBlock, redstoneBlock, redstoneBlock, null, null, ironBlock],
  [crystalIngot, null, redstoneBlock, redstoneBlock, redstoneBlock, redstoneBlock, redstoneBlock, null, crystalIngot],
  [ironBlock, null, redstoneBlock, redstoneBlock, crystalIngot, redstoneBlock, redstoneBlock, null, ironBlock],
  [crystalIngot, null, redstoneBlock, redstoneBlock, redstoneBlock, redstoneBlock, redstoneBlock, null, crystalIngot],
  [ironBlock, null, null, redstoneBlock, redstoneBlock, redstoneBlock, null, null, ironBlock],
  [ironBlock, null, null, null, null, null, null, null, ironBlock],
  [ironBlock, ironBlock, ironBlock, crystalIngot, vibraniumBlock, crystalIngot, ironBlock, ironBlock, ironBlock]]);

mods.avaritia.ExtremeCrafting.remove(<avaritia:resource:5>);
mods.avaritia.ExtremeCrafting.addShapeless("avaritia_catalyst_shapeless", <avaritia:resource:5>, [<avaritia:resource>, <avaritia:resource:1>, <avaritia:resource:2>, <avaritia:resource:3>, <avaritia:resource:4>, <avaritia:resource:7>, <avaritia:singularity>, <avaritia:singularity:1>, <avaritia:singularity:2>, <avaritia:singularity:3>,
	<avaritia:singularity:4>, <avaritia:singularity:5>, <avaritia:singularity:6>, <avaritia:singularity:7>, <avaritia:singularity:8>, <avaritia:singularity:9>, <avaritia:singularity:10>, <avaritia:singularity:11>, <avaritia:endest_pearl>, <avaritia:ultimate_stew>, <avaritia:cosmic_meatballs>, <thermalfoundation:storage_alloy:7>,
	<botania:storage:1>, <enderio:block_alloy_endergy:3>, <mekanism:basicblock:2>, <thermalfoundation:storage:7>, <taiga:vibranium_block>, <iceandfire:dragonsteel_fire_block>, <projecte:matter_block:1>]);
