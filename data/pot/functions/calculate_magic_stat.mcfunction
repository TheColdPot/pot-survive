scoreboard players set @s magic.intelligence 100
scoreboard players set @s combat._armorStat 0
execute if entity @s[nbt={SelectedItem:{tag:{PotAttr:{statSlot:["mainhand"]}}}}] store result score @s combat._armorStat run data get entity @s SelectedItem.tag.PotAttr.stat.intelligence
scoreboard players operation @s magic.intelligence += @s combat._armorStat
execute store result score @s combat._armorStat run data get entity @s Inventory[{Slot:103b}].tag.PotAttr.stat.intelligence
scoreboard players operation @s magic.intelligence += @s combat._armorStat
execute store result score @s combat._armorStat run data get entity @s Inventory[{Slot:102b}].tag.PotAttr.stat.intelligence
scoreboard players operation @s magic.intelligence += @s combat._armorStat
execute store result score @s combat._armorStat run data get entity @s Inventory[{Slot:101b}].tag.PotAttr.stat.intelligence
scoreboard players operation @s magic.intelligence += @s combat._armorStat
execute store result score @s combat._armorStat run data get entity @s Inventory[{Slot:100b}].tag.PotAttr.stat.intelligence
scoreboard players operation @s magic.intelligence += @s combat._armorStat
scoreboard players operation @s magic.mana < @s magic.intelligence

scoreboard players set @s magic.magicDamage 0
execute store result score @s combat._armorStat run data get entity @s Inventory[{Slot:103b}].tag.PotAttr.stat.magicDamage
scoreboard players operation @s magic.magicDamage += @s combat._armorStat
execute store result score @s combat._armorStat run data get entity @s Inventory[{Slot:102b}].tag.PotAttr.stat.magicDamage
scoreboard players operation @s magic.magicDamage += @s combat._armorStat
execute store result score @s combat._armorStat run data get entity @s Inventory[{Slot:101b}].tag.PotAttr.stat.magicDamage
scoreboard players operation @s magic.magicDamage += @s combat._armorStat
execute store result score @s combat._armorStat run data get entity @s Inventory[{Slot:100b}].tag.PotAttr.stat.magicDamage
scoreboard players operation @s magic.magicDamage > -100 constant
scoreboard players operation @s magic.magicDamage < 200 constant
scoreboard players operation @s magic.magicDamage += @s combat._armorStat
scoreboard players operation @s magic._magicDamage = @s magic.magicDamage
scoreboard players add @s magic._magicDamage 100


