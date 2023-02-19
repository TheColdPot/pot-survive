execute at @e[tag=proxima,limit=1] positioned ~ ~-2 ~ facing entity @a[x=0,y=9,z=0,distance=..21,sort=random,limit=1] eyes positioned 0 0 0 align xyz run summon marker ^ ^ ^0.35 {Tags:[proximaFireballHelper]}
execute if entity @a[x=0,y=9,z=0,distance=..21] at @e[tag=proxima,limit=1] positioned ~ ~-2 ~ run summon fireball ~ ~ ~ {Tags:[proximaFireball,justSummoned],ExplosionPower:3,HasVisualFire:false}
execute as @e[tag=proximaFireball,tag=justSummoned] run data modify entity @s power set from entity @e[tag=proximaFireballHelper,limit=1] Pos

kill @e[tag=proximaFireballHelper] 
tag @e[tag=proximaFireball,tag=justSummoned] remove justSummoned

