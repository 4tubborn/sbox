# storage sbox:in {update:{mode:"keep"|"replace"}}
#executor: root marker
#其他children不影响，只删除box/interaction
scoreboard players set #has_box sbox.tmp 0
scoreboard players set #has_interaction sbox.tmp 0
function #bs.link:as_children {run:"execute as @s[predicate=sbox:children] run function sbox:internal/update/shape/_"}

function #bs.link:remove_link

data remove storage sbox:in create
data modify storage sbox:in create merge from storage sbox:in update
data modify storage sbox:in create.root set value false

execute unless data storage sbox:in update.type unless data storage sbox:in {update:{mode:"replace"}} run function sbox:internal/update/shape/type

tellraw @a ["storage: ",{storage:"sbox:in",nbt:"create"}]

execute at @s run function sbox:internal/create/