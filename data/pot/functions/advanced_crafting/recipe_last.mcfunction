function pot:advanced_crafting/accident_items/return_grid
function pot:advanced_crafting/accident_items/return_outer

execute as @a store success score @s crafting.slot0 run clear @s arrow{potAttr:"recipeBookExit"}
execute as @a[scores={crafting.slot0=1}] at @s run playsound ui.button.click block @s

function pot:advanced_crafting/recipe_book/show_last_route