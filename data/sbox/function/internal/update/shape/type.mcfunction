execute if predicate sbox:update/match_interaction run return run data modify storage sbox:in create.type set value "interaction"
execute if predicate sbox:update/match_both run return run data modify storage sbox:in create.type set value "both"
#match box就不用写了，是默认行为