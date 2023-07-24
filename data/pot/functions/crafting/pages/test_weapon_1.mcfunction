execute store success score @s crafting.uiClick run clear @a[distance=..8] #pot:ui{PotAttr:{ui:1b,id:"stone_hunk",crafting:{result:0b}}}
execute if score @s crafting.uiClick matches 1.. run function pot:crafting/items/stone_hunk
execute store success score @s crafting.uiClick run clear @a[distance=..8] #pot:ui{PotAttr:{ui:1b,id:"warden_scepter",crafting:{result:0b}}}
execute if score @s crafting.uiClick matches 1.. run function pot:crafting/items/warden_scepter
execute store success score @s crafting.uiClick run clear @a[distance=..8] #pot:ui{PotAttr:{ui:1b,id:"warden_blade",crafting:{result:0b}}}
execute if score @s crafting.uiClick matches 1.. run function pot:crafting/items/warden_blade
execute store success score @s crafting.uiClick run clear @a[distance=..8] #pot:ui{PotAttr:{ui:1b,id:"final_answer",crafting:{result:0b}}}
execute if score @s crafting.uiClick matches 1.. run function pot:crafting/items/final_answer
