tag @s add processing
gamemode spectator @s
# execute as @e[tag=proximaPlayerSoul] store success score @s genericScore run data modify entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Modifiers[{Name:"PlayerUUID"}].UUID set from entity @a[tag=processing,limit=1] UUID
# execute as @e[tag=proximaPlayerSoul] run data modify entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Modifiers[{Name:"PlayerUUID"}].UUID set from entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Modifiers[{Name:"PlayerUUIDBackup"}].UUID
execute as @e[tag=proximaPlayerSoul] if score @s uuid0 = @a[tag=processing,limit=1] uuid0 if score @s uuid1 = @a[tag=processing,limit=1] uuid1 if score @s uuid2 = @a[tag=processing,limit=1] uuid2 if score @s uuid3 = @a[tag=processing,limit=1] uuid3 run spectate @s @a[tag=processing,limit=1]

tag @s remove processing