summon armor_stand ~ ~ ~ {Tags:[ReturnEntity],Invisible:1b}
data modify entity @e[type=armor_stand,tag=ReturnEntity,limit=1] HandItems[0] set from entity @s SelectedItem
data remove entity @e[type=armor_stand,tag=ReturnEntity,limit=1] HandItems[0].tag.staff_Key
item replace entity @s weapon.offhand with air
item replace entity @s weapon.mainhand from entity @e[type=armor_stand,tag=ReturnEntity,limit=1] weapon.mainhand
kill @e[type=armor_stand,tag=ReturnEntity]

scoreboard players reset @s staff.Key1
scoreboard players reset @s staff.Key2
scoreboard players reset @s staff.Key3

scoreboard players reset @s magic.Select
scoreboard players reset @s magic.Cast
scoreboard players reset @s magic.Phase
tag @s remove magic.Casting
tag @s remove magic.stopCast
tag @s remove magic.prevent