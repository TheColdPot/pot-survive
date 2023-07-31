data modify entity @s data._bookSlot set from entity @s data._unmodified[{Slot:4b}]
data modify block ~ ~ ~ Items set from entity @s data.route[-1]
execute unless data block ~ ~ ~ Items[{Slot:4b}] run data modify block ~ ~ ~ Items[{Slot:4b}] merge value {Slot:4b,id:"barrier",Count:1b}
data modify block ~ ~ ~ Items[{Slot:4b}] set from entity @s data._bookSlot
# data modify block ~ ~ ~ Items[{Slot:4b}] merge from entity @s data._unmodified[{Slot:4b}]
# tellraw @a {"nbt":"data._unmodified[{Slot:4b}]","entity":"@s"}
# tellraw @a {"nbt":"Items[{Slot:4b}]","block":"~ ~ ~"}


item replace block ~ ~ ~ container.10 with red_stained_glass_pane{display:{Name:'""'},magic:{desk:1b}}
item replace block ~ ~ ~ container.11 with red_stained_glass_pane{display:{Name:'""'},magic:{desk:1b}}
item replace block ~ ~ ~ container.12 with red_stained_glass_pane{display:{Name:'""'},magic:{desk:1b}}
item replace block ~ ~ ~ container.14 with red_stained_glass_pane{display:{Name:'""'},magic:{desk:1b}}
item replace block ~ ~ ~ container.15 with red_stained_glass_pane{display:{Name:'""'},magic:{desk:1b}}
item replace block ~ ~ ~ container.16 with red_stained_glass_pane{display:{Name:'""'},magic:{desk:1b}}


item replace block ~ ~ ~ container.13 with book{display:{Name:'{"translate":"magic.desk.study.error","fallback":"这不是个可识别的卷轴！","color":"red","bold":true,"italic":false}'},HideFlags:255,magic:{study_allow:0b,desk:1b,feature:"magic_study",sound:0b}}
# data modify entity @s data._unmodified set from block ~ ~ ~ Items

data remove entity @s data.routes
function magic:desk/routes/append
