execute as @s[predicate=sbox:has_id] run return fail

scoreboard players operation @s sbox.id = #global_id sbox.id
scoreboard players add #global_id sbox.id 1