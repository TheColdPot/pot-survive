
execute at @p[distance=0.01..50] run summon armor_stand ^ ^ ^ {Tags:[tp_target,new_summon_target],NoGravity:1b,Invisible:1b}
execute as @e[tag=new_summon_target] store result score @s uuid0 run data get entity @s UUID[0]
execute as @e[tag=new_summon_target] store result score @s uuid1 run data get entity @s UUID[1]
execute as @e[tag=new_summon_target] store result score @s uuid2 run data get entity @s UUID[2]
execute as @e[tag=new_summon_target] store result score @s uuid3 run data get entity @s UUID[3]

summon armor_stand ~ ~ ~ {Tags:[bow_string,new_summon],Invisible:1b}
data modify entity @e[tag=new_summon,limit=1] Rotation set from entity @s Rotation
tp @e[tag=new_summon] ~ ~ ~ ~90 ~
loot replace entity @e[tag=new_summon] armor.feet loot pot:_random_provider/proxima_soul_attack
execute as @e[tag=new_summon] store result entity @s Rotation[1] float 1 run data get entity @s ArmorItems[0].tag.AttributeModifiers[{Name:"randomProvider"}].Amount
item replace entity @e[tag=new_summon] armor.feet with air
scoreboard players operation @e[tag=new_summon] uuid0 = @e[tag=new_summon_target] uuid0
scoreboard players operation @e[tag=new_summon] uuid1 = @e[tag=new_summon_target] uuid1
scoreboard players operation @e[tag=new_summon] uuid2 = @e[tag=new_summon_target] uuid2
scoreboard players operation @e[tag=new_summon] uuid3 = @e[tag=new_summon_target] uuid3
tag @e[tag=new_summon] remove new_summon
tag @e[tag=new_summon_target] remove new_summon_target
