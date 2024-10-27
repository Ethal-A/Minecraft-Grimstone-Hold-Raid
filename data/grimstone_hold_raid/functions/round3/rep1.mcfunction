# Set variables
scoreboard players set ghr.state ghr.rep 1

# Inform the player (reset title format)
tellraw @a "Round 3, Rep 1"
title @a reset

# Random imps
function grimstone_hold_raid:imps/cross30
schedule function grimstone_hold_raid:imps/cross30 2s

# Spawn boss area: 210 310 -3
summon illageandspillage:spiritcaller 210 310 -3 {Tags:["ghr_hostile", "ghr_boss"], CustomName:'[{"text":"Spiritcaller"}]', Attributes:[{Name:"generic.max_health",Base:3500f}], Health:3500, ForgeData: {InfernalMobsMod: ""}}
effect give @e[type=illageandspillage:spiritcaller, tag=ghr_boss] minecraft:regeneration infinite 2 true
execute as @e[type=illageandspillage:spiritcaller, tag=ghr_boss] run damage @s 0 player_attack by @p
function grimstone_hold_raid:round3/spiritcaller_minion_spawn_tick
schedule function grimstone_hold_raid:round3/spiritcaller_support_tick 120s

# Make the boss always glow
effect give @e[tag=ghr_boss] glowing infinite 0 true

# Spawn area 1: 226 311 16
summon illageandspillage:absorber 226 311 16 {Tags:["ghr_hostile"], ForgeData: {InfernalMobsMod: ""}}
summon illagerinvasion:provoker 226 311 16 {Tags:["ghr_hostile"], HandItems:[{id:bow,Count:1},{id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}, {Name:"generic.max_health",Base:80f}], Health:80}

# Spawn area 2: 190 309 14
summon illagerinvasion:provoker 190 309 14 {Tags:["ghr_hostile"], HandItems:[{id:bow,Count:1},{id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}, {Name:"generic.max_health",Base:80f}], Health:80}
summon illagerinvasion:basher 190 309 14 {Tags:["ghr_hostile"], HandItems:[{id:"shield",Count:1}]}

# Spawn area 3: 192 309 -18
summon illagerinvasion:provoker 192 309 -18 {Tags:["ghr_hostile"], HandItems:[{id:bow,Count:1},{id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}, {Name:"generic.max_health",Base:80f}], Health:80}
summon illageandspillage:absorber 192 309 -18 {Tags:["ghr_hostile"], ForgeData: {InfernalMobsMod: ""}}

# Spawn area 4: 225 309 -19
summon illagerinvasion:provoker 225 309 -19 {Tags:["ghr_hostile"], HandItems:[{id:bow,Count:1},{id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}, {Name:"generic.max_health",Base:80f}], Health:80}
summon illagerinvasion:basher 225 309 -19 {Tags:["ghr_hostile"], HandItems:[{id:"shield",Count:1}]}

# Apply effects to some hostiles
effect give @e[type=illageandspillage:absorber, tag=ghr_hostile] minecraft:speed infinite 5 true

# Prevent immediate death
effect give @e[tag=ghr_hostile] minecraft:slow_falling 10 0 true

# Add all newly generated hostiles to a team
team join ghr_hostile_mobs @e[tag=ghr_hostile]