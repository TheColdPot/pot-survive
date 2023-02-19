execute in pot:proxima_dimension run effect give @a[x=0,y=9,z=0,distance=18..] instant_damage 1 1 true
# execute as @a[x=0,y=9,z=0,distance=18..] at @s run tp @s ~ ~ ~ facing entity @e[tag=proxima,limit=1]
# execute in pot:final_boss at @a[x=0,y=9,z=0,distance=18..] facing entity @e[tag=proxima,limit=1] feet run summon creeper ^ ^ ^1 {Fuse:0s,ExplosionRadius:2b}

execute in pot:proxima_dimension as @a[x=0,y=9,z=0,distance=18..] run function pot:boss/proxima/events/magic_far_attack/particle

