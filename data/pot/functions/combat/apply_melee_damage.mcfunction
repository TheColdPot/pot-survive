advancement revoke @s only pot:combat/trigger_melee

# function pot:combat/calculate_base_damage

execute summon armor_stand run function pot:combat/summon_crit_checker

scoreboard players operation @s combat.melee = @s combat._finalDmg
scoreboard players operation @s combat.baseMelee = @s combat.melee
execute if entity @s[tag=combat.applyCrit] run scoreboard players operation @s combat.melee *= @s combat.critDamage
execute if entity @s[tag=combat.applyCrit] run scoreboard players operation @s combat.melee /= 100 constant
execute if entity @s[tag=combat.applyCrit] run scoreboard players operation @s combat.melee += @s combat._finalDmg

execute if score @e[sort=nearest,limit=1] combat._defense matches 100.. run scoreboard players operation @s combat.melee *= 100 constant
execute if score @e[sort=nearest,limit=1] combat._defense matches 100.. run scoreboard players operation @s combat.melee /= @e[sort=nearest,limit=1] combat._defense

scoreboard players operation @e[sort=nearest,limit=1] combat.displayDamage = @s combat.melee
scoreboard players operation @e[sort=nearest,limit=1] combat.health -= @s combat.melee

execute if entity @s[tag=combat.applyCrit] run function pot:combat/display/display_crit_damage
execute unless entity @s[tag=combat.applyCrit] run function pot:combat/display/display_damage
tag @s remove combat.applyCrit
