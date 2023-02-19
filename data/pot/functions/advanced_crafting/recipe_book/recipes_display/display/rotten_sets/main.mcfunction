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

item replace block ~ ~ ~ container.10 with leather_helmet{RottenHelmet:1,Recipe_view:1,display:{Name:'[{"text":"Rotten Helmet","color":"gold","italic":false}]',color:32796},potAttr:"uiFrame",PotCrafting:{shouldExist:1b},HideFlags:127}

item replace block ~ ~ ~ container.12 with leather_chestplate{RottenChestplate:1,Recipe_view:1,display:{Name:'[{"text":"Rotten Chestplate","color":"gold","italic":false}]',color:2654236},potAttr:"uiFrame",PotCrafting:{shouldExist:1b},HideFlags:127}

item replace block ~ ~ ~ container.14 with leather_leggings{RottenLeggings:1,Recipe_view:1,display:{Name:'[{"text":"Rotten Leggings","color":"gold","italic":false}]',color:5275676},potAttr:"uiFrame",PotCrafting:{shouldExist:1b},HideFlags:127}

item replace block ~ ~ ~ container.16 with leather_boots{RottenBoots:1,Recipe_view:1,display:{Name:'[{"text":"Rotten Boots","color":"gold","italic":false}]',color:7897116},potAttr:"uiFrame",PotCrafting:{shouldExist:1b},HideFlags:127}

function pot:advanced_crafting/fill_recipe_book

data modify entity @s data.Items append from block ~ ~ ~ Items
