#input: {with:{shape:[[min_x, min_y, min_z, max_x, max_y, max_z]],offset"{x:<float>,y:<offset>,z:<float>},type:"collision"/"interaction"/"both",mode:"keep"/"replace"}}
$data modify storage sbox:in update set value $(with)

function sbox:internal/update/shape/