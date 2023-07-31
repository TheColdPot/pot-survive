scoreboard players operation @s combat._rangedHurtTime = time genericScore
execute at @s as @e[distance=..8,type=!marker] if score @e[limit=1,sort=nearest] combat._rangedHurtTime = @s combat._rangedHurtTime run function pot:combat/ranged/apply_arrow_damage
kill @s

