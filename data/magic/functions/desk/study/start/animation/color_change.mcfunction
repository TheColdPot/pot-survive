data modify entity @s data.routes[-1][{Slot:4b}].tag.magic merge value {desk:1b}
data modify block ~ ~ ~ Items[{Slot:4b}].tag.magic merge value {desk:1b}

tag @s add entity.Match
#Phase1
execute if score @s magic.tickPassed matches 1 run data modify entity @s data.routes[-1][{Slot:12b}].id set value "minecraft:magenta_stained_glass_pane"
execute if score @s magic.tickPassed matches 1 run data modify entity @s data.routes[-1][{Slot:11b}].id set value "minecraft:pink_stained_glass_pane"
execute if score @s magic.tickPassed matches 1 run data modify entity @s data.routes[-1][{Slot:10b}].id set value "minecraft:purple_stained_glass_pane"

execute if score @s magic.tickPassed matches 1 as @a[distance=..8] if score @s coords.x = @e[tag=entity.Match,limit=1] coords.x if score @s coords.y = @e[tag=entity.Match,limit=1] coords.y if score @s coords.z = @e[tag=entity.Match,limit=1] coords.z run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 0.8 1

execute if score @s magic.tickPassed matches 1 run data modify entity @s data.routes[-1][{Slot:14b}].id set value "minecraft:magenta_stained_glass_pane"
execute if score @s magic.tickPassed matches 1 run data modify entity @s data.routes[-1][{Slot:15b}].id set value "minecraft:pink_stained_glass_pane"
execute if score @s magic.tickPassed matches 1 run data modify entity @s data.routes[-1][{Slot:16b}].id set value "minecraft:purple_stained_glass_pane"

#Phase2
execute if score @s magic.tickPassed matches 4 run data modify entity @s data.routes[-1][{Slot:12b}].id set value "minecraft:pink_stained_glass_pane"
execute if score @s magic.tickPassed matches 4 run data modify entity @s data.routes[-1][{Slot:11b}].id set value "minecraft:purple_stained_glass_pane"
execute if score @s magic.tickPassed matches 4 run data modify entity @s data.routes[-1][{Slot:10b}].id set value "minecraft:magenta_stained_glass_pane"

execute if score @s magic.tickPassed matches 4 as @a[distance=..8] if score @s coords.x = @e[tag=entity.Match,limit=1] coords.x if score @s coords.y = @e[tag=entity.Match,limit=1] coords.y if score @s coords.z = @e[tag=entity.Match,limit=1] coords.z run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 0.9 1

execute if score @s magic.tickPassed matches 4 run data modify entity @s data.routes[-1][{Slot:14b}].id set value "minecraft:pink_stained_glass_pane"
execute if score @s magic.tickPassed matches 4 run data modify entity @s data.routes[-1][{Slot:15b}].id set value "minecraft:purple_stained_glass_pane"
execute if score @s magic.tickPassed matches 4 run data modify entity @s data.routes[-1][{Slot:16b}].id set value "minecraft:magenta_stained_glass_pane"

#Phase3
execute if score @s magic.tickPassed matches 7 run data modify entity @s data.routes[-1][{Slot:12b}].id set value "minecraft:purple_stained_glass_pane"
execute if score @s magic.tickPassed matches 7 run data modify entity @s data.routes[-1][{Slot:11b}].id set value "minecraft:magenta_stained_glass_pane"
execute if score @s magic.tickPassed matches 7 run data modify entity @s data.routes[-1][{Slot:10b}].id set value "minecraft:pink_stained_glass_pane"

execute if score @s magic.tickPassed matches 7 as @a[distance=..8] if score @s coords.x = @e[tag=entity.Match,limit=1] coords.x if score @s coords.y = @e[tag=entity.Match,limit=1] coords.y if score @s coords.z = @e[tag=entity.Match,limit=1] coords.z run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 1 1

execute if score @s magic.tickPassed matches 7 run data modify entity @s data.routes[-1][{Slot:14b}].id set value "minecraft:purple_stained_glass_pane"
execute if score @s magic.tickPassed matches 7 run data modify entity @s data.routes[-1][{Slot:15b}].id set value "minecraft:magenta_stained_glass_pane"
execute if score @s magic.tickPassed matches 7 run data modify entity @s data.routes[-1][{Slot:16b}].id set value "minecraft:pink_stained_glass_pane"

# data modify entity @s data.routes[-1] set from block ~ ~ ~ Items
data modify entity @s data._unmodified set from block ~ ~ ~ Items
execute store success score @s magic.desk.generic run data modify block ~ ~ ~ Items set from entity @s data.routes[-1]
execute if score @s magic.desk.generic matches 1.. run function magic:desk/item_returning/check
particle enchant ~ ~1 ~ 0.25 0.25 0.25 1 5

scoreboard players add @s magic.tickPassed 1
scoreboard players add @s[scores={magic.tickPassed=1}] magic.Time 1
scoreboard players reset @s[scores={magic.tickPassed=9..}] magic.tickPassed

execute if entity @s[scores={magic.Time=6..}] run function magic:desk/pages/magic_study
execute if entity @s[scores={magic.Time=6..}] run playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 2 1.2 1
tag @s[scores={magic.Time=6..}] remove magic.study.animation
scoreboard players reset @s[scores={magic.Time=6..}] magic.tickPassed
scoreboard players reset @s[scores={magic.Time=6..}] magic.Time

execute if score @s magic.Time matches 1..6 run schedule function magic:desk/study/start/animation/trigger 1t