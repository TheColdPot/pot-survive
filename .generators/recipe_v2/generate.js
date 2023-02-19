const fs = require('fs');
const path = require('path');
const ROOT_DIR = path.resolve(__dirname, '../..','./data/pot/functions/advanced_crafting')
// remove first
fs.rmSync(path.resolve(ROOT_DIR, 'recipes'), {recursive: true});
fs.mkdirSync(path.resolve(ROOT_DIR, 'recipes'));
fs.mkdirSync(path.resolve(ROOT_DIR, 'recipes/take'));
fs.rmSync(path.resolve(ROOT_DIR, 'check_recipes.mcfunction'));
fs.writeFileSync(path.resolve(ROOT_DIR, 'check_recipes.mcfunction'), '');
fs.writeFileSync(path.resolve(ROOT_DIR, 'take_out_recipes.mcfunction'), '');
slotMapping = [2,3,4,11,12,13,20,21,22]

// read all recipes
const recipeList = fs.readdirSync(path.resolve(__dirname, 'defs'));
recipeList.forEach((recipeDefFileName) => {

  const fileContent = fs.readFileSync(path.resolve(__dirname, 'defs', recipeDefFileName));
  const recipeData = JSON.parse(fileContent);
  if(recipeData.exclude) return;
  const template = recipeData.template;
  const key = recipeData.key;
  if (template) {
    const setPattern = recipeData.set_pattern;
    const setId = recipeData.set_id;
    Object.keys(setPattern).forEach(patternKey => {
      const pattern = setPattern[patternKey];
      const fillTemplate = (templateStr) => templateStr.replace(/\{set_id\}/g, setId).replace(/\{pattern\}/g, patternKey);
      generateStandalone({
        recipePath: fillTemplate(template.path),
        pattern: pattern,
        key: key,
        result: {
          loot: fillTemplate(template.result_loot),
        },
        id: fillTemplate(template.id),
        recipeBookData: recipeData.recipe_book,
        recipeBookPath: fillTemplate(template.book_path)
      });
    })
  } else
  generateStandalone({
    recipePath: recipeData.path,
    pattern: recipeData.pattern,
    key: key,
    result: {
      loot: recipeData.result.loot,
    },
    id: recipeData.id,
    recipeBookData: recipeData.recipe_book,
    recipeBookPath: recipeData?.recipe_book?.path
  });
});



function generateStandalone({
  recipePath,
  pattern, 
  key, 
  result, 
  id, 
  recipeBookData,
  recipeBookPath
}) {
  const recipeBookPrefix = `item replace block ~ ~ ~ container.0 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.1 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.5 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.6 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.7 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.8 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.9 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.10 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.14 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.15 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.16 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.17 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.18 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.19 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.23 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.24 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}
item replace block ~ ~ ~ container.25 with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame",PotCrafting:{shouldExist:1b}}`

  //#region recipe
  const resultPath = path.resolve(ROOT_DIR, 'recipes', recipePath + '.mcfunction');
  const parentDirPath = path.resolve(resultPath, '..');
  const slots = pattern.join('').split('').map(e => key[e] ?? null);
  const generatedFilePath = path.resolve(ROOT_DIR, 'recipes/take', id + '.mcfunction');
  const generatedNamespacedUUID = `pot:advanced_crafting/recipes/take/` + id;
  fs.mkdirSync(parentDirPath, {recursive: true});
  fs.appendFileSync(path.resolve(ROOT_DIR, 'check_recipes.mcfunction'), `
execute if data block ~ ~ ~ {Items:[${slots.map((slot, index) => !slot ? null : `{Slot:${slotMapping[index]}b,id:"${slot.id}"${slot.nbt ? `,tag:${slot.nbt}`: ''}}`).filter(_=>_).join(',')}]}${slots.map((_,index) => _ ? null : ` unless data block ~ ~ ~ Items[{Slot:${slotMapping[index]}b}]`).filter(_=>_).join('')} ${slots.map((slot, index) => !slot ? null : `if score @s crft_slot${index} matches ${slot.count}..`).filter(_=>_).join(' ')} run function pot:advanced_crafting/recipes/${recipePath}
`);
  fs.appendFileSync(path.resolve(ROOT_DIR, 'take_out_recipes.mcfunction'), `
execute store success score @s crafting.takeRecipe run clear @s #pot:craftable{PotCrafting:{recipeId:"${id}"}}
execute if score @s crafting.takeRecipe matches 1.. at @s run loot spawn ~ ~ ~ loot ${result.loot}
execute if score @s crafting.takeRecipe matches 1.. at @s run data modify entity @e[type=item,limit=1,sort=nearest] Owner set from entity @s UUID
execute if score @s crafting.takeRecipe matches 1.. at @s run data merge entity @e[type=item,limit=1,sort=nearest] {PickupDelay:0s}
`);
  fs.writeFileSync(generatedFilePath, `#> ${generatedNamespacedUUID}
# TheColdPot <3
data merge entity @s {data:{toCraft:"null"}}
` +
slots.map((slot, index) => !slot ? null : `scoreboard players remove @s crft_slot${index} ${slot.count}\nexecute store result block ~ ~ ~ Items[{Slot:${slotMapping[index]}b}].Count int 1 run scoreboard players get @s crft_slot${index}`).filter(_=>_).join('\n') +
'\nexecute as @a run function pot:advanced_crafting/take_out_recipes');
  fs.writeFileSync(resultPath, `#> pot:advanced_crafting/recipes/${recipePath}
# 由妈妈生的™TheColdPot生成
tag @s add matchRecipe
execute if entity @s[nbt={data:{toCraft:"${id}"}}] unless data block ~ ~ ~ Items[{Slot:15b,tag:{PotCrafting:{shouldExist:1b}}}] run function ${generatedNamespacedUUID}
loot replace block ~ ~ ~ container.15 loot ${result.loot}
data modify block ~ ~ ~ Items[{Slot:15b}].tag.PotCrafting.recipeId set value ${id}
data modify block ~ ~ ~ Items[{Slot:15b}].tag.PotCrafting.isCraftingResult set value 1b
data modify block ~ ~ ~ Items[{Slot:15b}].tag.PotCrafting.shouldExist set value 1b
data merge entity @s {data:{toCraft:"${id}"}}
  `);
  //#endregion
  //#region recipeBook
  if (!recipeBookData) return;
  const RECIPE_DISPLAY_DIR = path.resolve(__dirname, '../../data/pot/functions/advanced_crafting/recipe_book/recipes_display/display')
  if (true) {
    fs.writeFileSync(path.resolve(RECIPE_DISPLAY_DIR, recipeBookPath + '.mcfunction'), 
    recipeBookPrefix + '\n'+
      pattern.join('').split('').map((slot, index) => {
        const slotContent = key[slot];
        if (!slotContent) {
          return `item replace block ~ ~ ~ container.${slotMapping[index]} with air`;
        }
        if (!slotContent.loot) {
          return `item replace block ~ ~ ~ container.${slotMapping[index]} with ${slotContent.id} ${slotContent.count}\nitem modify block ~ ~ ~ container.${slotMapping[index]} pot:ui_frame`
        }
        return `loot replace block ~ ~ ~ container.${slotMapping[index]} loot ${slotContent.loot}\n`+
        `data modify block ~ ~ ~ Items[{Slot:${slotMapping[index]}b}].Count set value ${slotContent.count}\n`+
        `item modify block ~ ~ ~ container.${slotMapping[index]} pot:ui_frame`
      }).join('\n') + `
loot replace block ~ ~ ~ container.15 loot ${result.loot}
item modify block ~ ~ ~ container.15 pot:ui_frame
function pot:advanced_crafting/fill_recipe_book
data modify entity @s data.Items append from block ~ ~ ~ Items`
    );
  }
  //#endregion
}

fs.appendFileSync(path.resolve(ROOT_DIR, 'check_recipes.mcfunction'), `
execute unless entity @s[tag=matchRecipe] run data merge entity @s {data:{toCraft:"null"}}
tag @s remove matchRecipe`);
