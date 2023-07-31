scoreboard players operation @s magic.mana = @p magic.mana
scoreboard players operation @s magic.mana *= 20 constant
scoreboard players operation @s magic.mana /= @p magic.intelligence
scoreboard players operation @s combat.health = @p combat.health
scoreboard players operation @s combat.health *= 20 constant
scoreboard players operation @s combat.health /= @p combat.maxHealth
execute if score @s combat.health matches 0 run data merge entity @s {data:{health:["","||||||||||||||||||||"]}}
execute if score @s combat.health matches 1 run data merge entity @s {data:{health:["|","|||||||||||||||||||"]}}
execute if score @s combat.health matches 2 run data merge entity @s {data:{health:["||","||||||||||||||||||"]}}
execute if score @s combat.health matches 3 run data merge entity @s {data:{health:["|||","|||||||||||||||||"]}}
execute if score @s combat.health matches 4 run data merge entity @s {data:{health:["||||","||||||||||||||||"]}}
execute if score @s combat.health matches 5 run data merge entity @s {data:{health:["|||||","|||||||||||||||"]}}
execute if score @s combat.health matches 6 run data merge entity @s {data:{health:["||||||","||||||||||||||"]}}
execute if score @s combat.health matches 7 run data merge entity @s {data:{health:["|||||||","|||||||||||||"]}}
execute if score @s combat.health matches 8 run data merge entity @s {data:{health:["||||||||","||||||||||||"]}}
execute if score @s combat.health matches 9 run data merge entity @s {data:{health:["|||||||||","|||||||||||"]}}
execute if score @s combat.health matches 10 run data merge entity @s {data:{health:["||||||||||","||||||||||"]}}
execute if score @s combat.health matches 11 run data merge entity @s {data:{health:["|||||||||||","|||||||||"]}}
execute if score @s combat.health matches 12 run data merge entity @s {data:{health:["||||||||||||","||||||||"]}}
execute if score @s combat.health matches 13 run data merge entity @s {data:{health:["|||||||||||||","|||||||"]}}
execute if score @s combat.health matches 14 run data merge entity @s {data:{health:["||||||||||||||","||||||"]}}
execute if score @s combat.health matches 15 run data merge entity @s {data:{health:["|||||||||||||||","|||||"]}}
execute if score @s combat.health matches 16 run data merge entity @s {data:{health:["||||||||||||||||","||||"]}}
execute if score @s combat.health matches 17 run data merge entity @s {data:{health:["|||||||||||||||||","|||"]}}
execute if score @s combat.health matches 18 run data merge entity @s {data:{health:["||||||||||||||||||","||"]}}
execute if score @s combat.health matches 19 run data merge entity @s {data:{health:["|||||||||||||||||||","|"]}}
execute if score @s combat.health matches 20 run data merge entity @s {data:{health:["||||||||||||||||||||",""]}}
execute if score @s magic.mana matches 0 run data merge entity @s {data:{mana:["","||||||||||||||||||||"]}}
execute if score @s magic.mana matches 1 run data merge entity @s {data:{mana:["|","|||||||||||||||||||"]}}
execute if score @s magic.mana matches 2 run data merge entity @s {data:{mana:["||","||||||||||||||||||"]}}
execute if score @s magic.mana matches 3 run data merge entity @s {data:{mana:["|||","|||||||||||||||||"]}}
execute if score @s magic.mana matches 4 run data merge entity @s {data:{mana:["||||","||||||||||||||||"]}}
execute if score @s magic.mana matches 5 run data merge entity @s {data:{mana:["|||||","|||||||||||||||"]}}
execute if score @s magic.mana matches 6 run data merge entity @s {data:{mana:["||||||","||||||||||||||"]}}
execute if score @s magic.mana matches 7 run data merge entity @s {data:{mana:["|||||||","|||||||||||||"]}}
execute if score @s magic.mana matches 8 run data merge entity @s {data:{mana:["||||||||","||||||||||||"]}}
execute if score @s magic.mana matches 9 run data merge entity @s {data:{mana:["|||||||||","|||||||||||"]}}
execute if score @s magic.mana matches 10 run data merge entity @s {data:{mana:["||||||||||","||||||||||"]}}
execute if score @s magic.mana matches 11 run data merge entity @s {data:{mana:["|||||||||||","|||||||||"]}}
execute if score @s magic.mana matches 12 run data merge entity @s {data:{mana:["||||||||||||","||||||||"]}}
execute if score @s magic.mana matches 13 run data merge entity @s {data:{mana:["|||||||||||||","|||||||"]}}
execute if score @s magic.mana matches 14 run data merge entity @s {data:{mana:["||||||||||||||","||||||"]}}
execute if score @s magic.mana matches 15 run data merge entity @s {data:{mana:["|||||||||||||||","|||||"]}}
execute if score @s magic.mana matches 16 run data merge entity @s {data:{mana:["||||||||||||||||","||||"]}}
execute if score @s magic.mana matches 17 run data merge entity @s {data:{mana:["|||||||||||||||||","|||"]}}
execute if score @s magic.mana matches 18 run data merge entity @s {data:{mana:["||||||||||||||||||","||"]}}
execute if score @s magic.mana matches 19 run data merge entity @s {data:{mana:["|||||||||||||||||||","|"]}}
execute if score @s magic.mana matches 20 run data merge entity @s {data:{mana:["||||||||||||||||||||",""]}}
title @p actionbar [[{"text":"❤ ","color":"red"}, [{"nbt":"data.health[0]","entity":"@s"},{"nbt":"data.health[1]","color":"gray","entity":"@s"}], " ",{"score":{"name": "@p","objective": "combat.health"}},"/",{"score":{"name": "@p","objective": "combat.maxHealth"}}, ""],"   ",[{"score":{"name": "@p","objective": "combat.defense"},"color":"green"},{"text":"🛡"}],"   ",[{"text":"₪ ","color":"aqua"}, [{"nbt":"data.mana[0]","entity":"@s"},{"nbt":"data.mana[1]","color":"gray","entity":"@s"}], " ",{"score":{"name": "@p","objective": "magic.mana"}},"/",{"score":{"name": "@p","objective": "magic.intelligence"}}, ""]]
kill @s
