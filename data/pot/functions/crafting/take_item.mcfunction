execute if data entity @s {data:{routeFeature:{"name":"item","id":"stone_hunk"}}} as @a[distance=..8] store success score @s crafting.takeRecipe run clear @s #pot:ui{PotAttr:{id:"stone_hunk",crafting:{result:1b}}} 0
 execute if data entity @s {data:{routeFeature:{"name":"item","id":"stone_hunk"}}} as @a[distance=..8,scores={crafting.takeRecipe=1..}] run function pot:crafting/take/stone_hunk
execute if data entity @s {data:{routeFeature:{"name":"item","id":"warden_scepter"}}} as @a[distance=..8] store success score @s crafting.takeRecipe run clear @s #pot:ui{PotAttr:{id:"warden_scepter",crafting:{result:1b}}} 0
 execute if data entity @s {data:{routeFeature:{"name":"item","id":"warden_scepter"}}} as @a[distance=..8,scores={crafting.takeRecipe=1..}] run function pot:crafting/take/warden_scepter
execute if data entity @s {data:{routeFeature:{"name":"item","id":"warden_blade"}}} as @a[distance=..8] store success score @s crafting.takeRecipe run clear @s #pot:ui{PotAttr:{id:"warden_blade",crafting:{result:1b}}} 0
 execute if data entity @s {data:{routeFeature:{"name":"item","id":"warden_blade"}}} as @a[distance=..8,scores={crafting.takeRecipe=1..}] run function pot:crafting/take/warden_blade
execute if data entity @s {data:{routeFeature:{"name":"item","id":"final_answer"}}} as @a[distance=..8] store success score @s crafting.takeRecipe run clear @s #pot:ui{PotAttr:{id:"final_answer",crafting:{result:1b}}} 0
 execute if data entity @s {data:{routeFeature:{"name":"item","id":"final_answer"}}} as @a[distance=..8,scores={crafting.takeRecipe=1..}] run function pot:crafting/take/final_answer
