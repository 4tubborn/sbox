#input: sbox:in {create:{shape:[[min_x, min_y, min_z, max_x, max_y, max_z]],offset"{x:<float>,y:<offset>,z:<float>},type:"collision"/"interaction"/"both"}}
data modify storage sbox:re create set value {shape:[],offset:{x:0,y:0,z:0},root:true,type:"collision"}
data modify storage sbox:re create merge from storage sbox:in create

#tellraw @a ["data: ",{storage:"sbox:re",nbt:"create"}]

function sbox:internal/create/offset with storage sbox:re create.offset

execute if data storage sbox:re {create:{root:true}} run summon marker ~ ~ ~ {Tags:["sbox.root","sbox.init"]}

function #sbox:event/on_create

function sbox:internal/create/data/init