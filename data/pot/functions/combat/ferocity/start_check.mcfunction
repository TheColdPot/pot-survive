execute on attacker run function pot:combat/ferocity/calculate_attacks

## get my id
execute unless score @s combat.ferocityId matches 999999999.. run scoreboard players add maxFerocityId genericScore 1
execute unless score @s combat.ferocityId matches 999999999.. run scoreboard players operation @s combat.ferocityId > maxFerocityId genericScore

## schedule ferocity

execute at @s on attacker run scoreboard players operation @e[sort=nearest,limit=1] combat._ferocityCC = @s combat.critChance
execute at @s on attacker run scoreboard players operation @e[sort=nearest,limit=1] combat._ferocityCD = @s combat.critDamage
execute at @s on attacker run scoreboard players operation @e[sort=nearest,limit=1] combat._ferocityDamage = @s combat.baseMelee
execute at @s on attacker run scoreboard players operation @e[sort=nearest,limit=1] combat._ferocityAttacks = @s combat.ferocityAttacks
# execute at @s on attacker run scoreboard players operation @e[sort=nearest,limit=1] uuid0 = @s uuid0
# execute at @s on attacker run scoreboard players operation @e[sort=nearest,limit=1] uuid1 = @s uuid1
# execute at @s on attacker run scoreboard players operation @e[sort=nearest,limit=1] uuid2 = @s uuid2
# execute at @s on attacker run scoreboard players operation @e[sort=nearest,limit=1] uuid3 = @s uuid3
execute at @s on attacker run scoreboard players reset @s combat.ferocityAttacks
# scoreboard players add @s combat.ferocitySchedules 1

# execute if score @s combat.ferocitySchedules matches 0 run function pot:combat/ferocity/apply_direct_ferocity
# execute unless score @s combat.ferocitySchedules matches 0 run function pot:combat/ferocity/schedule_ferocity
function pot:combat/ferocity/apply_direct_ferocity

# function pot:combat/ferocity/execute_ferocity
