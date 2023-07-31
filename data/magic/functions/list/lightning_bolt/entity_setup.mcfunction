# scoreboard players set @s magic.damagePower 40
# scoreboard players add @p magic.phaseCount 1
# scoreboard players operation @s magic.damagePower *= @p magic.intelligence
# scoreboard players operation @s magic.damagePower /= 100 magic.constants
# scoreboard players operation @s magic.damagePower /= 10 magic.constants
# scoreboard players operation @s magic.damagePower *= 3 magic.constants
# scoreboard players add @s magic.damagePower 40
# scoreboard players operation @s magic.damagePower *= @p magic.phaseCount
# scoreboard players operation @s magic.damagePower /= 2 magic.constants
# scoreboard players operation @s magic.damagePower *= @p magic._magicDamage
# scoreboard players operation @s magic.damagePower /= 100 magic.constants

scoreboard players set @s magic._baseDamage 50
scoreboard players set @s magic._abilityScaling 3
function magic:calculate_magic_damage