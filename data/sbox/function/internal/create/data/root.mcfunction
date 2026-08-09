#is a new root or not
execute if data storage sbox:re {create:{root:true}} as @n[type=marker,tag=sbox.init,distance=..1] at @s run return run function sbox:internal/create/data/bs/root
return run execute at @s run function sbox:internal/create/data/bs/root