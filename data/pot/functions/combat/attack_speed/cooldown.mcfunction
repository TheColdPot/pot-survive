scoreboard players remove @a[scores={combat._cooldown=1..}] combat._cooldown 1

execute as @a[scores={combat._cooldown=0}] run attribute @s generic.attack_damage base set 1.0
scoreboard players reset @a[scores={combat._cooldown=0}] combat._cooldown

execute if entity @a[scores={combat._cooldown=0..}] run schedule function pot:combat/attack_speed/cooldown 1t