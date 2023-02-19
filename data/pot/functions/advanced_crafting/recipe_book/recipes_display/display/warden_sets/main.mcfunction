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

item replace block ~ ~ ~ container.10 with player_head{WardenHelmet:1,Recipe_view:1,display:{Name:'[{"text":"Warden Helmet","color":"gold","italic":false}]'},SkullOwner:{Id:[I;1,1,4,5],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWNhZmU4NDhmZDc1NWQ5OThhMDZhNTgzMjE5MTIyNDRjZjc2ZWVmMWNlNzhhNTEyMjhmZGQxMDIwYWI3M2E2OCJ9fX0="}]}},potAttr:"uiFrame",PotCrafting:{shouldExist:1b},HideFlags:127}

item replace block ~ ~ ~ container.12 with leather_chestplate{WardenChestplate:1,Recipe_view:1,display:{Name:'[{"text":"Warden Chestplate","color":"gold","italic":false}]',color:2113352},potAttr:"uiFrame",PotCrafting:{shouldExist:1b},HideFlags:127}

item replace block ~ ~ ~ container.14 with leather_leggings{WardenLeggings:1,Recipe_view:1,display:{Name:'[{"text":"Warden Leggings","color":"gold","italic":false}]',color:2246227},potAttr:"uiFrame",PotCrafting:{shouldExist:1b},HideFlags:127}

item replace block ~ ~ ~ container.16 with leather_boots{WardenBoots:1,Recipe_view:1,display:{Name:'[{"text":"Warden Boots","color":"gold","italic":false}]',color:2513516},potAttr:"uiFrame",PotCrafting:{shouldExist:1b},HideFlags:127}

function pot:advanced_crafting/fill_recipe_book

data modify entity @s data.Items append from block ~ ~ ~ Items
