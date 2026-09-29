execute if predicate sbox:update/match_interaction run return run data modify storage sbox:re update.type set value "interaction"
execute if predicate sbox:update/match_both run return run data modify storage sbox:re update.type set value "both"
#match box就不用写了，是默认行为，即collision