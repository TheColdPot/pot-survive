# I have to fight on my own
tellraw @a ["",{"text":"PROXIMA","color":"red","bold":true},": ", "我明白了，我会亲手把你烧成灰烬！"]
execute as @a at @s run playsound entity.wither.ambient hostile @s
