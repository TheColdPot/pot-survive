playsound minecraft:item.bucket.empty player @a ~ ~ ~ 2 2 1
title @s title [" "]
title @s subtitle [" "]

summon armor_stand ^ ^1.1 ^ {Tags:[magic.WaterBall,summon],Silent:1b,Pose:{Head:[0f,0f,180f]},Small:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:16191,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1,tag:{SkullOwner:{Id:[I;0,1,0,1],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjRjMjJiOGRmMGE4NTNhNDljYjgyZTkwYTYxOGQ2NTAxMjEyMjM2MWM4Mzk4MDYyZmNiYWY3NGQ1Njk2YzJhOSJ9fX0="}]}}}}]}

execute store result score @e[tag=summon,limit=1] magic.target.uuid0 run data get entity @s UUID[0]
execute store result score @e[tag=summon,limit=1] magic.target.uuid1 run data get entity @s UUID[1]
execute store result score @e[tag=summon,limit=1] magic.target.uuid2 run data get entity @s UUID[2]
execute store result score @e[tag=summon,limit=1] magic.target.uuid3 run data get entity @s UUID[3]


execute if score @s magic.Phase matches 1..8 positioned 0 0 0 rotated as @s align xyz run summon marker ^ ^ ^1 {Tags:[entity.Pos]}
execute if score @s magic.Phase matches 9..16 positioned 0 0 0 rotated as @s align xyz run summon marker ^ ^ ^1.8 {Tags:[entity.Pos]}
execute if score @s magic.Phase matches 17..24 positioned 0 0 0 rotated as @s align xyz run summon marker ^ ^ ^2.6 {Tags:[entity.Pos]}
execute if score @s magic.Phase matches 25..32 positioned 0 0 0 rotated as @s align xyz run summon marker ^ ^ ^3.4 {Tags:[entity.Pos]}
execute if score @s magic.Phase matches 33..40 positioned 0 0 0 rotated as @s align xyz run summon marker ^ ^ ^4.2 {Tags:[entity.Pos]}
execute if score @s magic.Phase matches 41.. positioned 0 0 0 rotated as @s align xyz run summon marker ^ ^ ^5 {Tags:[entity.Pos]}

scoreboard players set @a magic.effectTimeDelta 0
execute at @s as @e[tag=summon] run function magic:list/waterball/entity_setup

data modify entity @e[tag=summon,limit=1,sort=nearest] Motion set from entity @e[tag=entity.Pos,limit=1] Pos

tag @e[tag=summon] remove summon

kill @e[tag=entity.Pos]

function magic:list/waterball/trigger

function magic:remove_data
