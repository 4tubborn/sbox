# storage sbox:in {update:{mode:"keep"|"replace"}}
#executor: root marker
#其他children不影响，只删除box/interaction
data remove storage sbox:re update
data modify storage sbox:re update merge from storage sbox:in update
#rm input
data remove storage sbox:in update

scoreboard players set #has_box sbox.tmp 0
scoreboard players set #has_interaction sbox.tmp 0
#api trigger
function #sbox:event/on_update

function #bs.link:as_children {run:"execute as @s[predicate=sbox:children] run function sbox:internal/update/shape/_"}

execute unless data storage sbox:re update.type unless data storage sbox:re {update:{mode:"replace"}} run function sbox:internal/update/shape/type

data modify storage sbox:re update merge value {root: false, update: true}
data modify storage sbox:in create set from storage sbox:re update

#tellraw @a ["storage: ",{storage:"sbox:in",nbt:"create"}]

execute at @s run function sbox:internal/create/