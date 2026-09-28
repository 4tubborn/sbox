execute if score #count.z sbox.tmp matches ..0 run return 1

#say z

execute if predicate sbox:can_summon run function sbox:internal/create/summon/single with storage sbox:macro create

scoreboard players remove #count.z sbox.tmp 1

$execute positioned ~ ~ ~$(step_z) run function sbox:internal/create/summon/z with storage sbox:macro create