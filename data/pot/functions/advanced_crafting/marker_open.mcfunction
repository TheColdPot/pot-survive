data merge block ~ ~ ~ {Lock:"cantOpen"}

execute unless data entity @s data.toCraft run data merge entity @s {data:{toCraft:"null"}}

execute if entity @s[tag=!recipeBook] unless data block ~ ~ ~ Items[{Slot:26b,tag:{PotCrafting:{shouldExist:1b}}}] run function pot:advanced_crafting/recipe_on
execute if entity @s[tag=recipeBook] unless data block ~ ~ ~ Items[{Slot:26b,tag:{PotCrafting:{shouldExist:1b}}}] run function pot:advanced_crafting/recipe_back

execute if entity @s[tag=recipeBook] run function pot:advanced_crafting/marker_recipe

execute unless data block ~ ~ ~ {Items:[{Slot:0b,id:"gray_stained_glass_pane",tag:{potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}},{Slot:1b,id:"gray_stained_glass_pane",tag:{potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}},{Slot:5b,id:"gray_stained_glass_pane",tag:{potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}},{Slot:6b,id:"gray_stained_glass_pane",tag:{potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}},{Slot:7b,id:"gray_stained_glass_pane",tag:{potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}},{Slot:8b,id:"gray_stained_glass_pane",tag:{potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}},{Slot:9b,id:"gray_stained_glass_pane",tag:{potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}},{Slot:10b,id:"gray_stained_glass_pane",tag:{potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}},{Slot:14b,id:"gray_stained_glass_pane",tag:{potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}},{Slot:16b,id:"gray_stained_glass_pane",tag:{potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}},{Slot:17b,id:"gray_stained_glass_pane",tag:{potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}},{Slot:18b,id:"gray_stained_glass_pane",tag:{potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}},{Slot:19b,id:"gray_stained_glass_pane",tag:{potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}},{Slot:23b,id:"gray_stained_glass_pane",tag:{potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}},{Slot:24b,id:"gray_stained_glass_pane",tag:{potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}},{Slot:25b,id:"gray_stained_glass_pane",tag:{potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}}]} if entity @s[tag=!recipeBook] run function pot:advanced_crafting/ui_frame
execute if entity @s[tag=!recipeBook] store result score @s crafting.slot0 run data get block ~ ~ ~ Items[{Slot:2b}].Count
execute if entity @s[tag=!recipeBook] store result score @s crafting.slot1 run data get block ~ ~ ~ Items[{Slot:3b}].Count
execute if entity @s[tag=!recipeBook] store result score @s crafting.slot2 run data get block ~ ~ ~ Items[{Slot:4b}].Count
execute if entity @s[tag=!recipeBook] store result score @s crafting.slot3 run data get block ~ ~ ~ Items[{Slot:11b}].Count
execute if entity @s[tag=!recipeBook] store result score @s crafting.slot4 run data get block ~ ~ ~ Items[{Slot:12b}].Count
execute if entity @s[tag=!recipeBook] store result score @s crafting.slot5 run data get block ~ ~ ~ Items[{Slot:13b}].Count
execute if entity @s[tag=!recipeBook] store result score @s crafting.slot6 run data get block ~ ~ ~ Items[{Slot:20b}].Count
execute if entity @s[tag=!recipeBook] store result score @s crafting.slot7 run data get block ~ ~ ~ Items[{Slot:21b}].Count
execute if entity @s[tag=!recipeBook] store result score @s crafting.slot8 run data get block ~ ~ ~ Items[{Slot:22b}].Count

function pot:advanced_crafting/check_recipes

tag @s add craftingTableUsing
