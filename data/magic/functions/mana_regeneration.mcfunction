scoreboard players operation @s magic._regen = @s magic.intelligence
scoreboard players operation @s magic._regen /= 50 constant
scoreboard players operation @s magic.mana += @s magic._regen
execute if score @s magic.mana > @s magic.intelligence run scoreboard players operation @s magic.mana = @s magic.intelligence