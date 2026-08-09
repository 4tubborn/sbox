#count.x/y/z取ceil,(A+B-1)/B
scoreboard players operation #count.x sbox.create = #extent.x sbox.create
scoreboard players operation #count.x sbox.create += #min_extent sbox.create
scoreboard players remove #count.x sbox.create 1
scoreboard players operation #count.x sbox.create /= #min_extent sbox.create

scoreboard players operation #count.y sbox.create = #extent.y sbox.create
scoreboard players operation #count.y sbox.create += #min_extent sbox.create
scoreboard players remove #count.y sbox.create 1
scoreboard players operation #count.y sbox.create /= #min_extent sbox.create

scoreboard players operation #count.z sbox.create = #extent.z sbox.create
scoreboard players operation #count.z sbox.create += #min_extent sbox.create
scoreboard players remove #count.z sbox.create 1
scoreboard players operation #count.z sbox.create /= #min_extent sbox.create