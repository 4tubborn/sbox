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

function sbox:internal/create/cal/pos/_

function sbox:internal/create/type/interaction/pos with storage sbox:macro create.pos