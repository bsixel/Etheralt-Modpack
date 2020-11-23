import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

# Add dragon bones to Amphithere loot table
val amphithere = LootTweaker.getTable("iceandfire:amphithere");
# pool name, min rolls, max rolls, min bonus rolls, max bonus rolls
val amphBones = amphithere.addPool("amphithereBones", 1, 1, 1, 1);
# Dragon bone, 50% chance, 1 luck (higher = more affected by luck), between 1 and 2, no conditions
amphBones.addItemEntryHelper(<iceandfire:dragonbone>, 50, 1, [Functions.setCount(1,2)], []);

# Remove certain loot from IE chests
val immersiveHouse = LootTweaker.getTable("immersiveengineering:chests/engineers_house");
val immersiveHouse0 = immersiveHouse.getPool("immersiveengineering:engineers_village_house_0");
immersiveHouse0.removeEntry("steel_rod");
immersiveHouse0.removeEntry("aluminium_rod");
immersiveHouse0.removeEntry("steel_component");
immersiveHouse0.removeEntry("aluminium_ingot");
immersiveHouse0.removeEntry("silver_nugget");
# Remove this pool entirely, it's all steel tools
immersiveHouse.removePool("immersiveengineering:engineers_village_house_2");

# Cleanup mineshaft chests
val mineshaftTable = LootTweaker.getTable("minecraft:chests/abandoned_mineshaft");

# Simple dungeon chests
val simpleDungeonTable = LootTweaker.getTable("minecraft:chests/simple_dungeon");

# Stronghold corridor chests
val strongholdCorridorTable = LootTweaker.getTable("minecraft:chests/stronghold_corridor");

# Stronghold crossing chests
val strongholdCrossingTable = LootTweaker.getTable("minecraft:chests/stronghold_crossing");

# Village blacksmith chests
val villageBlacksmithTable = LootTweaker.getTable("minecraft:chests/village_blacksmith");

# Remove OP ingots from some loot tavles

# Botania
# Simple dungeons
val botaniaSimpleDungeonInject = LootTweaker.getTable("botania:inject/simple_dungeon");
val mainBotaniaSimpleDungeonInject = botaniaSimpleDungeonInject.getPool("main");
mainBotaniaSimpleDungeonInject.removeEntry("botania:manaResource");

# Strongholds
val botaniaStrongholdCorridorInject = LootTweaker.getTable("botania:inject/stronghold_corridor");
val mainBotaniaStrongholdCorridorInject = botaniaStrongholdCorridorInject.getPool("main");
mainBotaniaStrongholdCorridorInject.removeEntry("botania:manaResource");

# Ender IO
# Mineshafts Ender IO
val enderioAbandonedMineshaftChest = LootTweaker.getTable("enderio:chests/abandoned_mineshaft");
val enderioAbandonedMineshaftChestEnderio = enderioAbandonedMineshaftChest.getPool("Ender IO");
enderioAbandonedMineshaftChestEnderio.removeEntry("enderio:item_alloy_ingot:6");
enderioAbandonedMineshaftChestEnderio.removeEntry("enderio:item_dark_steel_sword:0");
enderioAbandonedMineshaftChestEnderio.removeEntry("enderio:item_material:9");

# Desert pyramid Ender IO
val enderioDesertPyramidTable = LootTweaker.getTable("enderio:chests/desert_pyramid");
val enderioDesertPyramidPool = enderioDesertPyramidTable.getPool("Ender IO");
enderioDesertPyramidPool.removeEntry("enderio:item_dark_steel_sword:0");
enderioDesertPyramidPool.removeEntry("enderio:item_material:13");

# Jungle Temple Ender IO
val enderioJungleTempleTable = LootTweaker.getTable("enderio:chests/jungle_temple");
val enderioJungleTemplePool = enderioJungleTempleTable.getPool("Ender IO");
enderioJungleTemplePool.removeEntry("enderio:item_dark_steel_sword:0");

# Nether Bridge Ender IO
val enderioNetherBridgeTable = LootTweaker.getTable("enderio:chests/nether_bridge");
val enderioNetherBridgePool = enderioNetherBridgeTable.getPool("Ender IO");
enderioNetherBridgePool.removeEntry("enderio:item_dark_steel_boots:0");

# Simple Dungeon Ender IO
val enderioSimpleDungeonTable = LootTweaker.getTable("enderio:chests/simple_dungeon");
val enderioSimpleDungeonPool = enderioSimpleDungeonTable.getPool("Ender IO");
enderioSimpleDungeonPool.removeEntry("enderio:item_alloy_ingot:6");
enderioSimpleDungeonPool.removeEntry("enderio:item_dark_steel_sword:0");
enderioSimpleDungeonPool.removeEntry("enderio:item_dark_steel_boots:0");
enderioSimpleDungeonPool.removeEntry("enderio:item_material:9");

# Village Blacksmith Ender IO
val enderioVillageBlacksmithTable = LootTweaker.getTable("enderio:chests/village_blacksmith");
val enderioVillageBlacksmithPool = enderioVillageBlacksmithTable.getPool("Ender IO");
enderioVillageBlacksmithPool.removeEntry("enderio:item_alloy_ingot:0");
enderioVillageBlacksmithPool.removeEntry("enderio:item_alloy_ingot:3");
enderioVillageBlacksmithPool.removeEntry("enderio:item_alloy_ingot:6");
enderioVillageBlacksmithPool.removeEntry("enderio:item_alloy_ingot:5");
enderioVillageBlacksmithPool.removeEntry("enderio:item_alloy_ingot:2");
enderioVillageBlacksmithPool.removeEntry("enderio:item_material:9");
enderioVillageBlacksmithPool.removeEntry("enderio:item_material:10");
enderioVillageBlacksmithPool.removeEntry("enderio:item_material:11");
enderioVillageBlacksmithPool.removeEntry("enderio:item_material:12");
enderioVillageBlacksmithPool.removeEntry("enderio:item_material:13");
enderioVillageBlacksmithPool.removeEntry("enderio:item_dark_steel_sword:0");
enderioVillageBlacksmithPool.removeEntry("enderio:item_dark_steel_boots:0");
