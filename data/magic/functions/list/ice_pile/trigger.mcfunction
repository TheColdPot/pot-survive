execute at @e[tag=magic.icePile.locator,scores={magic.Time=3}] run playsound block.amethyst_block.break player @a ~ ~ ~ 2 1

execute as @e[tag=magic.icePile.locator,scores={magic.Time=150..}] unless entity @e[type=!player,type=!#magic:decoration,distance=..10,tag=!frozenEntity] at @s run function magic:list/ice_pile/discard
kill @e[tag=magic.icePile.ice,scores={magic.icePile.frozenTime=110}]
execute as @e[tag=magic.icePile.ice,scores={magic.icePile.frozenTime=..100}] at @s unless entity @e[type=!#magic:decoration,type=!player,distance=..2] run kill 
execute as @e[tag=magic.icePile.ice,scores={magic.icePile.frozenTime=100}] run data merge entity @s {transformation:{right_rotation:[1f,0f,0f,0f],left_rotation:[1f,0f,0f,0f],translation:[0f,0f,0f],scale:[1f,0f,1f]},interpolation_duration:9,start_interpolation:0}




execute as @e[tag=magic.icePile.locator,scores={magic.Time=20..}] at @s facing entity @e[type=!player,type=!#magic:decoration,limit=1,sort=nearest,tag=!magic.icePile.frozenEntity,distance=..10] feet run tp @s ^ ^ ^.3 ~ ~
execute as @e[tag=magic.icePile.locator,scores={magic.Time=20..}] at @s unless entity @e[type=!player,type=!#magic:decoration,limit=1,sort=nearest,tag=!magic.icePile.frozenEntity,distance=..10] run tp @s ^ ^ ^.3
execute as @e[tag=magic.icePile.locator,scores={magic.Time=0..20}] at @s run tp @s ^ ^ ^.3 

execute at @e[tag=magic.icePile.locator,scores={magic.Time=3..}] run particle snowflake ~ ~ ~ 0 0 0 0 10
scoreboard players add @e[tag=magic.icePile.locator] magic.Time 1
scoreboard players add @e[tag=magic.icePile.frozenEntity] magic.icePile.frozenTime 1
scoreboard players add @e[tag=magic.icePile.ice] magic.icePile.frozenTime 1

execute as @e[tag=magic.icePile.frozenEntity] run function magic:list/ice_pile/frozen_entity

execute as @e[tag=magic.icePile.locator,scores={magic.Time=20..}] at @s if entity @e[distance=..2,type=!player,type=!#magic:decoration,tag=!magic.icePile.frozenEntity] run function magic:list/ice_pile/freeze



execute if entity @e[tag=magic.icePile] run schedule function magic:list/ice_pile/trigger 1t