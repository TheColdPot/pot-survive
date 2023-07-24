execute anchored feet run summon minecraft:area_effect_cloud ^ ^ ^1 {Tags:[fireball,summon]}

execute store result score x2 staff.Key1 run data get entity @e[tag=summon,limit=1] Pos[0] 1000
execute store result score y2 staff.Key1 run data get entity @e[tag=summon,limit=1] Pos[1] 1000
execute store result score z2 staff.Key1 run data get entity @e[tag=summon,limit=1] Pos[2] 1000

execute store result score x1 staff.Key1 run data get entity @s Pos[0] 1000
execute store result score y1 staff.Key1 run data get entity @s Pos[1] 1000
execute store result score z1 staff.Key1 run data get entity @s Pos[2] 1000

kill @e[tag=summon]

execute anchored feet run summon minecraft:fireball ~ ~1.5 ~ {Tags:[fireball,summon],ExplosionPower:-2}

execute store result entity @e[tag=summon,limit=1] power[0] double 0.0001 run scoreboard players operation x2 staff.Key1 -= x1 staff.Key1
execute store result entity @e[tag=summon,limit=1] power[1] double 0.0001 run scoreboard players operation y2 staff.Key1 -= y1 staff.Key1
execute store result entity @e[tag=summon,limit=1] power[2] double 0.0001 run scoreboard players operation z2 staff.Key1 -= z1 staff.Key1


tag @e[tag=summon] remove summon
