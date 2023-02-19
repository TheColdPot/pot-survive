execute in pot:proxima_dimension run setblock 0 9 0 respawn_anchor[charges=4] replace
execute in pot:proxima_dimension run playsound block.respawn_anchor.charge block @a 0 9 0
execute in pot:proxima_dimension run summon falling_block 0 9 0 {BlockState:{Name:"crying_obsidian"},Time:1,Motion:[.5d,.25d,-.5d]}
