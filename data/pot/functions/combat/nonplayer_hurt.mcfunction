# execute on attacker run say 2
execute store result entity @s Health float 1 run attribute @s generic.max_health get
execute at @s on attacker if entity @s[advancements={pot:combat/trigger_melee=true}] run scoreboard players operation @e[sort=nearest,limit=1] combat.displayDamage = @s combat.melee
execute at @s on attacker if entity @s[advancements={pot:combat/trigger_melee=true}] run scoreboard players operation @e[sort=nearest,limit=1] combat.health -= @s combat.melee
execute at @s on attacker if entity @s[type=!player] run scoreboard players operation @e[sort=nearest,limit=1] combat.displayDamage = @s combat.damage
execute at @s on attacker if entity @s[type=!player] run scoreboard players operation @e[sort=nearest,limit=1] combat.health -= @s combat.damage
# scoreboard players operation @s combat.health -= @s combat.displayDamage
execute at @s on attacker run function pot:combat/display_damage_amount
execute at @s on attacker if entity @s[advancements={pot:combat/trigger_melee=true}] run advancement revoke @s only pot:combat/trigger_melee
execute if entity @s[scores={combat.health=..-1}] run kill @s