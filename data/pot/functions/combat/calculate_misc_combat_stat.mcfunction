scoreboard players set @s combat.ferocity 0
scoreboard players set @s combat._armorStat 0
execute if entity @s[nbt={SelectedItem:{tag:{PotAttr:{statSlot:["mainhand"]}}}}] store result score @s combat._armorStat run data get entity @s SelectedItem.tag.PotAttr.stat.ferocity
scoreboard players operation @s combat.ferocity += @s combat._armorStat
execute store result score @s combat._armorStat run data get entity @s Inventory[{Slot:103b}].tag.PotAttr.stat.ferocity
scoreboard players operation @s combat.ferocity += @s combat._armorStat
execute store result score @s combat._armorStat run data get entity @s Inventory[{Slot:102b}].tag.PotAttr.stat.ferocity
scoreboard players operation @s combat.ferocity += @s combat._armorStat
execute store result score @s combat._armorStat run data get entity @s Inventory[{Slot:101b}].tag.PotAttr.stat.ferocity
scoreboard players operation @s combat.ferocity += @s combat._armorStat
execute store result score @s combat._armorStat run data get entity @s Inventory[{Slot:100b}].tag.PotAttr.stat.ferocity
scoreboard players operation @s combat.ferocity += @s combat._armorStat
scoreboard players operation @s combat.ferocity < 500 constant

scoreboard players set @s combat.critChance 0
scoreboard players set @s combat._armorStat 0
execute if entity @s[nbt={SelectedItem:{tag:{PotAttr:{statSlot:["mainhand"]}}}}] store result score @s combat._armorStat run data get entity @s SelectedItem.tag.PotAttr.stat.critChance
scoreboard players operation @s combat.critChance += @s combat._armorStat
execute store result score @s combat._armorStat run data get entity @s Inventory[{Slot:103b}].tag.PotAttr.stat.critChance
scoreboard players operation @s combat.critChance += @s combat._armorStat
execute store result score @s combat._armorStat run data get entity @s Inventory[{Slot:102b}].tag.PotAttr.stat.critChance
scoreboard players operation @s combat.critChance += @s combat._armorStat
execute store result score @s combat._armorStat run data get entity @s Inventory[{Slot:101b}].tag.PotAttr.stat.critChance
scoreboard players operation @s combat.critChance += @s combat._armorStat
execute store result score @s combat._armorStat run data get entity @s Inventory[{Slot:100b}].tag.PotAttr.stat.critChance
scoreboard players operation @s combat.critChance += @s combat._armorStat
scoreboard players operation @s combat.critChance < 100 constant

scoreboard players set @s combat.critDamage 0
scoreboard players set @s combat._armorStat 0
execute if entity @s[nbt={SelectedItem:{tag:{PotAttr:{statSlot:["mainhand"]}}}}] store result score @s combat._armorStat run data get entity @s SelectedItem.tag.PotAttr.stat.critDamage
scoreboard players operation @s combat.critDamage += @s combat._armorStat
execute store result score @s combat._armorStat run data get entity @s Inventory[{Slot:103b}].tag.PotAttr.stat.critDamage
scoreboard players operation @s combat.critDamage += @s combat._armorStat
execute store result score @s combat._armorStat run data get entity @s Inventory[{Slot:102b}].tag.PotAttr.stat.critDamage
scoreboard players operation @s combat.critDamage += @s combat._armorStat
execute store result score @s combat._armorStat run data get entity @s Inventory[{Slot:101b}].tag.PotAttr.stat.critDamage
scoreboard players operation @s combat.critDamage += @s combat._armorStat
execute store result score @s combat._armorStat run data get entity @s Inventory[{Slot:100b}].tag.PotAttr.stat.critDamage
scoreboard players operation @s combat.critDamage += @s combat._armorStat

scoreboard players set @s combat.attackSpeed 0

execute if entity @s[nbt={SelectedItem:{tag:{PotAttr:{statSlot:["mainhand"]}}}}] store result score @s combat.attackSpeed run data get entity @s SelectedItem.tag.PotAttr.stat.attackSpeed