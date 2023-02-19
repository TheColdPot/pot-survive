execute if entity @a[limit=1,scores={crafting.slot4=1},advancements={pot:recipes/starless_night=false}] run item replace block ~ ~ ~ container.0 with gray_dye{display:{Name:'[{"text":"未解锁！","color":"red","italic":false}]',Lore:['[{"text":"Starless Night","color":"red","italic":false}]','""','[{"text":"解锁方式：","color":"gray","italic":false}]','[{"text":"获取 ","color":"gray","italic":false},{"translate":"block.minecraft.obsidian"}]']},potAttr:"uiFrame",PotCrafting:{shouldExist:1b},HideFlags:127}
execute if entity @a[limit=1,scores={crafting.slot4=1},advancements={pot:recipes/starless_night=true}] run item replace block ~ ~ ~ container.0 with stone_sword{StarlessNight:1,Recipe_view:1,display:{Name:'[{"text":"Starless Night","color":"dark_purple","italic":false}]'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b},HideFlags:127}

execute if entity @a[limit=1,scores={crafting.slot4=1},advancements={pot:recipes/magma_gear=false}] run item replace block ~ ~ ~ container.1 with gray_dye{display:{Name:'[{"text":"未解锁！","color":"red","italic":false}]',Lore:['[{"text":"Magma Sword","color":"red","italic":false}]','""','[{"text":"解锁方式：","color":"gray","italic":false}]','[{"text":"击杀 ","color":"gray","italic":false},{"translate":"entity.minecraft.blaze"}]']},potAttr:"uiFrame",PotCrafting:{shouldExist:1b},HideFlags:127}
execute if entity @a[limit=1,scores={crafting.slot4=1},advancements={pot:recipes/magma_gear=true}] run item replace block ~ ~ ~ container.1 with golden_sword{MagmaSword:1,Recipe_view:1,display:{Name:'[{"text":"Magma Sword","color":"dark_purple","italic":false}]'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b},HideFlags:127}

execute if entity @a[limit=1,scores={crafting.slot4=1},advancements={pot:recipes/warden_gear=false}] run item replace block ~ ~ ~ container.2 with gray_dye{display:{Name:'[{"text":"未解锁！","color":"red","italic":false}]',Lore:['[{"text":"Warden Scepter","color":"red","italic":false}]','""','[{"text":"解锁方式：","color":"gray","italic":false}]','[{"text":"击杀 ","color":"gray","italic":false},{"translate":"entity.minecraft.warden"}]']},potAttr:"uiFrame",PotCrafting:{shouldExist:1b},HideFlags:127}
execute if entity @a[limit=1,scores={crafting.slot4=1},advancements={pot:recipes/warden_gear=true}] run item replace block ~ ~ ~ container.2 with echo_shard{WardenScepter:1,Recipe_view:1,display:{Name:'[{"text":"Warden Scepter","color":"gold","italic":false}]'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b},HideFlags:127}

execute if entity @a[limit=1,scores={crafting.slot4=1},advancements={pot:recipes/warden_gear=false}] run item replace block ~ ~ ~ container.3 with gray_dye{display:{Name:'[{"text":"未解锁！","color":"red","italic":false}]',Lore:['[{"text":"Warden Blade","color":"red","italic":false}]','""','[{"text":"解锁方式：","color":"gray","italic":false}]','[{"text":"击杀 ","color":"gray","italic":false},{"translate":"entity.minecraft.warden"}]']},potAttr:"uiFrame",PotCrafting:{shouldExist:1b},HideFlags:127}
execute if entity @a[limit=1,scores={crafting.slot4=1},advancements={pot:recipes/warden_gear=true}] run item replace block ~ ~ ~ container.3 with iron_sword{WardenBlade:1,Recipe_view:1,display:{Name:'[{"text":"Warden Blade","color":"gold","italic":false}]'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b},HideFlags:127}

item replace block ~ ~ ~ container.4 with gray_dye{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.5 with gray_dye{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}

item replace block ~ ~ ~ container.6 with gray_dye{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.7 with gray_dye{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.8 with gray_dye{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.9 with gray_dye{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.10 with gray_dye{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.11 with gray_dye{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.12 with gray_dye{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.13 with gray_dye{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.14 with gray_dye{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.15 with gray_dye{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.16 with gray_dye{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.17 with gray_dye{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.18 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.19 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.20 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.21 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.22 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.23 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.24 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.25 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}

function pot:advanced_crafting/fill_recipe_book

data modify entity @s data.Items append from block ~ ~ ~ Items
