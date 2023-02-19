
fill ~6 ~6 ~6 ~-6 ~6 ~-6 air replace player_head{SkullOwner:{Id:[I;1,1,4,5]}}
fill ~6 ~6 ~6 ~-6 ~6 ~-6 air replace player_wall_head{SkullOwner:{Id:[I;1,1,4,5]}}
fill ~6 ~5 ~6 ~-6 ~5 ~-6 air replace player_head{SkullOwner:{Id:[I;1,1,4,5]}}
fill ~6 ~5 ~6 ~-6 ~5 ~-6 air replace player_wall_head{SkullOwner:{Id:[I;1,1,4,5]}}
fill ~6 ~4 ~6 ~-6 ~4 ~-6 air replace player_head{SkullOwner:{Id:[I;1,1,4,5]}}
fill ~6 ~4 ~6 ~-6 ~4 ~-6 air replace player_wall_head{SkullOwner:{Id:[I;1,1,4,5]}}
fill ~6 ~3 ~6 ~-6 ~3 ~-6 air replace player_head{SkullOwner:{Id:[I;1,1,4,5]}}
fill ~6 ~3 ~6 ~-6 ~3 ~-6 air replace player_wall_head{SkullOwner:{Id:[I;1,1,4,5]}}
fill ~6 ~2 ~6 ~-6 ~2 ~-6 air replace player_head{SkullOwner:{Id:[I;1,1,4,5]}}
fill ~6 ~2 ~6 ~-6 ~2 ~-6 air replace player_wall_head{SkullOwner:{Id:[I;1,1,4,5]}}
fill ~6 ~1 ~6 ~-6 ~1 ~-6 air replace player_head{SkullOwner:{Id:[I;1,1,4,5]}}
fill ~6 ~1 ~6 ~-6 ~1 ~-6 air replace player_wall_head{SkullOwner:{Id:[I;1,1,4,5]}}
fill ~6 ~ ~6 ~-6 ~ ~-6 air replace player_head{SkullOwner:{Id:[I;1,1,4,5]}}
fill ~6 ~ ~6 ~-6 ~ ~-6 air replace player_wall_head{SkullOwner:{Id:[I;1,1,4,5]}}
fill ~6 ~-6 ~6 ~-6 ~-6 ~-6 air replace player_head{SkullOwner:{Id:[I;1,1,4,5]}}
fill ~6 ~-6 ~6 ~-6 ~-6 ~-6 air replace player_wall_head{SkullOwner:{Id:[I;1,1,4,5]}}
fill ~6 ~-5 ~6 ~-6 ~-5 ~-6 air replace player_head{SkullOwner:{Id:[I;1,1,4,5]}}
fill ~6 ~-5 ~6 ~-6 ~-5 ~-6 air replace player_wall_head{SkullOwner:{Id:[I;1,1,4,5]}}
fill ~6 ~-4 ~6 ~-6 ~-4 ~-6 air replace player_head{SkullOwner:{Id:[I;1,1,4,5]}}
fill ~6 ~-4 ~6 ~-6 ~-4 ~-6 air replace player_wall_head{SkullOwner:{Id:[I;1,1,4,5]}}
fill ~6 ~-3 ~6 ~-6 ~-3 ~-6 air replace player_head{SkullOwner:{Id:[I;1,1,4,5]}}
fill ~6 ~-3 ~6 ~-6 ~-3 ~-6 air replace player_wall_head{SkullOwner:{Id:[I;1,1,4,5]}}
fill ~6 ~-2 ~6 ~-6 ~-2 ~-6 air replace player_head{SkullOwner:{Id:[I;1,1,4,5]}}
fill ~6 ~-2 ~6 ~-6 ~-2 ~-6 air replace player_wall_head{SkullOwner:{Id:[I;1,1,4,5]}}
fill ~6 ~-1 ~6 ~-6 ~-1 ~-6 air replace player_head{SkullOwner:{Id:[I;1,1,4,5]}}
fill ~6 ~-1 ~6 ~-6 ~-1 ~-6 air replace player_wall_head{SkullOwner:{Id:[I;1,1,4,5]}}

execute if entity @s[gamemode=!creative] run function pot:place_refuse/give_back


advancement revoke @s only pot:triggers/skull_place