# Set variables
scoreboard players set ghr.state ghr.rep 5

# Inform the player
tellraw @a "Round 7, Rep 5"

# Schedule bombs
function grimstone_hold_raid:living_bombs/plant_living_bomb
schedule function grimstone_hold_raid:kaboomers/kaboomer 2s
schedule function grimstone_hold_raid:kaboomers/kaboomer 40s
schedule function grimstone_hold_raid:dispensers/dispenser 10s

# Spawn area 1: 226 311 16
summon vindicator 226 311 16 {Tags:["ghr_hostile"],ActiveEffects:[{Id:5,ShowParticles:0b}],HandItems:[{id:diamond_axe,Count:1},{id:shield,Count:1}],Attributes:[{Name:"generic.armor",Base:2f}],HandDropChances:[0f,0f],Passengers:[{id:cave_spider, Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Ragno Babies"}]', Attributes:[{Name:"generic.max_health",Base:8}], Health:8,Passengers:[{id:cave_spider, Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Ragno Babies"}]', Attributes:[{Name:"generic.max_health",Base:8}], Health:8,Passengers:[{id:cave_spider, Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Ragno Babies"}]', Attributes:[{Name:"generic.max_health",Base:8}], Health:8,Passengers:[{id:cave_spider, Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Ragno Babies"}]', Attributes:[{Name:"generic.max_health",Base:8}], Health:8}]}]}]}]}
summon illagerinvasion:provoker 226 311 16 {Tags:["ghr_hostile"], HandItems:[{id:bow,Count:1},{id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}, {Name:"generic.max_health",Base:80f}], Health:80}

# Spawn area 1: 190 309 14
summon vindicator 190 309 14 {Tags:["ghr_hostile"],ActiveEffects:[{Id:5,ShowParticles:0b}],HandItems:[{id:diamond_axe,Count:1},{id:shield,Count:1}],Attributes:[{Name:"generic.armor",Base:2f}],HandDropChances:[0f,0f],Passengers:[{id:cave_spider, Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Ragno Babies"}]', Attributes:[{Name:"generic.max_health",Base:8}], Health:8,Passengers:[{id:cave_spider, Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Ragno Babies"}]', Attributes:[{Name:"generic.max_health",Base:8}], Health:8,Passengers:[{id:cave_spider, Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Ragno Babies"}]', Attributes:[{Name:"generic.max_health",Base:8}], Health:8,Passengers:[{id:cave_spider, Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Ragno Babies"}]', Attributes:[{Name:"generic.max_health",Base:8}], Health:8}]}]}]}]}
summon illagerinvasion:provoker 190 309 14 {Tags:["ghr_hostile"], HandItems:[{id:bow,Count:1},{id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}, {Name:"generic.max_health",Base:80f}], Health:80}

# Spawn area 1: 192 309 -18
summon vindicator 192 309 -18 {Tags:["ghr_hostile"],ActiveEffects:[{Id:5,ShowParticles:0b}],HandItems:[{id:diamond_axe,Count:1},{id:shield,Count:1}],Attributes:[{Name:"generic.armor",Base:2f}],HandDropChances:[0f,0f],Passengers:[{id:cave_spider, Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Ragno Babies"}]', Attributes:[{Name:"generic.max_health",Base:8}], Health:8,Passengers:[{id:cave_spider, Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Ragno Babies"}]', Attributes:[{Name:"generic.max_health",Base:8}], Health:8,Passengers:[{id:cave_spider, Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Ragno Babies"}]', Attributes:[{Name:"generic.max_health",Base:8}], Health:8,Passengers:[{id:cave_spider, Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Ragno Babies"}]', Attributes:[{Name:"generic.max_health",Base:8}], Health:8}]}]}]}]}
summon illagerinvasion:provoker 192 309 -18 {Tags:["ghr_hostile"], HandItems:[{id:bow,Count:1},{id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}, {Name:"generic.max_health",Base:80f}], Health:80}

# Spawn area 1: 225 309 -19
summon vindicator 225 309 -19 {Tags:["ghr_hostile"],ActiveEffects:[{Id:5,ShowParticles:0b}],HandItems:[{id:diamond_axe,Count:1},{id:shield,Count:1}],Attributes:[{Name:"generic.armor",Base:2f}],HandDropChances:[0f,0f],Passengers:[{id:cave_spider, Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Ragno Babies"}]', Attributes:[{Name:"generic.max_health",Base:8}], Health:8,Passengers:[{id:cave_spider, Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Ragno Babies"}]', Attributes:[{Name:"generic.max_health",Base:8}], Health:8,Passengers:[{id:cave_spider, Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Ragno Babies"}]', Attributes:[{Name:"generic.max_health",Base:8}], Health:8,Passengers:[{id:cave_spider, Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Ragno Babies"}]', Attributes:[{Name:"generic.max_health",Base:8}], Health:8}]}]}]}]}
summon illagerinvasion:provoker 225 309 -19 {Tags:["ghr_hostile"], HandItems:[{id:bow,Count:1},{id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}, {Name:"generic.max_health",Base:80f}], Health:80}

# Adjust mobs
function grimstone_hold_raid:round6/equip_all_with_blast_protection

# Prevent immediate death
effect give @e[tag=ghr_hostile] minecraft:slow_falling 10 0 true
effect give @e[tag=ghr_hostile] minecraft:fire_resistance 10 1 true

# Add all newly generated hostiles to a team
team join ghr_hostile_mobs @e[tag=ghr_hostile]