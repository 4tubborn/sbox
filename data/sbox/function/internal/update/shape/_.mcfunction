execute as @s[type=text_display] run scoreboard players set #has_box sbox.tmp 1
execute as @s[type=interaction] run scoreboard players set #has_interaction sbox.tmp 1
#但是都要移除了似乎remove_link的意义不大
function #bs.link:remove_link
function sbox:internal/remove/box