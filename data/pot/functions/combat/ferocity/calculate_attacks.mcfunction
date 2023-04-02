# execute if score @s combat._ferocity matches ..0 unless score @s combat.ferocity matches ..0 run function pot:combat/ferocity/execute_ferocity
# execute if score @s combat._ferocity matches 100.. run scoreboard players add @s combat.ferocityAttacks 1
scoreboard players operation @s combat._ferocity = @s combat.ferocity
scoreboard players operation @s combat._ferocity /= 100 constant
scoreboard players operation @s combat.ferocityAttacks = @s combat._ferocity
scoreboard players operation @s combat._ferocity = @s combat.ferocity
scoreboard players operation @s combat._ferocity %= 100 constant
execute at @s summon armor_stand run function pot:combat/ferocity/checker
execute if score @s combat.ferocityAttacks matches 1.. run scoreboard players operation @s combat.ferocityDamage = @s combat.melee

# say NOW IM CALC'ING ATTACK DAMAGE!
