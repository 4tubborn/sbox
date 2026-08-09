scoreboard objectives add sbox.tmp dummy
scoreboard objectives add sbox.create dummy
scoreboard objectives add sbox.num dummy
scoreboard objectives add sbox.id dummy

scoreboard players set #-1 sbox.num -1
scoreboard players set #2 sbox.num 2
scoreboard players set #10 sbox.num 10
scoreboard players set #100 sbox.num 100
scoreboard players set #1000 sbox.num 1000
scoreboard players set #10000 sbox.num 10000

execute unless score #global_id sbox.id matches 0.. run scoreboard players set #global_id sbox.id 0