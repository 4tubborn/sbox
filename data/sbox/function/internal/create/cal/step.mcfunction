#result: 1e4,若count.x/y/z为1则执行除法会失败，不过count为1也用不上step.x/y/z
#步长： (extent.x - scale) / (count.x - 1)
# numerator = extent.x - min_extent
scoreboard players operation #nume sbox.tmp = #extent.x sbox.create
scoreboard players operation #nume sbox.tmp -= #min_extent sbox.create
# denominator = count.x - 1
scoreboard players operation #den sbox.tmp = #count.x sbox.create
scoreboard players remove #den sbox.tmp 1
# step.x = numerator / denominator
scoreboard players operation #step.x sbox.create = #nume sbox.tmp
scoreboard players operation #step.x sbox.create /= #den sbox.tmp
execute store result storage sbox:macro create.step_x double 0.0001 run scoreboard players get #step.x sbox.create
#y
scoreboard players operation #nume sbox.tmp = #extent.y sbox.create
scoreboard players operation #nume sbox.tmp -= #min_extent sbox.create

scoreboard players operation #den sbox.tmp = #count.y sbox.create
scoreboard players remove #den sbox.tmp 1

scoreboard players operation #step.y sbox.create = #nume sbox.tmp
scoreboard players operation #step.y sbox.create /= #den sbox.tmp
execute store result storage sbox:macro create.step_y double 0.0001 run scoreboard players get #step.y sbox.create
#z
scoreboard players operation #nume sbox.tmp = #extent.z sbox.create
scoreboard players operation #nume sbox.tmp -= #min_extent sbox.create

scoreboard players operation #den sbox.tmp = #count.z sbox.create
scoreboard players remove #den sbox.tmp 1

scoreboard players operation #step.z sbox.create = #nume sbox.tmp
scoreboard players operation #step.z sbox.create /= #den sbox.tmp
execute store result storage sbox:macro create.step_z double 0.0001 run scoreboard players get #step.z sbox.create