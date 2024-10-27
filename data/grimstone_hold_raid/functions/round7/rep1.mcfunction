# Set variables
scoreboard players set ghr.state ghr.rep 1

# Inform the player (reset title format)
tellraw @a "Round 7, Rep 1"
title @a reset

# Random imps
schedule function grimstone_hold_raid:dispensers/dispenser 5s
schedule function grimstone_hold_raid:kaboomers/kaboomer 10s

# Spawn boss area: 5074 308 -2081
summon illageandspillage:magispeller 5074 308 -2081 {Tags:["ghr_hostile", "ghr_boss"], CustomName:'[{"text":"Magispeller"}]', Attributes:[{Name:"generic.max_health",Base:5500f}], Health:5500, ForgeData: {InfernalMobsMod: "notInfernal"}}
effect give @e[type=illageandspillage:magispeller, tag=ghr_boss] minecraft:regeneration infinite 0 true
execute as @e[type=illageandspillage:magispeller, tag=ghr_boss] run damage @s 0 player_attack by @p
schedule function grimstone_hold_raid:round7/magispeller_minion_spawn_tick 20s

# Make the boss always glow
effect give @e[tag=ghr_boss] glowing infinite 0 true

# Spawn area 1: 5055 308 -2100
summon creeper 5055 308 -2100 {Tags:["ghr_hostile"]}
summon illageandspillage:absorber 5055 308 -2100 {Tags:["ghr_hostile"], ForgeData: {InfernalMobsMod: "notInfernal"}}
summon illagerinvasion:provoker 5055 308 -2100 {Tags:["ghr_hostile"], HandItems:[{id:bow,Count:1},{id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}, {Name:"generic.max_health",Base:80f}], Health:80}

# Spawn area 2: 5093 308 -2100
summon illagerinvasion:provoker 5093 308 -2100 {Tags:["ghr_hostile"], HandItems:[{id:bow,Count:1},{id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}, {Name:"generic.max_health",Base:80f}], Health:80}
summon illagerinvasion:basher 5093 308 -2100 {Tags:["ghr_hostile"], HandItems:[{id:"shield",Count:1}]}

# Spawn area 3: 5055 308 -2062
summon creeper 5055 308 -2062 {Tags:["ghr_hostile"]}
summon illageandspillage:absorber 5055 308 -2062 {Tags:["ghr_hostile"], ForgeData: {InfernalMobsMod: "notInfernal"}}
summon illagerinvasion:provoker 5055 308 -2062 {Tags:["ghr_hostile"], HandItems:[{id:bow,Count:1},{id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}, {Name:"generic.max_health",Base:80f}], Health:80}

# Spawn area 4: 5093 308 -2062
summon illagerinvasion:provoker 5093 308 -2062 {Tags:["ghr_hostile"], HandItems:[{id:bow,Count:1},{id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}, {Name:"generic.max_health",Base:80f}], Health:80}
summon illagerinvasion:basher 5093 308 -2062 {Tags:["ghr_hostile"], HandItems:[{id:"shield",Count:1}]}

# Apply effects to some hostiles
effect give @e[type=illageandspillage:absorber, tag=ghr_hostile] minecraft:speed infinite 5 true

# Adjust mobs
function grimstone_hold_raid:equip_hostiles/equip_all_with_blast_protection

# Prevent immediate death
effect give @e[tag=ghr_hostile] minecraft:slow_falling 10 0 true

# Add all newly generated hostiles to a team
team join ghr_hostile_mobs @e[tag=ghr_hostile]