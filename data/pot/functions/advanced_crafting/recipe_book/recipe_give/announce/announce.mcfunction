function pot:advanced_crafting/recipe_book/recipe_give/announce/first_time
execute as @s at @s run playsound minecraft:ui.loom.take_result player @s
title @s subtitle {"text":"在高级工作台中查看你的配方书！","color":"green"}
title @s title {"text":"新配方解锁！","color":"green"}