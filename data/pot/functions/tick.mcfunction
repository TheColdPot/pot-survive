# scoreboard players add @e[tag=transformWolf] genericScore 1
# execute as @e[tag=transformWolf,scores={genericScore=100..}] at @s run function pot:tame/remove

execute as @a[nbt={Inventory:[{id:"minecraft:anvil"}]}] run function pot:ban_anvil

# function pot:full_set/index

execute as @a[nbt={SelectedItem:{tag:{potAttr:"giantSpoon"}}}] run function pot:weapon_bonus/giant_spoon

execute as @e[type=marker,tag=crafting.marker] at @s run function pot:crafting/marker

#remove ui items
clear @a #pot:ui{PotAttr:{ui:1b}}
kill @e[type=item,nbt={Item:{tag:{PotAttr:{ui:1b}}}}]

execute as @a store result score @s uuid0 run data get entity @s UUID[0]
execute as @a store result score @s uuid1 run data get entity @s UUID[1]
execute as @a store result score @s uuid2 run data get entity @s UUID[2]
execute as @a store result score @s uuid3 run data get entity @s UUID[3]



# # MAKE THEM IN THE LAST!
# clear @a #pot:craftable{PotCrafting:{shouldExist:1b}}

effect give @a resistance infinite 10 true

scoreboard players add @e[tag=damageDisplay] genericScore 1
# execute as @e[tag=damageDisplay,scores={genericScore=20}] run function pot:combat/start_animation
kill @e[tag=damageDisplay,scores={genericScore=60..}]

execute as @e[nbt={HurtTime:10s}] run function pot:combat/hurt

execute as @e[type=!player,tag=!combat_initiated] run function pot:combat/init
tag @e[type=!player] add combat_initiated

execute as @a run attribute @s generic.attack_damage modifier add 556d191f-4e34-4581-9b08-c286cba06472 "NO REAL DMG" -0.999999 multiply

execute as @a run title @s actionbar [[{"text":"❤ ","color":"red"},{"score":{"name": "@s","objective": "combat.health"}},"/",{"score":{"name": "@s","objective": "combat.maxHealth"}}],"  ",[{"text":"🛡 ","color":"green"},{"score":{"name": "@s","objective": "combat.defense"}}],"  ",[{"text":"❁ ","color":"red"},{"score":{"name": "@s","objective": "combat.strength"}}],"  ",[{"text":"⫽ ","color":"red"},{"score":{"name": "@s","objective": "combat.ferocity"}},"%"],"  ",[{"text":"⚔ ","color":"yellow"},{"score":{"name": "@s","objective": "combat.attackSpeed"}},"%"],"  ",[{"text":"☠ ","color":"blue"},{"score":{"name": "@s","objective": "combat.critChance"}},"%/",{"score":{"name": "@s","objective": "combat.critDamage"}}]]

scoreboard players add naturalRegenTimer genericScore 1
execute if score naturalRegenTimer genericScore matches 40 as @a run function pot:combat/health_regeneration
execute if score naturalRegenTimer genericScore matches 40 run scoreboard players set naturalRegenTimer genericScore 0

# scoreboard players add updateHealthTimer genericScore 1
# execute if score updateHealthTimer genericScore matches 20 run execute as @a run function pot:combat/update_max_health
# execute if score updateHealthTimer genericScore matches 20 run scoreboard players set updateHealthTimer genericScore 0

scoreboard players add executeFerocityTimer genericScore 1
execute if score executeFerocityTimer genericScore matches 3.. run execute as @e[scores={combat.ferocityAttacks=1..}] at @s run function pot:combat/ferocity/execute_ferocity
execute if score executeFerocityTimer genericScore matches 3.. run scoreboard players set executeFerocityTimer genericScore 0

execute as @a[nbt=!{SelectedItem:{tag:{PotAttr:{}}}}] run function pot:combat/replace_vanilla_swords

execute as @a run scoreboard players operation @s oldSelectedSlot = @s selectedSlot
execute as @a store result score @s selectedSlot run data get entity @s SelectedItemSlot 
execute as @a unless score @s oldSelectedSlot = @s selectedSlot at @s run function #pot:on/gear_may_changed