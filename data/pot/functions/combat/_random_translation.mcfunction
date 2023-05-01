loot replace entity @s armor.feet loot pot:_random_provider/damage_displayer_translation
execute store result entity @e[type=text_display,limit=1,tag=e1f96d41b232c21d7cb60f8a8223d150] transformation.translation[0] float 0.1 run data get entity @s ArmorItems[0].tag.AttributeModifiers[{Name:"randomProvider"}].Amount
loot replace entity @s armor.feet loot pot:_random_provider/damage_displayer_translation
execute store result entity @e[type=text_display,limit=1,tag=e1f96d41b232c21d7cb60f8a8223d150] transformation.translation[1] float 0.025 run data get entity @s ArmorItems[0].tag.AttributeModifiers[{Name:"randomProvider"}].Amount
loot replace entity @s armor.feet loot pot:_random_provider/damage_displayer_translation
execute store result entity @e[type=text_display,limit=1,tag=e1f96d41b232c21d7cb60f8a8223d150] transformation.translation[2] float 0.1 run data get entity @s ArmorItems[0].tag.AttributeModifiers[{Name:"randomProvider"}].Amount
data merge entity @s {ArmorItems:[{},{},{},{}]}
kill