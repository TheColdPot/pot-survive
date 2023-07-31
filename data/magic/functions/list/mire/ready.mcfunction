title @s[tag=!magic.prevent] title [{"text":"[","color":"dark_gray"},{"text":"Soul Mire","entity":"@s","color":"#733C03","bold":true},{"text":"] ","color":"dark_gray"}]


execute if entity @s[scores={staff.rightClick=1..},tag=!magic.prevent] run scoreboard players add @s magic.scheduledManaCost 150
function magic:apply_scheduled_mana_cost_for_no_cast





execute if entity @s[scores={staff.rightClick=1..},tag=!magic.prevent] run function magic:list/mire/summon
execute if entity @s[scores={staff.rightClick=1..},tag=magic.prevent] run function magic:remove_data_without_clearing_title