#F
execute as @a[scores={staff.pressFClick=1..}] if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick"}]}] at @s run function magic:execute_f
execute as @a unless entity @s[scores={staff.pressFClick=1..}] if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick"}]}] at @s run function magic:return_to_inv

execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}}] run scoreboard players set @s staff.pressFClick 1
execute as @a unless entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}}] run scoreboard players reset @s staff.pressFClick
execute as @a if score @s staff.Key3 matches 1.. run scoreboard players reset @s staff.pressFClick


#R
execute as @a[scores={staff.rightClick=1..}] unless score @s staff.Key3 matches 1.. at @s run function magic:execute_r



#S
execute as @a[scores={staff.shiftClick=1..}] if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}}] unless score @s staff.Key3 matches 1.. at @s run function magic:execute_s
scoreboard players set @a[scores={staff.shiftClick=1..}] staff.shiftClick -2


#Q
execute as @a[scores={staff.cancel=1..}] if entity @e[type=item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{staff_Key:[{}]}}}] at @s run function magic:execute_q

#Select
execute as @a[scores={staff.Key3=1..}] unless score @s magic.Select matches 0.. at @s run function magic:select
execute as @a[scores={magic.Select=1..}] at @s run function magic:targets

execute as @a[scores={staff.Key1=1..}] at @s run function magic:switch
execute as @a unless score @s staff.Key1 matches 1.. if data entity @s SelectedItem.tag.staff_Key at @s run function magic:remove_data
scoreboard players reset @a[scores={staff.cancel=1..}] staff.cancel
scoreboard players reset @a[scores={staff.rightClick=1..}] staff.rightClick