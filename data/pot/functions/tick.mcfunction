function pot:grant_armor_tags

# scoreboard players add @e[tag=transformWolf] genericScore 1
# execute as @e[tag=transformWolf,scores={genericScore=100..}] at @s run function pot:tame/remove

execute as @a[nbt={Inventory:[{id:"minecraft:anvil"}]}] run function pot:ban_anvil

function pot:full_set/index

execute as @a[nbt={SelectedItem:{tag:{potAttr:"giantSpoon"}}}] run function pot:weapon_bonus/giant_spoon

execute as @e[type=marker,tag=advancedCraftingMarker] at @s run function pot:advanced_crafting/marker
clear @a #pot:uiframe{potAttr:"uiFrame"}


function pot:advanced_crafting/clear_ui_elements

execute if entity @a[predicate=pot:proxima_dimension] in pot:proxima_dimension run function pot:boss/proxima/boss_tick

scoreboard players set @a[predicate=!pot:proxima_dimension,scores={trigger.proximaDeath=1..}] trigger.proximaDeath 0

execute as @a store result score @s uuid0 run data get entity @s UUID[0]
execute as @a store result score @s uuid1 run data get entity @s UUID[1]
execute as @a store result score @s uuid2 run data get entity @s UUID[2]
execute as @a store result score @s uuid3 run data get entity @s UUID[3]

# execute if entity @e[type=marker,tag=craftingTableUsing,tag=advancedCraftingMarker]
data merge entity @e[type=item,nbt={Item:{tag:{PotCrafting:{isCraftingResult:1b}}}},limit=1] {PickupDelay:0s}
data remove entity @e[type=item,nbt={Item:{tag:{PotCrafting:{isCraftingResult:1b}}}},limit=1] Item.tag.PotCrafting

execute as @e[tag=util_ghostBlock] run data merge entity @s {Time:0}



# MAKE THEM IN THE LAST!
clear @a #pot:craftable{PotCrafting:{shouldExist:1b}}