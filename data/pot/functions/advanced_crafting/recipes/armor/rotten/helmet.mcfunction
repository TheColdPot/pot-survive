#> pot:advanced_crafting/recipes/armor/rotten/helmet
# 由妈妈生的™TheColdPot生成
tag @s add matchRecipe
execute if entity @s[nbt={data:{toCraft:"rotten_helmet"}}] unless data block ~ ~ ~ Items[{Slot:15b,tag:{PotCrafting:{shouldExist:1b}}}] run function pot:advanced_crafting/recipes/take/rotten_helmet
loot replace block ~ ~ ~ container.15 loot pot:armor/rotten/helmet
data modify block ~ ~ ~ Items[{Slot:15b}].tag.PotCrafting.recipeId set value rotten_helmet
data modify block ~ ~ ~ Items[{Slot:15b}].tag.PotCrafting.isCraftingResult set value 1b
data modify block ~ ~ ~ Items[{Slot:15b}].tag.PotCrafting.shouldExist set value 1b
data merge entity @s {data:{toCraft:"rotten_helmet"}}
  