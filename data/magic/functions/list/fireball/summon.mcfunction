title @s title [" "]
title @s subtitle [" "]

playsound minecraft:item.firecharge.use player @a ~ ~ ~ 2 0.5 1

execute if score @s[tag=magic.Casting] magic.Phase matches 1..20 run summon armor_stand ~ ~1.8 ~ {Tags:[magic.Fireball,Fire.Level.1,summon],Invisible:1b,Marker:1b,Small:1b}
execute if score @s[tag=magic.Casting] magic.Phase matches 21..40 run summon armor_stand ~ ~1.8 ~ {Tags:[magic.Fireball,Fire.Level.2,summon],Invisible:1b,Marker:1b,Small:1b}
execute if score @s[tag=magic.Casting] magic.Phase matches 41..60 run summon armor_stand ~ ~1.8 ~ {Tags:[magic.Fireball,Fire.Level.3,summon],Invisible:1b,Marker:1b,Small:1b}
execute if score @s[tag=magic.Casting] magic.Phase matches 61..80 run summon armor_stand ~ ~1.8 ~ {Tags:[magic.Fireball,Fire.Level.4,summon],Invisible:1b,Marker:1b,Small:1b}
execute if score @s[tag=magic.Casting] magic.Phase matches 81..100 run summon armor_stand ~ ~1.8 ~ {Tags:[magic.Fireball,Fire.Level.5,summon],Invisible:1b,Marker:1b,Small:1b}
execute if score @s[tag=magic.Casting] magic.Phase matches 101.. run summon armor_stand ~ ~1.8 ~ {Tags:[magic.Fireball,Fire.Level.6,summon],Invisible:1b,Marker:1b,Small:1b}

data modify entity @e[tag=summon,limit=1] Rotation set from entity @s Rotation

tag @e[tag=summon] remove summon

function magic:list/fireball/trigger

function magic:remove_data