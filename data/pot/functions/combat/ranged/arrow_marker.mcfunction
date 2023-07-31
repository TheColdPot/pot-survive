execute on vehicle on passengers run tag @s add combat.ridingArrow
execute if entity @s[tag=!combat.ridingArrow] run function pot:combat/ranged/arrow_updated
tag @s remove combat.ridingArrow
# say huh