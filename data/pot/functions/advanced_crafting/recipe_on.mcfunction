function pot:advanced_crafting/accident_items/return_outer

execute as @a store success score @s crafting.slot0 run clear @s knowledge_book{potAttr:"recipeBookEntrance"}
tag @a[scores={crafting.slot0=1..},sort=nearest,limit=1] add recipeOperator


function pot:advanced_crafting/return_items
execute as @a[tag=recipeOperator] at @s run playsound minecraft:ui.loom.take_result block @s
execute as @e[type=item,tag=backup_crftReturnItems] run data modify entity @s Owner set from entity @a[tag=recipeOperator,limit=1] UUID
execute as @e[type=item,tag=backup_crftReturnItems] run data modify entity @s PickupDelay set value 0
tag @e[type=item,tag=backup_crftReturnItems] remove backup_crftReturnItems


tag @s add recipeBook

function pot:advanced_crafting/recipe_book/type


tag @a remove recipeOperator