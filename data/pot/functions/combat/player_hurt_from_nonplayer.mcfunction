scoreboard players operation @p combat.displayDamage = @s combat.damage
scoreboard players operation @p combat.displayDamage *= 100 constant
scoreboard players operation @p combat.displayDamage /= @p combat._defense
scoreboard players operation @p combat.health -= @p combat.displayDamage
function pot:combat/display/display_damage
