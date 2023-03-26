execute store result score @s combat.damage run data get entity @s SelectedItem.tag.PotAttr.stat.damage
scoreboard players add @s combat.damage 5
execute store result score @s combat.strength run data get entity @s SelectedItem.tag.PotAttr.stat.strength
execute store result score @s combat._armorStat run data get entity @s Inventory[{Slot:103b}].tag.PotAttr.stat.strength
scoreboard players operation @s combat.strength += @s combat._armorStat
execute store result score @s combat._armorStat run data get entity @s Inventory[{Slot:102b}].tag.PotAttr.stat.strength
scoreboard players operation @s combat.strength += @s combat._armorStat
execute store result score @s combat._armorStat run data get entity @s Inventory[{Slot:101b}].tag.PotAttr.stat.strength
scoreboard players operation @s combat.strength += @s combat._armorStat
execute store result score @s combat._armorStat run data get entity @s Inventory[{Slot:100b}].tag.PotAttr.stat.strength
scoreboard players operation @s combat.strength += @s combat._armorStat
scoreboard players operation @s combat._finalDmg = @s combat.damage
scoreboard players operation @s combat._finalDmg *= @s combat.strength
scoreboard players operation @s combat._finalDmg /= 100 constant
scoreboard players operation @s combat._finalDmg += @s combat.damage

