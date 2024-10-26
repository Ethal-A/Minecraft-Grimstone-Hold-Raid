# Set variables
scoreboard players set ghr.state ghr.rep 5

# Inform the player
tellraw @a "Round 5, Rep 5"

# Spawn boss area: 210 310 -3 TODO: Test
summon illageandspillage:freakager 210 310 -3 {Tags:["ghr_hostile", "ghr_boss"], CustomName:'[{"text":"Freakager"}]', Attributes:[{Name:"generic.max_health",Base:2000f}], Health:2000, ForgeData: {InfernalMobsMod: ""}}
effect give @e[type=illageandspillage:freakager, tag=ghr_boss] minecraft:regeneration infinite 2 true
execute as @e[type=illageandspillage:freakager, tag=ghr_boss] run damage @s 0 player_attack by @p
schedule function grimstone_hold_raid:round5/set_ragno_name 10s
schedule function grimstone_hold_raid:round5/freakager_minion_spawn_tick 60s
schedule function grimstone_hold_raid:round5/ragno_minion_spawn_tick 20s

# Make the boss always glow
effect give @e[tag=ghr_boss] glowing infinite 0 true

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

# Apply effects to some hostiles
# Adjust mobs
scale set pehkui:height 0.5 @e[type=minecraft:cave_spider, tag=ghr_boss_minion]
scale set pehkui:width 0.5 @e[type=minecraft:cave_spider, tag=ghr_boss_minion]

# Prevent immediate death
effect give @e[tag=ghr_hostile] minecraft:slow_falling 10 0 true
effect give @e[tag=ghr_hostile] minecraft:fire_resistance 10 1 true

# Add all newly generated hostiles to a team
team join ghr_hostile_mobs @e[tag=ghr_hostile]