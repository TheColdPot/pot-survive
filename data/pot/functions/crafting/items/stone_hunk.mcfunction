function pot:crafting/items/fill_frame
item replace block ~ ~ ~ container.1 with cobblestone 64

item replace block ~ ~ ~ container.2 with cobblestone 64

item replace block ~ ~ ~ container.3 with cobblestone 64

item replace block ~ ~ ~ container.4 with cobblestone 64

item replace block ~ ~ ~ container.10 with cobbled_deepslate 64

item replace block ~ ~ ~ container.11 with cobbled_deepslate 64

item replace block ~ ~ ~ container.12 with cobbled_deepslate 64

item replace block ~ ~ ~ container.13 with blackstone 64

item replace block ~ ~ ~ container.19 with blackstone 64

loot replace block ~ ~ ~ container.15 loot pot:weapon/melee/stone_hunk
data modify block ~ ~ ~ Items[{Slot:15b}].Count set value 1
        
function pot:crafting/items/gain_item_tag
function pot:crafting/pages/append_route
data modify entity @s data.routeFeature set value {"name":"item","id":"stone_hunk"}