val basicCircuitOreDict = <ore:circuitBasic>;
val advancedCircuitOreDict = <ore:circuitAdvanced>;
val eliteCircuitOreDict = <ore:circuitElite>;
basicCircuitOreDict.add(<opencomputers:material:4>);
basicCircuitOreDict.add(<advancedrocketry:ic>);
advancedCircuitOreDict.add(<advancedrocketry:ic:2>);

// Add cross-circuit compat
recipes.replaceAllOccurences(<opencomputers:material:4>, basicCircuitOreDict);
recipes.replaceAllOccurences(<advancedrocketry:ic>, basicCircuitOreDict);
recipes.replaceAllOccurences(<advancedrocketry:ic:2>, advancedCircuitOreDict);