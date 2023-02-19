execute if block ~ ~ ~ air run function pot:advanced_crafting/remove

execute if block ~ ~ ~ barrel[open=true] run function pot:advanced_crafting/marker_open
execute if block ~ ~ ~ barrel[open=false]{Lock:"cantOpen"} run function pot:advanced_crafting/close
execute if block ~ ~ ~ barrel[open=false] run data remove block ~ ~ ~ Lock
execute if block ~ ~ ~ barrel[open=false] run tag @s remove craftingTableUsing

