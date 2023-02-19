#> pot:advanced_crafting/recipes/armor/enderman/leggings
# 由妈妈生的™TheColdPot生成
tag @s add matchRecipe
execute if entity @s[nbt={data:{toCraft:"enderman_leggings"}}] unless data block ~ ~ ~ Items[{Slot:15b,tag:{PotCrafting:{shouldExist:1b}}}] run function pot:advanced_crafting/recipes/take/enderman_leggings
loot replace block ~ ~ ~ container.15 loot pot:armor/enderman/leggings
data modify block ~ ~ ~ Items[{Slot:15b}].tag.PotCrafting.recipeId set value enderman_leggings
data modify block ~ ~ ~ Items[{Slot:15b}].tag.PotCrafting.isCraftingResult set value 1b
data modify block ~ ~ ~ Items[{Slot:15b}].tag.PotCrafting.shouldExist set value 1b
data merge entity @s {data:{toCraft:"enderman_leggings"}}
  