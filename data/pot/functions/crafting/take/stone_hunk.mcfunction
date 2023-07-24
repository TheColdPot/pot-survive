execute store result score @s crafting.slot0 run clear @s cobblestone 0

execute store result score @s crafting.slot1 run clear @s cobbled_deepslate 0

execute store result score @s crafting.slot2 run clear @s blackstone 0


execute if entity @s[scores={crafting.slot0=256..,crafting.slot1=192..,crafting.slot2=128..}] run function pot:crafting/take/success/stone_hunk
execute unless entity @s[scores={crafting.slot0=256..,crafting.slot1=192..,crafting.slot2=128..}] run tellraw @s {"text":"Not enough material!","color":"red"}
execute unless entity @s[scores={crafting.slot0=256..,crafting.slot1=192..,crafting.slot2=128..}] at @s run playsound minecraft:entity.enderman.teleport block @s ~ ~ ~ 1 .1