scoreboard players set @s combat.maxHealth 100
scoreboard players set @s combat._armorStat 0
execute if entity @s[nbt={SelectedItem:{tag:{PotAttr:{statSlot:["mainhand"]}}}}] store result score @s combat._armorStat run data get entity @s SelectedItem.tag.PotAttr.stat.health
scoreboard players operation @s combat.maxHealth += @s combat._armorStat
execute store result score @s combat._armorStat run data get entity @s Inventory[{Slot:103b}].tag.PotAttr.stat.health
scoreboard players operation @s combat.maxHealth += @s combat._armorStat
execute store result score @s combat._armorStat run data get entity @s Inventory[{Slot:102b}].tag.PotAttr.stat.health
scoreboard players operation @s combat.maxHealth += @s combat._armorStat
execute store result score @s combat._armorStat run data get entity @s Inventory[{Slot:101b}].tag.PotAttr.stat.health
scoreboard players operation @s combat.maxHealth += @s combat._armorStat
execute store result score @s combat._armorStat run data get entity @s Inventory[{Slot:100b}].tag.PotAttr.stat.health
scoreboard players operation @s combat.maxHealth += @s combat._armorStat
scoreboard players operation @s combat.health < @s combat.maxHealth


scoreboard players set @s combat.defense 0
scoreboard players set @s combat._armorStat 0
execute if entity @s[nbt={SelectedItem:{tag:{PotAttr:{statSlot:["mainhand"]}}}}] store result score @s combat._armorStat run data get entity @s SelectedItem.tag.PotAttr.stat.defense
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

scoreboard players set @s combat.critChance 25
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

scoreboard players set @s combat.critDamage 50
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

attribute @s generic.attack_speed modifier add 35c1c8db-1360-4385-977d-de7925468d46 "PERFECT!" 25 add

execute store result score @s combat.damage run data get entity @s SelectedItem.tag.PotAttr.stat.damage
scoreboard players add @s combat.damage 5
scoreboard players set @s combat.strength 0
execute if entity @s[nbt={SelectedItem:{tag:{PotAttr:{statSlot:["mainhand"]}}}}] store result score @s combat.strength run data get entity @s SelectedItem.tag.PotAttr.stat.strength
execute store result score @s combat._armorStat run data get entity @s Inventory[{Slot:103b}].tag.PotAttr.stat.strength
scoreboard players operation @s combat.strength += @s combat._armorStat
execute store result score @s combat._armorStat run data get entity @s Inventory[{Slot:102b}].tag.PotAttr.stat.strength
scoreboard players operation @s combat.strength += @s combat._armorStat
execute store result score @s combat._armorStat run data get entity @s Inventory[{Slot:101b}].tag.PotAttr.stat.strength
scoreboard players operation @s combat.strength += @s combat._armorStat
execute store result score @s combat._armorStat run data get entity @s Inventory[{Slot:100b}].tag.PotAttr.stat.strength
scoreboard players operation @s combat.strength += @s combat._armorStat

function pot:gear/stat_bonus


scoreboard players operation @s combat.ferocity < 500 constant
scoreboard players operation @s combat.critChance < 100 constant

function pot:combat/calculate_base_damage
