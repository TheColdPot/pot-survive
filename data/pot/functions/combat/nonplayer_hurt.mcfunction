# execute on attacker run say 2
execute store result entity @s Health float 1 run attribute @s generic.max_health get
execute at @s on attacker if entity @s[advancements={pot:combat/trigger_melee=true}] run function pot:combat/apply_melee_damage
execute at @s on attacker if entity @s[type=!player] run scoreboard players operation @e[sort=nearest,limit=1] combat.displayDamage = @s combat.damage
execute at @s on attacker if entity @s[type=!player] run scoreboard players operation @e[sort=nearest,limit=1] combat.health -= @s combat.damage
# scoreboard players operation @s combat.health -= @s combat.displayDamage
# execute at @s on attacker if entity @s[type=!player] run function pot:combat/display/display_damage
execute at @s summon text_display run function pot:combat/nonplayer_health_interpreter
execute if entity @s[scores={combat.health=..-1}] run kill @s
execute if entity @s[scores={combat.health=0..}] run function pot:combat/ferocity/start_check

# say OUCH! THAT HURT!
