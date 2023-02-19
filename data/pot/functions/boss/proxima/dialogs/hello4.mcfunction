# Greeting
tellraw @a ["",{"text":"PROXIMA","color":"red","bold":true},": ", "你脚下的土地，是先前无数闯入者化成的灰烬……"]
execute as @a at @s run playsound entity.wither.ambient hostile @s
