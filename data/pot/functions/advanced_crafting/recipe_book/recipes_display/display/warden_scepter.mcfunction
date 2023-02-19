item replace block ~ ~ ~ container.0 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.1 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.5 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.6 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.7 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.8 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.9 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.10 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.14 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.15 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.16 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.17 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.18 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.19 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.23 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.24 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.25 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
loot replace block ~ ~ ~ container.2 loot pot:warden_artifact
data modify block ~ ~ ~ Items[{Slot:2b}].Count set value 8
item modify block ~ ~ ~ container.2 pot:ui_frame
item replace block ~ ~ ~ container.3 with minecraft:diamond 16
item modify block ~ ~ ~ container.3 pot:ui_frame
loot replace block ~ ~ ~ container.4 loot pot:warden_artifact
data modify block ~ ~ ~ Items[{Slot:4b}].Count set value 8
item modify block ~ ~ ~ container.4 pot:ui_frame
loot replace block ~ ~ ~ container.11 loot pot:warden_artifact
data modify block ~ ~ ~ Items[{Slot:11b}].Count set value 8
item modify block ~ ~ ~ container.11 pot:ui_frame
item replace block ~ ~ ~ container.12 with minecraft:amethyst_shard 64
item modify block ~ ~ ~ container.12 pot:ui_frame
loot replace block ~ ~ ~ container.13 loot pot:warden_artifact
data modify block ~ ~ ~ Items[{Slot:13b}].Count set value 8
item modify block ~ ~ ~ container.13 pot:ui_frame
loot replace block ~ ~ ~ container.20 loot pot:warden_artifact
data modify block ~ ~ ~ Items[{Slot:20b}].Count set value 8
item modify block ~ ~ ~ container.20 pot:ui_frame
item replace block ~ ~ ~ container.21 with minecraft:diamond 16
item modify block ~ ~ ~ container.21 pot:ui_frame
loot replace block ~ ~ ~ container.22 loot pot:warden_artifact
data modify block ~ ~ ~ Items[{Slot:22b}].Count set value 8
item modify block ~ ~ ~ container.22 pot:ui_frame
loot replace block ~ ~ ~ container.15 loot pot:weapon/melee/warden_scepter
item modify block ~ ~ ~ container.15 pot:ui_frame
function pot:advanced_crafting/fill_recipe_book
data modify entity @s data.Items append from block ~ ~ ~ Items