execute store result score @s crafting.slot0 run clear @s #pot:ui{PotAttr:{id:"warden_heart"}} 0

execute store result score @s crafting.slot1 run clear @s #pot:ui{PotAttr:{id:"warden_scepter"}} 0


execute if entity @s[scores={crafting.slot0=12..,crafting.slot1=1..}] run function pot:crafting/take/success/warden_blade
execute unless entity @s[scores={crafting.slot0=12..,crafting.slot1=1..}] run tellraw @s {"text":"Not enough material!","color":"red"}
execute unless entity @s[scores={crafting.slot0=12..,crafting.slot1=1..}] at @s run playsound minecraft:entity.enderman.teleport block @s ~ ~ ~ 1 .1