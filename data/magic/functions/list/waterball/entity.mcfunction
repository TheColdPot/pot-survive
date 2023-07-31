particle minecraft:dust 0.227 0.541 0.8 1 ~ ~.5 ~ 0.1 0.1 0.1 1 10 force

# tp @s ^ ^ ^ ~1 ~


tag @e[type=!#magic:decoration,distance=..2,limit=1] add impact.Target
execute if entity @e[tag=impact.Target] run function magic:list/waterball/match



execute if entity @e[tag=impact.Target] run kill @s
tag @e[tag=impact.Target] remove impact.Target

