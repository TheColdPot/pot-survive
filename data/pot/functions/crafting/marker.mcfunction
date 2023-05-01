execute if block ~ ~ ~ barrel[open=true] run function pot:crafting/marker_active
execute if block ~ ~ ~ barrel[open=true] if entity @s[tag=!crafting.open] run function pot:crafting/activate
execute if block ~ ~ ~ barrel[open=false] if entity @s[tag=crafting.open] run function pot:crafting/deactivate
execute if block ~ ~ ~ barrel[open=true] run tag @s add crafting.open
execute if block ~ ~ ~ barrel[open=false] run tag @s remove crafting.open
execute unless block ~ ~ ~ barrel run function pot:crafting/uninstall
