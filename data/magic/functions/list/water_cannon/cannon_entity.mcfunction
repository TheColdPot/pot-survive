
execute if score @s magic.Time matches 31.. run particle dust 0 9200000 24000000 2 ^ ^ ^ 4 4 4 0 400 force
execute if score @s magic.Time matches 31.. run particle dust 0 9200000 24000000 2 ^ ^ ^ 3 3 3 0 400 force

execute anchored eyes align xyz align xyz unless block ^ ^ ^2 air run particle dust 0 9200000 24000000 2 ^ ^ ^ 4 4 4 0 400 force
execute anchored eyes align xyz unless block ^ ^ ^2 air run particle dust 0 9200000 24000000 2 ^ ^ ^ 3 3 3 0 400 force


execute if score @s magic.Time matches 31.. run kill @s
execute align xyz unless block ^ ^ ^2 air run kill @s

particle dust 0 9200000 24000000 2 ^ ^ ^ 1 1 1 0 300 force
particle dust 0 9200000 24000000 2 ^ ^ ^ 0.6 0.6 0.6 0 200 force
particle dust 0 9200000 24000000 2 ^ ^ ^ 0.2 0.2 0.2 0 100 force
tp @s ^ ^ ^2

playsound minecraft:item.crossbow.shoot player @a ~ ~ ~ 2 0.5 1

scoreboard players add @s magic.Time 1