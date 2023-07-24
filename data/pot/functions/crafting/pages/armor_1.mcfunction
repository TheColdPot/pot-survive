data merge block ~ ~ ~ {Items:[ {Slot:19b,id:"black_stained_glass_pane",Count:1,tag:{display:{Name:'""'},PotAttr:{ui:1b}}}, {Slot:20b,id:"black_stained_glass_pane",Count:1,tag:{display:{Name:'""'},PotAttr:{ui:1b}}}, {Slot:21b,id:"black_stained_glass_pane",Count:1,tag:{display:{Name:'""'},PotAttr:{ui:1b}}}, {Slot:22b,id:"arrow",Count:1,tag:{display:{Name:'{"text":"Back","italic":false}'},PotAttr:{ui:1b,crafting:{feature:"route_back",sound:1b}}}}, {Slot:23b,id:"black_stained_glass_pane",Count:1,tag:{display:{Name:'""'},PotAttr:{ui:1b}}}, {Slot:24b,id:"black_stained_glass_pane",Count:1,tag:{display:{Name:'""'},PotAttr:{ui:1b}}}, {Slot:25b,id:"black_stained_glass_pane",Count:1,tag:{display:{Name:'""'},PotAttr:{ui:1b}}} ]}

#BEGINITEMS
#ENDITEMS

function pot:crafting/pages/append_route
data modify entity @s data.routeFeature set value {"name":"armor","page":1}
