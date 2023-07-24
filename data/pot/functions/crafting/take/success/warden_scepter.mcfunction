clear @s #pot:ui{PotAttr:{id:"warden_artifact"}} 48
clear @s diamond 32
clear @s amethyst_shard 64
execute at @s run loot spawn ~ ~1 ~ loot pot:weapon/melee/warden_scepter
execute at @s run playsound minecraft:entity.item.pickup block @s