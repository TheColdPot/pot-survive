execute as @a[scores={crafting.slot4=1}] at @s run playsound ui.button.click block @s

execute store success score @s crafting.slot4 run clear @a[distance=..10] iron_sword{weaponRecipe:1}
execute if entity @s[scores={crafting.slot4=1}] run function pot:advanced_crafting/recipe_book/weapon/page/1

execute store success score @s crafting.slot4 run clear @a[distance=..10] golden_chestplate{armorRecipe:1}
execute if entity @s[scores={crafting.slot4=1}] run function pot:advanced_crafting/recipe_book/armor/page/1

scoreboard players reset @s crafting.slot4

scoreboard players reset @a crafting.slot4