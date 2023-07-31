
playsound minecraft:entity.lightning_bolt.impact player @a ~ ~ ~
kill @s 

execute unless entity @e[tag=magic.Lightning] run tag @e[tag=magic.Shooter] remove magic.Shooter