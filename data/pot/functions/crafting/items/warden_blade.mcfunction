function pot:crafting/items/fill_frame
loot replace block ~ ~ ~ container.1 loot pot:warden_heart
data modify block ~ ~ ~ Items[{Slot:1b}].Count set value 12

loot replace block ~ ~ ~ container.2 loot pot:weapon/melee/warden_scepter
data modify block ~ ~ ~ Items[{Slot:2b}].Count set value 1

loot replace block ~ ~ ~ container.15 loot pot:weapon/melee/warden_blade
data modify block ~ ~ ~ Items[{Slot:15b}].Count set value 1
        
function pot:crafting/items/gain_item_tag
function pot:crafting/pages/append_route
data modify entity @s data.routeFeature set value {"name":"item","id":"warden_blade"}