execute as @a store success score @s crafting.uiClick run clear @s #pot:ui{PotAttr:{crafting:{sound:1b}}} 0
execute at @a[scores={crafting.uiClick=1..}] run playsound ui.button.click block @p ~ ~ ~
scoreboard players set @s crafting.uiClick 0
execute store success score @s crafting.uiClick run clear @a[distance=..8] diamond_sword{PotAttr:{crafting:{feature:"category_weapon"}}}
execute if score @s crafting.uiClick matches 1.. run function pot:crafting/pages/weapon_1
execute store success score @s crafting.uiClick run clear @a[distance=..8] iron_chestplate{PotAttr:{crafting:{feature:"category_armor"}}}
execute if score @s crafting.uiClick matches 1.. run function pot:crafting/pages/armor_1


execute store success score @s crafting.uiClick run clear @a[distance=..8] #pot:ui{PotAttr:{crafting:{feature:"route_back"}}}
execute if score @s crafting.uiClick matches 1.. run data remove entity @s data.routes[-1]