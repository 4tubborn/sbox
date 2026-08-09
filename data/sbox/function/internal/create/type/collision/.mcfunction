#tellraw @a ["",\
  {"text":"[DEBUG] Extents: ","color":"yellow","bold":true},\
  {"text":"dX=","color":"gray"},\
  {"score":{"name":"#extent.x","objective":"sbox.create"},"color":"red"},\
  {"text":", dY=","color":"gray"},\
  {"score":{"name":"#extent.y","objective":"sbox.create"},"color":"green"},\
  {"text":", dZ=","color":"gray"},\
  {"score":{"name":"#extent.z","objective":"sbox.create"},"color":"blue"},\
  {"text":" | ","color":"dark_gray"},\
  {"text":"Min Extent: ","color":"gold","bold":true},\
  {"score":{"name":"#min_extent","objective":"sbox.create"},"color":"aqua","bold":true}\
]

function sbox:internal/create/cal/count

#tellraw @a ["",\
  {"text":"[DEBUG] Subdivisions (Ceil Counts): ","color":"gold","bold":true},\
  {"text":"X=","color":"gray"},\
  {"score":{"name":"#count.x","objective":"sbox.create"},"color":"red","bold":true},\
  {"text":", Y=","color":"gray"},\
  {"score":{"name":"#count.y","objective":"sbox.create"},"color":"green","bold":true},\
  {"text":", Z=","color":"gray"},\
  {"score":{"name":"#count.z","objective":"sbox.create"},"color":"blue","bold":true}\
]
#step.x/y/z
function sbox:internal/create/cal/step

execute store result storage sbox:macro create.scale double 0.0001 run scoreboard players get #min_extent sbox.create

#tellraw @a ["[DEBUG] Stor: ",{storage:"sbox:macro",nbt:"create"}]

execute store result storage sbox:macro create.pos.offset double 0.00005 run scoreboard players get #min_extent sbox.create
data modify storage sbox:macro create.pos.x set from storage sbox:re create.cur_shape[0]
data modify storage sbox:macro create.pos.y set from storage sbox:re create.cur_shape[1]
data modify storage sbox:macro create.pos.z set from storage sbox:re create.cur_shape[2]

function sbox:internal/create/type/collision/pos with storage sbox:macro create.pos