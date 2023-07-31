
execute if score @s magic.Select matches 2000..3000 if score @s magic.Phase matches 3.. run title @s subtitle {"text":"sᴘᴇʟʟ ɪɴᴛᴇʀʀᴜᴘᴛᴇᴅ","color":"red","bold":true}
# execute if score @s magic.Select matches 2000..3000 run function magic:remove_data
execute if score @s magic.Select matches 1000..3000 if score @s magic.Phase matches 1 run function magic:notice_not_enough_mana
execute if score @s magic.Select matches 1000..2000 if score @s magic.Phase matches 1 at @s run playsound entity.enderman.teleport player @s ~ ~ ~ 2 0.5
execute if score @s magic.Select matches 1000..3000 if score @s magic.Phase matches 1 run tag @s add magic.prevent
execute if score @s magic.Select matches 1000..2000 if score @s magic.Phase matches 3.. run title @s subtitle {"text":"ᴄᴀsᴛ ɪɴᴛᴇʀʀᴜᴘᴛᴇᴅ","color":"yellow","bold":true}
execute if score @s magic.Select matches 1000..3000 run tag @s add magic.stopCast
# this way mana won't keep decreasing
execute if score @s magic.Select matches 1000..3000 if score @s magic.Phase matches 1 run scoreboard players add @s magic.Phase 1
execute if score @s magic.Select matches 1000..2000 unless score @s magic.Phase matches 1..2 run scoreboard players remove @s magic.Phase 1


