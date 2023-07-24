execute if predicate magic:chance/half run tag @s add magic.Tp


execute if entity @s[tag=magic.Tp] run tp @s ^ ^ ^0.1
execute unless entity @s[tag=magic.Tp] run function magic:list/lightning_bolt/rotation

tag @s remove magic.Tp
scoreboard players add @s magic.Time 1

particle wax_off ~ ~ ~ 0 0 0 0 1 force
execute align xyz as @e[type=!#magic:decoration,distance=..1] run damage @s 100 minecraft:lightning_bolt 

execute unless score @s magic.Time matches 200.. at @s positioned ^ ^ ^0.1 run function magic:list/lightning_bolt/trigger

execute if score @s magic.Time matches 200.. run function magic:list/lightning_bolt/clear




