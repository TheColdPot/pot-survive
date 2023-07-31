scoreboard players add main magic.tickPassed 1
scoreboard players reset @a[nbt=!{SelectedItem:{tag:{magicStaff:1b}}}] staff.rightClick


execute as @a run function magic:test_keys


#Q
execute as @a[scores={staff.cancel=1..}] if entity @e[type=item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{magicStaff:1b,staff_Key:[{}]}}}] at @s run function magic:execute_q

#Select
execute as @a[scores={staff.Key3=1..}] unless score @s magic.Select matches 0.. at @s run function magic:select
execute as @a[scores={magic.Select=1..}] at @s run function magic:targets

execute as @a[scores={staff.Key1=1..}] at @s run function magic:switch
execute as @a unless score @s staff.Key1 matches 1.. if data entity @s SelectedItem.tag.staff_Key at @s run function magic:remove_data
scoreboard players reset @a[scores={staff.cancel=1..}] staff.cancel
scoreboard players reset @a[scores={staff.rightClick=1..}] staff.rightClick


# 🤓👆 uh, actually
execute as @e[scores={magic.damageDealt=1..}] run function magic:deal_damage

# 🤓👆 uh, actually
execute as @a[scores={magic.scheduledManaCost=1..}] run function magic:apply_scheduled_mana_cost

# 🤓👆 uh, actually
execute as @a run scoreboard players operation @s magic.phaseCount = @s magic.Phase
execute as @a run scoreboard players operation @s magic.phaseCount /= 10 magic.constants
execute as @a run scoreboard players add @s magic.phaseCount 1

# 🤓👆 uh, actually
scoreboard players add manaRegenTimer magic.generic 1
execute if score manaRegenTimer magic.generic matches 20 as @a run function magic:mana_regeneration
execute if score manaRegenTimer magic.generic matches 20 run scoreboard players reset manaRegenTimer magic.generic

# 🤓👆 uh, actually
execute as @e[tag=magicDesk.marker] at @s run function magic:desk/marker
function magic:desk/task