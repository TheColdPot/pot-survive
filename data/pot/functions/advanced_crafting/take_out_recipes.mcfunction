
execute store success score @s crafting.takeRecipe run clear @s #pot:craftable{PotCrafting:{recipeId:"enderman_helmet"}}
execute if score @s crafting.takeRecipe matches 1.. at @s run loot spawn ~ ~ ~ loot pot:armor/enderman/helmet
execute if score @s crafting.takeRecipe matches 1.. at @s run data modify entity @e[type=item,limit=1,sort=nearest] Owner set from entity @s UUID
execute if score @s crafting.takeRecipe matches 1.. at @s run data merge entity @e[type=item,limit=1,sort=nearest] {PickupDelay:0s}

execute store success score @s crafting.takeRecipe run clear @s #pot:craftable{PotCrafting:{recipeId:"enderman_chestplate"}}
execute if score @s crafting.takeRecipe matches 1.. at @s run loot spawn ~ ~ ~ loot pot:armor/enderman/chestplate
execute if score @s crafting.takeRecipe matches 1.. at @s run data modify entity @e[type=item,limit=1,sort=nearest] Owner set from entity @s UUID
execute if score @s crafting.takeRecipe matches 1.. at @s run data merge entity @e[type=item,limit=1,sort=nearest] {PickupDelay:0s}

execute store success score @s crafting.takeRecipe run clear @s #pot:craftable{PotCrafting:{recipeId:"enderman_leggings"}}
execute if score @s crafting.takeRecipe matches 1.. at @s run loot spawn ~ ~ ~ loot pot:armor/enderman/leggings
execute if score @s crafting.takeRecipe matches 1.. at @s run data modify entity @e[type=item,limit=1,sort=nearest] Owner set from entity @s UUID
execute if score @s crafting.takeRecipe matches 1.. at @s run data merge entity @e[type=item,limit=1,sort=nearest] {PickupDelay:0s}

execute store success score @s crafting.takeRecipe run clear @s #pot:craftable{PotCrafting:{recipeId:"enderman_boots"}}
execute if score @s crafting.takeRecipe matches 1.. at @s run loot spawn ~ ~ ~ loot pot:armor/enderman/boots
execute if score @s crafting.takeRecipe matches 1.. at @s run data modify entity @e[type=item,limit=1,sort=nearest] Owner set from entity @s UUID
execute if score @s crafting.takeRecipe matches 1.. at @s run data merge entity @e[type=item,limit=1,sort=nearest] {PickupDelay:0s}

execute store success score @s crafting.takeRecipe run clear @s #pot:craftable{PotCrafting:{recipeId:"guard_helmet"}}
execute if score @s crafting.takeRecipe matches 1.. at @s run loot spawn ~ ~ ~ loot pot:armor/guard/helmet
execute if score @s crafting.takeRecipe matches 1.. at @s run data modify entity @e[type=item,limit=1,sort=nearest] Owner set from entity @s UUID
execute if score @s crafting.takeRecipe matches 1.. at @s run data merge entity @e[type=item,limit=1,sort=nearest] {PickupDelay:0s}

execute store success score @s crafting.takeRecipe run clear @s #pot:craftable{PotCrafting:{recipeId:"guard_chestplate"}}
execute if score @s crafting.takeRecipe matches 1.. at @s run loot spawn ~ ~ ~ loot pot:armor/guard/chestplate
execute if score @s crafting.takeRecipe matches 1.. at @s run data modify entity @e[type=item,limit=1,sort=nearest] Owner set from entity @s UUID
execute if score @s crafting.takeRecipe matches 1.. at @s run data merge entity @e[type=item,limit=1,sort=nearest] {PickupDelay:0s}

execute store success score @s crafting.takeRecipe run clear @s #pot:craftable{PotCrafting:{recipeId:"guard_leggings"}}
execute if score @s crafting.takeRecipe matches 1.. at @s run loot spawn ~ ~ ~ loot pot:armor/guard/leggings
execute if score @s crafting.takeRecipe matches 1.. at @s run data modify entity @e[type=item,limit=1,sort=nearest] Owner set from entity @s UUID
execute if score @s crafting.takeRecipe matches 1.. at @s run data merge entity @e[type=item,limit=1,sort=nearest] {PickupDelay:0s}

execute store success score @s crafting.takeRecipe run clear @s #pot:craftable{PotCrafting:{recipeId:"guard_boots"}}
execute if score @s crafting.takeRecipe matches 1.. at @s run loot spawn ~ ~ ~ loot pot:armor/guard/boots
execute if score @s crafting.takeRecipe matches 1.. at @s run data modify entity @e[type=item,limit=1,sort=nearest] Owner set from entity @s UUID
execute if score @s crafting.takeRecipe matches 1.. at @s run data merge entity @e[type=item,limit=1,sort=nearest] {PickupDelay:0s}

execute store success score @s crafting.takeRecipe run clear @s #pot:craftable{PotCrafting:{recipeId:"magma_sword"}}
execute if score @s crafting.takeRecipe matches 1.. at @s run loot spawn ~ ~ ~ loot pot:weapon/melee/magma_sword
execute if score @s crafting.takeRecipe matches 1.. at @s run data modify entity @e[type=item,limit=1,sort=nearest] Owner set from entity @s UUID
execute if score @s crafting.takeRecipe matches 1.. at @s run data merge entity @e[type=item,limit=1,sort=nearest] {PickupDelay:0s}

execute store success score @s crafting.takeRecipe run clear @s #pot:craftable{PotCrafting:{recipeId:"refined_ores_iron"}}
execute if score @s crafting.takeRecipe matches 1.. at @s run loot spawn ~ ~ ~ loot pot:refined_ores/refined_iron
execute if score @s crafting.takeRecipe matches 1.. at @s run data modify entity @e[type=item,limit=1,sort=nearest] Owner set from entity @s UUID
execute if score @s crafting.takeRecipe matches 1.. at @s run data merge entity @e[type=item,limit=1,sort=nearest] {PickupDelay:0s}

execute store success score @s crafting.takeRecipe run clear @s #pot:craftable{PotCrafting:{recipeId:"refined_ores_diamond"}}
execute if score @s crafting.takeRecipe matches 1.. at @s run loot spawn ~ ~ ~ loot pot:refined_ores/refined_diamond
execute if score @s crafting.takeRecipe matches 1.. at @s run data modify entity @e[type=item,limit=1,sort=nearest] Owner set from entity @s UUID
execute if score @s crafting.takeRecipe matches 1.. at @s run data merge entity @e[type=item,limit=1,sort=nearest] {PickupDelay:0s}

execute store success score @s crafting.takeRecipe run clear @s #pot:craftable{PotCrafting:{recipeId:"refined_ores_gold"}}
execute if score @s crafting.takeRecipe matches 1.. at @s run loot spawn ~ ~ ~ loot pot:refined_ores/refined_gold
execute if score @s crafting.takeRecipe matches 1.. at @s run data modify entity @e[type=item,limit=1,sort=nearest] Owner set from entity @s UUID
execute if score @s crafting.takeRecipe matches 1.. at @s run data merge entity @e[type=item,limit=1,sort=nearest] {PickupDelay:0s}

execute store success score @s crafting.takeRecipe run clear @s #pot:craftable{PotCrafting:{recipeId:"refined_ores_emerald"}}
execute if score @s crafting.takeRecipe matches 1.. at @s run loot spawn ~ ~ ~ loot pot:refined_ores/refined_emerald
execute if score @s crafting.takeRecipe matches 1.. at @s run data modify entity @e[type=item,limit=1,sort=nearest] Owner set from entity @s UUID
execute if score @s crafting.takeRecipe matches 1.. at @s run data merge entity @e[type=item,limit=1,sort=nearest] {PickupDelay:0s}

execute store success score @s crafting.takeRecipe run clear @s #pot:craftable{PotCrafting:{recipeId:"refined_ores_iron_from_block"}}
execute if score @s crafting.takeRecipe matches 1.. at @s run loot spawn ~ ~ ~ loot pot:refined_ores/refined_iron
execute if score @s crafting.takeRecipe matches 1.. at @s run data modify entity @e[type=item,limit=1,sort=nearest] Owner set from entity @s UUID
execute if score @s crafting.takeRecipe matches 1.. at @s run data merge entity @e[type=item,limit=1,sort=nearest] {PickupDelay:0s}

execute store success score @s crafting.takeRecipe run clear @s #pot:craftable{PotCrafting:{recipeId:"refined_ores_diamond_from_block"}}
execute if score @s crafting.takeRecipe matches 1.. at @s run loot spawn ~ ~ ~ loot pot:refined_ores/refined_diamond
execute if score @s crafting.takeRecipe matches 1.. at @s run data modify entity @e[type=item,limit=1,sort=nearest] Owner set from entity @s UUID
execute if score @s crafting.takeRecipe matches 1.. at @s run data merge entity @e[type=item,limit=1,sort=nearest] {PickupDelay:0s}

execute store success score @s crafting.takeRecipe run clear @s #pot:craftable{PotCrafting:{recipeId:"refined_ores_gold_from_block"}}
execute if score @s crafting.takeRecipe matches 1.. at @s run loot spawn ~ ~ ~ loot pot:refined_ores/refined_gold
execute if score @s crafting.takeRecipe matches 1.. at @s run data modify entity @e[type=item,limit=1,sort=nearest] Owner set from entity @s UUID
execute if score @s crafting.takeRecipe matches 1.. at @s run data merge entity @e[type=item,limit=1,sort=nearest] {PickupDelay:0s}

execute store success score @s crafting.takeRecipe run clear @s #pot:craftable{PotCrafting:{recipeId:"refined_ores_emerald_from_block"}}
execute if score @s crafting.takeRecipe matches 1.. at @s run loot spawn ~ ~ ~ loot pot:refined_ores/refined_emerald
execute if score @s crafting.takeRecipe matches 1.. at @s run data modify entity @e[type=item,limit=1,sort=nearest] Owner set from entity @s UUID
execute if score @s crafting.takeRecipe matches 1.. at @s run data merge entity @e[type=item,limit=1,sort=nearest] {PickupDelay:0s}

execute store success score @s crafting.takeRecipe run clear @s #pot:craftable{PotCrafting:{recipeId:"rotten_helmet"}}
execute if score @s crafting.takeRecipe matches 1.. at @s run loot spawn ~ ~ ~ loot pot:armor/rotten/helmet
execute if score @s crafting.takeRecipe matches 1.. at @s run data modify entity @e[type=item,limit=1,sort=nearest] Owner set from entity @s UUID
execute if score @s crafting.takeRecipe matches 1.. at @s run data merge entity @e[type=item,limit=1,sort=nearest] {PickupDelay:0s}

execute store success score @s crafting.takeRecipe run clear @s #pot:craftable{PotCrafting:{recipeId:"rotten_chestplate"}}
execute if score @s crafting.takeRecipe matches 1.. at @s run loot spawn ~ ~ ~ loot pot:armor/rotten/chestplate
execute if score @s crafting.takeRecipe matches 1.. at @s run data modify entity @e[type=item,limit=1,sort=nearest] Owner set from entity @s UUID
execute if score @s crafting.takeRecipe matches 1.. at @s run data merge entity @e[type=item,limit=1,sort=nearest] {PickupDelay:0s}

execute store success score @s crafting.takeRecipe run clear @s #pot:craftable{PotCrafting:{recipeId:"rotten_leggings"}}
execute if score @s crafting.takeRecipe matches 1.. at @s run loot spawn ~ ~ ~ loot pot:armor/rotten/leggings
execute if score @s crafting.takeRecipe matches 1.. at @s run data modify entity @e[type=item,limit=1,sort=nearest] Owner set from entity @s UUID
execute if score @s crafting.takeRecipe matches 1.. at @s run data merge entity @e[type=item,limit=1,sort=nearest] {PickupDelay:0s}

execute store success score @s crafting.takeRecipe run clear @s #pot:craftable{PotCrafting:{recipeId:"rotten_boots"}}
execute if score @s crafting.takeRecipe matches 1.. at @s run loot spawn ~ ~ ~ loot pot:armor/rotten/boots
execute if score @s crafting.takeRecipe matches 1.. at @s run data modify entity @e[type=item,limit=1,sort=nearest] Owner set from entity @s UUID
execute if score @s crafting.takeRecipe matches 1.. at @s run data merge entity @e[type=item,limit=1,sort=nearest] {PickupDelay:0s}

execute store success score @s crafting.takeRecipe run clear @s #pot:craftable{PotCrafting:{recipeId:"warden_helmet"}}
execute if score @s crafting.takeRecipe matches 1.. at @s run loot spawn ~ ~ ~ loot pot:armor/warden/helmet
execute if score @s crafting.takeRecipe matches 1.. at @s run data modify entity @e[type=item,limit=1,sort=nearest] Owner set from entity @s UUID
execute if score @s crafting.takeRecipe matches 1.. at @s run data merge entity @e[type=item,limit=1,sort=nearest] {PickupDelay:0s}

execute store success score @s crafting.takeRecipe run clear @s #pot:craftable{PotCrafting:{recipeId:"warden_chestplate"}}
execute if score @s crafting.takeRecipe matches 1.. at @s run loot spawn ~ ~ ~ loot pot:armor/warden/chestplate
execute if score @s crafting.takeRecipe matches 1.. at @s run data modify entity @e[type=item,limit=1,sort=nearest] Owner set from entity @s UUID
execute if score @s crafting.takeRecipe matches 1.. at @s run data merge entity @e[type=item,limit=1,sort=nearest] {PickupDelay:0s}

execute store success score @s crafting.takeRecipe run clear @s #pot:craftable{PotCrafting:{recipeId:"warden_leggings"}}
execute if score @s crafting.takeRecipe matches 1.. at @s run loot spawn ~ ~ ~ loot pot:armor/warden/leggings
execute if score @s crafting.takeRecipe matches 1.. at @s run data modify entity @e[type=item,limit=1,sort=nearest] Owner set from entity @s UUID
execute if score @s crafting.takeRecipe matches 1.. at @s run data merge entity @e[type=item,limit=1,sort=nearest] {PickupDelay:0s}

execute store success score @s crafting.takeRecipe run clear @s #pot:craftable{PotCrafting:{recipeId:"warden_boots"}}
execute if score @s crafting.takeRecipe matches 1.. at @s run loot spawn ~ ~ ~ loot pot:armor/warden/boots
execute if score @s crafting.takeRecipe matches 1.. at @s run data modify entity @e[type=item,limit=1,sort=nearest] Owner set from entity @s UUID
execute if score @s crafting.takeRecipe matches 1.. at @s run data merge entity @e[type=item,limit=1,sort=nearest] {PickupDelay:0s}

execute store success score @s crafting.takeRecipe run clear @s #pot:craftable{PotCrafting:{recipeId:"warden_blade"}}
execute if score @s crafting.takeRecipe matches 1.. at @s run loot spawn ~ ~ ~ loot pot:weapon/melee/warden_blade
execute if score @s crafting.takeRecipe matches 1.. at @s run data modify entity @e[type=item,limit=1,sort=nearest] Owner set from entity @s UUID
execute if score @s crafting.takeRecipe matches 1.. at @s run data merge entity @e[type=item,limit=1,sort=nearest] {PickupDelay:0s}

execute store success score @s crafting.takeRecipe run clear @s #pot:craftable{PotCrafting:{recipeId:"warden_scepter"}}
execute if score @s crafting.takeRecipe matches 1.. at @s run loot spawn ~ ~ ~ loot pot:weapon/melee/warden_scepter
execute if score @s crafting.takeRecipe matches 1.. at @s run data modify entity @e[type=item,limit=1,sort=nearest] Owner set from entity @s UUID
execute if score @s crafting.takeRecipe matches 1.. at @s run data merge entity @e[type=item,limit=1,sort=nearest] {PickupDelay:0s}
