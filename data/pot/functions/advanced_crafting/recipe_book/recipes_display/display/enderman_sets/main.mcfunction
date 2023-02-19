item replace block ~ ~ ~ container.0 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.1 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.2 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.3 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.4 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.5 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.6 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.7 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.8 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.9 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.11 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.13 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.15 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.17 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.18 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.19 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.20 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.21 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.22 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.23 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.24 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.25 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}

item replace block ~ ~ ~ container.10 with player_head{EndermanHelmet:1,Recipe_view:1,display:{Name:'[{"text":"Enderman Helmet","color":"blue","italic":false}]'},SkullOwner:{Id:[I;1,1,4,5],Properties:{textures:[{Value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODIwMGZmNThkN2Q1NDk4Y2UzMGIxMWE4MzYwZTM4ZGI5NzE4OTZjNzRkODA1YzFjMDBmMjA3YWM3ODQ3NjFlZiJ9fX0="}]}},potAttr:"uiFrame",PotCrafting:{shouldExist:1b},HideFlags:127}

item replace block ~ ~ ~ container.12 with leather_chestplate{EndermanChestplate:1,Recipe_view:1,display:{Name:'[{"text":"Enderman Chestplate","color":"blue","italic":false}]',color:1908001},potAttr:"uiFrame",PotCrafting:{shouldExist:1b},HideFlags:127}

item replace block ~ ~ ~ container.14 with leather_leggings{EndermanLeggings:1,Recipe_view:1,display:{Name:'[{"text":"Enderman Leggings","color":"blue","italic":false}]',color:12799167},potAttr:"uiFrame",PotCrafting:{shouldExist:1b},HideFlags:127}

item replace block ~ ~ ~ container.16 with leather_boots{EndermanBoots:1,Recipe_view:1,display:{Name:'[{"text":"Enderman Boots","color":"blue","italic":false}]',color:1908001},potAttr:"uiFrame",PotCrafting:{shouldExist:1b},HideFlags:127}

function pot:advanced_crafting/fill_recipe_book

data modify entity @s data.Items append from block ~ ~ ~ Items
