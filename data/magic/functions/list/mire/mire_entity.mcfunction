execute if score @s magic.Time matches 21.. run kill @s

execute if entity @s[nbt={PortalCooldown:0}] run function magic:list/mire/mire_place
tp @s ^ ^ ^0.5

scoreboard players add @s magic.Time 1