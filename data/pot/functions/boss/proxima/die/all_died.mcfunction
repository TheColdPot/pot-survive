# gamemode adventure
gamemode adventure @a
tp @a 0 12 28 -180 0
gamemode spectator @a
# clear @a
title @a subtitle {"text":"所有玩家均已战死！","color":"red"}
title @a title {"text":"GAME OVER","color":"red","bold":true}
tag @a remove proximaFightDeath
data merge entity @e[tag=proxima,limit=1] {NoAI:1b}
schedule function pot:boss/proxima/die/execute_souls 2s append
  