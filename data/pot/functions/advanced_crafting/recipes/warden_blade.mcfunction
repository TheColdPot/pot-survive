#> pot:advanced_crafting/recipes/warden_blade
# 由妈妈生的™TheColdPot生成
tag @s add matchRecipe
execute if entity @s[nbt={data:{toCraft:"warden_blade"}}] unless data block ~ ~ ~ Items[{Slot:15b,tag:{PotCrafting:{shouldExist:1b}}}] run function pot:advanced_crafting/recipes/take/warden_blade
loot replace block ~ ~ ~ container.15 loot pot:weapon/melee/warden_blade
data modify block ~ ~ ~ Items[{Slot:15b}].tag.PotCrafting.recipeId set value warden_blade
data modify block ~ ~ ~ Items[{Slot:15b}].tag.PotCrafting.isCraftingResult set value 1b
data modify block ~ ~ ~ Items[{Slot:15b}].tag.PotCrafting.shouldExist set value 1b
data merge entity @s {data:{toCraft:"warden_blade"}}
  