# kill @e[type=item,nbt={Item:{tag:{potAttr:"uiFrame"}}}]
# to kill the original barrel, which dropped by vanilla MC.
execute store result score @s crafting.slot8 run kill @e[type=item,nbt={Item:{tag:{display:{Name:'{"text":"高级合成"}'}}}}]

execute unless score @s crafting.slot8 matches 0 run loot spawn ~ ~ ~ loot pot:advanced_crafting_table

tag @s add advancedCrafting_killed
execute as @e[tag=craftingTableTrim] if score @s uuid0 = @e[tag=advancedCrafting_killed,limit=1] uuid0 if score @s uuid1 = @e[tag=advancedCrafting_killed,limit=1] uuid1 if score @s uuid2 = @e[tag=advancedCrafting_killed,limit=1] uuid2 if score @s uuid3 = @e[tag=advancedCrafting_killed,limit=1] uuid3 run tag @s add advancedCrafting_killed

kill @e[tag=advancedCrafting_killed]

kill @e[type=item,nbt={Item:{tag:{isCraftingResult:1b}}}]

# kill @e[tag=craftingTableBlock,limit=6,sort=nearest]
