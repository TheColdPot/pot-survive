execute positioned ^ ^ ^0.1 run particle dust .149 .352 .423 1
execute positioned ^ ^ ^0.1 if predicate pot:chance/percent/50 run particle dust 0.012 0.027 0.031 1
# execute positioned ^ ^ ^0.1 if predicate pot:chance/percent/50 run particle sculk_soul
execute positioned ^ ^ ^0.1 unless entity @s[dy=1] run function pot:boss/proxima/events/magic_far_attack/particle_recursion
