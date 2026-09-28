#input: sbox:in {create:{shape:[[min_x, min_y, min_z, max_x, max_y, max_z]],offset"{x:<float>,y:<offset>,z:<float>},type:"collision"/"interaction"/"both"},pixel:<bool>,hollow:<bool>,max_step:<float>}
data remove storage sbox:re create
data modify storage sbox:re create set value {shape:[],offset:{x:0,y:0,z:0},root:true,type:"collision",pixel:false,hollow:true,max_step:3.0f}
data modify storage sbox:re create merge from storage sbox:in create
#pixel:<bool>
scoreboard players set #pixel sbox.create 0
execute store result score #pixel sbox.create run data get storage sbox:re create.pixel
execute unless score #pixel sbox.create matches 0..1 run scoreboard players set #pixel sbox.create 0
#pixel to percent
execute if score #pixel sbox.create matches 1 run function sbox:internal/create/cal/shape/offset
#tellraw @a ["data: ",{storage:"sbox:re",nbt:"create"}]

#optional limited max step, default: 3.0f (max extent of shulker)
function sbox:internal/create/cal/max_step/_

tellraw @a {score:{name:"#max_step",objective:"sbox.create"}}

#hollow
scoreboard players set #hollow sbox.create 1
execute store result score #hollow sbox.create run data get storage sbox:re create.hollow

function sbox:internal/create/offset with storage sbox:re create.offset

execute unless data storage sbox:re {create:{root:false}} run summon marker ~ ~ ~ {Tags:["sbox.root","sbox.init"]}

function #sbox:event/on_create

function sbox:internal/create/data/init