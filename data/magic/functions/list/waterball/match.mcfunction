tag @s add magic.Matched
tag @a[tag=impact.Target,gamemode=creative] remove impact.Target

execute as @a store result score @s magic.target.uuid0 run data get entity @s UUID[0]
execute as @a store result score @s magic.target.uuid1 run data get entity @s UUID[1]
execute as @a store result score @s magic.target.uuid2 run data get entity @s UUID[2]
execute as @a store result score @s magic.target.uuid3 run data get entity @s UUID[3]


execute as @a[tag=impact.Target] if score @s magic.target.uuid0 = @e[tag=magic.Matched,limit=1] magic.target.uuid0 if score @s magic.target.uuid1 = @e[tag=magic.Matched,limit=1] magic.target.uuid1 if score @s magic.target.uuid2 = @e[tag=magic.Matched,limit=1] magic.target.uuid2 if score @s magic.target.uuid3 = @e[tag=magic.Matched,limit=1] magic.target.uuid3 run tag @s remove impact.Target


scoreboard players operation @e[tag=impact.Target] magic.damageDealt = @s magic.damagePower

execute if entity @e[tag=impact.Target] as @a if score @s magic.target.uuid0 = @e[tag=magic.Matched,limit=1] magic.target.uuid0 if score @s magic.target.uuid1 = @e[tag=magic.Matched,limit=1] magic.target.uuid1 if score @s magic.target.uuid2 = @e[tag=magic.Matched,limit=1] magic.target.uuid2 if score @s magic.target.uuid3 = @e[tag=magic.Matched,limit=1] magic.target.uuid3 run tag @s add impact.Owner

execute if entity @e[tag=impact.Target] as @a[tag=impact.Owner] run damage @e[tag=impact.Target,limit=1] 0.1 minecraft:generic by @s

execute if entity @e[tag=impact.Target] as @a[tag=impact.Owner] at @s if entity @e[tag=magic.Matched,distance=15..] run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 0.5 1


execute if entity @e[tag=impact.Target] run kill @s

tag @e remove impact.Target
tag @e remove impact.Owner
tag @s remove magic.Matched
