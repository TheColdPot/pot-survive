# summon lightning_bolt
summon wolf ~ ~ ~ {Tags:[transformWolf], Sitting: true, Invulnerable: true}
# summon cat ~ ~ ~ {Tags:[transformCat]}
execute as @e[type=wolf,limit=1,sort=nearest,tag=transformWolf] at @s run data modify entity @s Owner set from entity @a[tag=tamingBoneUser,limit=1,sort=nearest] UUID
execute as @e[type=wolf,limit=1,sort=nearest,tag=transformWolf] at @s run tp @s ~ ~ ~ facing entity @p
tp @s ~ -66 ~
kill @s
