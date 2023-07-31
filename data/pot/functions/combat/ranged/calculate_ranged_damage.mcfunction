
execute summon armor_stand run function pot:combat/summon_crit_checker

scoreboard players operation @s combat.ranged = @s combat._finalDmg
execute if entity @s[tag=combat.applyCrit] run scoreboard players operation @s combat.ranged *= @s combat.critDamage
execute if entity @s[tag=combat.applyCrit] run scoreboard players operation @s combat.ranged /= 100 constant
execute if entity @s[tag=combat.applyCrit] run scoreboard players operation @s combat.ranged += @s combat._finalDmg


# tag @s remove combat.applyCrit
