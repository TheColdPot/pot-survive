#> pot:advanced_crafting/recipes/armor/enderman/helmet
# 由妈妈生的™TheColdPot生成
tag @s add matchRecipe
execute if entity @s[nbt={data:{toCraft:"enderman_helmet"}}] unless data block ~ ~ ~ Items[{Slot:15b,tag:{PotCrafting:{shouldExist:1b}}}] run function pot:advanced_crafting/recipes/take/enderman_helmet
loot replace block ~ ~ ~ container.15 loot pot:armor/enderman/helmet
data modify block ~ ~ ~ Items[{Slot:15b}].tag.PotCrafting.recipeId set value enderman_helmet
data modify block ~ ~ ~ Items[{Slot:15b}].tag.PotCrafting.isCraftingResult set value 1b
data modify block ~ ~ ~ Items[{Slot:15b}].tag.PotCrafting.shouldExist set value 1b
data merge entity @s {data:{toCraft:"enderman_helmet"}}
  