#Based on bs.link
#===
tag @s add bs.link.this
execute as @n[tag=!bs.link.this,tag=sbox.link.parent,distance=..0.1] unless predicate bs.id:has_suid run function #bs.id:give_suid

#tellraw @a {entity:"@n[tag=!bs.link.this,type=marker]",nbt:"Tags"}

scoreboard players operation @s bs.link.to = @n[tag=!bs.link.this,tag=sbox.link.parent,distance=..0.1] bs.id
tag @s remove bs.link.this
function #bs.link:update_link
#===
tag @s remove sbox.init.children