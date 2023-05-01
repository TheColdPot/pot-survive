
advancement revoke @s only pot:combat/trigger_hit
effect give @s instant_health 1 100 true
execute at @s on attacker if entity @s[advancements={pot:combat/trigger_melee=true}] run function pot:combat/apply_melee_damage
execute at @s on attacker if entity @s[type=!player] run function pot:combat/player_hurt_from_nonplayer

execute if entity @s[scores={combat.health=..0}] run function pot:combat/player_die/killed