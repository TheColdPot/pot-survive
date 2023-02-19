summon marker ~ ~ ~ {CustomName:'"别再白费力气了，承认人类的弱小吧！"',Tags:[proximaDialog,proximaDialogMarker]}
summon marker ~ ~ ~ {CustomName:'"你们这群蝼蚁是不可能战胜我的！"',Tags:[proximaDialog,proximaDialogMarker]}
summon marker ~ ~ ~ {CustomName:'"我将永远是这片土的主宰！"',Tags:[proximaDialog,proximaDialogMarker]}
summon marker ~ ~ ~ {CustomName:'"我的柱子已经矗立了上万年，从未有人可以将他们全部推倒！"',Tags:[proximaDialog,proximaDialogMarker]}
summon marker ~ ~ ~ {CustomName:'"和之前的冒险者们也就一个水平嘛。"',Tags:[proximaDialog,proximaDialogMarker]}
summon marker ~ ~ ~ {CustomName:'"继续表演吧，我看着呢。"',Tags:[proximaDialog,proximaDialogMarker]}

# summon marker ~ ~ ~ {CustomName:'""',Tags:[proximaDialog,proximaDialogMarker]}
tag @e[type=marker,tag=proximaDialogMarker,limit=1,sort=random] add proximaDialogChosen
tellraw @a ["",{"text":"PROXIMA","color":"red","bold":true},": ", {"nbt":"CustomName","entity": "@e[type=marker,tag=proximaDialogMarker,tag=proximaDialogChosen,limit=1]","interpret": true}]
kill @e[type=marker,tag=proximaDialogMarker]
execute as @a at @s run playsound entity.wither.ambient hostile @s

