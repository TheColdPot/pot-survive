scoreboard players operation @s combat.displayDamage = @e[limit=1,sort=nearest] combat.ranged
scoreboard players operation @s combat.health -= @e[limit=1,sort=nearest] combat.ranged
execute if score @e[sort=nearest,limit=1] genericScore matches 1 at @s run function pot:combat/display/display_crit_damage
execute unless score @e[sort=nearest,limit=1] genericScore matches 1 at @s run function pot:combat/display/display_damage
execute if score @s combat.health matches ..-1 run kill @s
scoreboard players reset @s combat._rangedHurtTidme
scoreboard players reset @s combat.displayDamage

