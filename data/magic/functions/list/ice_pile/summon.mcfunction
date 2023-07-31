title @s title ""
title @s subtitle ""

# effect give @s levitation 1 10 true
# scoreboard players set @s magic.
scoreboard players set @a magic.effectTimeDelta 0
execute if score @s magic.Phase matches ..10 at @s rotated ~ 0 positioned ~ ~ ~ summon marker run function magic:list/ice_pile/entity_setup

execute if score @s magic.Phase matches 11..20 at @s rotated ~-10 0 positioned ~ ~ ~ summon marker run function magic:list/ice_pile/entity_setup
execute if score @s magic.Phase matches 11..20 at @s rotated ~10 0 positioned ~ ~ ~ summon marker run function magic:list/ice_pile/entity_setup

execute if score @s magic.Phase matches 21..30 at @s rotated ~-30 0 positioned ~ ~ ~ summon marker run function magic:list/ice_pile/entity_setup
execute if score @s magic.Phase matches 21..30 at @s rotated ~ 0 positioned ~ ~ ~ summon marker run function magic:list/ice_pile/entity_setup
execute if score @s magic.Phase matches 21..30 at @s rotated ~30 0 positioned ~ ~ ~ summon marker run function magic:list/ice_pile/entity_setup

execute if score @s magic.Phase matches 31..40 at @s rotated ~-40 0 positioned ~ ~ ~ summon marker run function magic:list/ice_pile/entity_setup
execute if score @s magic.Phase matches 31..40 at @s rotated ~-10 0 positioned ~ ~ ~ summon marker run function magic:list/ice_pile/entity_setup
execute if score @s magic.Phase matches 31..40 at @s rotated ~10 0 positioned ~ ~ ~ summon marker run function magic:list/ice_pile/entity_setup
execute if score @s magic.Phase matches 31..40 at @s rotated ~40 0 positioned ~ ~ ~ summon marker run function magic:list/ice_pile/entity_setup

execute if score @s magic.Phase matches 41..50 at @s rotated ~-60 0 positioned ~ ~ ~ summon marker run function magic:list/ice_pile/entity_setup
execute if score @s magic.Phase matches 41..50 at @s rotated ~-30 0 positioned ~ ~ ~ summon marker run function magic:list/ice_pile/entity_setup
execute if score @s magic.Phase matches 41..50 at @s rotated ~ 0 positioned ~ ~ ~ summon marker run function magic:list/ice_pile/entity_setup
execute if score @s magic.Phase matches 41..50 at @s rotated ~30 0 positioned ~ ~ ~ summon marker run function magic:list/ice_pile/entity_setup
execute if score @s magic.Phase matches 41..50 at @s rotated ~60 0 positioned ~ ~ ~ summon marker run function magic:list/ice_pile/entity_setup

execute if score @s magic.Phase matches 51.. at @s rotated ~-70 0 positioned ~ ~ ~ summon marker run function magic:list/ice_pile/entity_setup
execute if score @s magic.Phase matches 51.. at @s rotated ~-40 0 positioned ~ ~ ~ summon marker run function magic:list/ice_pile/entity_setup
execute if score @s magic.Phase matches 51.. at @s rotated ~-10 0 positioned ~ ~ ~ summon marker run function magic:list/ice_pile/entity_setup
execute if score @s magic.Phase matches 51.. at @s rotated ~10 0 positioned ~ ~ ~ summon marker run function magic:list/ice_pile/entity_setup
execute if score @s magic.Phase matches 51.. at @s rotated ~40 0 positioned ~ ~ ~ summon marker run function magic:list/ice_pile/entity_setup
execute if score @s magic.Phase matches 51.. at @s rotated ~70 0 positioned ~ ~ ~ summon marker run function magic:list/ice_pile/entity_setup

function magic:list/ice_pile/trigger

function magic:remove_data