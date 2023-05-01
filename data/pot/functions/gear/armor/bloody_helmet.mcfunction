scoreboard players operation @s combat._armorStat = @s combat.defense
scoreboard players operation @s combat._armorStat /= 2 constant
scoreboard players operation @s combat._armorStat < 400 constant
scoreboard players operation @s combat.strength += @s combat._armorStat
scoreboard players operation @s combat.defense /= 2 constant
scoreboard players operation @s combat.critChance /= 2 constant