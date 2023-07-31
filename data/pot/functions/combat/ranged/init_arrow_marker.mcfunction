tag @s add combat.arrowMarker
scoreboard players operation @s combat.ranged = @e[sort=nearest,limit=1] combat.ranged
ride @s mount @e[type=#arrows,sort=nearest,limit=1]
execute at @s on vehicle if entity @s[tag=combat.applyCrit] run scoreboard players set @s genericScore 1

