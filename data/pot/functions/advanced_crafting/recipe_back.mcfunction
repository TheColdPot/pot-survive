data remove entity @s data.Items[-1]

execute store result score @s crafting.slot4 if data entity @s data.Items[]
execute if entity @s[scores={crafting.slot4=1..}] run function pot:advanced_crafting/recipe_last
execute unless entity @s[scores={crafting.slot4=1..}] run function pot:advanced_crafting/recipe_off