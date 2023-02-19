const fs = require('fs');
const path = require('path');
const ROOT_DIR = path.resolve(__dirname, '../..','./data/pot/functions/advanced_crafting')
// remove first
fs.rmSync(path.resolve(ROOT_DIR, 'recipes'), {recursive: true});
fs.mkdirSync(path.resolve(ROOT_DIR, 'recipes'));
fs.mkdirSync(path.resolve(ROOT_DIR, 'recipes/take'));
fs.rmSync(path.resolve(ROOT_DIR, 'check_recipes.mcfunction'));
fs.writeFileSync(path.resolve(ROOT_DIR, 'check_recipes.mcfunction'), '');
slotMapping = [2,3,4,11,12,13,20,21,22]

// read all recipes
const recipeList = fs.readdirSync(path.resolve(__dirname, '_')).filter((fname) => fname !== 'generator.js');
recipeList.forEach((_f) => {
  const recipeData = JSON.parse(
    fs.readFileSync(path.resolve(__dirname,'_',_f))
  );
  const resultPath = path.resolve(ROOT_DIR, 'recipes', recipeData.path + '.mcfunction');
  const parentDirPath = path.resolve(ROOT_DIR, 'recipes', recipeData.path, '..');
  const slots = recipeData.pattern.flatMap(m => m.split('')).map(patternEntire => recipeData.keys[patternEntire] ?? null); 
  const randomId = recipeData.result.id;
  const generatedFilePath = path.resolve(ROOT_DIR, 'recipes/take', randomId + '.mcfunction');
  const generatedNamespacedUUID = `pot:advanced_crafting/recipes/take/` + randomId;
  fs.mkdirSync(parentDirPath, {recursive: true});
  fs.appendFileSync(path.resolve(ROOT_DIR, 'check_recipes.mcfunction'), `
execute if data block ~ ~ ~ {Items:[${slots.map((slot, index) => !slot ? null : `{Slot:${slotMapping[index]}b,id:"${slot.id}"${slot.nbt ? `,tag:${slot.nbt}`: ''}}`).filter(_=>_).join(',')}]}${slots.map((_,index) => _ ? null : ` unless data block ~ ~ ~ Items[{Slot:${slotMapping[index]}b}]`).filter(_=>_).join('')} ${slots.map((slot, index) => !slot ? null : `if score @s crft_slot${index} matches ${slot.count}..`).filter(_=>_).join(' ')} run function pot:advanced_crafting/recipes/${recipeData.path}
`);
  fs.writeFileSync(generatedFilePath, `#> ${generatedNamespacedUUID}
# TheColdPot <3
data merge entity @s {data:{toCraft:"null"}}
` +
slots.map((slot, index) => !slot ? null : `scoreboard players remove @s crft_slot${index} ${slot.count}\nexecute store result block ~ ~ ~ Items[{Slot:${slotMapping[index]}b}].Count int 1 run scoreboard players get @s crft_slot${index}`).filter(_=>_).join('\n'));
  
  fs.writeFileSync(resultPath, `#> pot:advanced_crafting/recipes/${recipeData.path}
# 由妈妈生的™TheColdPot生成
tag @s add matchRecipe
execute if entity @s[nbt={data:{toCraft:"${recipeData.result.id}"}}] unless data block ~ ~ ~ Items[{Slot:15b}] run function ${generatedNamespacedUUID}
#item replace block ~ ~ ~ container.15 with green_concrete{display:{Name:'{"text":"Test Passed!","color":"green","italic":false}'}}
loot replace block ~ ~ ~ container.15 loot ${recipeData.result.loot}
data merge entity @s {data:{toCraft:"${recipeData.result.id}"}}
  `)
});
fs.appendFileSync(path.resolve(ROOT_DIR, 'check_recipes.mcfunction'), `
execute unless entity @s[tag=matchRecipe] run data merge entity @s {data:{toCraft:"null"}}
tag @s remove matchRecipe`);









// and then recipe book
recipeList.forEach((_f) => {
  const recipeData = JSON.parse(
    fs.readFileSync(path.resolve(__dirname,'_',_f))
  );
  const resultPath = path.resolve(ROOT_DIR, 'recipes', recipeData.path + '.mcfunction');
  const parentDirPath = path.resolve(ROOT_DIR, 'recipes', recipeData.path, '..');
  const slots = recipeData.pattern.flatMap(m => m.split('')).map(patternEntire => recipeData.keys[patternEntire] ?? null); 
})