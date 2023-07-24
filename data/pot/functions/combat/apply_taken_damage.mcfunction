damage @s 0.001 minecraft:generic
scoreboard players operation @s combat.health -= @s combat.damageTaken
scoreboard players operation @s combat.displayDamage = @s combat.damageTaken
scoreboard players reset @s combat.damageTaken
# say 1
execute if entity @s[scores={combat.health=..-1}] run kill @s
execute at @s run function pot:combat/display/display_damage

