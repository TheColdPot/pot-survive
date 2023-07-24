
execute align xyz unless block ^ ^ ^1 #magic:air run kill @s
execute if score @s magic.Time matches 31.. run kill @s

execute if entity @s[tag=Fire.Level.1] run particle dust 21000000 6000000 0 0.4 ^ ^ ^ 0.1 0.1 0.1 0 500 force
execute if entity @s[tag=Fire.Level.2] run particle dust 21000000 6000000 0 0.4 ^ ^ ^ 0.15 0.15 0.15 0 700 force
execute if entity @s[tag=Fire.Level.3] run particle dust 21000000 6000000 0 0.4 ^ ^ ^ 0.2 0.2 0.2 0 1000 force
execute if entity @s[tag=Fire.Level.4] run particle dust 21000000 6000000 0 0.4 ^ ^ ^ 0.25 0.25 0.25 0 1300 force
execute if entity @s[tag=Fire.Level.5] run particle dust 21000000 6000000 0 0.4 ^ ^ ^ 0.3 0.3 0.3 0 1500 force
execute if entity @s[tag=Fire.Level.6] run particle dust 21000000 6000000 0 0.4 ^ ^ ^ 0.35 0.35 0.35 0 1800 force

tp @s ^ ^ ^1


scoreboard players add @s magic.Time 1