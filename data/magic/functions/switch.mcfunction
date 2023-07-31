
title @a times 0 15 0
execute unless score @s magic.Select matches 1.. run title @s title [" "]
execute unless score @s magic.Phase matches 1.. run title @s subtitle [{"text":"[","color":"dark_gray"},{"nbt":"SelectedItem.tag.staff_Key[].Key1","entity":"@s","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":" [","color":"dark_gray"},{"nbt":"SelectedItem.tag.staff_Key[].Key2","entity":"@s","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":" [","color":"dark_gray"},{"nbt":"SelectedItem.tag.staff_Key[].Key3","entity":"@s","color":"gold"},{"text":"]","color":"dark_gray"}]

#remove data
execute unless data entity @s SelectedItem.tag.staff_Key run function magic:execute_q
