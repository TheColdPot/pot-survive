advancement revoke @s only pot:triggers/boss/kill_player_soul
tag @a[sort=random,limit=1,tag=proximaFightDeath] add proximaRevive_p
tag @a[tag=proximaRevive_p] add proximaRevive_processing
# execute as @e[tag=proximaPlayerSoul] store success score @s genericScore run data modify entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Modifiers[{Name:"PlayerUUID"}].UUID set from entity @a[tag=proximaRevive_processing,limit=1] UUID
# execute unless entity @e[tag=proximaPlayerSoul,scores={genericScore=1..}] run tag @a[tag=proximaRevive_processing] add proximaRevive_toRevive
# execute as @e[tag=proximaPlayerSoul] run data modify entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Modifiers[{Name:"PlayerUUID"}].UUID set from entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Modifiers[{Name:"PlayerUUIDBackup"}].UUID
execute as @e[tag=proximaPlayerSoul] if score @s uuid0 = @a[tag=proximaRevive_processing,limit=1] uuid0 if score @s uuid1 = @a[tag=proximaRevive_processing,limit=1] uuid1 if score @s uuid2 = @a[tag=proximaRevive_processing,limit=1] uuid2 if score @s uuid3 = @a[tag=proximaRevive_processing,limit=1] uuid3 run tag @s add proximaRevive_match
execute unless entity @e[tag=proximaRevive_match] run tag @a[tag=proximaRevive_processing] add proximaRevive_toRevive
tag @a[tag=proximaRevive_p] remove proximaRevive_processing
tag @e remove proximaRevive_match


execute if entity @a[tag=!proximaRevive_p] unless entity @a[tag=proximaRevive_toRevive] run function pot:boss/proxima/die/test_revive


execute as @a[tag=proximaRevive_toRevive] at @s run function pot:boss/proxima/die/revive

tag @a remove proximaRevive_p
tag @a remove proximaRevive_toRevive