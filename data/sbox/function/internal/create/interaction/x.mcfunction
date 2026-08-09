execute if score #count.x sbox.tmp matches ..0 run return 1

#say x

scoreboard players operation #count.z sbox.tmp = #count.z sbox.create
function sbox:internal/create/interaction/z with storage sbox:macro create

scoreboard players remove #count.x sbox.tmp 1

$execute positioned ~$(step_x) ~ ~ run function sbox:internal/create/interaction/x with storage sbox:macro create