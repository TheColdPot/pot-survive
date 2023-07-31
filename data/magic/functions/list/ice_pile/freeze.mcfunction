

scoreboard players operation @e[limit=1,sort=nearest,type=!#magic:decoration,type=!player] magic.icePile.damage = @s magic.damagePower
kill @s
playsound block.glass.break block @a ~ ~ ~

execute at @e[limit=1,sort=nearest,type=!#magic:decoration,type=!player] run summon block_display ~-.5 ~ ~-.5 {block_state:{Name:"ice"},transformation:{right_rotation:[1f,0f,0f,0f],left_rotation:[1f,0f,0f,0f],translation:[0f,0f,0f],scale:[1f,2f,1f]},Tags:[magic.icePile,magic.icePile.ice]}

effect give @e[limit=1,sort=nearest,type=!#magic:decoration,type=!player] slowness 5 100 true
data merge entity @e[limit=1,sort=nearest,type=!#magic:decoration,type=!player] {NoAI:1b}
tag @e[limit=1,sort=nearest,type=!#magic:decoration,type=!player] add magic.icePile
scoreboard players reset @e[limit=1,sort=nearest,type=!#magic:decoration,type=!player] magic.icePile.frozenTime
tag @e[limit=1,sort=nearest,type=!#magic:decoration,type=!player] add magic.icePile.frozenEntity
