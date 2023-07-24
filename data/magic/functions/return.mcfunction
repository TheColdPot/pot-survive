summon armor_stand ~ ~ ~ {Tags:[ReturnEntity],Invisible:1b}
data modify entity @e[type=armor_stand,tag=ReturnEntity,limit=1] HandItems[0] set from entity @s Inventory[{Slot:-106b}]
item replace entity @s weapon.offhand with air
item replace entity @s weapon.mainhand from entity @e[type=armor_stand,tag=ReturnEntity,limit=1] weapon.mainhand
kill @e[type=armor_stand,tag=ReturnEntity]


execute if score @s staff.Key1 matches 1.. if score @s staff.Key2 matches 1.. unless score @s staff.Key3 matches 1.. run scoreboard players set @s staff.Key3 2
execute if score @s staff.Key1 matches 1.. unless score @s staff.Key2 matches 1.. run scoreboard players set @s staff.Key2 2
execute unless score @s staff.Key1 matches 1.. run scoreboard players set @s staff.Key1 2

execute if score @s staff.Key1 matches 1.. if score @s staff.Key2 matches 1.. if score @s staff.Key3 matches 1.. run function magic:marks/key3
execute if score @s staff.Key1 matches 1.. if score @s staff.Key2 matches 1.. unless score @s staff.Key3 matches 1.. run function magic:marks/key2
execute if score @s staff.Key1 matches 1.. unless score @s staff.Key2 matches 1.. unless score @s staff.Key3 matches 1.. run function magic:marks/key1
