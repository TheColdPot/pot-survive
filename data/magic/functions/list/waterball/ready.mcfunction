title @s title [{"text":"[","color":"dark_gray"},{"text":"The Orb of Aqua","entity":"@s","color":"blue","bold":true},{"text":"] ","color":"dark_gray"}]
execute if entity @s[scores={staff.rightClick=1..}] run tag @s add magic.Casting

scoreboard players add @s[tag=magic.Casting] magic.Cast 1
execute if entity @s[tag=!magic.stopCast] unless score @s[tag=magic.Casting] magic.Phase matches 41.. run scoreboard players add @s magic.Phase 1

execute if score @s[tag=magic.Casting] magic.Phase matches 1 run scoreboard players add @s magic.scheduledManaCost 20
execute if score @s[tag=magic.Casting] magic.Phase matches 8 run scoreboard players add @s magic.scheduledManaCost 2
execute if score @s[tag=magic.Casting] magic.Phase matches 16 run scoreboard players add @s magic.scheduledManaCost 2
execute if score @s[tag=magic.Casting] magic.Phase matches 24 run scoreboard players add @s magic.scheduledManaCost 2
execute if score @s[tag=magic.Casting] magic.Phase matches 32 run scoreboard players add @s magic.scheduledManaCost 2
execute if score @s[tag=magic.Casting] magic.Phase matches 40 run scoreboard players add @s magic.scheduledManaCost 2


execute if entity @s[tag=magic.Casting,scores={staff.rightClick=1..}] run scoreboard players reset @s magic.Cast

execute if score @s[tag=magic.Casting,tag=!magic.prevent] magic.Cast matches 5.. run function magic:list/waterball/summon
execute if score @s[tag=magic.Casting,tag=magic.prevent] magic.Cast matches 5.. run function magic:remove_data

execute if score @s[tag=magic.Casting,tag=!magic.stopCast] magic.Phase matches 1..8 run title @s subtitle [{"text":"● ● ● ● ●","color":"dark_gray"}]
execute if score @s[tag=magic.Casting,tag=!magic.stopCast] magic.Phase matches 9..16 run title @s subtitle [{"text":"● ","color":"gray"},{"text":"● ● ● ●","color":"dark_gray"}]
execute if score @s[tag=magic.Casting,tag=!magic.stopCast] magic.Phase matches 17..24 run title @s subtitle [{"text":"● ● ","color":"gray"},{"text":"● ● ●","color":"dark_gray"}]
execute if score @s[tag=magic.Casting,tag=!magic.stopCast] magic.Phase matches 25..32 run title @s subtitle [{"text":"● ● ● ","color":"gray"},{"text":"● ●","color":"dark_gray"}]
execute if score @s[tag=magic.Casting,tag=!magic.stopCast] magic.Phase matches 33..40 run title @s subtitle [{"text":"● ● ● ● ","color":"gray"},{"text":"●","color":"dark_gray"}]
execute if score @s[tag=magic.Casting,tag=!magic.stopCast] magic.Phase matches 41.. run title @s subtitle [{"text":"● ● ● ● ●","color":"gray"}]
execute if score @s[tag=magic.Casting,tag=!magic.stopCast] magic.Phase matches 8 at @s run playsound block.note_block.harp player @s ~ ~ ~ 1 1
execute if score @s[tag=magic.Casting,tag=!magic.stopCast] magic.Phase matches 16 at @s run playsound block.note_block.harp player @s ~ ~ ~ 1 1.059463
execute if score @s[tag=magic.Casting,tag=!magic.stopCast] magic.Phase matches 24 at @s run playsound block.note_block.harp player @s ~ ~ ~ 1 1.189207
execute if score @s[tag=magic.Casting,tag=!magic.stopCast] magic.Phase matches 32 at @s run playsound block.note_block.harp player @s ~ ~ ~ 1 1.259921
execute if score @s[tag=magic.Casting,tag=!magic.stopCast] magic.Phase matches 40 at @s run playsound block.note_block.harp player @s ~ ~ ~ 1 1.334840

