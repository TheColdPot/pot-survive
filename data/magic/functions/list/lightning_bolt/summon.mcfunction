title @s title [" "]
title @s subtitle [" "]

execute if score @s magic.Phase matches 1.. run summon armor_stand ^-0.5 ^1.8 ^ {Tags:[magic.Lightning,summon],Marker:1b,Small:1b,Silent:1b}
execute if score @s magic.Phase matches 21.. run summon armor_stand ^-0.5 ^1.8 ^ {Tags:[magic.Lightning,summon],Marker:1b,Small:1b,Silent:1b}
execute if score @s magic.Phase matches 41.. run summon armor_stand ^-0.5 ^1.8 ^ {Tags:[magic.Lightning,summon],Marker:1b,Small:1b,Silent:1b}

tag @s add Rotation_Copy
execute as @e[tag=summon] run data modify entity @s Rotation set from entity @e[tag=Rotation_Copy,limit=1] Rotation
tag @s remove Rotation_Copy

tag @e[tag=summon] remove summon
tag @s add magic.Shooter

execute as @e[tag=magic.Lightning] at @s run function magic:list/lightning_bolt/trigger

function magic:remove_data