#> pot:advanced_crafting/recipes/take/rotten_boots
# TheColdPot <3
data merge entity @s {data:{toCraft:"null"}}
scoreboard players remove @s crafting.slot3 2
execute store result block ~ ~ ~ Items[{Slot:11b}].Count int 1 run scoreboard players get @s crafting.slot3
scoreboard players remove @s crafting.slot5 2
execute store result block ~ ~ ~ Items[{Slot:13b}].Count int 1 run scoreboard players get @s crafting.slot5
scoreboard players remove @s crafting.slot6 1
execute store result block ~ ~ ~ Items[{Slot:20b}].Count int 1 run scoreboard players get @s crafting.slot6
scoreboard players remove @s crafting.slot8 1
execute store result block ~ ~ ~ Items[{Slot:22b}].Count int 1 run scoreboard players get @s crafting.slot8
execute as @a run function pot:advanced_crafting/take_out_recipes