title @s title [{"text":"[","color":"dark_gray"},{"text":"Fireball","entity":"@s","color":"#F04600","bold":true},{"text":"] ","color":"dark_gray"}]
execute if entity @s[scores={staff.rightClick=1..}] run tag @s add magic.Casting

scoreboard players add @s[tag=magic.Casting] magic.Cast 1
execute unless score @s[tag=magic.Casting] magic.Phase matches 101.. run scoreboard players add @s magic.Phase 1

execute if entity @s[tag=magic.Casting,scores={staff.rightClick=1..}] run scoreboard players reset @s magic.Cast

execute if score @s[tag=magic.Casting] magic.Cast matches 6.. run function magic:list/fireball/summon

execute if score @s[tag=magic.Casting] magic.Phase matches 1..20 run title @s subtitle [{"text":"● ● ● ● ●","color":"dark_gray"}]
execute if score @s[tag=magic.Casting] magic.Phase matches 21..40 run title @s subtitle [{"text":"● ","color":"gray"},{"text":"● ● ● ●","color":"dark_gray"}]
execute if score @s[tag=magic.Casting] magic.Phase matches 41..60 run title @s subtitle [{"text":"● ● ","color":"gray"},{"text":"● ● ●","color":"dark_gray"}]
execute if score @s[tag=magic.Casting] magic.Phase matches 61..80 run title @s subtitle [{"text":"● ● ● ","color":"gray"},{"text":"● ●","color":"dark_gray"}]
execute if score @s[tag=magic.Casting] magic.Phase matches 81..100 run title @s subtitle [{"text":"● ● ● ● ","color":"gray"},{"text":"●","color":"dark_gray"}]
execute if score @s[tag=magic.Casting] magic.Phase matches 101.. run title @s subtitle [{"text":"● ● ● ● ●","color":"gray"}]
execute if score @s[tag=magic.Casting] magic.Phase matches 20 at @s run playsound block.note_block.harp player @s ~ ~ ~ 1 1
execute if score @s[tag=magic.Casting] magic.Phase matches 40 at @s run playsound block.note_block.harp player @s ~ ~ ~ 1 1.059463
execute if score @s[tag=magic.Casting] magic.Phase matches 60 at @s run playsound block.note_block.harp player @s ~ ~ ~ 1 1.189207
execute if score @s[tag=magic.Casting] magic.Phase matches 80 at @s run playsound block.note_block.harp player @s ~ ~ ~ 1 1.259921
execute if score @s[tag=magic.Casting] magic.Phase matches 100 at @s run playsound block.note_block.harp player @s ~ ~ ~ 1 1.334840
