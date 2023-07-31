function magic:desk/item_returning/check


tag @s add entity.uninstall
execute as @a if score @s coords.x = @e[tag=entity.uninstall,limit=1] coords.x run scoreboard players reset @s coords.x
execute as @a if score @s coords.y = @e[tag=entity.uninstall,limit=1] coords.y run scoreboard players reset @s coords.y
execute as @a if score @s coords.z = @e[tag=entity.uninstall,limit=1] coords.z run scoreboard players reset @s coords.z

tag @s remove entity.uninstall


data remove block ~ ~ ~ Lock
data merge block ~ ~ ~ {Items:[]}
data merge entity @s {data:{routes:[],routeFeatures:[]}}
