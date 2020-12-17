#loader contenttweaker
#modloaded conarm crafttweakerutils tconstruct

import mods.contenttweaker.conarm.ExtendedMaterialBuilder;
import mods.contenttweaker.conarm.ArmorTrait;
import crafttweaker.entity.IEntityEquipmentSlot;
import crafttweaker.world.IWorld;
import crafttweaker.player.IPlayer;
import crafttweaker.damage.IDamageSource;
import crafttweaker.event.EntityLivingHurtEvent;
import crafttweaker.event.LivingKnockBackEvent;
import crafttweaker.item.IItemStack;
import mods.contenttweaker.conarm.ArmorTraitBuilder;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityLivingBase;

// Hard refs for slots
val offhandSlot = IEntityEquipmentSlot.offhand();
val mainhandSlot = IEntityEquipmentSlot.mainHand();
val headSlot = IEntityEquipmentSlot.head();
val chestSlot = IEntityEquipmentSlot.chest();
val legSlot = IEntityEquipmentSlot.legs();
val footSlot = IEntityEquipmentSlot.feet();

// All slots, including main and offhand
var fullSetSlots as IEntityEquipmentSlot[] = [offhandSlot, mainhandSlot, headSlot, chestSlot, legSlot, footSlot];
// Just armor slots
var armorSetSlots as IEntityEquipmentSlot[] = [headSlot, chestSlot, legSlot, footSlot];

// Only tinkers tools and armor are valid
function isInvalidSetItem(item as IItemStack, traitName as string) as bool {
	return isNull(item) || isNull(traitName) 
			|| !(item.definition.owner has "tconstruct") && !(item.definition.owner has "conarm")
			|| isNull(item.tag) || isNull(item.tag.Traits) || isNull(item.tag.Traits.asList())
			|| item.tag.Traits.asList().length == 0;
}

// Takes a list of equipment slots, an entity, and the name of a trait
// Returns a bool of whether the entity has the trait on all slots
function matchesSet(itemSet as IEntityEquipmentSlot[], entity as IPlayer, traitName as string) as bool {
	print("Attempting to match set on " + entity.name);
	print("Trait name: " + traitName);
	for slot in itemSet {
		print("Slot: " + slot.slotIndex + " named " + slot.name);
		val slotItem = entity.getItemInSlot(slot);
		// Basically if it's not a valid construct item or item at all or doesn't have any traits, it breaks set matching
		if (isInvalidSetItem(slotItem, traitName)) {
			return false;
		} // Make sure it actually has the trait
		if (!(slotItem.tag.Traits has traitName)) {
			return false;
		}
	}
	return true;
}


val frigidDragonbornTrait = ArmorTraitBuilder.create("frigid_dragonborn"); // Ice Dragonsteel trait, 0x5dbfc9
val fieryDragonbornTrait = ArmorTraitBuilder.create("fiery_dragonborn"); // Fire Dragonsteel trait, 0x96440e
val unyieldingTrait = ArmorTraitBuilder.create("unyielding"); // Vibranium trait, 0x9daaab

frigidDragonbornTrait.onHurt = function(trait as ArmorTrait, armor as IItemStack, player as IPlayer, source as IDamageSource, originalDamage as float, newDamage as float, event as EntityLivingHurtEvent) as float {
	var custDamage = newDamage;
	// Each piece of the set will reduce the damage by a fifth - total 80% damage resist
	custDamage -= (originalDamage * 0.20f) as float;
	if (matchesSet(armorSetSlots, player, "frigid_dragonborn_armor")) {
		// If you're wearing full dragonsteel armor you'll be immune to ice! Cool!
		// The following events should only happen once per set - do it with the chestpiece
		val isChestpiece = armor.definition.id == player.getItemInSlot(IEntityEquipmentSlot.chest()).definition.id;
		if (isChestpiece) {
			if (source.getDamageType() == "ice" || source.getDamageType() == "cold" || source.getDamageType() == "frost") {
				custDamage = 0.0 as float;
				event.cancel();
			}
			// Freeze your enemies if they dare touch you!
			val trueSource = source.getTrueSource() as IEntity;
			if (isNull(trueSource) || !trueSource instanceof IEntityLivingBase || !trueSource.isAlive()) {
				return custDamage;
			} else {
				val iceTouch = IDamageSource.createPlayerDamage(player);
				trueSource.attackEntityFrom(iceTouch, 5);
				<potion:netherex:frozen>.makePotionEffect(140, 0).performEffect(trueSource);
			}
		}
	}
	// Don't accidentally heal the player
	if (0 as float > custDamage) {
		custDamage = 0 as float;
	}
	return custDamage;
};
frigidDragonbornTrait.localizedName = "Frigid Dragonborn";
frigidDragonbornTrait.localizedDescription = "The cold never bothered you anyways. Damage who?";
frigidDragonbornTrait.register();

fieryDragonbornTrait.onHurt = function(trait as ArmorTrait, armor as IItemStack, player as IPlayer, source as IDamageSource, originalDamage as float, newDamage as float, event as EntityLivingHurtEvent) as float {
	var custDamage = newDamage;
	// Each piece of the set will reduce the damage by a fifth - total 80% damage resist
	custDamage -= (originalDamage * 0.20f) as float;
	if (matchesSet(armorSetSlots, player, "fiery_dragonborn_armor")) {
		val isChestpiece = armor.definition.id == player.getItemInSlot(IEntityEquipmentSlot.chest()).definition.id;
		// If you're wearing full fire dragonsteel armor you'll be immune to fire!
		if (isChestpiece) {
			if (source.isFireDamage()) {
				custDamage = 0.0 as float;
				event.cancel();
				player.extinguish();
			}
			// Set the baddies on fire while you're at it, if you can.
			val trueSource = source.getTrueSource() as IEntity;
			if (isNull(trueSource) || !trueSource instanceof IEntityLivingBase || !trueSource.isAlive()) {
				return custDamage;
			} else {
				val fireTouch = IDamageSource.createPlayerDamage(player);
				trueSource.attackEntityFrom(fireTouch, 5);
				trueSource.setFire(7);
			}
		}
	}
	// Don't accidentally heal the player
	if (0 as float > custDamage) {
		custDamage = 0 as float;
	}
	return custDamage;
};
fieryDragonbornTrait.localizedName = "Fiery Dragonborn";
fieryDragonbornTrait.localizedDescription = "Heat no longer bothers you, and generally speaking you're nigh indestructible.";
fieryDragonbornTrait.register();



// If you're wearing vibranium you'll be immune to fall damage! Sweet. Also damage resistant.
unyieldingTrait.onHurt = function(trait as ArmorTrait, armor as IItemStack, player as IPlayer, source as IDamageSource, originalDamage as float, newDamage as float, event as EntityLivingHurtEvent) as float {
	var custDamage = newDamage;
	if (matchesSet(armorSetSlots, player, "unyielding_armor")) { // They're wearing a full set of vibranium
		if (source.getDamageType() == "fall") {
			custDamage = 0.0 as float;
			event.cancel(); // Just in case
		} else { // Each piece of the set will reduce the damage by a tenth - total 40% damage resist
			custDamage -= (originalDamage * 0.1) as float;
		}
	}
	return custDamage;
};
// Vibranium is immune to knockback
unyieldingTrait.onKnockback = function(trait as ArmorTrait, armor as IItemStack, player as IPlayer, event as LivingKnockBackEvent) {
	val isChestpiece = armor.definition.id == player.getItemInSlot(IEntityEquipmentSlot.chest()).definition.id;
	// They're wearing a full set of vibranium, but only activate the effect once per set
	if (matchesSet(armorSetSlots, player, "unyielding_armor") && isChestpiece) {
		event.cancel();
	}
};
unyieldingTrait.localizedName = "Unyielding";
unyieldingTrait.localizedDescription = "You always seem to land on your feet, and blows seem to bounce off of you.";
unyieldingTrait.register();
