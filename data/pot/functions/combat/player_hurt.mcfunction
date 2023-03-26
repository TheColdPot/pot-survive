advancement revoke @s only pot:combat/trigger_hit
effect give @s instant_health 1 100 true
execute at @s on attacker if entity @s[advancements={pot:combat/trigger_melee=true}] run scoreboard players operation @e[sort=nearest,limit=1] combat.displayDamage = @s combat.melee
# execute at @s on attacker if entity @s[advancements={pot:combat/trigger_melee=true}] run scoreboard players operation @e[sort=nearest,limit=1] combat.health -= @s combat.melee
execute at @s on attacker if entity @s[type=!player] run scoreboard players operation @e[sort=nearest,limit=1] combat.displayDamage = @s combat.damage
# execute at @s on attacker if entity @s[type=!player] run scoreboard players operation @e[sort=nearest,limit=1] combat.health -= @s combat.damage
scoreboard players operation @s combat.displayDamage *= 100 constant
scoreboard players operation @s combat.displayDamage /= @s combat._defense
scoreboard players operation @s combat.health -= @s combat.displayDamage
# scoreboard players operation @s combat.health -= @s combat.displayDamage
execute at @s on attacker run function pot:combat/display_damage_amount
execute at @s on attacker if entity @s[advancements={pot:combat/trigger_melee=true}] run advancement revoke @s only pot:combat/trigger_melee
execute if entity @s[scores={combat.health=..0}] run function pot:combat/player_die