execute as @a[tag=fs_creeper,nbt={Health:0f,DeathTime:1s}] at @s run function pot:full_set/creeper

#guard
execute as @a[tag=fs_guard] run attribute @s generic.attack_speed modifier add c42d45da-56d7-418a-bff9-335f55bb2f77 "attack_speed" 0.2 multiply
execute as @a[tag=!fs_guard] run attribute @s generic.attack_speed modifier remove c42d45da-56d7-418a-bff9-335f55bb2f77

execute as @a[tag=fs_enderman,predicate=pot:full_set/enderman] run attribute @s generic.armor modifier add 7d18a04d-2caa-40ae-9f44-69098ec70fcd "armor" 1 multiply
execute as @a[tag=!fs_enderman] run attribute @s generic.armor modifier remove 7d18a04d-2caa-40ae-9f44-69098ec70fcd
execute as @a[predicate=!pot:full_set/enderman] run attribute @s generic.armor modifier remove 7d18a04d-2caa-40ae-9f44-69098ec70fcd

