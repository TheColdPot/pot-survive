title @s title [" "]
title @s subtitle [" "]

summon armor_stand ~ ~ ~ {Tags:[mire.Placer,summon],Rotation:[0.0f,0.0f],Invisible:1b,Marker:1b}
data modify entity @e[tag=summon,limit=1] Rotation[0] set from entity @s Rotation[0]

execute store result score @e[tag=summon,limit=1] magic.target.uuid0 run data get entity @s UUID[0]
execute store result score @e[tag=summon,limit=1] magic.target.uuid1 run data get entity @s UUID[1]
execute store result score @e[tag=summon,limit=1] magic.target.uuid2 run data get entity @s UUID[2]
execute store result score @e[tag=summon,limit=1] magic.target.uuid3 run data get entity @s UUID[3]

scoreboard players set @a magic.effectTimeDelta 0
execute at @s as @e[tag=summon] run function magic:list/mire/entity_setup


tag @e[tag=summon] remove summon

function magic:list/mire/trigger


function magic:remove_data