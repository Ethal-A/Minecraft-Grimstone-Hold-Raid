# TODO: Test
# TODO: Need to set Ragno's name elsewhere and schedule this function
# TODO: summon custom enemies just for the Ragno
execute if entity @e[name="Ragno", tag=ghr_boss] run schedule function grimstone_hold_raid:round5/ragno_minion_spawn_tick 20s
execute at @e[name="Ragno"] run summon minecraft:vex ~3 ~ ~ {Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Ragno Minion"}]', HandItems:[{id:"simplyswords:gold_rapier",Count:1}, {id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.01f,0.01f], ForgeData: {InfernalMobsMod: ""}, active_effects:[{id:strength,amplifier:0,show_particles:0b}]}
execute at @e[name="Ragno"] run summon minecraft:vex ~3 ~ ~3 {Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Ragno Minion"}]', HandItems:[{id:"simplyswords:gold_rapier",Count:1}, {id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.01f,0.01f], ForgeData: {InfernalMobsMod: ""}, active_effects:[{id:strength,amplifier:0,show_particles:0b}]}
execute at @e[name="Ragno"] run summon minecraft:vex ~ ~ ~3 {Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Ragno Minion"}]', HandItems:[{id:"simplyswords:gold_rapier",Count:1}, {id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.01f,0.01f], ForgeData: {InfernalMobsMod: ""}, active_effects:[{id:strength,amplifier:0,show_particles:0b}]}

execute if entity @e[tag=ghr_boss_invul_buff] run effect give @e[name="Ragno", tag=ghr_boss] resistance 20 10 false
effect give @e[tag=ghr_boss_invul_buff] glowing 25 0 true