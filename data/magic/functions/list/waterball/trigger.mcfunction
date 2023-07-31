execute as @e[tag=magic.WaterBall,nbt={OnGround:1b}] at @s run particle minecraft:block blue_ice ~ ~ ~ 0.2 0.2 0.2 0 300

execute as @e[tag=magic.WaterBall,nbt={OnGround:1b}] run kill @s

execute as @e[tag=magic.WaterBall] at @s run function magic:list/waterball/entity


execute if entity @e[tag=magic.WaterBall] run schedule function magic:list/waterball/trigger 1t