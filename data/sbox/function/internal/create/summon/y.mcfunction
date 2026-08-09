execute if score #count.y sbox.tmp matches ..0 run return 1

#say y

scoreboard players operation #count.z sbox.tmp = #count.z sbox.create
function sbox:internal/create/summon/z with storage sbox:macro create

scoreboard players remove #count.y sbox.tmp 1

$execute positioned ~ ~$(step_y) ~ run function sbox:internal/create/summon/y with storage sbox:macro create