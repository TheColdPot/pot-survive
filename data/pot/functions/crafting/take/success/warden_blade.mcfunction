clear @s #pot:ui{PotAttr:{id:"warden_heart"}} 12
clear @s #pot:ui{PotAttr:{id:"warden_scepter"}} 1
execute at @s run loot spawn ~ ~1 ~ loot pot:weapon/melee/warden_blade
execute at @s run playsound minecraft:entity.item.pickup block @s