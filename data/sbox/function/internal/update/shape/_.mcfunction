execute as @s[type=text_display] run scoreboard players set #has_box sbox.tmp 1
execute as @s[type=interaction] run scoreboard players set #has_interaction sbox.tmp 1

function sbox:internal/remove/box