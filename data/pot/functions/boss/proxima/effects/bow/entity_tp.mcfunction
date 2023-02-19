tag @s add rotation_change
execute as @e[tag=tp_target,distance=..100] if score @s uuid0 = @e[tag=rotation_change,limit=1] uuid0 if score @s uuid1 = @e[tag=rotation_change,limit=1] uuid1 if score @s uuid2 = @e[tag=rotation_change,limit=1] uuid2 if score @s uuid3 = @e[tag=rotation_change,limit=1] uuid3 run tag @s add tp_target_selected


execute as @e[tag=tp_target_selected,distance=10..100] positioned ^1000 ^ ^ if entity @s[distance=..1000] as @e[tag=rotation_change] at @s run tp @s ~ ~ ~ ~-3 ~
execute as @e[tag=tp_target_selected,distance=..20] positioned ^1000 ^ ^ if entity @s[distance=..1000] as @e[tag=rotation_change] at @s run tp @s ~ ~ ~ ~-2 ~
execute as @e[tag=tp_target_selected,distance=5..10] positioned ^1000 ^ ^ if entity @s[distance=..1000] as @e[tag=rotation_change] at @s run tp @s ~ ~ ~ ~-1 ~
execute as @e[tag=tp_target_selected,distance=..5] positioned ^1000 ^ ^ if entity @s[distance=..1000] as @e[tag=rotation_change] at @s run tp @s ~ ~ ~ ~-1 ~

execute as @e[tag=tp_target_selected,distance=10..100] positioned ^-1000 ^ ^ if entity @s[distance=..1000] as @e[tag=rotation_change] at @s run tp @s ~ ~ ~ ~3 ~
execute as @e[tag=tp_target_selected,distance=..20] positioned ^-1000 ^ ^ if entity @s[distance=..1000] as @e[tag=rotation_change] at @s run tp @s ~ ~ ~ ~2 ~
execute as @e[tag=tp_target_selected,distance=5..10] positioned ^-1000 ^ ^ if entity @s[distance=..1000] as @e[tag=rotation_change] at @s run tp @s ~ ~ ~ ~1 ~
execute as @e[tag=tp_target_selected,distance=..5] positioned ^-1000 ^ ^ if entity @s[distance=..1000] as @e[tag=rotation_change] at @s run tp @s ~ ~ ~ ~1 ~

execute as @e[tag=tp_target_selected,distance=10..100] positioned ^ ^1000 ^ if entity @s[distance=..1000] as @e[tag=rotation_change] at @s run tp @s ~ ~ ~ ~ ~-3
execute as @e[tag=tp_target_selected,distance=..20] positioned ^ ^1000 ^ if entity @s[distance=..1000] as @e[tag=rotation_change] at @s run tp @s ~ ~ ~ ~ ~-2
execute as @e[tag=tp_target_selected,distance=5..10] positioned ^ ^1000 ^ if entity @s[distance=..1000] as @e[tag=rotation_change] at @s run tp @s ~ ~ ~ ~ ~-1
execute as @e[tag=tp_target_selected,distance=..5] positioned ^ ^1000 ^ if entity @s[distance=..1000] as @e[tag=rotation_change] at @s run tp @s ~ ~ ~ ~ ~-1

execute as @e[tag=tp_target_selected,distance=10..100] positioned ^ ^-1000 ^ if entity @s[distance=..1000] as @e[tag=rotation_change] at @s run tp @s ~ ~ ~ ~ ~3
execute as @e[tag=tp_target_selected,distance=..20] positioned ^ ^-1000 ^ if entity @s[distance=..1000] as @e[tag=rotation_change] at @s run tp @s ~ ~ ~ ~ ~2
execute as @e[tag=tp_target_selected,distance=5..10] positioned ^ ^-1000 ^ if entity @s[distance=..1000] as @e[tag=rotation_change] at @s run tp @s ~ ~ ~ ~ ~1
execute as @e[tag=tp_target_selected,distance=..5] positioned ^ ^-1000 ^ if entity @s[distance=..1000] as @e[tag=rotation_change] at @s run tp @s ~ ~ ~ ~ ~1

execute if entity @e[tag=tp_target_selected,distance=1..3] facing entity @e[tag=tp_target_selected] feet run tp @s ~ ~ ~ ~ ~

execute if entity @e[tag=tp_target_selected] run tp @s ^ ^ ^0.5

particle minecraft:dust 0.15 0.15 0.15 1 ~ ~ ~ 0.1 0.1 0.1 0 10 force @a
particle minecraft:sculk_soul ~ ~ ~ 0.1 0.1 0.1 0 1 force @a
particle portal ~ ~ ~ 0 0 0 0 1 force @a

execute if entity @e[tag=tp_target_selected,distance=..1] run function pot:boss/proxima/effects/bow/entity_kill
tag @s remove rotation_change
tag @e[tag=tp_target_selected] remove tp_target_selected
