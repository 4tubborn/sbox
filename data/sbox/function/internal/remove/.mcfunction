#executor: root
data remove storage sbox:re remove
#data modify storage sbox:re remove set value {keep_root:false}
data modify storage sbox:re remove merge from storage sbox:in remove
#rm input
data remove storage sbox:in remove

function #sbox:event/on_remove

function #bs.link:as_children {run:"execute as @s[predicate=sbox:children] run function sbox:internal/remove/box"}

execute if data storage sbox:re {remove:{keep_root:true}} run return 1
kill @s