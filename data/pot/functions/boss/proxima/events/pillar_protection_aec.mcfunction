
# chance: 30% (at  pot:boss/proxima/hit_pillar/hit_pillar)
execute at @e[tag=proximaPillarDamageRecieverBase,limit=1,sort=nearest] run summon area_effect_cloud ~ 9 ~ {Age:0,Duration:100,WaitTime:20,RadiusPerTick:0.02f,Radius:5.5f,Potion:"strong_harming",Particle:"sculk_soul"}
#dust .149 .352 .423 1
#sculk_soul
# execute at @e[tag=proximaPillarDamageRecieverBase,limit=1,sort=nearest] run function pot:boss/proxima/minions/pillar_protector
execute at @e[tag=proximaPillarDamageRecieverBase,limit=1,sort=nearest] run data modify entity @e[type=area_effect_cloud,limit=1,sort=nearest] Owner set from entity @e[tag=proxima,limit=1]
execute at @e[tag=proximaPillarDamageRecieverBase,limit=1,sort=nearest] run playsound entity.warden.tendril_clicks hostile @a
title @a[distance=..5.5] title ""
title @a[distance=..5.5] subtitle [{"text":"地下的灵魂涌起……","color":"#265a6c"}]

