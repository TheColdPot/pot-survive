execute if score @s magic.Time matches 14.. run kill @s
execute if score @s magic.Time matches 1 run data merge entity @s {transformation:{scale:[1.0f,1.0f,1.0f],left_rotation:{axis:[1f,0f,0f],angle:0.0f},right_rotation:{axis:[1f,0f,0f],angle:0.0f},translation:[0f,1.0f,0f]},start_interpolation:0,interpolation_duration:5}
execute if score @s magic.Time matches 8 run data merge entity @s {transformation:{scale:[1.0f,1.0f,1.0f],left_rotation:{axis:[1f,0f,0f],angle:0.0f},right_rotation:{axis:[1f,0f,0f],angle:0.0f},translation:[0f,-.1f,0f]},start_interpolation:0,interpolation_duration:5}
scoreboard players add @s magic.Time 1

execute if score @s magic.Time matches 1..14 positioned ~-.03 ~-.03 ~-.03 if entity @e[type=!#magic:decoration,dx=0,dy=0,dz=0] positioned ~-.7 ~-.7 ~-.7 run tag @e[type=!#magic:decoration,dx=0,dy=0,dz=0,limit=1] add impact.Target

execute if entity @e[tag=impact.Target] run function magic:list/mire/match