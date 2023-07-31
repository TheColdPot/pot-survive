tag @s add magic.Matched
tag @a[tag=impact.Target,gamemode=creative] remove impact.Target
tag @a[tag=impact.Target,tag=magic.Shooter] remove impact.Target

scoreboard players operation @e[tag=impact.Target] magic.damageDealt = @s magic.damagePower

effect give @e[tag=impact.Target] minecraft:glowing 1 1 true

execute if entity @e[tag=impact.Target] as @a[tag=magic.Shooter] run damage @e[tag=impact.Target,limit=1] 0.1 minecraft:generic by @s

execute if entity @e[tag=impact.Target] as @a[tag=magic.Shooter] at @s if entity @e[tag=magic.Matched,distance=15..] run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 0.5 1



execute if entity @e[tag=impact.Target] run kill @s

tag @e remove impact.Target
tag @s remove magic.Matched

function magic:list/lightning_bolt/clear