# Copyright © 2022-2023 TheColdPot, Open-sourced under WTFPL

setblock ~ ~ ~ air
setblock ~ ~ ~ barrel[facing=west]{CustomName:'"高级合成"'}

execute align xyz run summon falling_block ~.5025 ~ ~.5 {NoGravity:1b,BlockState:{Name:"beehive",Properties:{facing:"up"}},Tags:[util_ghostBlock,craftingTableDecoration,craftingTableBlock]}
execute align xyz run summon falling_block ~.4975 ~ ~.5 {NoGravity:1b,BlockState:{Name:"beehive",Properties:{facing:"up"}},Tags:[util_ghostBlock,craftingTableDecoration,craftingTableBlock]}
execute align xyz run summon falling_block ~.5 ~ ~.5025 {NoGravity:1b,BlockState:{Name:"beehive",Properties:{facing:"up"}},Tags:[util_ghostBlock,craftingTableDecoration,craftingTableBlock]}
execute align xyz run summon falling_block ~.5 ~ ~.4975 {NoGravity:1b,BlockState:{Name:"beehive",Properties:{facing:"up"}},Tags:[util_ghostBlock,craftingTableDecoration,craftingTableBlock]}
execute align xyz run summon falling_block ~.5 ~.005 ~.5 {NoGravity:1b,BlockState:{Name:"crafting_table"},Tags:[util_ghostBlock,craftingTableDecoration,craftingTableBlock]}
execute align xyz run summon falling_block ~.5 ~-.005 ~.5 {NoGravity:1b,BlockState:{Name:"beehive",Properties:{facing:"up"}},Tags:[util_ghostBlock,craftingTableDecoration,craftingTableBlock]}

summon marker ~ ~ ~ {Tags:[advancedCraftingMarker]}
item replace block ~ ~-.5 ~ container.26 with knowledge_book{potAttr:"recipeBookEntrance",display:{Name:'{"text":"配方书","color":"green","italic":false}',Lore:['[{"text":"物品配方将在达到特定条件后解锁！","color":"gray","italic":false}]','""','[{"text":"点击查看","color":"yellow","italic":false}]']}}
