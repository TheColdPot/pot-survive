data merge entity @s {crit:false,damage:0}
execute on origin if entity @s[type=player] run function pot:combat/calculate_base_damage
execute on origin at @s if entity @s[type=player] run function pot:combat/ranged/calculate_ranged_damage
execute on origin if entity @s[type=player] run scoreboard players operation @e[sort=nearest,limit=1] combat.ranged = @s combat.ranged
function pot:combat/ranged/check_crit
execute summon marker run function pot:combat/ranged/init_arrow_marker
