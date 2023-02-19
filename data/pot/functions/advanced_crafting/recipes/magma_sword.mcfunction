#> pot:advanced_crafting/recipes/magma_sword
# 由妈妈生的™TheColdPot生成
tag @s add matchRecipe
execute if entity @s[nbt={data:{toCraft:"magma_sword"}}] unless data block ~ ~ ~ Items[{Slot:15b,tag:{PotCrafting:{shouldExist:1b}}}] run function pot:advanced_crafting/recipes/take/magma_sword
loot replace block ~ ~ ~ container.15 loot pot:weapon/melee/magma_sword
data modify block ~ ~ ~ Items[{Slot:15b}].tag.PotCrafting.recipeId set value magma_sword
data modify block ~ ~ ~ Items[{Slot:15b}].tag.PotCrafting.isCraftingResult set value 1b
data modify block ~ ~ ~ Items[{Slot:15b}].tag.PotCrafting.shouldExist set value 1b
data merge entity @s {data:{toCraft:"magma_sword"}}
  