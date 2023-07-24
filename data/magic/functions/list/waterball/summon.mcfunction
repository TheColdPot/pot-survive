playsound minecraft:item.bucket.empty player @a ~ ~ ~ 2 2 1
title @s title [" "]
title @s subtitle [" "]

summon item ^-0.5 ^1.6 ^1 {Tags:[magic.WaterBall,summon],PickupDelay:114514,Item:{id:"minecraft:player_head",Count:1,tag:{SkullOwner:{Id:[I;0,1,0,1],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjRjMjJiOGRmMGE4NTNhNDljYjgyZTkwYTYxOGQ2NTAxMjEyMjM2MWM4Mzk4MDYyZmNiYWY3NGQ1Njk2YzJhOSJ9fX0="}]}}}}}

execute if score @s magic.Phase matches 1..10 positioned 0 0 0 rotated as @s align xyz run summon minecraft:armor_stand ^ ^ ^0.5 {Invisible:1b,Tags:[entity.Pos],NoGravity:1b,Marker:1b}
execute if score @s magic.Phase matches 11..20 positioned 0 0 0 rotated as @s align xyz run summon minecraft:armor_stand ^ ^ ^1 {Invisible:1b,Tags:[entity.Pos],NoGravity:1b,Marker:1b}
execute if score @s magic.Phase matches 21..30 positioned 0 0 0 rotated as @s align xyz run summon minecraft:armor_stand ^ ^ ^1.5 {Invisible:1b,Tags:[entity.Pos],NoGravity:1b,Marker:1b}
execute if score @s magic.Phase matches 31..40 positioned 0 0 0 rotated as @s align xyz run summon minecraft:armor_stand ^ ^ ^2 {Invisible:1b,Tags:[entity.Pos],NoGravity:1b,Marker:1b}
execute if score @s magic.Phase matches 41..50 positioned 0 0 0 rotated as @s align xyz run summon minecraft:armor_stand ^ ^ ^2.5 {Invisible:1b,Tags:[entity.Pos],NoGravity:1b,Marker:1b}
execute if score @s magic.Phase matches 51.. positioned 0 0 0 rotated as @s align xyz run summon minecraft:armor_stand ^ ^ ^3 {Invisible:1b,Tags:[entity.Pos],NoGravity:1b,Marker:1b}


data modify entity @e[tag=summon,limit=1,sort=nearest] Motion set from entity @e[tag=entity.Pos,limit=1] Pos

tag @e[tag=summon] remove summon
kill @e[tag=entity.Pos]

function magic:list/waterball/trigger

function magic:remove_data
