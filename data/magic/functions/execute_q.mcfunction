summon armor_stand ~ ~ ~ {Tags:[ReturnEntity],Invisible:1b}
data modify entity @e[type=armor_stand,tag=ReturnEntity,limit=1] HandItems[0] set from entity @e[type=item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{staff_Key:[{}]}}},limit=1] Item
data remove entity @e[type=armor_stand,tag=ReturnEntity,limit=1] HandItems[0].tag.staff_Key

item replace entity @s weapon.offhand with air
kill @e[type=item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",tag:{staff_Key:[{}]}}}]

item replace entity @s weapon.mainhand from entity @e[type=armor_stand,tag=ReturnEntity,limit=1] weapon.mainhand
kill @e[type=armor_stand,tag=ReturnEntity]

scoreboard players reset @s staff.Key1
scoreboard players reset @s staff.Key2
scoreboard players reset @s staff.Key3

scoreboard players reset @s magic.Select
scoreboard players reset @s magic.Cast
scoreboard players reset @s magic.Phase
tag @s remove magic.Casting

playsound minecraft:entity.ender_eye.death player @s ~ ~ ~ 1 1.2 1

title @s title [" "]
title @s subtitle [{"text":"𝓢𝓹𝓮𝓵𝓵 𝓣𝓮𝓻𝓶𝓲𝓷𝓪𝓽𝓮𝓭","color":"#CA3DE3"}]
# title @s subtitle [{"text":"SPELL TERMINATED","color":"red"}]
