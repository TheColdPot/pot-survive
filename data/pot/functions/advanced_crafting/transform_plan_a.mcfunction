# Copyright © 2022-2023 SaKuraYeager, Open-sourced under WTFPL

setblock ~ ~ ~ air
setblock ~ ~ ~ barrel[facing=up]{CustomName:'"高级合成"'}
# tag=summon is NEVER USED
# why the frick
# its NEVER USED
summon marker ~ ~ ~ {Tags:[advancedCraftingMarker,summon]}

execute as @e[type=marker,tag=summon,limit=1] at @s positioned ~ ~-.5 ~ run function pot:advanced_crafting/fill_recipe_book
summon armor_stand ~ ~-1.46 ~ {Tags:[craftingTableDecoration,craftingTableTrim,new_summon],ShowArms:1b,Marker:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:crafting_table",Count:1b}]}
#summon armor_stand ~ ~-0.2 ~ {Tags:[craftingTableDecoration,craftingTableTrim,new_summon],ShowArms:1b,Marker:1b,Small:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"stick",Count:1b},{}],Pose:{RightArm:[220f,0f,90f]}}
#summon armor_stand ~ ~-0.2 ~0.1 {Tags:[craftingTableDecoration,craftingTableTrim,new_summon],ShowArms:1b,Marker:1b,Small:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"stick",Count:1b},{}],Pose:{RightArm:[230f,0f,90f]}}
#summon armor_stand ~ ~-0.2 ~0.2 {Tags:[craftingTableDecoration,craftingTableTrim,new_summon],ShowArms:1b,Marker:1b,Small:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"stick",Count:1b},{}],Pose:{RightArm:[240f,0f,90f]}}
execute as @e[type=marker,tag=summon] store result score @s uuid0 run data get entity @s UUID[0]
execute as @e[type=marker,tag=summon] store result score @s uuid1 run data get entity @s UUID[1]
execute as @e[type=marker,tag=summon] store result score @s uuid2 run data get entity @s UUID[2]
execute as @e[type=marker,tag=summon] store result score @s uuid3 run data get entity @s UUID[3]

execute as @e[type=armor_stand,tag=new_summon] run scoreboard players operation @s uuid0 = @e[type=marker,tag=summon,limit=1] uuid0
execute as @e[type=armor_stand,tag=new_summon] run scoreboard players operation @s uuid1 = @e[type=marker,tag=summon,limit=1] uuid1
execute as @e[type=armor_stand,tag=new_summon] run scoreboard players operation @s uuid2 = @e[type=marker,tag=summon,limit=1] uuid2
execute as @e[type=armor_stand,tag=new_summon] run scoreboard players operation @s uuid3 = @e[type=marker,tag=summon,limit=1] uuid3

tag @e[tag=summon] remove summon
tag @e[tag=new_summon] remove new_summon