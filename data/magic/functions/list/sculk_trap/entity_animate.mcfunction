scoreboard players operation @s magic.generic = @s magic.Time
scoreboard players operation @s magic.generic %= 30 magic.constants
scoreboard players operation @s magic.generic /= 5 magic.constants
scoreboard players operation @s magic.generic /= 2 magic.constants
execute if score @s magic.generic matches 1 run tp @s ~ ~0.02 ~
execute if score @s magic.generic matches 2 run tp @s ~ ~-0.02 ~