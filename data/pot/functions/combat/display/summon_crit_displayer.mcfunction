execute positioned ~ ~-1 ~ run scoreboard players operation @s combat.displayDamage = @e[sort=nearest,limit=1] combat.displayDamage
# execute at @s run spreadplayers ~ ~ 0 1 true @s
data merge entity @s {billboard:"center",Tags:[damageDisplay],text:'[{"text":"✧","color":"gold"},{"score":{"name":"@s","objective":"combat.displayDamage"}},"✧"]',shadow:1b,background:0,transformation:{right_rotation:[0f,0f,0f,1f],scale:[1.2f,1.2f,1.2f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]},see_through:1b}
# I hate naming!!!!
tag @s add e1f96d41b232c21d7cb60f8a8223d150
execute summon armor_stand run function pot:combat/_random_translation
tag @s remove e1f96d41b232c21d7cb60f8a8223d150

