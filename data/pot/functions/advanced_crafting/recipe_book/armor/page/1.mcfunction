execute if entity @a[limit=1,scores={crafting.slot4=1},advancements={pot:recipes/rotten_armor=false}] run item replace block ~ ~ ~ container.0 with gray_dye{display:{Name:'[{"text":"未解锁！","color":"red","italic":false}]',Lore:['[{"text":"Rotten Armor","color":"red","italic":false}]','""','[{"text":"解锁方式：","color":"gray","italic":false}]','[{"text":"击杀 ","color":"gray","italic":false},{"translate":"entity.minecraft.zombie"}]']},potAttr:"uiFrame",HideFlags:127}
execute if entity @a[limit=1,scores={crafting.slot4=1},advancements={pot:recipes/rotten_armor=true}] run item replace block ~ ~ ~ container.0 with leather_helmet{RottenSets:1,Recipe_view:1,display:{Name:'[{"text":"Rotten Armor","color":"green","italic":false}]',color:32796},potAttr:"uiFrame",HideFlags:127,PotCrafting:{shouldExist:1b}}

execute if entity @a[limit=1,scores={crafting.slot4=1},advancements={pot:recipes/guard_armor=false}] run item replace block ~ ~ ~ container.1 with gray_dye{display:{Name:'[{"text":"未解锁！","color":"red","italic":false}]',Lore:['[{"text":"Guard Armor","color":"red","italic":false}]','""','[{"text":"解锁方式：","color":"gray","italic":false}]','[{"text":"获取 ","color":"gray","italic":false},{"translate":"item.minecraft.iron_ingot"}]']},potAttr:"uiFrame",HideFlags:127}
execute if entity @a[limit=1,scores={crafting.slot4=1},advancements={pot:recipes/guard_armor=true}] run item replace block ~ ~ ~ container.1 with player_head{GuardSets:1,Recipe_view:1,display:{Name:'[{"text":"Guard Armor","color":"blue","italic":false}]'},SkullOwner:{Id:[I;1,1,4,5],Properties:{textures:[{Value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzdhYWEwZjY3MWI5OGQwYzMzYzhhNTM5YTUxYTEwNjNhZDkxZGQ3ZDlkZjA2MDU1OTE0ZjI1OWFjZWNjYTkzZCJ9fX0="}]}},potAttr:"uiFrame",HideFlags:127,PotCrafting:{shouldExist:1b}}

execute if entity @a[limit=1,scores={crafting.slot4=1},advancements={pot:recipes/enderman_armor=false}] run item replace block ~ ~ ~ container.2 with gray_dye{display:{Name:'[{"text":"未解锁！","color":"red","italic":false}]',Lore:['[{"text":"Enderman Armor","color":"red","italic":false}]','""','[{"text":"解锁方式：","color":"gray","italic":false}]','[{"text":"击杀 ","color":"gray","italic":false},{"translate":"entity.minecraft.enderman"}]']},potAttr:"uiFrame",HideFlags:127}
execute if entity @a[limit=1,scores={crafting.slot4=1},advancements={pot:recipes/enderman_armor=true}] run item replace block ~ ~ ~ container.2 with player_head{EndermanSets:1,Recipe_view:1,display:{Name:'[{"text":"Enderman Armor","color":"blue","italic":false}]'},SkullOwner:{Id:[I;1,1,4,5],Properties:{textures:[{Value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODIwMGZmNThkN2Q1NDk4Y2UzMGIxMWE4MzYwZTM4ZGI5NzE4OTZjNzRkODA1YzFjMDBmMjA3YWM3ODQ3NjFlZiJ9fX0="}]}},potAttr:"uiFrame",HideFlags:127,PotCrafting:{shouldExist:1b}}

execute if entity @a[limit=1,scores={crafting.slot4=1},advancements={pot:recipes/warden_gear=false}] run item replace block ~ ~ ~ container.3 with gray_dye{display:{Name:'[{"text":"未解锁！","color":"red","italic":false}]',Lore:['[{"text":"Warden Armor","color":"red","italic":false}]','""','[{"text":"解锁方式：","color":"gray","italic":false}]','[{"text":"击杀 ","color":"gray","italic":false},{"translate":"entity.minecraft.warden"}]']},potAttr:"uiFrame",HideFlags:127}
execute if entity @a[limit=1,scores={crafting.slot4=1},advancements={pot:recipes/warden_gear=true}] run item replace block ~ ~ ~ container.3 with player_head{WardenSets:1,Recipe_view:1,display:{Name:'[{"text":"Warden Armor","color":"gold","italic":false}]'},SkullOwner:{Id:[I;1,1,4,5],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWNhZmU4NDhmZDc1NWQ5OThhMDZhNTgzMjE5MTIyNDRjZjc2ZWVmMWNlNzhhNTEyMjhmZGQxMDIwYWI3M2E2OCJ9fX0="}]}},potAttr:"uiFrame",HideFlags:127,PotCrafting:{shouldExist:1b}}

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
