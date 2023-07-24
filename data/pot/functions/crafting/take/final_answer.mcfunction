execute store result score @s crafting.slot0 run clear @s #pot:ui{PotAttr:{id:"42_artifact"}} 0

execute store result score @s crafting.slot1 run clear @s #pot:ui{PotAttr:{id:"refined_iron"}} 0

execute store result score @s crafting.slot2 run clear @s #pot:ui{PotAttr:{id:"refined_gold"}} 0

execute store result score @s crafting.slot3 run clear @s #pot:ui{PotAttr:{id:"refined_diamond"}} 0

execute store result score @s crafting.slot4 run clear @s #pot:ui{PotAttr:{id:"life_answer"}} 0

execute store result score @s crafting.slot5 run clear @s #pot:ui{PotAttr:{id:"universe_answer"}} 0

execute store result score @s crafting.slot6 run clear @s #pot:ui{PotAttr:{id:"force_stimulator"}} 0


execute if entity @s[scores={crafting.slot0=42..,crafting.slot1=128..,crafting.slot2=128..,crafting.slot3=64..,crafting.slot4=1..,crafting.slot5=1..,crafting.slot6=42..}] run function pot:crafting/take/success/final_answer
execute unless entity @s[scores={crafting.slot0=42..,crafting.slot1=128..,crafting.slot2=128..,crafting.slot3=64..,crafting.slot4=1..,crafting.slot5=1..,crafting.slot6=42..}] run tellraw @s {"text":"Not enough material!","color":"red"}
execute unless entity @s[scores={crafting.slot0=42..,crafting.slot1=128..,crafting.slot2=128..,crafting.slot3=64..,crafting.slot4=1..,crafting.slot5=1..,crafting.slot6=42..}] at @s run playsound minecraft:entity.enderman.teleport block @s ~ ~ ~ 1 .1