scoreboard players set @s combat.maxHealth 100
execute store result score @s combat._armorStat run data get entity @s SelectedItem.tag.PotAttr.stat.health
scoreboard players operation @s combat.maxHealth += @s combat._armorStat
execute store result score @s combat._armorStat run data get entity @s Inventory[{Slot:103b}].tag.PotAttr.stat.health
scoreboard players operation @s combat.maxHealth += @s combat._armorStat
execute store result score @s combat._armorStat run data get entity @s Inventory[{Slot:102b}].tag.PotAttr.stat.health
scoreboard players operation @s combat.maxHealth += @s combat._armorStat
execute store result score @s combat._armorStat run data get entity @s Inventory[{Slot:101b}].tag.PotAttr.stat.health
scoreboard players operation @s combat.maxHealth += @s combat._armorStat
execute store result score @s combat._armorStat run data get entity @s Inventory[{Slot:100b}].tag.PotAttr.stat.health
scoreboard players operation @s combat.maxHealth += @s combat._armorStat

scoreboard players set @s combat.defense 0
execute store result score @s combat._armorStat run data get entity @s SelectedItem.tag.PotAttr.stat.defense
scoreboard players operation @s combat.defense += @s combat._armorStat
execute store result score @s combat._armorStat run data get entity @s Inventory[{Slot:103b}].tag.PotAttr.stat.defense
scoreboard players operation @s combat.defense += @s combat._armorStat
execute store result score @s combat._armorStat run data get entity @s Inventory[{Slot:102b}].tag.PotAttr.stat.defense
scoreboard players operation @s combat.defense += @s combat._armorStat
execute store result score @s combat._armorStat run data get entity @s Inventory[{Slot:101b}].tag.PotAttr.stat.defense
scoreboard players operation @s combat.defense += @s combat._armorStat
execute store result score @s combat._armorStat run data get entity @s Inventory[{Slot:100b}].tag.PotAttr.stat.defense
scoreboard players operation @s combat.defense += @s combat._armorStat
scoreboard players operation @s combat._defense = @s combat.defense
scoreboard players add @s combat._defense 100
