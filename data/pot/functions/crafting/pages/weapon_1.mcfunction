data merge block ~ ~ ~ {Items:[ {Slot:18b,id:"black_stained_glass_pane",Count:1,tag:{display:{Name:'""'},PotAttr:{ui:1b}}}, {Slot:19b,id:"black_stained_glass_pane",Count:1,tag:{display:{Name:'""'},PotAttr:{ui:1b}}}, {Slot:20b,id:"black_stained_glass_pane",Count:1,tag:{display:{Name:'""'},PotAttr:{ui:1b}}}, {Slot:21b,id:"black_stained_glass_pane",Count:1,tag:{display:{Name:'""'},PotAttr:{ui:1b}}}, {Slot:22b,id:"arrow",Count:1,tag:{display:{Name:'{"text":"Back","italic":false}'},PotAttr:{ui:1b,crafting:{feature:"route_back",sound:1b}}}}, {Slot:23b,id:"black_stained_glass_pane",Count:1,tag:{display:{Name:'""'},PotAttr:{ui:1b}}}, {Slot:24b,id:"black_stained_glass_pane",Count:1,tag:{display:{Name:'""'},PotAttr:{ui:1b}}}, {Slot:25b,id:"black_stained_glass_pane",Count:1,tag:{display:{Name:'""'},PotAttr:{ui:1b}}}, {Slot:26b,id:"paper",Count:1,tag:{display:{Name:'{"text":"Next Page","italic":false}'},PotAttr:{ui:1b,crafting:{sound:1b}}}} ]}

loot replace block ~ ~ ~ container.0 loot pot:weapon/melee/stone_hunk
item modify block ~ ~ ~ container.0 pot:crafting_button
function pot:crafting/pages/append_route