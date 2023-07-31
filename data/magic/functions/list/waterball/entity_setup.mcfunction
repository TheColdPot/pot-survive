# scoreboard players set @s magic.damagePower 30
# scoreboard players add @p magic.phaseCount 1
# scoreboard players operation @s magic.damagePower *= @p magic.intelligence
# scoreboard players operation @s magic.damagePower /= 100 magic.constants
# scoreboard players operation @s magic.damagePower /= 10 magic.constants
# scoreboard players operation @s magic.damagePower *= @s magic._abilityScaling
# scoreboard players add @s magic.damagePower 10
# scoreboard players operation @s magic.damagePower *= @p magic.phaseCount
# scoreboard players operation @s magic.damagePower /= 2 magic.constants
# scoreboard players operation @s magic.damagePower *= @p magic._magicDamage
# scoreboard players operation @s magic.damagePower /= 100 magic.constants

scoreboard players set @s magic._baseDamage 30
scoreboard players set @s magic._abilityScaling 1
function magic:calculate_magic_damage