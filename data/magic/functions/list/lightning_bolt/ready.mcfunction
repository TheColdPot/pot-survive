title @s title [{"text":"[","color":"dark_gray"},{"text":"Thunderbolt","entity":"@s","color":"#F7A5E1","bold":true},{"text":"] ","color":"dark_gray"}]
execute if entity @s[scores={staff.rightClick=1..}] run tag @s add magic.Casting

scoreboard players add @s[tag=magic.Casting] magic.Cast 1
execute if entity @s[tag=!magic.stopCast] unless score @s[tag=magic.Casting] magic.Phase matches 41.. run scoreboard players add @s magic.Phase 1

execute if score @s[tag=magic.Casting] magic.Phase matches 1 run scoreboard players add @s magic.scheduledManaCost 50
execute if score @s[tag=magic.Casting] magic.Phase matches 20 run scoreboard players add @s magic.scheduledManaCost 25
execute if score @s[tag=magic.Casting] magic.Phase matches 40 run scoreboard players add @s magic.scheduledManaCost 25



execute if entity @s[tag=magic.Casting,scores={staff.rightClick=1..}] run scoreboard players reset @s magic.Cast

execute if score @s[tag=magic.Casting,tag=!magic.prevent] magic.Cast matches 5.. run function magic:list/lightning_bolt/summon
execute if score @s[tag=magic.Casting,tag=magic.prevent] magic.Cast matches 5.. run function magic:remove_data

execute if score @s[tag=magic.Casting,tag=!magic.stopCast] magic.Phase matches 1..20 run title @s subtitle [{"text":"● ●","color":"dark_gray"}]
execute if score @s[tag=magic.Casting,tag=!magic.stopCast] magic.Phase matches 21..40 run title @s subtitle [{"text":"● ","color":"gray"},{"text":"●","color":"dark_gray"}]
execute if score @s[tag=magic.Casting,tag=!magic.stopCast] magic.Phase matches 41.. run title @s subtitle [{"text":"● ●","color":"gray"}]
execute if score @s[tag=magic.Casting,tag=!magic.stopCast] magic.Phase matches 20 at @s run playsound block.note_block.harp player @s ~ ~ ~ 1 1
execute if score @s[tag=magic.Casting,tag=!magic.stopCast] magic.Phase matches 40 at @s run playsound block.note_block.harp player @s ~ ~ ~ 1 1.059463

