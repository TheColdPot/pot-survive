
function pot:boss/proxima/dialogs/all_pillars_down
data merge entity @e[tag=proxima,limit=1] {NoAI:0b}
kill @e[tag=proximaPowerVeil]
title @a subtitle {"text":"⚠ PROXIMA IS ENRAGED ⚠","color":"red"}
title @a title ""
scoreboard players set proximaPhase genericScore 3
