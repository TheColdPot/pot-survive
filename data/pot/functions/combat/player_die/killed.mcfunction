scoreboard players operation @s combat.health = @s combat.maxHealth
execute on attacker run tellraw @a ["", {"text":"☠ ","color":"red"}, [{"selector":"@p","color":"gray"}, " died to ",{"selector":"@s"},"."]]
kill @s
