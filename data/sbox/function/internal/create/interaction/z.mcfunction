execute if score #count.z sbox.tmp matches ..0 run return 1

#say z

scoreboard players remove #count.z sbox.tmp 1

function sbox:internal/create/interaction/single with storage sbox:macro create

$execute positioned ~ ~ ~$(step_z) run function sbox:internal/create/interaction/z with storage sbox:macro create