execute store result score @s crafting.slot0 run clear @s #pot:ui{PotAttr:{id:"warden_artifact"}} 0

execute store result score @s crafting.slot1 run clear @s diamond 0

execute store result score @s crafting.slot2 run clear @s amethyst_shard 0


execute if entity @s[scores={crafting.slot0=48..,crafting.slot1=32..,crafting.slot2=64..}] run function pot:crafting/take/success/warden_scepter
execute unless entity @s[scores={crafting.slot0=48..,crafting.slot1=32..,crafting.slot2=64..}] run tellraw @s {"text":"Not enough material!","color":"red"}
execute unless entity @s[scores={crafting.slot0=48..,crafting.slot1=32..,crafting.slot2=64..}] at @s run playsound minecraft:entity.enderman.teleport block @s ~ ~ ~ 1 .1