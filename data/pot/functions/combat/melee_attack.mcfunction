# advancement revoke @s only pot:combat/trigger_melee
function pot:combat/calculate_damage
scoreboard players operation @s combat.melee = @s combat._finalDmg
# execute at @s as @e[nbt={HurtTime:1s},limit=1,sort=nearest] run scoreboard players operation @s combat.health -= @p combat.melee
# execute as @e[nbt={HurtTime:1s},limit=1,sort=nearest] at @s positioned ~ ~1 ~ on attacker run function pot:combat/display_damage_amount

# say 1