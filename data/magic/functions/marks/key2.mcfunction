summon armor_stand ~ ~ ~ {Tags:[ReturnEntity],Invisible:1b}
data modify entity @e[type=armor_stand,tag=ReturnEntity,limit=1] HandItems[0] set from entity @s SelectedItem
execute if score @s staff.Key2 matches 1 run data modify entity @e[type=armor_stand,tag=ReturnEntity,limit=1] HandItems[0].tag.staff_Key[].Key2 set value "R"
execute if score @s staff.Key2 matches 2 run data modify entity @e[type=armor_stand,tag=ReturnEntity,limit=1] HandItems[0].tag.staff_Key[].Key2 set value "F"
execute if score @s staff.Key2 matches 3 run data modify entity @e[type=armor_stand,tag=ReturnEntity,limit=1] HandItems[0].tag.staff_Key[].Key2 set value "S"
item replace entity @s weapon.offhand with air
item replace entity @s weapon.mainhand from entity @e[type=armor_stand,tag=ReturnEntity,limit=1] weapon.mainhand
kill @e[type=armor_stand,tag=ReturnEntity]

playsound minecraft:ui.loom.select_pattern player @s ~ ~ ~ 1 1.8 1