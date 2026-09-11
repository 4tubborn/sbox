data remove storage sbox:re create.cur_shape
data modify storage sbox:re create.cur_shape set from storage sbox:re create.shape[0]
execute unless data storage sbox:re create.cur_shape run return 1
data remove storage sbox:re create.shape[0]
#pixel or percent
function sbox:internal/create/cal/shape/_

# extent 恒为正数,如果 min > max 则swap
execute if score #max_x sbox.create < #min_x sbox.create run scoreboard players operation #max_x sbox.create >< #min_x sbox.create
execute if score #max_y sbox.create < #min_y sbox.create run scoreboard players operation #max_y sbox.create >< #min_y sbox.create
execute if score #max_z sbox.create < #min_z sbox.create run scoreboard players operation #max_z sbox.create >< #min_z sbox.create

#tellraw @a ["",\
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