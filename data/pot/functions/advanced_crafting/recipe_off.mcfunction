execute as @a store result score @s crafting.slot0 run clear @s arrow{potAttr:"recipeBookExit"}
tag @a[scores={crafting.slot0=1..},sort=nearest,limit=1] add recipeOperator
tag @s remove recipeBook
execute as @a[tag=recipeOperator] at @s run playsound ui.button.click block @s

tag @a remove recipeOperator

tag @s remove recipeBook_weapon
tag @s remove recipeBook_armor

function pot:advanced_crafting/ui_frame
function pot:advanced_crafting/fill_recipe_book

item replace block ~ ~ ~ container.2 with air
item replace block ~ ~ ~ container.3 with air
item replace block ~ ~ ~ container.4 with air

item replace block ~ ~ ~ container.11 with air
item replace block ~ ~ ~ container.12 with air
item replace block ~ ~ ~ container.13 with air

item replace block ~ ~ ~ container.20 with air
item replace block ~ ~ ~ container.21 with air
item replace block ~ ~ ~ container.22 with air
