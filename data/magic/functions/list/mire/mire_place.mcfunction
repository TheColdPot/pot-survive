data modify entity @s PortalCooldown set value 1

tag @s add switch.Target
#summon minecraft:armor_stand ^ ^-1 ^ {PortalCooldown:120,Tags:[magic.Mire,summon],ArmorItems:[{},{},{},{id:"minecraft:soul_sand",Count:1}],DisabledSlots:16191,Pose:{Head:[10.0f,10.0f,0.0f]}}
# execute align xyz run summon minecraft:block_display ~ ~-1 ~ {PortalCooldown:120,Tags:[magic.Mire,summon],block_state:{Name:"soul_sand"},transformation:{scale:[1.0f,1.0f,1.0f],left_rotation:{axis:[0.0f,0.0f,0.0f],angle:0.0f},right_rotation:{axis:[0.0f,0.0f,0.0f],angle:0.0f},translation:[-0.5f,0.0f,-0.5f]}}
execute positioned ^ ^ ^ align xyz summon block_display run function magic:list/mire/mire_place_display
execute positioned ^1 ^ ^ align xyz summon block_display run function magic:list/mire/mire_place_display
execute positioned ^-1 ^ ^ align xyz summon block_display run function magic:list/mire/mire_place_display

tag @s remove switch.Target
playsound minecraft:block.mud.fall player @a ~ ~ ~ 2 0.5 1
# data merge entity @e[tag=summon,limit=1] {transformation:{scale:[1.0f,1.0f,1.0f],left_rotation:{axis:[0.0f,0.0f,0.0f],angle:0.0f},right_rotation:{axis:[0.0f,0.0f,0.0f],angle:0.0f},translation:[-0.5f,1.0f,-0.5f]},start_interpolation:0,interpolation_duration:10}

#loot replace entity @s armor.feet loot magic:_random_provider/rotation
#execute as @s store result entity @e[tag=summon,limit=1] Pose.Head[0] float 1 run data get entity @s ArmorItems[0].tag.AttributeModifiers[{Name:"randomProvider"}].Amount
#execute as @s store result entity @e[tag=summon,limit=1] Pose.Head[1] float 1 run data get entity @s ArmorItems[0].tag.AttributeModifiers[{Name:"randomProvider"}].Amount
#item replace entity @s armor.feet with air

# tag @e[tag=summon] remove summon
