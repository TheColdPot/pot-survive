playsound ui.button.click block @s

#我觉得自动生成有必要出手了 :)

## ---===Weapon===--- ##
#Starless Night
execute store success score @s crafting.slot5 run clear @s #pot:craftable{StarlessNight:1}
execute if entity @s[scores={crafting.slot5=1}] as @e[type=marker,limit=1,scores={marker_marking=1}] run function pot:advanced_crafting/recipe_book/recipes_display/display/starless_night

#MagmaSword
execute store success score @s crafting.slot5 run clear @s #pot:craftable{MagmaSword:1}
execute if entity @s[scores={crafting.slot5=1}] as @e[type=marker,limit=1,scores={marker_marking=1}] run function pot:advanced_crafting/recipe_book/recipes_display/display/magma_sword

#Warden Scepter
execute store success score @s crafting.slot5 run clear @s #pot:craftable{WardenScepter:1}
execute if entity @s[scores={crafting.slot5=1}] as @e[type=marker,limit=1,scores={marker_marking=1}] run function pot:advanced_crafting/recipe_book/recipes_display/display/warden_scepter

#Warden Blade
execute store success score @s crafting.slot5 run clear @s #pot:craftable{WardenBlade:1}
execute if entity @s[scores={crafting.slot5=1}] as @e[type=marker,limit=1,scores={marker_marking=1}] run function pot:advanced_crafting/recipe_book/recipes_display/display/warden_blade


## ---===Armor===--- ##
#Rotten Armor 
execute store success score @s crafting.slot5 run clear @s #pot:craftable{RottenSets:1}
execute if entity @s[scores={crafting.slot5=1}] as @e[type=marker,limit=1,scores={marker_marking=1}] run function pot:advanced_crafting/recipe_book/recipes_display/display/rotten_sets/main

execute store success score @s crafting.slot5 run clear @s #pot:craftable{RottenHelmet:1}
execute if entity @s[scores={crafting.slot5=1}] as @e[type=marker,limit=1,scores={marker_marking=1}] run function pot:advanced_crafting/recipe_book/recipes_display/display/rotten_sets/helmet

execute store success score @s crafting.slot5 run clear @s #pot:craftable{RottenChestplate:1}
execute if entity @s[scores={crafting.slot5=1}] as @e[type=marker,limit=1,scores={marker_marking=1}] run function pot:advanced_crafting/recipe_book/recipes_display/display/rotten_sets/chestplate

execute store success score @s crafting.slot5 run clear @s #pot:craftable{RottenLeggings:1}
execute if entity @s[scores={crafting.slot5=1}] as @e[type=marker,limit=1,scores={marker_marking=1}] run function pot:advanced_crafting/recipe_book/recipes_display/display/rotten_sets/leggings

execute store success score @s crafting.slot5 run clear @s #pot:craftable{RottenBoots:1}
execute if entity @s[scores={crafting.slot5=1}] as @e[type=marker,limit=1,scores={marker_marking=1}] run function pot:advanced_crafting/recipe_book/recipes_display/display/rotten_sets/boots

#Guard Armor
execute store success score @s crafting.slot5 run clear @s #pot:craftable{GuardSets:1}
execute if entity @s[scores={crafting.slot5=1}] as @e[type=marker,limit=1,scores={marker_marking=1}] run function pot:advanced_crafting/recipe_book/recipes_display/display/guard_sets/main

execute store success score @s crafting.slot5 run clear @s #pot:craftable{GuardHelmet:1}
execute if entity @s[scores={crafting.slot5=1}] as @e[type=marker,limit=1,scores={marker_marking=1}] run function pot:advanced_crafting/recipe_book/recipes_display/display/guard_sets/helmet

execute store success score @s crafting.slot5 run clear @s #pot:craftable{GuardChestplate:1}
execute if entity @s[scores={crafting.slot5=1}] as @e[type=marker,limit=1,scores={marker_marking=1}] run function pot:advanced_crafting/recipe_book/recipes_display/display/guard_sets/chestplate

execute store success score @s crafting.slot5 run clear @s #pot:craftable{GuardLeggings:1}
execute if entity @s[scores={crafting.slot5=1}] as @e[type=marker,limit=1,scores={marker_marking=1}] run function pot:advanced_crafting/recipe_book/recipes_display/display/guard_sets/leggings

execute store success score @s crafting.slot5 run clear @s #pot:craftable{GuardBoots:1}
execute if entity @s[scores={crafting.slot5=1}] as @e[type=marker,limit=1,scores={marker_marking=1}] run function pot:advanced_crafting/recipe_book/recipes_display/display/guard_sets/boots

#Enderman Armor
execute store success score @s crafting.slot5 run clear @s #pot:craftable{EndermanSets:1}
execute if entity @s[scores={crafting.slot5=1}] as @e[type=marker,limit=1,scores={marker_marking=1}] run function pot:advanced_crafting/recipe_book/recipes_display/display/enderman_sets/main

execute store success score @s crafting.slot5 run clear @s #pot:craftable{EndermanHelmet:1}
execute if entity @s[scores={crafting.slot5=1}] as @e[type=marker,limit=1,scores={marker_marking=1}] run function pot:advanced_crafting/recipe_book/recipes_display/display/enderman_sets/helmet

execute store success score @s crafting.slot5 run clear @s #pot:craftable{EndermanChestplate:1}
execute if entity @s[scores={crafting.slot5=1}] as @e[type=marker,limit=1,scores={marker_marking=1}] run function pot:advanced_crafting/recipe_book/recipes_display/display/enderman_sets/chestplate

execute store success score @s crafting.slot5 run clear @s #pot:craftable{EndermanLeggings:1}
execute if entity @s[scores={crafting.slot5=1}] as @e[type=marker,limit=1,scores={marker_marking=1}] run function pot:advanced_crafting/recipe_book/recipes_display/display/enderman_sets/leggings

execute store success score @s crafting.slot5 run clear @s #pot:craftable{EndermanBoots:1}
execute if entity @s[scores={crafting.slot5=1}] as @e[type=marker,limit=1,scores={marker_marking=1}] run function pot:advanced_crafting/recipe_book/recipes_display/display/enderman_sets/boots

#Warden Armor
execute store success score @s crafting.slot5 run clear @s #pot:craftable{WardenSets:1}
execute if entity @s[scores={crafting.slot5=1}] as @e[type=marker,limit=1,scores={marker_marking=1}] run function pot:advanced_crafting/recipe_book/recipes_display/display/warden_sets/main

execute store success score @s crafting.slot5 run clear @s #pot:craftable{WardenHelmet:1}
execute if entity @s[scores={crafting.slot5=1}] as @e[type=marker,limit=1,scores={marker_marking=1}] run function pot:advanced_crafting/recipe_book/recipes_display/display/warden_sets/helmet

execute store success score @s crafting.slot5 run clear @s #pot:craftable{WardenChestplate:1}
execute if entity @s[scores={crafting.slot5=1}] as @e[type=marker,limit=1,scores={marker_marking=1}] run function pot:advanced_crafting/recipe_book/recipes_display/display/warden_sets/chestplate

execute store success score @s crafting.slot5 run clear @s #pot:craftable{WardenLeggings:1}
execute if entity @s[scores={crafting.slot5=1}] as @e[type=marker,limit=1,scores={marker_marking=1}] run function pot:advanced_crafting/recipe_book/recipes_display/display/warden_sets/leggings

execute store success score @s crafting.slot5 run clear @s #pot:craftable{WardenBoots:1}
execute if entity @s[scores={crafting.slot5=1}] as @e[type=marker,limit=1,scores={marker_marking=1}] run function pot:advanced_crafting/recipe_book/recipes_display/display/warden_sets/boots


scoreboard players reset @s crafting.slot5
