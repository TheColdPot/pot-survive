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
item replace block ~ ~ ~ container.2 with minecraft:diamond 8
item modify block ~ ~ ~ container.2 pot:ui_frame
item replace block ~ ~ ~ container.3 with air
item replace block ~ ~ ~ container.4 with minecraft:diamond 8
item modify block ~ ~ ~ container.4 pot:ui_frame
loot replace block ~ ~ ~ container.11 loot pot:warden_artifact
data modify block ~ ~ ~ Items[{Slot:11b}].Count set value 2
item modify block ~ ~ ~ container.11 pot:ui_frame
loot replace block ~ ~ ~ container.12 loot pot:warden_heart
data modify block ~ ~ ~ Items[{Slot:12b}].Count set value 1
item modify block ~ ~ ~ container.12 pot:ui_frame
loot replace block ~ ~ ~ container.13 loot pot:warden_artifact
data modify block ~ ~ ~ Items[{Slot:13b}].Count set value 2
item modify block ~ ~ ~ container.13 pot:ui_frame
loot replace block ~ ~ ~ container.20 loot pot:warden_artifact
data modify block ~ ~ ~ Items[{Slot:20b}].Count set value 2
item modify block ~ ~ ~ container.20 pot:ui_frame
loot replace block ~ ~ ~ container.21 loot pot:warden_artifact
data modify block ~ ~ ~ Items[{Slot:21b}].Count set value 2
item modify block ~ ~ ~ container.21 pot:ui_frame
loot replace block ~ ~ ~ container.22 loot pot:warden_artifact
data modify block ~ ~ ~ Items[{Slot:22b}].Count set value 2
item modify block ~ ~ ~ container.22 pot:ui_frame
loot replace block ~ ~ ~ container.15 loot pot:armor/warden/chestplate
item modify block ~ ~ ~ container.15 pot:ui_frame
function pot:advanced_crafting/fill_recipe_book
data modify entity @s data.Items append from block ~ ~ ~ Items