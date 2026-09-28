execute if score #count.z sbox.tmp matches ..0 run return 1

#say z

function sbox:internal/create/interaction/single with storage sbox:macro create

scoreboard players remove #count.z sbox.tmp 1

$execute positioned ~ ~ ~$(step_z) run function sbox:internal/create/interaction/z with storage sbox:macro create