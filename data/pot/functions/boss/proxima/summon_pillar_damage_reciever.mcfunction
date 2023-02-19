summon armor_stand 25 8 15 {  Passengers:[{id:"giant",ActiveEffects:[{Id:11,Duration:2147483647,Amplifier:100,ShowParticles:false},{Id:14,Duration:2147483647,ShowParticles:false}],Silent:1b,NoAI:true,Tags:[proximaPillarDamageRecieverPart,proximaPillarDamageRecieverPart0,proximaPillarDamageReciever,proximaPillarDamageReciever0]}],NoGravity:1b,Invulnerable:1b,Marker:1b,Tags:[proximaPillarDamageRecieverPart,proximaPillarDamageRecieverPart0,proximaPillarDamageRecieverBase,proximaPillarDamageRecieverBase0]}
summon armor_stand 30 8 0 {   Passengers:[{id:"giant",ActiveEffects:[{Id:11,Duration:2147483647,Amplifier:100,ShowParticles:false},{Id:14,Duration:2147483647,ShowParticles:false}],Silent:1b,NoAI:true,Tags:[proximaPillarDamageRecieverPart,proximaPillarDamageRecieverPart1,proximaPillarDamageReciever,proximaPillarDamageReciever1]}],NoGravity:1b,Invulnerable:1b,Marker:1b,Tags:[proximaPillarDamageRecieverPart,proximaPillarDamageRecieverPart1,proximaPillarDamageRecieverBase,proximaPillarDamageRecieverBase1]}
summon armor_stand 25 8 -15 { Passengers:[{id:"giant",ActiveEffects:[{Id:11,Duration:2147483647,Amplifier:100,ShowParticles:false},{Id:14,Duration:2147483647,ShowParticles:false}],Silent:1b,NoAI:true,Tags:[proximaPillarDamageRecieverPart,proximaPillarDamageRecieverPart2,proximaPillarDamageReciever,proximaPillarDamageReciever2]}],NoGravity:1b,Invulnerable:1b,Marker:1b,Tags:[proximaPillarDamageRecieverPart,proximaPillarDamageRecieverPart2,proximaPillarDamageRecieverBase,proximaPillarDamageRecieverBase2]}
summon armor_stand 10 8 -25 { Passengers:[{id:"giant",ActiveEffects:[{Id:11,Duration:2147483647,Amplifier:100,ShowParticles:false},{Id:14,Duration:2147483647,ShowParticles:false}],Silent:1b,NoAI:true,Tags:[proximaPillarDamageRecieverPart,proximaPillarDamageRecieverPart3,proximaPillarDamageReciever,proximaPillarDamageReciever3]}],NoGravity:1b,Invulnerable:1b,Marker:1b,Tags:[proximaPillarDamageRecieverPart,proximaPillarDamageRecieverPart3,proximaPillarDamageRecieverBase,proximaPillarDamageRecieverBase3]}
summon armor_stand -10 8 -25 {Passengers:[{id:"giant",ActiveEffects:[{Id:11,Duration:2147483647,Amplifier:100,ShowParticles:false},{Id:14,Duration:2147483647,ShowParticles:false}],Silent:1b,NoAI:true,Tags:[proximaPillarDamageRecieverPart,proximaPillarDamageRecieverPart4,proximaPillarDamageReciever,proximaPillarDamageReciever4]}],NoGravity:1b,Invulnerable:1b,Marker:1b,Tags:[proximaPillarDamageRecieverPart,proximaPillarDamageRecieverPart4,proximaPillarDamageRecieverBase,proximaPillarDamageRecieverBase4]}
summon armor_stand -25 8 -15 {Passengers:[{id:"giant",ActiveEffects:[{Id:11,Duration:2147483647,Amplifier:100,ShowParticles:false},{Id:14,Duration:2147483647,ShowParticles:false}],Silent:1b,NoAI:true,Tags:[proximaPillarDamageRecieverPart,proximaPillarDamageRecieverPart5,proximaPillarDamageReciever,proximaPillarDamageReciever5]}],NoGravity:1b,Invulnerable:1b,Marker:1b,Tags:[proximaPillarDamageRecieverPart,proximaPillarDamageRecieverPart5,proximaPillarDamageRecieverBase,proximaPillarDamageRecieverBase5]}
summon armor_stand -30 8 0 {  Passengers:[{id:"giant",ActiveEffects:[{Id:11,Duration:2147483647,Amplifier:100,ShowParticles:false},{Id:14,Duration:2147483647,ShowParticles:false}],Silent:1b,NoAI:true,Tags:[proximaPillarDamageRecieverPart,proximaPillarDamageRecieverPart6,proximaPillarDamageReciever,proximaPillarDamageReciever6]}],NoGravity:1b,Invulnerable:1b,Marker:1b,Tags:[proximaPillarDamageRecieverPart,proximaPillarDamageRecieverPart6,proximaPillarDamageRecieverBase,proximaPillarDamageRecieverBase6]}
summon armor_stand -25 8 15 { Passengers:[{id:"giant",ActiveEffects:[{Id:11,Duration:2147483647,Amplifier:100,ShowParticles:false},{Id:14,Duration:2147483647,ShowParticles:false}],Silent:1b,NoAI:true,Tags:[proximaPillarDamageRecieverPart,proximaPillarDamageRecieverPart7,proximaPillarDamageReciever,proximaPillarDamageReciever7]}],NoGravity:1b,Invulnerable:1b,Marker:1b,Tags:[proximaPillarDamageRecieverPart,proximaPillarDamageRecieverPart7,proximaPillarDamageRecieverBase,proximaPillarDamageRecieverBase7]}
scoreboard players set @e[tag=proximaPillarDamageRecieverPart0] genericScore 0
scoreboard players set @e[tag=proximaPillarDamageRecieverPart1] genericScore 1
scoreboard players set @e[tag=proximaPillarDamageRecieverPart2] genericScore 2
scoreboard players set @e[tag=proximaPillarDamageRecieverPart3] genericScore 3
scoreboard players set @e[tag=proximaPillarDamageRecieverPart4] genericScore 4
scoreboard players set @e[tag=proximaPillarDamageRecieverPart5] genericScore 5
scoreboard players set @e[tag=proximaPillarDamageRecieverPart6] genericScore 6
scoreboard players set @e[tag=proximaPillarDamageRecieverPart7] genericScore 7

execute as @e[tag=proximaPillarDamageRecieverBase] at @s run summon armor_stand ~ 11 ~2 {CustomName:'{"text":"破坏柱子！","color":"yellow"}',CustomNameVisible:1b,Invisible:1b,Invulnerable:1b,Marker:1b,Tags:[proximaPillarDamageRecieverPart,proximaPillarHealthIndicator]}
execute as @e[tag=proximaPillarDamageRecieverBase] at @s positioned ~ 11 ~2 run scoreboard players operation @e[tag=proximaPillarHealthIndicator,sort=nearest,limit=1] genericScore = @s genericScore 

scoreboard players set pillar0Health genericScore 20
scoreboard players set pillar1Health genericScore 20
scoreboard players set pillar2Health genericScore 20
scoreboard players set pillar3Health genericScore 20
scoreboard players set pillar4Health genericScore 20
scoreboard players set pillar5Health genericScore 20
scoreboard players set pillar6Health genericScore 20
scoreboard players set pillar7Health genericScore 20
