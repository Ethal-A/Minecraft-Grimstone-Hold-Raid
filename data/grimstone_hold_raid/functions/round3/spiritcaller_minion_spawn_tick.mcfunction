execute if entity @e[name="Spiritcaller", tag=ghr_boss] run schedule function grimstone_hold_raid:round3/spiritcaller_minion_spawn_tick 20s
execute at @e[name="Spiritcaller"] run summon minecraft:vex ~3 ~ ~ {Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Spiritcaller Minion"}]', HandItems:[{id:"simplyswords:gold_rapier",Count:1}, {id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.01f,0.01f], ForgeData: {InfernalMobsMod: ""}, active_effects:[{id:strength,amplifier:0,show_particles:0b}]}
execute at @e[name="Spiritcaller"] run summon minecraft:vex ~3 ~ ~3 {Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Spiritcaller Minion"}]', HandItems:[{id:"simplyswords:gold_rapier",Count:1}, {id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.01f,0.01f], ForgeData: {InfernalMobsMod: ""}, active_effects:[{id:strength,amplifier:0,show_particles:0b}]}
execute at @e[name="Spiritcaller"] run summon minecraft:vex ~ ~ ~3 {Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Spiritcaller Minion"}]', HandItems:[{id:"simplyswords:gold_rapier",Count:1}, {id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.01f,0.01f], ForgeData: {InfernalMobsMod: ""}, active_effects:[{id:strength,amplifier:0,show_particles:0b}]}

execute if entity @e[tag=ghr_boss_invul_buff] run effect give @e[name="Spiritcaller", tag=ghr_boss] resistance 20 10 false
effect give @e[tag=ghr_boss_invul_buff] glowing 25 0 true

# Add all newly generated hostiles to a team
team join ghr_hostile_mobs @e[tag=ghr_hostile]