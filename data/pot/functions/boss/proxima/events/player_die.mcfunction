function pot:boss/proxima/die/summon_soul
gamemode spectator
spectate @e[x=0,y=19,z=0,distance=..1,limit=1,type=zombie] @s
tag @s add proximaFightDeath
title @a subtitle [{"selector":"@s","color":"red"}, {"text":" 已成为灵魂！"}]
title @a title ""
function pot:boss/proxima/dialogs/mock_dying
