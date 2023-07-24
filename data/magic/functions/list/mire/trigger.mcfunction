execute as @e[tag=mire.Placer] at @s run function magic:list/mire/mire_entity
execute as @e[tag=magic.Mire] at @s run function magic:list/mire/mire_process

execute if entity @e[tag=mire.Placer] run schedule function magic:list/mire/trigger 1t
execute unless entity @e[tag=mire.Placer] if entity @e[tag=magic.Mire] run schedule function magic:list/mire/trigger 1t