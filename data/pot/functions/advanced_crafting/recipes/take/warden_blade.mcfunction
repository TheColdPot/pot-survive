#> pot:advanced_crafting/recipes/take/warden_blade
# TheColdPot <3
data merge entity @s {data:{toCraft:"null"}}
scoreboard players remove @s crafting.slot1 6
execute store result block ~ ~ ~ Items[{Slot:3b}].Count int 1 run scoreboard players get @s crafting.slot1
scoreboard players remove @s crafting.slot4 6
execute store result block ~ ~ ~ Items[{Slot:12b}].Count int 1 run scoreboard players get @s crafting.slot4
scoreboard players remove @s crafting.slot7 1
execute store result block ~ ~ ~ Items[{Slot:21b}].Count int 1 run scoreboard players get @s crafting.slot7
execute as @a run function pot:advanced_crafting/take_out_recipes