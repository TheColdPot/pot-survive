scoreboard players add @e[tag=magic.sculkTrap.display] magic.Time 1
execute as @e[tag=magic.sculkTrap.display,scores={magic.Time=1}] run function magic:list/sculk_trap/setup_block
execute as @e[tag=magic.sculkTrap.display,scores={magic.Time=1..}] at @s run function magic:list/sculk_trap/entity_animate
execute as @e[tag=magic.sculkTrap.marker] at @s as @e[type=!#magic:decoration,distance=1.5..5] run function magic:list/sculk_trap/gotcha

execute if entity @e[tag=magic.sculkTrap] run schedule function magic:list/sculk_trap/trigger 1t
