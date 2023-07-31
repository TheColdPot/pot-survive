data modify entity @s data._unmodified set from block ~ ~ ~ Items

execute store success score @s magic.desk.generic run data modify block ~ ~ ~ Items set from entity @s data.routes[-1]



execute if score @s magic.desk.generic matches 1.. run function magic:desk/features/clicked
