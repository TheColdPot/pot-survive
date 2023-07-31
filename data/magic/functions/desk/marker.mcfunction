execute unless block ~ ~ ~ barrel run function magic:desk/uninstall
execute if block ~ ~ ~ barrel[open=true] run function magic:desk/marker_active
execute if block ~ ~ ~ barrel[open=true] if entity @s[tag=!magicDesk.open] run function magic:desk/activate
execute if block ~ ~ ~ barrel[open=false] if entity @s[tag=magicDesk.open] run function magic:desk/deactivate
execute if block ~ ~ ~ barrel[open=true] run tag @s add magicDesk.open
execute if block ~ ~ ~ barrel[open=false] run tag @s remove magicDesk.open
