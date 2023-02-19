advancement revoke @s only pot:triggers/taming_bone
tag @s add tamingBoneUser
execute as @e[type=!player,type=!wolf,distance=..5,type=!ender_dragon,type=!end_crystal,type=!item,type=!item_frame,type=!glow_item_frame,type=!wither,type=!painting,tag=!miniboss] at @s run function pot:tame/transform
tag @s remove tamingBoneUser
clear @s bone{potAttr:"tame"} 1
effect give @s weakness 10 9 true
effect give @s slowness 3 100 true
effect give @s jump_boost 3 250 true
effect give @s blindness 3 0 true
playsound block.glass.break player @s
tellraw @s ["",{"text":"SIDE EFFECT! ","color":"red", "bold":true},{"text":"You'll be unable to walk in 3s and unable to damage mobs in 10s!","color":"red"}]
