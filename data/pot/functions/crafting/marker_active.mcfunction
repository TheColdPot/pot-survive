data modify entity @s data._unmodified set from block ~ ~ ~ Items
execute store success score @s genericScore run data modify block ~ ~ ~ Items set from entity @s data.routes[-1]
execute if score @s genericScore matches 1.. run function pot:crafting/clicked

# say 1