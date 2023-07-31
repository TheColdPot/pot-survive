execute if score @s magic.mana < @s magic.scheduledManaCost run function magic:not_enough_mana
# execute if score @s magic.mana < @s magic.scheduledManaCost run title @s title ""
execute if score @s magic.mana >= @s magic.scheduledManaCost run scoreboard players operation @s magic.mana -= @s magic.scheduledManaCost

scoreboard players reset @s magic.scheduledManaCost
