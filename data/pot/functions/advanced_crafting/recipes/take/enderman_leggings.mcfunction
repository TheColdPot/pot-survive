#> pot:advanced_crafting/recipes/take/enderman_leggings
# TheColdPot <3
data merge entity @s {data:{toCraft:"null"}}
scoreboard players remove @s crafting.slot0 8
execute store result block ~ ~ ~ Items[{Slot:2b}].Count int 1 run scoreboard players get @s crafting.slot0
scoreboard players remove @s crafting.slot1 1
execute store result block ~ ~ ~ Items[{Slot:3b}].Count int 1 run scoreboard players get @s crafting.slot1
scoreboard players remove @s crafting.slot2 8
execute store result block ~ ~ ~ Items[{Slot:4b}].Count int 1 run scoreboard players get @s crafting.slot2
scoreboard players remove @s crafting.slot3 8
execute store result block ~ ~ ~ Items[{Slot:11b}].Count int 1 run scoreboard players get @s crafting.slot3
scoreboard players remove @s crafting.slot5 8
execute store result block ~ ~ ~ Items[{Slot:13b}].Count int 1 run scoreboard players get @s crafting.slot5
scoreboard players remove @s crafting.slot6 8
execute store result block ~ ~ ~ Items[{Slot:20b}].Count int 1 run scoreboard players get @s crafting.slot6
scoreboard players remove @s crafting.slot8 8
execute store result block ~ ~ ~ Items[{Slot:22b}].Count int 1 run scoreboard players get @s crafting.slot8
execute as @a run function pot:advanced_crafting/take_out_recipes