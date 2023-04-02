execute on attacker run function pot:combat/ferocity/calculate_attacks
## schedule ferocity
execute at @s on attacker run scoreboard players operation @e[sort=nearest,limit=1] combat.ferocityAttacks += @s combat.ferocityAttacks
execute at @s on attacker run scoreboard players reset @s combat.ferocityAttacks
# function pot:combat/ferocity/execute_ferocity
