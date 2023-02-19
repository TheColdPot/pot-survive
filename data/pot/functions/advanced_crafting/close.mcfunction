execute if entity @s[tag=!recipeBook] run function pot:advanced_crafting/return_items
tag @e[type=item,tag=crftReturnItems,dy=1] add backup_crftReturnItems

tag @s remove recipeBook
tag @s remove recipeBook_weapon
tag @s remove recipeBook_armor

function pot:advanced_crafting/recipe_off
function pot:advanced_crafting/fill_recipe_book
