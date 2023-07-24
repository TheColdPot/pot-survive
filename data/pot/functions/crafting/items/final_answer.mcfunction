function pot:crafting/items/fill_frame
loot replace block ~ ~ ~ container.1 loot pot:42_artifact
data modify block ~ ~ ~ Items[{Slot:1b}].Count set value 42

loot replace block ~ ~ ~ container.2 loot pot:refined_ores/refined_iron
data modify block ~ ~ ~ Items[{Slot:2b}].Count set value 64

loot replace block ~ ~ ~ container.3 loot pot:refined_ores/refined_iron
data modify block ~ ~ ~ Items[{Slot:3b}].Count set value 64

loot replace block ~ ~ ~ container.4 loot pot:refined_ores/refined_gold
data modify block ~ ~ ~ Items[{Slot:4b}].Count set value 64

loot replace block ~ ~ ~ container.10 loot pot:refined_ores/refined_gold
data modify block ~ ~ ~ Items[{Slot:10b}].Count set value 64

loot replace block ~ ~ ~ container.11 loot pot:refined_ores/refined_diamond
data modify block ~ ~ ~ Items[{Slot:11b}].Count set value 64

loot replace block ~ ~ ~ container.12 loot pot:weapon/melee/life_answer
data modify block ~ ~ ~ Items[{Slot:12b}].Count set value 1

loot replace block ~ ~ ~ container.13 loot pot:weapon/melee/universe_answer
data modify block ~ ~ ~ Items[{Slot:13b}].Count set value 1

loot replace block ~ ~ ~ container.19 loot pot:force_stimulator
data modify block ~ ~ ~ Items[{Slot:19b}].Count set value 42

loot replace block ~ ~ ~ container.15 loot pot:weapon/melee/final_answer
data modify block ~ ~ ~ Items[{Slot:15b}].Count set value 1
        
function pot:crafting/items/gain_item_tag
function pot:crafting/pages/append_route
data modify entity @s data.routeFeature set value {"name":"item","id":"final_answer"}