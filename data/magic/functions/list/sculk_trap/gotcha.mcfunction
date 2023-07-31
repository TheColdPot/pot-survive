effect give @s slowness
execute at @s facing entity @e[tag=magic.sculkTrap.marker,limit=1,sort=nearest] eyes summon marker run function magic:list/sculk_trap/gotcha_marker
