const fs = require('fs');
const path = require('path');
const RECIPE_DISPLAY_DIR = path.resolve(__dirname, '../../data/pot/functions/advanced_crafting/recipe_book/recipes_display/display')

slotMapping = [2,3,4,11,12,13,20,21,22];

// const ROOT_DIR = path.resolve(__dirname, '../..','./data/pot/functions/advanced_crafting')
const armorRecipeList = fs.readdirSync(path.resolve(__dirname, 'armors'));
const rpArray = []
for(let i = 0; i <= 25; i++) {
  if (slotMapping.includes(i)) continue;
  rpArray.push(`item replace block ~ ~ ~ container.${i} with gray_stained_glass_pane{display:{Name:'""'},potAttr:"uiFrame"}`)
}
const reversedProgram = rpArray.join('\n');
// console.log(reversedProgram)

armorRecipeList.forEach(_f => {
  const data = JSON.parse(fs.readFileSync(path.resolve(__dirname,'armors',_f)));
  if (data.type === 'set') {
    // generate the entrance
    // bruh
    const getPieceFunc = (piece) =>  {
      let pieceData = data[piece];
      if (pieceData.refer && !pieceData.length) {
        const _____ = JSON.parse(fs.readFileSync(path.resolve(__dirname,'../recipes/_', pieceData.refer + '.json')));
        pieceData = _____.pattern.join('').split('').map((____) => {
          if (____ === ' ') return null;
          const key = _____.keys[____];
          return [false, key.id, key.count]
        })
      }
      return reversedProgram + '\n' +
      (pieceData.map((slot, index) => {
        if (slot === null) return `item replace block ~ ~ ~ container.${slotMapping[index]} with air`;
        // slot: [isCustomItem, id, count]
        if (!slot[0]) return `item replace block ~ ~ ~ container.${slotMapping[index]} with ${slot[1]}{potAttr:"uiFrame"} ${slot[2]}\nitem modify block ~ ~ ~ container.${slotMapping[index]} pot:ui_frame`;
        else return `loot replace block ~ ~ ~ container.${slotMapping[index]} loot ${slot[1]}
data modify block ~ ~ ~ Items[{Slot:${slotMapping[index]}b}].Count set value ${slot[2]}
item modify block ~ ~ ~ container.${slotMapping[index]} pot:ui_frame`;
      }).join('\n')) + `
loot replace block ~ ~ ~ container.15 loot pot:${data.result}/${piece}
item modify block ~ ~ ~ container.15 pot:ui_frame
function pot:advanced_crafting/fill_recipe_book
data modify entity @s data.Items append from block ~ ~ ~ Items`;
    }

    // const helmetRecipe = getPieceFunc('helmet');
    fs.writeFileSync(path.resolve(RECIPE_DISPLAY_DIR, data.path, 'helmet.mcfunction'), getPieceFunc('helmet'))
    fs.writeFileSync(path.resolve(RECIPE_DISPLAY_DIR, data.path, 'leggings.mcfunction'), getPieceFunc('leggings'))
    fs.writeFileSync(path.resolve(RECIPE_DISPLAY_DIR, data.path, 'chestplate.mcfunction'), getPieceFunc('chestplate'))
    fs.writeFileSync(path.resolve(RECIPE_DISPLAY_DIR, data.path, 'boots.mcfunction'), getPieceFunc('boots'))
  }
});
