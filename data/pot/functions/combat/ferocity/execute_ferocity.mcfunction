#no
# this is stupid、
# execute on attacker run tag @s add ferocity_attacker
# damage @s 0.01 minecraft:generic by @e[tag=ferocity_attacker,limit=1]


# execute at @s on attacker run damage @e[sort=nearest,limit=1] 0.01 minecraft:generic by @s

playsound minecraft:entity.player.hurt_sweet_berry_bush hostile @a ~ ~ ~ 5 0.87
execute on attacker run scoreboard players operation @e[sort=nearest,limit=1] combat.displayDamage = @s combat.ferocityDamage
execute on attacker run scoreboard players operation @e[sort=nearest,limit=1] combat.health -= @s combat.ferocityDamage
function pot:combat/display/display_ferocity_damage
execute at @s summon text_display run function pot:combat/nonplayer_health_interpreter

execute if score @s combat.health matches ..0 on attacker run damage @e[sort=nearest,limit=1] 0.01 minecraft:magic by @s
execute unless score @s combat.health matches ..0 on attacker run damage @e[sort=nearest,limit=1] 0.01 magic

summon armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Tags:[ferocityParticle]}
execute on attacker run tp @e[type=armor_stand,tag=ferocityParticle,limit=1] ~ ~1 ~ facing entity @s
execute as @e[tag=ferocityParticle] at @s run function pot:combat/ferocity/particle

scoreboard players remove @s combat.ferocityAttacks 1
execute if entity @s[scores={combat.health=..-1}] run kill @s

scoreboard players remove @s combat.ferocitySchedules 1
# execute if score @s combat.ferocityAttacks matches 0 if score @s combat.ferocitySchedules matches 1.. run function pot:combat/ferocity/apply_ferocity_schedule
