scoreboard players operation @s combat.health = @e[sort=nearest,limit=1] combat.health
scoreboard players operation @s combat.maxHealth = @e[sort=nearest,limit=1] combat.maxHealth
scoreboard players operation @s combat.health > 0 constant

data merge entity @s {text:'[[{"score":{"name":"@s","objective":"combat.health"},"color":"red"},{"text":"/","color":"white"},{"score":{"name":"@s","objective":"combat.maxHealth"}}]]'}
data modify entity @e[sort=nearest,limit=1] CustomName set from entity @s text
execute as @e[sort=nearest,limit=1] run data modify entity @s CustomNameVisible set value 1b
kill @s
