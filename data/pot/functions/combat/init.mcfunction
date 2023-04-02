execute store result score @s combat.maxHealth run data get entity @s Health 5
execute store result score @s combat.health run data get entity @s Health 5
execute store result score @s combat.damage run attribute @s generic.attack_damage get 5
execute store result score @s combat.melee run attribute @s generic.attack_damage get 5

execute if entity @s[type=enderman] store result score @s combat.maxHealth run data get entity @s Health 100
execute if entity @s[type=enderman] store result score @s combat.health run data get entity @s Health 100

execute if entity @s[type=piglin_brute] store result score @s combat.maxHealth run data get entity @s Health 200
execute if entity @s[type=piglin_brute] store result score @s combat.health run data get entity @s Health 200