execute unless data storage sbox:re max_step run return run scoreboard players set #max_step sbox.create 30000
#pixel to percent
execute if score #pixel sbox.create matches 1 run return run function sbox:internal/create/cal/max_step/pixel
function sbox:internal/create/cal/max_step/percent
#all in blocks, clamp
execute if score #max_step sbox.create matches ..624 run scoreboard players set #max_step sbox.create 625
execute if score #max_step sbox.create matches 30001.. run scoreboard players set #max_step sbox.create 30000