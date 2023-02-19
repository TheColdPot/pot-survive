function pot:advanced_crafting/accident_items/return_grid
function pot:advanced_crafting/accident_items/return_outer

execute store success score @s marker_marking run data modify block ~ ~ ~ Items set from entity @s data.Items[-1]
#选择配方类型
execute if entity @s[scores={marker_marking=1}] unless entity @a[scores={crafting.slot4=1}] as @a[distance=..10] store success score @s crafting.slot4 run clear @s iron_sword{weaponRecipe:1} 0
execute if entity @s[scores={marker_marking=1}] unless entity @a[scores={crafting.slot4=1}] as @a[distance=..10] store success score @s crafting.slot4 run clear @s golden_chestplate{armorRecipe:1} 0
execute if entity @a[scores={crafting.slot4=1}] run function pot:advanced_crafting/marker_re_type

#查看配方
execute if entity @s[scores={marker_marking=1}] as @a[distance=..10] store success score @s crafting.slot5 run clear @s #pot:craftable{Recipe_view:1} 0
execute as @a[scores={crafting.slot5=1}] run function pot:advanced_crafting/recipe_book/recipes_display/select

scoreboard players reset @s marker_marking

function pot:advanced_crafting/recipe_book/show_last_route


