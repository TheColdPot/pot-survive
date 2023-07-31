execute if entity @s[gamemode=!adventure,gamemode=!survival] run return 0
damage @s 0.001 minecraft:player_attack
scoreboard players operation @s combat.health -= @s combat.damageTaken
scoreboard players operation @s combat.displayDamage = @s combat.damageTaken
execute at @s run function pot:combat/display/display_damage
scoreboard players reset @s combat.damageTaken
execute if entity @s[scores={combat.health=..-1}] run kill @s

