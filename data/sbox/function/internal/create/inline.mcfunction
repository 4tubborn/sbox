#input: sbox:in {with:{shape:[[min_x, min_y, min_z, max_x, max_y, max_z]],offset"{x:<float>,y:<offset>,z:<float>},type:"collision"/"interaction"/"both"}}
$data modify storage sbox:in create set value $(with)
function sbox:internal/create/