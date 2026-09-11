#input: sbox:in {create:{shape:[[min_x, min_y, min_z, max_x, max_y, max_z]],offset"{x:<float>,y:<offset>,z:<float>},type:"collision"/"interaction"/"both"}}
data modify storage sbox:re create set value {shape:[],offset:{x:0,y:0,z:0},root:true,type:"collision"}
data modify storage sbox:re create merge from storage sbox:in create
#pixel:<bool>
scoreboard players set #pixel sbox.create 0
execute store result score #pixel sbox.create run data get storage sbox:re create.pixel
#pixel to percent
execute if score #pixel sbox.create matches 1 run function sbox:internal/create/cal/shape/offset
#tellraw @a ["data: ",{storage:"sbox:re",nbt:"create"}]

function sbox:internal/create/offset with storage sbox:re create.offset

execute unless data storage sbox:re {create:{root:false}} run summon marker ~ ~ ~ {Tags:["sbox.root","sbox.init"]}

function #sbox:event/on_create

function sbox:internal/create/data/init