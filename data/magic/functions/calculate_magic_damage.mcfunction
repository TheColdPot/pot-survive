scoreboard players add @p magic.phaseCount 1
scoreboard players operation @s magic.damagePower = @s magic._baseDamage
scoreboard players operation @s magic.damagePower *= @p magic.intelligence
scoreboard players operation @s magic.damagePower /= 100 magic.constants
scoreboard players operation @s magic.damagePower /= 10 magic.constants
scoreboard players operation @s magic.damagePower *= @s magic._abilityScaling
scoreboard players operation @s magic.damagePower += @s magic._baseDamage
scoreboard players operation @s magic.damagePower *= @p magic.phaseCount
scoreboard players operation @s magic.damagePower /= 2 magic.constants
scoreboard players operation @s magic.damagePower *= @p magic._magicDamage
scoreboard players operation @s magic.damagePower /= 100 magic.constants
scoreboard players remove @p magic.phaseCount 1
