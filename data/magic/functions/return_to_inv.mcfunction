execute if block ~ 319 ~ air run setblock ~ 319 ~ shulker_box{Items:[{id:"minecraft:stone",Count:1b}]}
data modify block ~ 319 ~ Items[{Slot:0b}].id set from entity @s Inventory[{Slot:-106b}].id
data modify block ~ 319 ~ Items[{Slot:0b}].Count set from entity @s Inventory[{Slot:-106b}].Count
data modify block ~ 319 ~ Items[{Slot:0b}].tag set from entity @s Inventory[{Slot:-106b}].tag
item replace entity @s weapon.offhand with air
loot give @s mine ~ 319 ~ diamond{Replace:1b}
execute if block ~ 319 ~ shulker_box run setblock ~ 319 ~ air
