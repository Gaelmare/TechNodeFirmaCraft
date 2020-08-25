#priority 3
#modloaded nuclearcraft
var solenoidCopper = <nuclearcraft:part:4>;
var electricMotor = <nuclearcraft:part:8>;
var machineChassis = <nuclearcraft:part:10>;
var toughAlloy = <nuclearcraft:alloy:1>;
var steel = <ore:ingotSteel>;
var lead = <ore:ingotLead>;
var wroughtIron = <ore:ingotWroughtIron>;
//#REMOVE Recipes
  // mods.jei.JEI.removeAndHide(<adhooks:spear_launcher>);
  // recipes.remove(<adhooks:prototype_launcher>);
recipes.remove(machineChassis);
recipes.remove(solenoidCopper);
recipes.remove(electricMotor);

// ================================================================================
//#ADD SHAPED

  // recipes.addShaped("adhooks_web_launcher", <adhooks:web_launcher>, [[<minecraft:dye:15> | <tfc:dye/white>, <minecraft:dye:12>, <adhooks:web_hook>], [<minecraft:dye:12>, <adhooks:prototype_launcher>, <ore:string> | <tfc:animal/product/wool_yarn>], [null, <ore:string> | <tfc:animal/product/wool_yarn>, <minecraft:dye:15> | <tfc:dye/white>]]);

// machine chassis
recipes.addShaped("nuclearcraft_machine_chassis", machineChassis, [
  [lead, toughAlloy, lead],
  [steel, <tfc:metal/ingot/black_steel>, steel],
  [lead, toughAlloy, lead]
]);

// solenoid copper
recipes.addShaped("nuclearcraft_solenoid_copper", solenoidCopper*2, [
  [<ore:ingotCopper>, <ore:ingotCopper>, null],
  [wroughtIron, wroughtIron, null],
  [<ore:ingotCopper>, <ore:ingotCopper>, null]
]);

// electric motor
recipes.addShaped("nuclearcraft_electric_motor", electricMotor, [
  [<ore:ingotSteel>, <ore:ingotSteel>, <tfc:metal/nugget/gold>],
  [solenoidCopper, solenoidCopper, wroughtIron],
  [<ore:ingotSteel>, <ore:ingotSteel>, <tfc:metal/nugget/gold>]
]);


// ================================================================================
//#ADD SHAPELESS
      // recipes.addShapeless("tnfc_bwm_hemp_rope",<betterwithmods:rope>, [<ore:fiberHemp>, <ore:fiberHemp>, <ore:fiberHemp>, <ore:fiberHemp>, <ore:fiberHemp>, <ore:fiberHemp>]);

//#REGISTER TFC Size/Heat/Other
  // mods.terrafirmacraft.ItemRegistry.registerItemSize(<adhooks:prototype_launcher>, "#SIZE", "#WEIGHT");
    
    //#SIZE
    // TINY("tiny"), // Fits in anything
    // VERY_SMALL("very_small"), // Fits in anything
    // SMALL("small"), // Fits in small vessels
    // NORMAL("normal"), // Fits in large vessels
    // LARGE("large"), // Fits in chests, Pit kilns can hold four
    // VERY_LARGE("very_large"), // Pit kilns can only hold one
    // HUGE("huge"); // Counts towards overburdened, fits in nothing
    
    //#WEIGHT
    // VERY_LIGHT("very_light", 64), // Store anywhere stacksize = 64
    // LIGHT("light", 32),// Store only in chests stacksize = 32
    // MEDIUM("medium", 16),
    // HEAVY("heavy", 4),// Store only in chests stacksize = 4
    // VERY_HEAVY("very_heavy", 1); // Store only in chests stacksize = 1
    
