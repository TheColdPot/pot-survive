summon wither ~ ~ ~ {Tags:[proxima],CustomName:'{"text":"PROXIMA","color":"red","bold":true}',CustomNameVisible:1b,DeathLootTable:"",Invul:200,Team:"proximaRelated",NoAI:true}
function pot:boss/proxima/effects/init_effects
scoreboard players set proximaPhase genericScore 1
scoreboard players set proxima_eventTimer1 genericScore 0
scoreboard players set proxima_laserFirstAnnounced genericScore 0
