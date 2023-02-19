function pot:boss/proxima/effects/tick_effects

execute at @e[tag=proximaPillarDamageRecieverBase] positioned ~ 10.5 ~ if entity @a[distance=..8] facing entity @p eyes rotated ~ 0 run tp @e[tag=proximaPillarHealthIndicator,sort=nearest,limit=1] ^ ^ ^2.25
execute at @e[tag=proximaPillarDamageRecieverBase] positioned ~ 10.5 ~ unless entity @a[distance=..8] run tp @e[tag=proximaPillarHealthIndicator,sort=nearest,limit=1] ~ ~ ~2.25

scoreboard players add @e[tag=pillarProtector,predicate=pot:chance/hit_pillar_soul_rise] genericScore2 1
execute as @e[tag=pillarProtector,scores={genericScore2=200}] run data merge entity @s {Invulnerable:1b,Silent:1b}
execute as @e[tag=pillarProtector,scores={genericScore2=200..}] at @s run tp @s ~ ~-0.1 ~
kill @e[tag=pillarProtector,scores={genericScore2=230..}]

# execute as @e[type=item,nbt={Item:{tag:{potAttr:"_proximaPlayerRevive"}}}] at @s run gamemode adventure @r
# execute as @e[type=item,nbt={Item:{tag:{potAttr:"_proximaPlayerRevive"}}}] at @s run tellraw @a [{"selector":"@p","color":"yellow"}, {"text":" 已复活！"}]
# execute as @e[type=item,nbt={Item:{tag:{potAttr:"_proximaPlayerRevive"}}}] at @s run tp @p 0 12 28 -180 0
# kill @e[type=item,nbt={Item:{tag:{potAttr:"_proximaPlayerRevive"}}}]

execute as @a[scores={trigger.proximaDeath=1..}] run function pot:boss/proxima/events/player_die
execute as @a[scores={trigger.proximaDeath=1..}] run scoreboard players set @s trigger.proximaDeath 0

scoreboard players add _deathLockPosTimer genericScore 1
execute if score _deathLockPosTimer genericScore matches 20.. as @a[tag=proximaFightDeath] at @s run function pot:boss/proxima/die/lock_pos
execute as @a[tag=proximaFightDeath] at @s at @a[tag=!proximaFightDeath,distance=0.01..100] facing entity @s feet run particle minecraft:dust 0 0 0 1 ^ ^1.28 ^0.9 0.42 0.8 0.42 0 300 force @s
execute if score _deathLockPosTimer genericScore matches 20.. run scoreboard players set _deathLockPosTimer genericScore 0


# 我整个魔法攻击（类似远古守卫者）
execute unless entity @a[tag=!proximaFightDeath] run function pot:boss/proxima/die/all_died

execute if entity @e[tag=proxima] run scoreboard players add proxima_eventTimer1 genericScore 1
execute if score proxima_eventTimer1 genericScore matches 500 run function pot:boss/proxima/events/magic_far_attack/apply_attack
execute if score proxima_eventTimer1 genericScore matches 420 unless score proxima_laserFirstAnnounced genericScore matches 1 run tellraw @a ["", {"text":">>>>>> TIP! ","color":"yellow","bold":true}, "\n", "地面出现圆圈表示激光柱正在充能。你需要在充能完毕前进入圆圈。充能完毕后后激光柱将对在圆圈外的玩家造成6点伤害，圆圈随即消失。"]
execute if score proxima_eventTimer1 genericScore matches 420 unless score proxima_laserFirstAnnounced genericScore matches 1 run scoreboard players set proxima_laserFirstAnnounced genericScore 1
# execute if score proxima_eventTimer1 genericScore matches 450 run title @a title {"text":"站在圈内！","color":"red"}
# execute if score proxima_eventTimer1 genericScore matches 455 run title @a actionbar [{"text":"■","color":"#265a6c"},{"text":"■■■■■■■■","color":"dark_gray"}]
# execute if score proxima_eventTimer1 genericScore matches 460 run title @a actionbar [{"text":"■■","color":"#265a6c"},{"text":"■■■■■■■","color":"dark_gray"}]
# execute if score proxima_eventTimer1 genericScore matches 465 run title @a actionbar [{"text":"■■■","color":"#265a6c"},{"text":"■■■■■■","color":"dark_gray"}]
# execute if score proxima_eventTimer1 genericScore matches 470 run title @a actionbar [{"text":"■■■■","color":"#265a6c"},{"text":"■■■■■","color":"dark_gray"}]
# execute if score proxima_eventTimer1 genericScore matches 475 run title @a actionbar [{"text":"■■■■■","color":"#265a6c"},{"text":"■■■■","color":"dark_gray"}]
# execute if score proxima_eventTimer1 genericScore matches 480 run title @a actionbar [{"text":"■■■■■■","color":"#265a6c"},{"text":"■■■","color":"dark_gray"}]
# execute if score proxima_eventTimer1 genericScore matches 485 run title @a actionbar [{"text":"■■■■■■■","color":"#265a6c"},{"text":"■■","color":"dark_gray"}]
# execute if score proxima_eventTimer1 genericScore matches 490 run title @a actionbar [{"text":"■■■■■■■■","color":"#265a6c"},{"text":"■","color":"dark_gray"}]
# execute if score proxima_eventTimer1 genericScore matches 495 run title @a actionbar [{"text":"■■■■■■■■■","color":"#265a6c"},{"text":"","color":"dark_gray"}]
execute if score proxima_eventTimer1 genericScore matches 420 as @a at @s run playsound entity.elder_guardian.curse hostile @s ~ ~ ~ .7 1.8
execute if score proxima_eventTimer1 genericScore matches 420..470 run function pot:boss/proxima/events/magic_far_attack/safe_circle_pre
execute if score proxima_eventTimer1 genericScore matches 470..485 run function pot:boss/proxima/events/magic_far_attack/safe_circle
execute if score proxima_eventTimer1 genericScore matches 501.. run scoreboard players set proxima_eventTimer1 genericScore 0



# to reset
execute unless entity @e[tag=proxima] run function pot:boss/proxima/reset_scoreboard

# execute as @e[type=end_crystal,tag=proxima_noPillarCrystal] at @s if block ~ ~-1 ~ air run tp ~ ~-.1 ~
