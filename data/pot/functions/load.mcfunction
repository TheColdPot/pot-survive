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

scoreboard objectives add marker_marking dummy "Marker: marking"

bossbar add pot:final_boss ""

team add proximaRelated "Promixa Related"
team modify proximaRelated collisionRule pushOtherTeams

gamerule commandBlockOutput false
tellraw @a ["\n", {"text":"POTTY SURVIVE","color":"yellow","bold":true}, {"text":" v1-alpha","color":"gold"},"\n\n",{"text":"由 TheColdPot and SaKuraYeager 开发","color":"gray"}, "\n",{"text":"由 Arctic Pot Team 及其他志愿者测试","color":"gray"},"\n\n",{"text":"为了保证您的体验，命令方块输出已自动关闭","color":"dark_gray","italic":true},"\n"]
