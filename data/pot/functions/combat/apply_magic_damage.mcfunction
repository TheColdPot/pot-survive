execute if entity @s[gamemode=!adventure,gamemode=!survival] run return 0
scoreboard players operation @s combat.health -= @s magic.damageDealt
scoreboard players operation @s combat.displayDamage = @s magic.damageDealt
execute at @s run function pot:combat/display/display_damage
execute if entity @s[scores={combat.health=..-1}] run kill @s

