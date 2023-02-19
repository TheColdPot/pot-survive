summon armor_stand ~ ~ ~ {Tags:[tool_man],Invisible:1}
item replace entity @e[type=armor_stand,tag=tool_man,limit=1,sort=nearest] weapon.mainhand from entity @s weapon.mainhand
item replace entity @s weapon.mainhand with air
item replace entity @s weapon.mainhand from entity @e[type=armor_stand,tag=tool_man,limit=1,sort=nearest] weapon.mainhand

item replace entity @e[type=armor_stand,tag=tool_man,limit=1,sort=nearest] weapon.offhand from entity @s weapon.offhand
item replace entity @s weapon.offhand with air
item replace entity @s weapon.offhand from entity @e[type=armor_stand,tag=tool_man,limit=1,sort=nearest] weapon.offhand
kill @e[type=armor_stand,tag=tool_man]