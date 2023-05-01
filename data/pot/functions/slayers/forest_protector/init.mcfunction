data merge entity @s {CustomName:'{"text":"FOREST PROTECTOR","bold":true,"color":"gold"}',ArmorItems:[{id:"leather_boots",Count:1},{id:"leather_leggings",Count:1},{id:"leather_chestplate",Count:1},{id:"brown_stained_glass",Count:1}],ArmorDropChances:[0f,0f,0f,0f],HandItems:[{id:"wooden_axe",Count:1}],HandDropChances:[0f,0f],Tags:[combat_initiated],IsBaby:0b,DeathLootTable:"pot:death_loot/forest_protector"}

scoreboard players set @s combat.health 10000
scoreboard players set @s combat.maxHealth 10000
scoreboard players set @s combat.damage 3000
attribute @s generic.movement_speed base set 0.3
# execute at @p run place feature dark_oak ~ ~ ~