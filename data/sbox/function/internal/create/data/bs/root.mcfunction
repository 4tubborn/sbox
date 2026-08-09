#Executor: root
#Create link, also for tag=sbox.init.children
tag @s add sbox.link.parent
execute as @e[tag=sbox.init.children,distance=..32] run function sbox:internal/create/data/bs/link
tag @s remove sbox.link.parent
#execute as @e[type=text_display,tag=sbox.init,distance=..32] if entity @n[type=marker] run say 1

#execute if entity @e[type=text_display,tag=sbox.unit_root,distance=..32] run say 1

#function #bs.link:as_children {run:"say kids"}
say root
#run as root
function #sbox:init/root
#run as text displays/interaction
function #bs.link:as_children {run:"execute as @s[predicate=sbox:children] run function #sbox:init/boxes"}

function sbox:internal/create/data/bs/id

return 1