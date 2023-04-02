attribute @s generic.attack_damage base set -99999999999.0

scoreboard players set @s combat._cooldown 10
function pot:combat/attack_speed/bonus
schedule function pot:combat/attack_speed/cooldown 1t
advancement revoke @s only pot:combat/attacked