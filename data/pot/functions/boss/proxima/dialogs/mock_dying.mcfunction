summon marker ~ ~ ~ {CustomName:'"灵魂？真有趣。"',Tags:[proximaDialog,proximaDialogMarker]}
summon marker ~ ~ ~ {CustomName:'"哟，你死啦？"',Tags:[proximaDialog,proximaDialogMarker]}
summon marker ~ ~ ~ {CustomName:'"如此不堪一击的对手也敢挑战我？"',Tags:[proximaDialog,proximaDialogMarker]}
summon marker ~ ~ ~ {CustomName:'"这样的冒险者也想击败我？"',Tags:[proximaDialog,proximaDialogMarker]}
summon marker ~ ~ ~ {CustomName:'"安息吧，哈哈。"',Tags:[proximaDialog,proximaDialogMarker]}
# summon marker ~ ~ ~ {CustomName:'""',Tags:[proximaDialog,proximaDialogMarker]}
tag @e[type=marker,tag=proximaDialogMarker,limit=1,sort=random] add proximaDialogChosen
tellraw @a ["",{"text":"PROXIMA","color":"red","bold":true},": ", {"nbt":"CustomName","entity": "@e[type=marker,tag=proximaDialogMarker,tag=proximaDialogChosen,limit=1]","interpret": true}]
kill @e[type=marker,tag=proximaDialogMarker]
execute as @a at @s run playsound entity.wither.ambient hostile @s

