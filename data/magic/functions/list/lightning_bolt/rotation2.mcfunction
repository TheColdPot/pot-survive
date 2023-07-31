
loot replace entity @s armor.feet loot magic:_random_provider/rotation_x
execute as @s store result entity @s Rotation[0] float 1 run data get entity @s ArmorItems[0].tag.AttributeModifiers[{Name:"randomProvider"}].Amount
item replace entity @s armor.feet with air

loot replace entity @s armor.feet loot magic:_random_provider/rotation_y
execute as @s store result entity @s Rotation[1] float 1 run data get entity @s ArmorItems[0].tag.AttributeModifiers[{Name:"randomProvider"}].Amount
item replace entity @s armor.feet with air