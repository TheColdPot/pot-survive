
execute unless score @s magic.scheduledManaCost matches 1.. run return 0

execute if score @s magic.mana <= @s magic.scheduledManaCost run tag @s add magic.prevent
execute if score @s magic.mana <= @s magic.scheduledManaCost run function magic:notice_not_enough_mana
execute if score @s magic.mana > @s magic.scheduledManaCost run scoreboard players operation @s magic.mana -= @s magic.scheduledManaCost

scoreboard players reset @s magic.scheduledManaCost

