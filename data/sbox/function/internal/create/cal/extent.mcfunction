#step size
scoreboard players operation #extent.x sbox.create = #max_x sbox.create
scoreboard players operation #extent.x sbox.create -= #min_x sbox.create

scoreboard players operation #extent.y sbox.create = #max_y sbox.create
scoreboard players operation #extent.y sbox.create -= #min_y sbox.create

scoreboard players operation #extent.z sbox.create = #max_z sbox.create
scoreboard players operation #extent.z sbox.create -= #min_z sbox.create

#clamp
# X
execute if score #extent.x sbox.create matches ..624 run scoreboard players set #extent.x sbox.create 625
execute if score #extent.x sbox.create matches 320001.. run scoreboard players set #extent.x sbox.create 320000
# Y
execute if score #extent.y sbox.create matches ..624 run scoreboard players set #extent.y sbox.create 625
execute if score #extent.y sbox.create matches 320001.. run scoreboard players set #extent.y sbox.create 320000
# Z
execute if score #extent.z sbox.create matches ..624 run scoreboard players set #extent.z sbox.create 625
execute if score #extent.z sbox.create matches 320001.. run scoreboard players set #extent.z sbox.create 320000