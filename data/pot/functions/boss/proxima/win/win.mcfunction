title @a subtitle {"text":"PROXIMA 被终结了！","color":"green"}
title @a title {"text":"VICTORY","color":"green","bold":true}
advancement revoke @s only pot:triggers/boss/win
function pot:boss/proxima/reset_light
schedule function pot:boss/proxima/dialogs/victory1 1s
schedule function pot:boss/proxima/dialogs/victory2 2.75s
schedule function pot:boss/proxima/dialogs/victory3 4.5s
schedule function pot:boss/proxima/dialogs/victory4 6.25s
# schedule function pot:boss/proxima/win/dig_hole_back 8s
effect clear @a
effect give @a instant_health 1 100 true
