scoreboard players operation #min_xz sbox.create = #extent.x sbox.create
execute if score #extent.z sbox.create < #min_xz sbox.create run scoreboard players operation #min_xz sbox.create = #extent.z sbox.create

function sbox:internal/create/cal/count_xz
function sbox:internal/create/cal/step_xz

scoreboard players operation #width sbox.create = #min_xz sbox.create
scoreboard players add #width sbox.create 1
scoreboard players operation #height sbox.create = #extent.y sbox.create
scoreboard players add #height sbox.create 2

execute store result storage sbox:macro create.width double 0.0001 run scoreboard players get #width sbox.create
execute store result storage sbox:macro create.height double 0.0001 run scoreboard players get #height sbox.create

execute store result storage sbox:macro create.pos.offset double 0.00005 run scoreboard players get #min_xz sbox.create
data modify storage sbox:macro create.pos.x set from storage sbox:re create.cur_shape[0]
data modify storage sbox:macro create.pos.y set from storage sbox:re create.cur_shape[1]
data modify storage sbox:macro create.pos.z set from storage sbox:re create.cur_shape[2]

function sbox:internal/create/type/interaction/pos with storage sbox:macro create.pos