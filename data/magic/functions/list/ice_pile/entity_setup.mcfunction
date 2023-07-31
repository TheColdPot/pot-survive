scoreboard players operation @s magic.Time = @p magic.effectTimeDelta
scoreboard players remove @p magic.effectTimeDelta 3
tag @s add magic.icePile
tag @s add magic.icePile.locator
# scoreboard players set @s magic.damagePower 25
# scoreboard players add @p magic.phaseCount 1
# scoreboard players operation @s magic.damagePower *= @p magic.intelligence
# scoreboard players operation @s magic.damagePower /= 100 magic.constants
# scoreboard players operation @s magic.damagePower /= 10 magic.constants
# scoreboard players operation @s magic.damagePower *= 2 magic.constants
# scoreboard players add @s magic.damagePower 25
# scoreboard players operation @s magic.damagePower *= @p magic.phaseCount
# scoreboard players operation @s magic.damagePower /= 2 magic.constants
# scoreboard players operation @s magic.damagePower *= @p magic._magicDamage
# scoreboard players operation @s magic.damagePower /= 100 magic.constants
# scoreboard players remove @p magic.phaseCount 1
scoreboard players set @s magic._baseDamage 25
scoreboard players set @s magic._abilityScaling 2
function magic:calculate_magic_damage

execute store result score @s magic.target.uuid0 run data get entity @p UUID[0]
execute store result score @s magic.target.uuid1 run data get entity @p UUID[1]
execute store result score @s magic.target.uuid2 run data get entity @p UUID[2]
execute store result score @s magic.target.uuid3 run data get entity @p UUID[3]
# tellraw @a [{"selector":"@p"},"'s ice pile: ", {"score":{"name":"@s","objective": "magic.damagePower"}}]
tp @s ~ ~1.7 ~ ~ ~

# say 1