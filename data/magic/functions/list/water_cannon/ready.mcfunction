title @s title [{"text":"[","color":"dark_gray"},{"text":"Water Cannon","entity":"@s","color":"#0041A7","bold":true},{"text":"] ","color":"dark_gray"}]
execute if entity @s[scores={staff.rightClick=1..}] run tag @s add magic.Casting

scoreboard players add @s[tag=magic.Casting] magic.Cast 1

execute unless score @s[tag=magic.Casting,tag=!magic.stopCast] magic.Phase matches 91.. run scoreboard players add @s magic.Phase 1

execute if score @s[tag=magic.Casting] magic.Phase matches 1 run scoreboard players add @s magic.scheduledManaCost 500
execute if score @s[tag=magic.Casting] magic.Phase matches 10 run scoreboard players add @s magic.scheduledManaCost 500
execute if score @s[tag=magic.Casting] magic.Phase matches 20 run scoreboard players add @s magic.scheduledManaCost 500
execute if score @s[tag=magic.Casting] magic.Phase matches 30 run scoreboard players add @s magic.scheduledManaCost 500
execute if score @s[tag=magic.Casting] magic.Phase matches 40 run scoreboard players add @s magic.scheduledManaCost 500
execute if score @s[tag=magic.Casting] magic.Phase matches 50 run scoreboard players add @s magic.scheduledManaCost 500
execute if score @s[tag=magic.Casting] magic.Phase matches 60 run scoreboard players add @s magic.scheduledManaCost 500
execute if score @s[tag=magic.Casting] magic.Phase matches 70 run scoreboard players add @s magic.scheduledManaCost 500
execute if score @s[tag=magic.Casting] magic.Phase matches 80 run scoreboard players add @s magic.scheduledManaCost 500
execute if score @s[tag=magic.Casting] magic.Phase matches 90 run scoreboard players add @s magic.scheduledManaCost 500


execute if entity @s[tag=magic.Casting,scores={staff.rightClick=1..}] run scoreboard players reset @s magic.Cast

execute if score @s[tag=magic.Casting,tag=!magic.stopCast] magic.Phase matches 91.. if score @s[tag=magic.Casting] magic.Cast matches 5.. run function magic:list/water_cannon/summon
execute unless score @s[tag=magic.Casting,tag=!magic.stopCast] magic.Phase matches 91.. if score @s[tag=magic.Casting] magic.Cast matches 5.. run function magic:list/water_cannon/failed
execute if score @s[tag=magic.Casting,tag=magic.stopCast,tag=!magic.prevent] magic.Cast matches 5.. run function magic:list/water_cannon/failed
execute if score @s[tag=magic.prevent] magic.Cast matches 5.. run function magic:remove_data

execute if score @s[tag=magic.Casting,tag=!magic.stopCast] magic.Phase matches 1..10 run title @s subtitle [{"text":"● ● ● ● ● ● ● ● ●","color":"dark_gray"}]
execute if score @s[tag=magic.Casting,tag=!magic.stopCast] magic.Phase matches 11..20 run title @s subtitle [{"text":"● ","color":"gray"},{"text":"● ● ● ● ● ● ● ●","color":"dark_gray"}]
execute if score @s[tag=magic.Casting,tag=!magic.stopCast] magic.Phase matches 21..30 run title @s subtitle [{"text":"● ● ","color":"gray"},{"text":"● ● ● ● ● ● ●","color":"dark_gray"}]
execute if score @s[tag=magic.Casting,tag=!magic.stopCast] magic.Phase matches 31..40 run title @s subtitle [{"text":"● ● ● ","color":"gray"},{"text":"● ● ● ● ● ●","color":"dark_gray"}]
execute if score @s[tag=magic.Casting,tag=!magic.stopCast] magic.Phase matches 41..50 run title @s subtitle [{"text":"● ● ● ● ","color":"gray"},{"text":"● ● ● ● ●","color":"dark_gray"}]
execute if score @s[tag=magic.Casting,tag=!magic.stopCast] magic.Phase matches 51..60 run title @s subtitle [{"text":"● ● ● ● ● ","color":"gray"},{"text":"● ● ● ●","color":"dark_gray"}]
execute if score @s[tag=magic.Casting,tag=!magic.stopCast] magic.Phase matches 61..70 run title @s subtitle [{"text":"● ● ● ● ● ● ","color":"gray"},{"text":"● ● ●","color":"dark_gray"}]
execute if score @s[tag=magic.Casting,tag=!magic.stopCast] magic.Phase matches 71..80 run title @s subtitle [{"text":"● ● ● ● ● ● ● ","color":"gray"},{"text":"● ●","color":"dark_gray"}]
execute if score @s[tag=magic.Casting,tag=!magic.stopCast] magic.Phase matches 81..90 run title @s subtitle [{"text":"● ● ● ● ● ● ● ● ","color":"gray"},{"text":"●","color":"dark_gray"}]
execute if score @s[tag=magic.Casting,tag=!magic.stopCast] magic.Phase matches 91.. run title @s subtitle [{"text":"● ● ● ● ● ● ● ● ●","color":"gray"}]
execute if score @s[tag=magic.Casting,tag=!magic.stopCast] magic.Phase matches 10 at @s run playsound block.note_block.harp player @s ~ ~ ~ 1 1
execute if score @s[tag=magic.Casting,tag=!magic.stopCast] magic.Phase matches 20 at @s run playsound block.note_block.harp player @s ~ ~ ~ 1 1.059463
execute if score @s[tag=magic.Casting,tag=!magic.stopCast] magic.Phase matches 30 at @s run playsound block.note_block.harp player @s ~ ~ ~ 1 1.189207
execute if score @s[tag=magic.Casting,tag=!magic.stopCast] magic.Phase matches 40 at @s run playsound block.note_block.harp player @s ~ ~ ~ 1 1.259921
execute if score @s[tag=magic.Casting,tag=!magic.stopCast] magic.Phase matches 50 at @s run playsound block.note_block.harp player @s ~ ~ ~ 1 1.334840
execute if score @s[tag=magic.Casting,tag=!magic.stopCast] magic.Phase matches 60 at @s run playsound block.note_block.harp player @s ~ ~ ~ 1 1.414214
execute if score @s[tag=magic.Casting,tag=!magic.stopCast] magic.Phase matches 70 at @s run playsound block.note_block.harp player @s ~ ~ ~ 1 1.498307
execute if score @s[tag=magic.Casting,tag=!magic.stopCast] magic.Phase matches 80 at @s run playsound block.note_block.harp player @s ~ ~ ~ 1 1.587401
execute if score @s[tag=magic.Casting,tag=!magic.stopCast] magic.Phase matches 90 at @s run playsound block.note_block.harp player @s ~ ~ ~ 1 1.681793
