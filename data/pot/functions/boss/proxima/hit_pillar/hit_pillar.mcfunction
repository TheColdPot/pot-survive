execute if predicate pot:chance/hit_pillar_soul_rise run function pot:boss/proxima/events/pillar_protection_aec
execute at @s at @e[tag=proximaPillarDamageRecieverBase,limit=1,sort=nearest] run playsound entity.iron_golem.hurt hostile @a
