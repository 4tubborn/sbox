$summon text_display ~ -70 ~ {Tags:["sbox.unit_root","sbox.init","sbox.init.children","sbox.align"],Passengers:[\
{id:"shulker",Tags:["sbox.unit_box","sbox.init"],Silent:true,NoAI:true,NoGravity:true,Invulnerable:true,active_effects:[{id:"resistance",duration:-1,amplifier:4,show_particles:false},{id:"invisibility",duration:-1,show_particles:false}],DeathLootTable:"",Health:2147483647,\
attributes:[{id:"scale",base:$(scale)}],\
},],\
}
#防止出现短暂的潜影贝
execute as @n[type=text_display,tag=sbox.align,y=-70,distance=..1] run function sbox:internal/create/summon/align