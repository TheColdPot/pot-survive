scoreboard players remove pillar1Health genericScore 1
function pot:boss/proxima/indicate_health
execute if score pillar1Health genericScore matches 0 run place template pot:boss/proxima/pillar_empty 29 9 -1
execute if score pillar1Health genericScore matches 0 run kill @e[type=end_crystal,sort=nearest,limit=1]
execute if score pillar1Health genericScore matches 0 run kill @e[tag=proximaPowerVeilCreeper1]
execute if score pillar1Health genericScore matches 0 run playsound entity.zombie.break_wooden_door block @a 30 9 0
execute if score pillar1Health genericScore matches 0 run kill @e[scores={genericScore=1},tag=proximaPillarDamageRecieverPart]
advancement revoke @s only pot:triggers/boss/hit_pillar_1
execute if score pillar0Health genericScore matches ..0 if score pillar1Health genericScore matches ..0 if score pillar2Health genericScore matches ..0 if score pillar3Health genericScore matches ..0 if score pillar4Health genericScore matches ..0 if score pillar5Health genericScore matches ..0 if score pillar6Health genericScore matches ..0 if score pillar7Health genericScore matches ..0 run function pot:boss/proxima/start_phase_2
function pot:boss/proxima/hit_pillar/hit_pillar