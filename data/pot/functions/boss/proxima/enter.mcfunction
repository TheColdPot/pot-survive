advancement revoke @a only pot:triggers/enter_final_boss
execute in pot:proxima_dimension run fill -40 8 -40 40 8 40 end_stone
execute in pot:proxima_dimension run tp @a 0 15 28 -180 0
effect give @a slow_falling 2 10 true
gamemode adventure @a
# gamemode spectator @a
# schedule function pot:boss/proxima/reset 10t
execute in pot:proxima_dimension run spawnpoint @a 0 9 36 -180
execute in pot:proxima_dimension run function pot:boss/proxima/remove_all_pillars
# execute positioned 0 20 0 run function pot:boss/proxima/summon
schedule function pot:boss/proxima/summon_animate/start 10t
# summon wither ~ ~ ~ {Passengers:[{id:"minecraft:wither",Passengers:[{id:"minecraft:wither",Passengers:[{id:"minecraft:wither",Passengers:[{id:"minecraft:wither",}]}]}]}]}