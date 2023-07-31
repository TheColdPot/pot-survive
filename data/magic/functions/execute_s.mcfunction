
execute if score @s staff.Key1 matches 1.. if score @s staff.Key2 matches 1.. unless score @s staff.Key3 matches 1.. run scoreboard players set @s staff.Key3 3
execute if score @s staff.Key1 matches 1.. unless score @s staff.Key2 matches 1.. run scoreboard players set @s staff.Key2 3
execute unless score @s staff.Key1 matches 1.. run scoreboard players set @s staff.Key1 3

execute if score @s staff.Key1 matches 1.. if score @s staff.Key2 matches 1.. if score @s staff.Key3 matches 1.. run function magic:marks/key3
execute if score @s staff.Key1 matches 1.. if score @s staff.Key2 matches 1.. unless score @s staff.Key3 matches 1.. run function magic:marks/key2
execute if score @s staff.Key1 matches 1.. unless score @s staff.Key2 matches 1.. unless score @s staff.Key3 matches 1.. run function magic:marks/key1

# scoreboard players set @s staff.sneakTime -3