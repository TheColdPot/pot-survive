execute if predicate magic:chance/half run tag @s add magic.Tp


execute if entity @s[tag=magic.Tp] run tp @s ^ ^ ^0.05
execute unless entity @s[tag=magic.Tp] run function magic:list/lightning_bolt/rotation2

tag @s remove magic.Tp
scoreboard players add @s magic.Time 1

particle wax_off ~ ~ ~ 0 0 0 0 1 force

execute unless score @s magic.Time matches 50.. at @s positioned ^ ^ ^0.05 run function magic:list/lightning_bolt/trigger2


execute if score @s magic.Time matches 50.. run kill @s 




