execute as @e[tag=magic.WaterCannon.Shooter] at @s run function magic:list/water_cannon/cannon_entity

execute if entity @e[tag=magic.WaterCannon.Shooter] run schedule function magic:list/water_cannon/trigger 1t