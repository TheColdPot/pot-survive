title @s title [" "]
title @s subtitle [" "]

summon armor_stand ~ ~ ~ {Tags:[mire.Placer,summon],Rotation:[0.0f,0.0f],Invisible:1b,Marker:1b}
data modify entity @e[tag=summon,limit=1] Rotation[0] set from entity @s Rotation[0]

tag @e[tag=summon] remove summon

function magic:list/mire/trigger


function magic:remove_data