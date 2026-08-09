#executor: root

function #sbox:event/on_remove
function #bs.link:as_children {run:"execute as @s[predicate=sbox:children] run function sbox:internal/remove/box"}
kill @s