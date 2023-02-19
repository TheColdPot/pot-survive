execute if score proximaPhase genericScore matches 1..2 run summon zombie 0 19 0 {Motion:[0d, .5d, 2d], CustomName:'{"text":"Lost Soul","color":"red","bold":true}',CustomNameVisible:1b,Attributes:[{Name:"minecraft:generic.attack_damage",Base:0.3}],DeathLootTable:"empty",ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],Tags:[proximaPlayerSoul,justSummoned],Glowing:1b,ActiveEffects:[{Id:28,Duration:100,Amplifier:0,ShowParticles:false}]}
execute if score proximaPhase genericScore matches 3 at @e[tag=proxima,limit=1] run summon zombie ~ ~ ~ {Motion:[0d, -.5d, 0d], CustomName:'{"text":"Lost Soul","color":"red","bold":true}',CustomNameVisible:1b,Attributes:[{Name:"minecraft:generic.attack_damage",Base:0.3}],DeathLootTable:"empty",ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],Tags:[proximaPlayerSoul,justSummoned],Glowing:1b,ActiveEffects:[{Id:28,Duration:100,Amplifier:0,ShowParticles:false}]}
#,{Name:"minecraft:generic.attack_damage",Modifiers:[{Name:"PlayerUUID",Amount:0,Operation:0,UUID:[I;0,0,0,0]},{Name:"PlayerUUIDBackup",Amount:0,Operation:0,UUID:[I;0,0,0,0]}]}

# data modify entity @e[x=0,y=19,z=0,limit=1,tag=proximaPlayerSoul,distance=..1] Attributes[{Name:"minecraft:generic.attack_damage"}].Modifiers[{Name:"PlayerUUID"}].UUID set from entity @s UUID
# data modify entity @e[x=0,y=19,z=0,limit=1,tag=proximaPlayerSoul,distance=..1] Attributes[{Name:"minecraft:generic.attack_damage"}].Modifiers[{Name:"PlayerUUIDBackup"}].UUID set from entity @s UUID
scoreboard players operation @e[tag=justSummoned,tag=proximaPlayerSoul] uuid0 = @s uuid0
scoreboard players operation @e[tag=justSummoned,tag=proximaPlayerSoul] uuid1 = @s uuid1
scoreboard players operation @e[tag=justSummoned,tag=proximaPlayerSoul] uuid2 = @s uuid2
scoreboard players operation @e[tag=justSummoned,tag=proximaPlayerSoul] uuid3 = @s uuid3
item replace entity @e[tag=proximaPlayerSoul,tag=justSummoned,limit=1] armor.head from entity @s armor.head
item replace entity @e[tag=proximaPlayerSoul,tag=justSummoned,limit=1] armor.chest from entity @s armor.chest
item replace entity @e[tag=proximaPlayerSoul,tag=justSummoned,limit=1] armor.legs from entity @s armor.legs
item replace entity @e[tag=proximaPlayerSoul,tag=justSummoned,limit=1] armor.feet from entity @s armor.feet
item replace entity @e[tag=proximaPlayerSoul,tag=justSummoned,limit=1] weapon from entity @s weapon

tag @e[tag=proximaPlayerSoul,tag=justSummoned] remove justSommoned