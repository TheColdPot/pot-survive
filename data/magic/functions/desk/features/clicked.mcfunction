
execute as @a store success score @s magic.desk.click run clear @s #magic:desk_item{magic:{sound:1b}} 0
execute at @a[scores={magic.desk.click=1..}] run playsound ui.button.click block @p ~ ~ ~
scoreboard players set @s magic.desk.click 0


execute store success score @s magic.desk.click run clear @a[distance=..8] book{magic:{feature:"magic_learn"}} 0
execute if score @s magic.desk.click matches 1.. run function magic:desk/pages/magic_study

execute as @a store success score @s magic.desk.click run clear @s book{magic:{feature:"magic_learn"}}
execute at @a[scores={magic.desk.click=1..}] run function magic:desk/player_match

execute as @a store success score @s magic.desk.click run clear @s book{magic:{feature:"magic_study",study_allow:0b}}
execute at @a[scores={magic.desk.click=1..}] run playsound minecraft:entity.enderman.teleport block @p ~ ~ ~ 1 2 1


execute as @a store success score @s magic.desk.click run clear @s book{magic:{feature:"magic_study",study_allow:1b}}
execute at @a[scores={magic.desk.click=1..}] run function magic:desk/study/start/trigger

execute as @a store success score @s magic.desk.click run clear @s #magic:desk_item{magic:{sound:1b}} 0
execute unless score @s magic.desk.click matches 1.. if data entity @s {data:{routeFeature:{"name":"study"}}} unless data entity @s {data:{_unmodified:[{Slot:4b}]}} run function magic:desk/pages/magic_study
execute unless score @s magic.desk.click matches 1.. if data entity @s {data:{_unmodified:[{Slot:4b}],routeFeature:{"name":"study"}}} run function magic:desk/study/tip/trigger

# say 🤓👆 中国人认为宇宙万法的这么一个源头他是什么
# execute if data entity @s {data:{routeFeature:{"name":"study"}}} run say 他是如如
execute if data entity @s {data:{routeFeature:{"name":"study"}}} run function magic:desk/item_returning/check_lesser
# execute unless data entity @s {data:{routeFeature:{"name":"study"}}} run say 所以这个词儿叫如来
execute unless data entity @s {data:{routeFeature:{"name":"study"}}} run function magic:desk/item_returning/check

