execute at @s on attacker run scoreboard players add @s combat.ferocitySchedules 1
# execute at @s positioned ~ ~1 ~ summon text_display positioned ~ ~-1 ~ run function pot:combat/ferocity/_schedule_helper
summon text_display ~ ~ ~ {Tags:[ferocityScheduleHelper]}
scoreboard players operation @e[tag=ferocityScheduleHelper,sort=nearest,limit=1] combat._ferocityCC = @e[sort=nearest,limit=1] combat._ferocityCC
scoreboard players operation @e[tag=ferocityScheduleHelper,sort=nearest,limit=1] combat._ferocityCD = @e[sort=nearest,limit=1] combat._ferocityCC
scoreboard players operation @e[tag=ferocityScheduleHelper,sort=nearest,limit=1] combat._ferocityDamage = @e[sort=nearest,limit=1] combat._ferocityDamage
scoreboard players operation @e[tag=ferocityScheduleHelper,sort=nearest,limit=1] combat._ferocityAttacks = @e[sort=nearest,limit=1] combat._ferocityAttacks
data modify entity @s text set value '{"score":{"name":"@s","objective":"combat._ferocityCC"}}'

