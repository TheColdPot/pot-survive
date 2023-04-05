loot replace entity @s armor.feet loot pot:_random_provider/percentage
execute store result score @s combat.critChance run data get entity @s ArmorItems[0].tag.AttributeModifiers[{Name:"randomProvider"}].Amount 1
execute if score @s combat.critChance < @p combat.critChance run tag @p add combat.applyCrit
item replace entity @s armor.feet with air
kill
