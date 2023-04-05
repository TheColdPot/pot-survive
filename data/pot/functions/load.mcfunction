scoreboard objectives add trigger.proximaDeath deathCount "Trigger: Proxima Fight Death"
scoreboard objectives add genericScore dummy "Generic score"
scoreboard objectives add genericScore2 dummy "Generic score 2"
scoreboard objectives add cooldown.giantSpoon dummy "CD: giant_spoon"
scoreboard objectives add crafting.slot0 dummy "Crafting: slot 0 item count"
scoreboard objectives add crafting.slot1 dummy "Crafting: slot 1 item count"
scoreboard objectives add crafting.slot2 dummy "Crafting: slot 2 item count"
scoreboard objectives add crafting.slot3 dummy "Crafting: slot 3 item count"
scoreboard objectives add crafting.slot4 dummy "Crafting: slot 4 item count"
scoreboard objectives add crafting.slot5 dummy "Crafting: slot 5 item count"
scoreboard objectives add crafting.slot6 dummy "Crafting: slot 6 item count"
scoreboard objectives add crafting.slot7 dummy "Crafting: slot 7 item count"
scoreboard objectives add crafting.slot8 dummy "Crafting: slot 8 tem count"
scoreboard objectives add crafting.takeRecipe dummy "TAKE RECIPE"
scoreboard objectives add uuid0 dummy "UUID[0]"
scoreboard objectives add uuid1 dummy "UUID[1]"
scoreboard objectives add uuid2 dummy "UUID[2]"
scoreboard objectives add uuid3 dummy "UUID[3]"
scoreboard objectives add combat._finalDmg dummy "Final Damage (Temp)"
scoreboard objectives add combat.melee dummy "Final Melee Damage"
scoreboard objectives add combat.damage dummy "Damage"
scoreboard objectives add combat.critDamage dummy "Crit Damage"
scoreboard objectives add combat.critChance dummy "Crit Chance"
scoreboard objectives add combat.displayDamage dummy "Display Damage"
# scoreboard objectives add combat.damageDeal dummy "Damage dealing"
scoreboard objectives add combat.strength dummy "Strength"
scoreboard objectives add combat._armorStat dummy "Armor Stat"
# scoreboard objectives add combat.combatSpeed dummy "Strength"
scoreboard objectives add combat.maxHealth dummy "Max health"
scoreboard objectives add combat.health dummy {"text":"❤","color":"red"}
scoreboard objectives add combat._regen dummy "Health Regen Calculation"
scoreboard objectives add combat.defense dummy {"text":"Defense","color":"green"}
scoreboard objectives add combat.ferocity dummy "Ferocity"
scoreboard objectives add combat.ferocityAttacks dummy "Ferocity Execution Count"
scoreboard objectives add combat.ferocityDamage dummy "Ferocity Damage"
scoreboard objectives add combat._ferocity dummy "Ferocity Temp"
scoreboard objectives add combat._defense dummy "Defense + 100"
scoreboard objectives setdisplay belowName combat.health
scoreboard objectives add constant dummy "Constant"
scoreboard players set 100 constant 100
scoreboard players set 500 constant 500
scoreboard players set 5 constant 5
scoreboard players set 0 constant 0
scoreboard players set @a combat.maxHealth 100
scoreboard objectives add combat.attackSpeed dummy "Attack Speed"
scoreboard objectives add combat._cooldown dummy "Attack Cooldown"
scoreboard objectives add oldSelectedSlot dummy "Old selected slot"
scoreboard objectives add selectedSlot dummy "Selected slot"
# scoreboard objectives add combat._clearVanilla dummy "Clear vanilla"


scoreboard objectives add marker_marking dummy "Marker: marking"

bossbar add pot:final_boss ""

team add proximaRelated "Promixa Related"
team modify proximaRelated collisionRule pushOtherTeams

gamerule commandBlockOutput false
tellraw @a ["\n", {"text":"POTTY SURVIVE","color":"yellow","bold":true}, {"text":" v1-alpha","color":"gold"},"\n\n",{"text":"由 TheColdPot and SaKuraYeager 开发","color":"gray"}, "\n",{"text":"由 Arctic Pot Team 及其他志愿者测试","color":"gray"},"\n\n",{"text":"为了保证您的体验，命令方块输出已自动关闭","color":"dark_gray","italic":true},"\n"]
