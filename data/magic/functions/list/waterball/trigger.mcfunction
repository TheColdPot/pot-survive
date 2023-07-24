execute as @e[tag=magic.WaterBall,nbt={OnGround:1b}] at @s run particle minecraft:block blue_ice ~ ~ ~ 0.2 0.2 0.2 0 300

execute as @e[tag=magic.WaterBall,nbt={OnGround:1b}] run kill @s


execute as @e[tag=magic.WaterBall] at @s run particle minecraft:dust 0.227 0.541 0.8 1 ~ ~ ~ 0.1 0.1 0.1 1 10 force

execute if entity @e[tag=magic.WaterBall] run schedule function magic:list/waterball/trigger 1t