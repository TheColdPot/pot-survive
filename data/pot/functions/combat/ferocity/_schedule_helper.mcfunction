scoreboard players operation @s combat._ferocityCC = @e[type=!text_display,sort=nearest,limit=1] combat._ferocityCC
scoreboard players operation @s combat._ferocityCD = @e[type=!text_display,sort=nearest,limit=1] combat._ferocityCD
scoreboard players operation @s combat._ferocityAttacks = @e[type=!text_display,sort=nearest,limit=1] combat._ferocityAttacks
scoreboard players operation @s combat._ferocityDamage = @e[type=!text_display,sort=nearest,limit=1] combat._ferocityDamage
scoreboard players operation @s combat.ferocityId = @e[type=!text_display,sort=nearest,limit=1] combat.ferocityId
data modify entity @s text set value '["execute if data storage pot:main ferocity[{target:",{"score":{"name":"@s","objective":"combat.ferocityId"}},",damage:",{"score":{"name":"@s","objective":"combat._ferocityDamage"}},",cc:",{"score":{"name":"@s","objective":"combat._ferocityCC"}},",cd:",{"score":{"name":"@s","objecitve":"combat._ferocityCD"}},",attacks:",,{"score":{"name":"@s","objecitve":"combat._ferocityAttacks"}},"}]"]'
# YOU SON OF A B1TCH
# /ENCHANT WORKS ON NON-PLAYER ENTITIES!!!
setblock ~ -64 ~ command_block{Command:"enchant @e[dy=384,sort=nearest,limit=1] aqua_affinity",auto:1b} replace

setblock ~ -64 ~ command_block{Command:'',auto:0b} replace

setblock ~ -64 ~ bedrock
kill @s