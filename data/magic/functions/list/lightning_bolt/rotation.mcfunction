execute facing entity @e[type=!#magic:decoration,tag=!magic.Shooter,limit=1,sort=nearest,distance=..3] feet run tp @s ~ ~ ~ ~ ~


loot replace entity @s armor.feet loot magic:_random_provider/rotation_x

execute store result score @s staff.Key1 run data get entity @s Rotation[0]
execute store result score @s staff.Key2 run data get entity @s ArmorItems[0].tag.AttributeModifiers[{Name:"randomProvider"}].Amount
execute store result entity @s Rotation[0] float 1 run scoreboard players operation @s staff.Key1 += @s staff.Key2

loot replace entity @s armor.feet loot magic:_random_provider/rotation_y
execute store result score @s staff.Key1 run data get entity @s Rotation[1]
execute store result score @s staff.Key2 run data get entity @s ArmorItems[0].tag.AttributeModifiers[{Name:"randomProvider"}].Amount
execute store result entity @s Rotation[1] float 1 run scoreboard players operation @s staff.Key1 += @s staff.Key2
item replace entity @s armor.feet with air