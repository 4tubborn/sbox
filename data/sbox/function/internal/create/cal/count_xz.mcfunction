#count.x/z取ceil
scoreboard players operation #count.x sbox.create = #extent.x sbox.create
scoreboard players operation #count.x sbox.create += #min_xz sbox.create
scoreboard players remove #count.x sbox.create 1
scoreboard players operation #count.x sbox.create /= #min_xz sbox.create

scoreboard players operation #count.z sbox.create = #extent.z sbox.create
scoreboard players operation #count.z sbox.create += #min_xz sbox.create
scoreboard players remove #count.z sbox.create 1
scoreboard players operation #count.z sbox.create /= #min_xz sbox.create