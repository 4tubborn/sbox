data remove storage sbox:re create.cur_shape
data modify storage sbox:re create.cur_shape set from storage sbox:re create.shape[0]
execute unless data storage sbox:re create.cur_shape run return 1
data remove storage sbox:re create.shape[0]

execute store result score #min_x sbox.create run data get storage sbox:re create.cur_shape[0] 10000
execute store result score #min_y sbox.create run data get storage sbox:re create.cur_shape[1] 10000
execute store result score #min_z sbox.create run data get storage sbox:re create.cur_shape[2] 10000
execute store result score #max_x sbox.create run data get storage sbox:re create.cur_shape[3] 10000
execute store result score #max_y sbox.create run data get storage sbox:re create.cur_shape[4] 10000
execute store result score #max_z sbox.create run data get storage sbox:re create.cur_shape[5] 10000

tellraw @a ["",\
  {"text":"[DEBUG] AABB Bounds: ","color":"aqua","bold":true},\
  {"text":"Min(","color":"gray"},\
  {"score":{"name":"#min_x","objective":"sbox.create"},"color":"red"},\
  {"text":", ","color":"gray"},\
  {"score":{"name":"#min_y","objective":"sbox.create"},"color":"green"},\
  {"text":", ","color":"gray"},\
  {"score":{"name":"#min_z","objective":"sbox.create"},"color":"blue"},\
  {"text":") -> Max(","color":"gray"},\
  {"score":{"name":"#max_x","objective":"sbox.create"},"color":"red"},\
  {"text":", ","color":"gray"},\
  {"score":{"name":"#max_y","objective":"sbox.create"},"color":"green"},\
  {"text":", ","color":"gray"},\
  {"score":{"name":"#max_z","objective":"sbox.create"},"color":"blue"},\
  {"text":")","color":"gray"}\
]

#extent & max extent
function sbox:internal/create/cal/extent

#execute store result storage sbox:macro create.min_extent float 0.0001 run scoreboard players get #min_extent sbox.create

function sbox:internal/create/type/match

function sbox:internal/create/loop/