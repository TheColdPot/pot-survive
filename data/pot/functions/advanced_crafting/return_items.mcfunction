# slotMapping = [2,3,4,11,12,13,20,21,22]
# say 1
summon item ~ ~.5 ~ {Tags:[returnItemsSlot0,crftReturnItems],Item:{id:"barrier",Count:1},Motion:[0.0,0.2,0.0],PickupDelay:10}
data modify entity @e[type=item,tag=returnItemsSlot0,limit=1,sort=nearest] Item set from block ~ ~ ~ Items[{Slot:2b}]
item replace block ~ ~ ~ container.2 with air

summon item ~ ~.5 ~ {Tags:[returnItemsSlot1,crftReturnItems],Item:{id:"barrier",Count:1},Motion:[0.0,0.2,0.0],PickupDelay:10}
data modify entity @e[type=item,tag=returnItemsSlot1,limit=1,sort=nearest] Item set from block ~ ~ ~ Items[{Slot:3b}]
item replace block ~ ~ ~ container.3 with air

summon item ~ ~.5 ~ {Tags:[returnItemsSlot2,crftReturnItems],Item:{id:"barrier",Count:1},Motion:[0.0,0.2,0.0],PickupDelay:10}
data modify entity @e[type=item,tag=returnItemsSlot2,limit=1,sort=nearest] Item set from block ~ ~ ~ Items[{Slot:4b}]
item replace block ~ ~ ~ container.4 with air

summon item ~ ~.5 ~ {Tags:[returnItemsSlot3,crftReturnItems],Item:{id:"barrier",Count:1},Motion:[0.0,0.2,0.0],PickupDelay:10}
data modify entity @e[type=item,tag=returnItemsSlot3,limit=1,sort=nearest] Item set from block ~ ~ ~ Items[{Slot:11b}]
item replace block ~ ~ ~ container.11 with air

summon item ~ ~.5 ~ {Tags:[returnItemsSlot4,crftReturnItems],Item:{id:"barrier",Count:1},Motion:[0.0,0.2,0.0],PickupDelay:10}
data modify entity @e[type=item,tag=returnItemsSlot4,limit=1,sort=nearest] Item set from block ~ ~ ~ Items[{Slot:12b}]
item replace block ~ ~ ~ container.12 with air

summon item ~ ~.5 ~ {Tags:[returnItemsSlot5,crftReturnItems],Item:{id:"barrier",Count:1},Motion:[0.0,0.2,0.0],PickupDelay:10}
data modify entity @e[type=item,tag=returnItemsSlot5,limit=1,sort=nearest] Item set from block ~ ~ ~ Items[{Slot:13b}]
item replace block ~ ~ ~ container.13 with air

summon item ~ ~.5 ~ {Tags:[returnItemsSlot6,crftReturnItems],Item:{id:"barrier",Count:1},Motion:[0.0,0.2,0.0],PickupDelay:10}
data modify entity @e[type=item,tag=returnItemsSlot6,limit=1,sort=nearest] Item set from block ~ ~ ~ Items[{Slot:20b}]
item replace block ~ ~ ~ container.20 with air

summon item ~ ~.5 ~ {Tags:[returnItemsSlot7,crftReturnItems],Item:{id:"barrier",Count:1},Motion:[0.0,0.2,0.0],PickupDelay:10}
data modify entity @e[type=item,tag=returnItemsSlot7,limit=1,sort=nearest] Item set from block ~ ~ ~ Items[{Slot:21b}]
item replace block ~ ~ ~ container.21 with air

summon item ~ ~.5 ~ {Tags:[returnItemsSlot8,crftReturnItems],Item:{id:"barrier",Count:1},Motion:[0.0,0.2,0.0],PickupDelay:10}
data modify entity @e[type=item,tag=returnItemsSlot8,limit=1,sort=nearest] Item set from block ~ ~ ~ Items[{Slot:22b}]
item replace block ~ ~ ~ container.22 with air

kill @e[type=item,tag=crftReturnItems,nbt={Item:{id:"minecraft:barrier"}}]
# execute unless entity @s[scores={crafting.slot0=0,crafting.slot1=0,crafting.slot2=0,crafting.slot3=0,crafting.slot4=0,crafting.slot5=0,crafting.slot6=0,crafting.slot7=0,crafting.slot8=0}] run playsound block.glass.break block @a
tag @e[type=item,tag=crftReturnItems,dy=1] remove returnItemsSlot0
tag @e[type=item,tag=crftReturnItems,dy=1] remove returnItemsSlot1
tag @e[type=item,tag=crftReturnItems,dy=1] remove returnItemsSlot2
tag @e[type=item,tag=crftReturnItems,dy=1] remove returnItemsSlot3
tag @e[type=item,tag=crftReturnItems,dy=1] remove returnItemsSlot4
tag @e[type=item,tag=crftReturnItems,dy=1] remove returnItemsSlot5
tag @e[type=item,tag=crftReturnItems,dy=1] remove returnItemsSlot6
tag @e[type=item,tag=crftReturnItems,dy=1] remove returnItemsSlot7
tag @e[type=item,tag=crftReturnItems,dy=1] remove returnItemsSlot8
tag @e[type=item,tag=crftReturnItems,dy=1] add backup_crftReturnItems
tag @e[type=item,tag=crftReturnItems,dy=1] remove crftReturnItems
