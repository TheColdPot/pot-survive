execute on origin if entity @s[tag=!combat.applyCrit] run return 0
tag @s add combat.applyCrit
execute on origin run tag @s remove combat.applyCrit
