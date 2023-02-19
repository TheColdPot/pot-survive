execute if entity @s[tag=!recipeBookFirstAnnounced] run tellraw @s [{"text":"\n新的配方可在高级合成台中查看","color":"dark_purple"}]
tag @s add recipeBookFirstAnnounced
