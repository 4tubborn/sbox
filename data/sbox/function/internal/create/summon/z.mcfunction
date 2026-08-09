execute if score #count.z sbox.tmp matches ..0 run return 1

#say z

scoreboard players remove #count.z sbox.tmp 1

function sbox:internal/create/summon/single with storage sbox:macro create

$execute positioned ~ ~ ~$(step_z) run function sbox:internal/create/summon/z with storage sbox:macro create