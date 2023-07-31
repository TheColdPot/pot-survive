#F
execute if score @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{magicStaff:1b}}]}] staff.pressFClick matches 1.. at @s run function magic:execute_f
execute unless entity @s[scores={staff.pressFClick=1..}] if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag:{magicStaff:1b}}]}] at @s run function magic:return_to_inv

execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{magicStaff:1b}}}] run scoreboard players set @s staff.pressFClick 1
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}}] run scoreboard players reset @s staff.pressFClick
execute if score @s staff.Key3 matches 1.. run scoreboard players reset @s staff.pressFClick


#R
# execute as @a[scores={staff.rightClick=1..}] unless score @s staff.Key3 matches 1.. at @s run scoreboard players operation @s staff.lastUseStickTime = @s staff.useStickTime 
# execute as @a[scores={staff.rightClick=1..}] unless score @s staff.Key3 matches 1.. at @s run scoreboard players operation @s staff.useStickTime = main magic.tickPassed 
# execute as @a[scores={staff.rightClick=1..}] unless score @s staff.Key3 matches 1.. at @s run scoreboard players operation @s staff.useStickTimeDiff = @s staff.useStickTime
# execute as @a[scores={staff.rightClick=1..}] unless score @s staff.Key3 matches 1.. at @s run scoreboard players operation @s staff.useStickTimeDiff -= @s staff.lastUseStickTime
# execute as @a[scores={staff.rightClick=1..}] unless score @s staff.useStickTimeDiff matches 3..4 unless score @s staff.Key3 matches 1.. at @s run function magic:execute_r
# execute as @a if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{magicStaff:1b}}},tag=!magic.usingStick] if score @s staff.useStick > @s staff.oldUseStick unless score @s staff.Key3 matches 1.. at @s run function magic:execute_r
# execute as @a if score @s staff.useStick > @s staff.oldUseStick run tag @s add magic.usingStick
# execute as @a if score @s staff.useStick <= @s staff.oldUseStick run tag @s remove magic.usingStick
# execute as @a run scoreboard players operation @s staff.oldUseStick = @s staff.useStick
execute if score @s staff.rightClick matches 1.. unless score @s staff.Key3 matches 1.. at @s run function magic:execute_r



#S
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{magicStaff:1b}}},tag=!magic.sneaking,gamemode=!spectator] if score @s staff.sneakTime > @s staff.oldSneakTime unless score @s staff.Key3 matches 1.. at @s run function magic:execute_s
execute if score @s staff.sneakTime > @s staff.oldSneakTime run tag @s add magic.sneaking
execute if score @s staff.sneakTime <= @s staff.oldSneakTime run tag @s remove magic.sneaking
# execute as @a if score @s staff.sneakTime <= @s staff.oldSneakTime run say 1
# scoreboard players set @a[scores={staff.sneakTime=1..}] staff.sneakTime -2
scoreboard players operation @s staff.oldSneakTime = @s staff.sneakTime