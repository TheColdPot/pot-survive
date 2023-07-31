data merge entity @s {PortalCooldown:120,Tags:[magic.Mire],block_state:{Name:"soul_sand"},transformation:{scale:[1.0f,1.0f,1.0f],left_rotation:{axis:[1f,0f,0f],angle:0.0f},right_rotation:{axis:[1f,0f,0f],angle:0.0f},translation:[0f,-1f,0f]},brightness:{block:3,sky:3}}

execute store result score @s magic.target.uuid0 run scoreboard players get @e[tag=switch.Target,limit=1] magic.target.uuid0
execute store result score @s magic.target.uuid1 run scoreboard players get @e[tag=switch.Target,limit=1] magic.target.uuid1
execute store result score @s magic.target.uuid2 run scoreboard players get @e[tag=switch.Target,limit=1] magic.target.uuid2
execute store result score @s magic.target.uuid3 run scoreboard players get @e[tag=switch.Target,limit=1] magic.target.uuid3

scoreboard players operation @s magic.damagePower = @e[tag=switch.Target] magic.damagePower
