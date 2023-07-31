scoreboard players operation @s magic.damageDealt += @s magic.icePile.damage
damage @s 0.1 out_of_world
execute store result score @e[tag=summon,limit=1] magic.target.uuid0 run data get entity @s UUID[0]
execute store result score @e[tag=summon,limit=1] magic.target.uuid1 run data get entity @s UUID[1]
execute store result score @e[tag=summon,limit=1] magic.target.uuid2 run data get entity @s UUID[2]
execute store result score @e[tag=summon,limit=1] magic.target.uuid3 run data get entity @s UUID[3]


