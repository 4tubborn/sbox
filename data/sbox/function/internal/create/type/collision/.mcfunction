function sbox:internal/create/cal/min_extent
function sbox:internal/create/cal/count

#step.x/y/z
function sbox:internal/create/cal/step

execute store result storage sbox:macro create.scale double 0.0001 run scoreboard players get #min_extent sbox.create

#tellraw @a ["[DEBUG] Stor: ",{storage:"sbox:macro",nbt:"create"}]

execute store result storage sbox:macro create.pos.offset double 0.00005 run scoreboard players get #min_extent sbox.create

function sbox:internal/create/cal/pos/_

function sbox:internal/create/type/collision/pos with storage sbox:macro create.pos