# say Executed: fill_recipe_book
execute if entity @s[tag=!recipeBook] run item replace block ~ ~ ~ container.26 with knowledge_book{potAttr:"recipeBookEntrance",display:{Name:'{"text":"配方书","color":"green","italic":false}',Lore:['[{"text":"物品配方将在达到特定条件后解锁！","color":"gray","italic":false}]','[""]','[{"text":"点击查看","color":"yellow","italic":false}]']},PotCrafting:{shouldExist:1b}}
execute if entity @s[tag=recipeBook] run item replace block ~ ~ ~ container.26 with arrow{potAttr:"recipeBookExit",display:{Name:'{"text":"返回","color":"red","italic":false}'},PotCrafting:{shouldExist:1b}}

