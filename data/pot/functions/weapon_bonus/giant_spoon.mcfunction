execute if entity @s[nbt=!{foodLevel:20}] run scoreboard players add @s cooldown.giantSpoon 1
execute if entity @s[nbt=!{foodLevel:20}] run effect give @s[scores={cooldown.giantSpoon=55..}] saturation 1 0 true
execute if entity @s[nbt=!{foodLevel:20}] run scoreboard players reset @s[scores={cooldown.giantSpoon=55..}]
