# Spawn area 1: 226 311 16
summon minecraft:zombie 226 311 16 {Tags:["ghr_hostile", "ghr_hostile_miner"], CustomName:'[{"text":"Miner"}]', HandItems: [{}, {id: "minecraft:stone_pickaxe", tag: {Damage: 0}, Count: 1b}], ForgeData: {InfernalMobsMod: "notInfernal", "enhancedai:time_to_break_multiplier": 1.0d, "enhancedai:miner": 1b, "enhancedai:sprint": 0b}, ArmorItems:[{id:leather_boots,tag:{display:{color:16776960}},Count:1},{id:leather_leggings,tag:{display:{color:16776960}},Count:1},{id:leather_chestplate,tag:{display:{color:16776960}},Count:1},{id:leather_helmet,tag:{display:{color:16776960}},Count:1}],ArmorDropChances:[0f,0f,0f,0f], Attributes:[{Name:"generic.max_health",Base:20f}], ActiveEffects:[{Id:12,Duration:30,ShowParticles:0b}], Health:20}

# Spawn area 2: 190 309 14
summon minecraft:zombie 190 309 14 {Tags:["ghr_hostile", "ghr_hostile_miner"], CustomName:'[{"text":"Miner"}]', HandItems: [{}, {id: "minecraft:stone_pickaxe", tag: {Damage: 0}, Count: 1b}], ForgeData: {InfernalMobsMod: "notInfernal", "enhancedai:time_to_break_multiplier": 1.0d, "enhancedai:miner": 1b, "enhancedai:sprint": 0b}, ArmorItems:[{id:leather_boots,tag:{display:{color:16776960}},Count:1},{id:leather_leggings,tag:{display:{color:16776960}},Count:1},{id:leather_chestplate,tag:{display:{color:16776960}},Count:1},{id:leather_helmet,tag:{display:{color:16776960}},Count:1}],ArmorDropChances:[0f,0f,0f,0f], Attributes:[{Name:"generic.max_health",Base:20f}], ActiveEffects:[{Id:12,Duration:30,ShowParticles:0b}], Health:20}

# Spawn area 3: 192 309 -18
summon minecraft:zombie 192 309 -18 {Tags:["ghr_hostile", "ghr_hostile_miner"], CustomName:'[{"text":"Miner"}]', HandItems: [{}, {id: "minecraft:stone_pickaxe", tag: {Damage: 0}, Count: 1b}], ForgeData: {InfernalMobsMod: "notInfernal", "enhancedai:time_to_break_multiplier": 1.0d, "enhancedai:miner": 1b, "enhancedai:sprint": 0b}, ArmorItems:[{id:leather_boots,tag:{display:{color:16776960}},Count:1},{id:leather_leggings,tag:{display:{color:16776960}},Count:1},{id:leather_chestplate,tag:{display:{color:16776960}},Count:1},{id:leather_helmet,tag:{display:{color:16776960}},Count:1}],ArmorDropChances:[0f,0f,0f,0f], Attributes:[{Name:"generic.max_health",Base:20f}], ActiveEffects:[{Id:12,Duration:30,ShowParticles:0b}], Health:20}

# Spawn area 4: 225 309 -19
summon minecraft:zombie 225 309 -19 {Tags:["ghr_hostile", "ghr_hostile_miner"], CustomName:'[{"text":"Miner"}]', HandItems: [{}, {id: "minecraft:stone_pickaxe", tag: {Damage: 0}, Count: 1b}], ForgeData: {InfernalMobsMod: "notInfernal", "enhancedai:time_to_break_multiplier": 1.0d, "enhancedai:miner": 1b, "enhancedai:sprint": 0b}, ArmorItems:[{id:leather_boots,tag:{display:{color:16776960}},Count:1},{id:leather_leggings,tag:{display:{color:16776960}},Count:1},{id:leather_chestplate,tag:{display:{color:16776960}},Count:1},{id:leather_helmet,tag:{display:{color:16776960}},Count:1}],ArmorDropChances:[0f,0f,0f,0f], Attributes:[{Name:"generic.max_health",Base:20f}], ActiveEffects:[{Id:12,Duration:30,ShowParticles:0b}], Health:20}

# Give temporary fire resistence
effect give @e[type=zombie, tag=ghr_hostile_miner] fire_resistance 10 0 true

# Trigger anger if player is outside of their visible range
execute as @e[type=zombie, tag=ghr_hostile_miner] run damage @s 0 minecraft:player_attack by @p

# Prevent immediate death
effect give @e[tag=ghr_hostile] minecraft:slow_falling 10 0 true

# Add all newly generated hostiles to a team
team join ghr_hostile_mobs @e[tag=ghr_hostile]