execute as @e[tag=magic.Fireball] at @s run function magic:list/fireball/fireball_entity

execute if entity @e[tag=magic.Fireball] run schedule function magic:list/fireball/trigger 1t