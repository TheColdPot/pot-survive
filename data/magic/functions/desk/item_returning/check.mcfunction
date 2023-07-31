execute if data entity @s data._unmodified[{Slot:4b}] unless data entity @s data._unmodified[{Slot:4b,tag:{magic:{desk:1b}}}] run summon item ~ ~1 ~ {PickupDelay:0,Item:{id:"barrier",Count:1},Tags:[magic.desk.itemReturner]}
execute if data entity @s data._unmodified[{Slot:4b}] unless data entity @s data._unmodified[{Slot:4b,tag:{magic:{desk:1b}}}] run data modify entity @e[tag=magic.desk.itemReturner,limit=1,type=item] Item set from entity @s data._unmodified[{Slot:4b}]

function magic:desk/item_returning/check_lesser