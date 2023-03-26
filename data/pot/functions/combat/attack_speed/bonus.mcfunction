scoreboard players operation temp combat.attackSpeed = @s combat.attackSpeed
scoreboard players add temp combat.attackSpeed 100
scoreboard players operation @s combat._cooldown *= 100 constant
scoreboard players operation @s combat._cooldown /= temp combat.attackSpeed
