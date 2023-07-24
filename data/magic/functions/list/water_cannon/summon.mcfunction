title @s title [" "]
title @s subtitle [" "]


summon armor_stand ~ ~1 ~ {Tags:[magic.WaterCannon.Shooter,summon],Invisible:1b,Marker:1b,Small:1b}

data modify entity @e[tag=summon,limit=1] Rotation set from entity @s Rotation

tag @e[tag=summon] remove summon

function magic:list/water_cannon/trigger

function magic:remove_data