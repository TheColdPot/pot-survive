#> pot:advanced_crafting/recipes/armor/rotten/chestplate
# 由妈妈生的™TheColdPot生成
tag @s add matchRecipe
execute if entity @s[nbt={data:{toCraft:"rotten_chestplate"}}] unless data block ~ ~ ~ Items[{Slot:15b,tag:{PotCrafting:{shouldExist:1b}}}] run function pot:advanced_crafting/recipes/take/rotten_chestplate
loot replace block ~ ~ ~ container.15 loot pot:armor/rotten/chestplate
data modify block ~ ~ ~ Items[{Slot:15b}].tag.PotCrafting.recipeId set value rotten_chestplate
data modify block ~ ~ ~ Items[{Slot:15b}].tag.PotCrafting.isCraftingResult set value 1b
data modify block ~ ~ ~ Items[{Slot:15b}].tag.PotCrafting.shouldExist set value 1b
data merge entity @s {data:{toCraft:"rotten_chestplate"}}
  