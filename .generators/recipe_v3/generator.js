const fsp = require('fs/promises')
const fs = require('fs')
const path = require('path')
const util = require('util')
const files = fs.readdirSync(path.resolve(__dirname,'defs'))

const toJson = (buffer) => JSON.parse(buffer.toString())
const parse1 = () => {

}
const craftingPath = path.resolve(__dirname, '../../data/pot/functions/crafting')
const pagesPath = path.resolve(__dirname, '../../data/pot/functions/crafting/pages')
const takePath = path.resolve(__dirname, '../../data/pot/functions/crafting/take')
const takeGatheredPath = path.resolve(__dirname, '../../data/pot/functions/crafting/take_item.mcfunction')
const itemsPath = path.resolve(__dirname, '../../data/pot/functions/crafting/items')

fs.writeFileSync(takeGatheredPath,``)

fsp.readFile(path.resolve(__dirname, 'defs', 'weapons.json'))
  .then(toJson)
  .then(data => {
    data.forEach((recipe, index) => {
      const page = Math.floor(index / 18)
      const id = recipe.id
      const indexOnPage = index % 18
      const /*visual page*/ vPage = page + 1
      if (indexOnPage === 0) {
        fs.writeFileSync(path.resolve(pagesPath, `test_weapon_${vPage}.mcfunction`), '')
      }
      fs.appendFileSync(path.resolve(pagesPath, `test_weapon_${vPage}.mcfunction`), `execute store success score @s crafting.uiClick run clear @a[distance=..8] #pot:ui{PotAttr:{ui:1b,id:"${id}",crafting:{result:0b}}}\nexecute if score @s crafting.uiClick matches 1.. run function pot:crafting/items/${id}\n`)
      fs.appendFileSync(takeGatheredPath, `execute if data entity @s {data:{routeFeature:{"name":"item","id":"${id}"}}} as @a[distance=..8] store success score @s crafting.takeRecipe run clear @s #pot:ui{PotAttr:{id:"${recipe.result.potid}",crafting:{result:1b}}} 0\n execute if data entity @s {data:{routeFeature:{"name":"item","id":"${id}"}}} as @a[distance=..8,scores={crafting.takeRecipe=1..}] run function pot:crafting/take/${id}\n`)

      const currentItemPath = path.resolve(itemsPath, `${id}.mcfunction`)
      fsp.writeFile(currentItemPath, `function pot:crafting/items/fill_frame\n`)
        .then(() => fsp.appendFile(currentItemPath, recipe.pattern.flatMap(p => {
          if (p.count <= 64) return p
          else {
            const cute = Array(Math.floor(p.count/64)).fill({...p, count: 64})
            if (p.count % 64 != 0) cute.push({...p, count: p.count%64})
            return cute
          }
        })
        .map((p, s) => {
          const slot = Math.floor(s/4) * 9 + 1 + s % 4
          if (p.vanilla) {
            return `item replace block ~ ~ ~ container.${slot} with ${p.id} ${p.count}\n`
          } else {
            return `loot replace block ~ ~ ~ container.${slot} loot ${p.id}\ndata modify block ~ ~ ~ Items[{Slot:${slot}b}].Count set value ${p.count}\n`
          }
        }).join('\n')))
        .then(() => fsp.appendFile(currentItemPath, `\nloot replace block ~ ~ ~ container.15 loot ${recipe.result.id}\ndata modify block ~ ~ ~ Items[{Slot:15b}].Count set value ${recipe.result.count}
        \nfunction pot:crafting/items/gain_item_tag\nfunction pot:crafting/pages/append_route\ndata modify entity @s data.routeFeature set value {"name":"item","id":"${id}"}`))


        const currentTakePath = path.resolve(takePath, `${id}.mcfunction`)
        const currentTakeSuccessPath = path.resolve(takePath, `success/${id}.mcfunction`)
        fsp.writeFile(currentTakePath, '')
        fsp.writeFile(currentTakeSuccessPath, '')
        .then(() => fsp.appendFile(currentTakePath, recipe.pattern.map((p,i) => {
          // TODO
          if (p.vanilla)
           return `execute store result score @s crafting.slot${i} run clear @s ${p.id} 0\n`
          else
           return `execute store result score @s crafting.slot${i} run clear @s #pot:ui{PotAttr:{id:"${p.potid}"}} 0\n`
        }).join('\n') + '\n'))
        .then(() => {
          const selector = '@s[scores={' + recipe.pattern.map((p,i) => `crafting.slot${i}=${p.count}..`).join(',') + '}]'
          // fs.appendFileSync(currentTakePath, recipe.pattern.map((p) => `execute if entity ${selector} run clear @s ` + (p.vanilla ? p.id : `#pot:ui{PotAttr:{id:"${p.potid}"}}`) + ` ${p.count}`).join('\n'))
          fs.appendFileSync(currentTakeSuccessPath, recipe.pattern.map((p) => `clear @s ` + (p.vanilla ? p.id : `#pot:ui{PotAttr:{id:"${p.potid}"}}`) + ` ${p.count}`).join('\n'))
          fs.appendFileSync(currentTakeSuccessPath, `\nexecute at @s run loot spawn ~ ~1 ~ loot ${recipe.result.id}\n`)
          fs.appendFileSync(currentTakeSuccessPath, `execute at @s run playsound minecraft:entity.item.pickup block @s`)
          fs.appendFileSync(currentTakePath, `\nexecute if entity ${selector} run function pot:crafting/take/success/${id}\nexecute unless entity ${selector} run tellraw @s {"text":"Not enough material!","color":"red"}\nexecute unless entity ${selector} at @s run playsound minecraft:entity.enderman.teleport block @s ~ ~ ~ 1 .1`)
        })
    })

    
  })

//我去把魔法取消写了
// k :P