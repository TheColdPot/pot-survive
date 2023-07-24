clear @s #pot:ui{PotAttr:{id:"42_artifact"}} 42
clear @s #pot:ui{PotAttr:{id:"refined_iron"}} 128
clear @s #pot:ui{PotAttr:{id:"refined_gold"}} 128
clear @s #pot:ui{PotAttr:{id:"refined_diamond"}} 64
clear @s #pot:ui{PotAttr:{id:"life_answer"}} 1
clear @s #pot:ui{PotAttr:{id:"universe_answer"}} 1
clear @s #pot:ui{PotAttr:{id:"force_stimulator"}} 42
execute at @s run loot spawn ~ ~1 ~ loot pot:weapon/melee/final_answer
execute at @s run playsound minecraft:entity.item.pickup block @s