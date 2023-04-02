scoreboard players operation @s combat._regen = @s combat.maxHealth
scoreboard players operation @s combat._regen *= 5 constant
scoreboard players operation @s combat._regen /= 100 constant
scoreboard players operation @s combat.health += @s combat._regen
execute if score @s combat.health > @s combat.maxHealth run scoreboard players operation @s combat.health = @s combat.maxHealth