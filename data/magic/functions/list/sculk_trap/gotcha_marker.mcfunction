execute facing entity @e[tag=magic.sculkTrap.marker,limit=1,sort=nearest] eyes run tp @s ^ ^ ^-3 ~ ~
execute at @s positioned ^ ^ ^3 run damage @e[sort=nearest,limit=1,type=!marker] 0.1 generic by @s

kill @s
# say :/