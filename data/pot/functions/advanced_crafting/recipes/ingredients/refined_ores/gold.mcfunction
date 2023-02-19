#> pot:advanced_crafting/recipes/ingredients/refined_ores/gold
# 由妈妈生的™TheColdPot生成
tag @s add matchRecipe
execute if entity @s[nbt={data:{toCraft:"refined_ores_gold"}}] unless data block ~ ~ ~ Items[{Slot:15b,tag:{PotCrafting:{shouldExist:1b}}}] run function pot:advanced_crafting/recipes/take/refined_ores_gold
loot replace block ~ ~ ~ container.15 loot pot:refined_ores/refined_gold
data modify block ~ ~ ~ Items[{Slot:15b}].tag.PotCrafting.recipeId set value refined_ores_gold
data modify block ~ ~ ~ Items[{Slot:15b}].tag.PotCrafting.isCraftingResult set value 1b
data modify block ~ ~ ~ Items[{Slot:15b}].tag.PotCrafting.shouldExist set value 1b
data merge entity @s {data:{toCraft:"refined_ores_gold"}}
  