scoreboard players operation #min_extent sbox.create = #extent.x sbox.create
execute if score #extent.y sbox.create < #min_extent sbox.create run scoreboard players operation #min_extent sbox.create = #extent.y sbox.create
execute if score #extent.z sbox.create < #min_extent sbox.create run scoreboard players operation #min_extent sbox.create = #extent.z sbox.create
execute if score #min_extent sbox.create > #max_step sbox.create run scoreboard players operation #min_extent sbox.create = #max_step sbox.create