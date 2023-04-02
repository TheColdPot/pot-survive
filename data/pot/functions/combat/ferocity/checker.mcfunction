loot replace entity @s armor.feet loot pot:_random_provider/percentage
execute store result score @s combat._ferocity run data get entity @s ArmorItems[0].tag.AttributeModifiers[{Name:"randomProvider"}].Amount 1
execute if score @s combat._ferocity < @p combat._ferocity run scoreboard players add @p combat.ferocityAttacks 1
item replace entity @s armor.feet with air
kill @s
