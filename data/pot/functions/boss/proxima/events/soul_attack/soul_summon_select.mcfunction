execute if entity @p[distance=0.01..50] store success score @s genericScore if predicate pot:chance/hit_pillar_soul_rise
execute if entity @p[distance=0.01..50] if score @s genericScore matches 1 run function pot:boss/proxima/events/soul_attack/soul_summon_l
execute if entity @p[distance=0.01..50] if score @s genericScore matches 0 run function pot:boss/proxima/events/soul_attack/soul_summon_r
scoreboard players reset @s genericScore

