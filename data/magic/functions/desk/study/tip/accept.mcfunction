data modify entity @s data._bookSlot set from entity @s data._unmodified[{Slot:4b}]
data modify block ~ ~ ~ Items set from entity @s data.route[-1]
execute unless data block ~ ~ ~ Items[{Slot:4b}] run data modify block ~ ~ ~ Items[{Slot:4b}] merge value {Slot:4b,id:"barrier",Count:1b}
data modify block ~ ~ ~ Items[{Slot:4b}] set from entity @s data._bookSlot

item replace block ~ ~ ~ container.10 with green_stained_glass_pane{display:{Name:'""'},magic:{desk:1b}}
item replace block ~ ~ ~ container.11 with green_stained_glass_pane{display:{Name:'""'},magic:{desk:1b}}
item replace block ~ ~ ~ container.12 with green_stained_glass_pane{display:{Name:'""'},magic:{desk:1b}}
item replace block ~ ~ ~ container.14 with green_stained_glass_pane{display:{Name:'""'},magic:{desk:1b}}
item replace block ~ ~ ~ container.15 with green_stained_glass_pane{display:{Name:'""'},magic:{desk:1b}}
item replace block ~ ~ ~ container.16 with green_stained_glass_pane{display:{Name:'""'},magic:{desk:1b}}

tag @s add entity.Match
execute as @a if score @s coords.x = @e[tag=entity.Match,limit=1] coords.x if score @s coords.y = @e[tag=entity.Match,limit=1] coords.y if score @s coords.z = @e[tag=entity.Match,limit=1] coords.z run tag @s add match.Target
 

execute store result score @s magic.level run data get block ~ ~ ~ Items[{Slot:4b}].tag.magic.level_requirements

execute as @a[tag=match.Target] unless score @s magic.level >= @e[tag=entity.Match,limit=1] magic.level run item replace block ~ ~ ~ container.13 with book{display:{Name:'{"translate":"magic.desk.study.refuse","fallback":"以你现在的魔法等级无法学习此魔法！","color":"red","bold":true,"italic":false}'},HideFlags:255,magic:{study_allow:0b,desk:1b,feature:"magic_study",sound:0b}}

execute as @a[tag=match.Target] if score @s magic.level >= @e[tag=entity.Match,limit=1] magic.level run item replace block ~ ~ ~ container.13 with book{display:{Name:'{"translate":"magic.desk.study.ready","fallback":"点击此处开始学习！","color":"yellow","bold":true,"italic":false}'},HideFlags:255,magic:{study_allow:1b,desk:1b,feature:"magic_study",sound:0b}}
# data modify entity @s data._unmodified set from block ~ ~ ~ Items

tag @a remove match.Target
tag @s remove entity.Match

data remove entity @s data.routes
function magic:desk/routes/append
