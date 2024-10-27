# Set variables
scoreboard players set ghr.state ghr.rep 1

# Play music
stopsound @a music
playsound minecraft:music_disc.ward music @a

# Inform the player (reset title format)
tellraw @a "Round 2, Rep 1"
title @a reset

# Random imps
function grimstone_hold_raid:imps/cross30
schedule function grimstone_hold_raid:imps/cross30 2s
schedule function grimstone_hold_raid:imps/cross30 4s
schedule function grimstone_hold_raid:imps/cross30 6s
schedule function grimstone_hold_raid:imps/cross30 8s
schedule function grimstone_hold_raid:imps/cross30 10s
schedule function grimstone_hold_raid:imps/square7x7 20s
schedule function grimstone_hold_raid:imps/square7x7 30s

# Spawn boss area: 5074 308 -2081
summon illageandspillage:absorber 5074 308 -2081 {Tags:["ghr_hostile", "ghr_boss", "ghr_cause_bleeding"], CustomName:'[{"text":"Goliath"}]', Attributes:[{Name:"generic.max_health",Base:1200f}], Health:1200, ForgeData: {InfernalMobsMod: "notInfernal"}}
effect give @e[type=illageandspillage:absorber, tag=ghr_boss] minecraft:speed infinite 8 true
effect give @e[type=illageandspillage:absorber, tag=ghr_boss] minecraft:strength infinite 20 true
scale set pehkui:height 1.8 @e[type=illageandspillage:absorber, tag=ghr_boss]
scale set pehkui:width 1.8 @e[type=illageandspillage:absorber, tag=ghr_boss]
scale set pehkui:interaction_box_height 1.8 @e[type=illageandspillage:absorber, tag=ghr_boss]
scale set pehkui:interaction_box_width 1.8 @e[type=illageandspillage:absorber, tag=ghr_boss]
function grimstone_hold_raid:round2/goliath_minion_spawn_tick
schedule function grimstone_hold_raid:round2/goliath_support_tick 180

# Make the boss always glow
effect give @e[tag=ghr_boss] glowing infinite 0 true

# Spawn area 1: 5055 308 -2100
summon illagerinvasion:basher 5055 308 -2100 {Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}
multisummon spread 1 2 2 pillager 5055 308 -2100 {Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}
summon ravager 5055 308 -2100 {Tags:["ghr_hostile"], Attributes:[{Name:"generic.armor",Base:10f}], Passengers:[{id:pillager, Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}]}
multisummon spread 2 2 2 vex 5055 308 -2100 {Tags:["ghr_hostile"], HandItems:[{id:"simplyswords:gold_rapier",Count:1}, {id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.01f,0.01f], Attributes:[{Name:"generic.armor",Base:2f}], active_effects:[{id:strength,amplifier:1,show_particles:0b}]}

# Spawn area 2: 5093 308 -2100
summon illagerinvasion:basher 5093 308 -2100 {Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}
multisummon spread 1 2 2 pillager 5093 308 -2100 {Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}
summon ravager 5093 308 -2100 {Tags:["ghr_hostile"], Attributes:[{Name:"generic.armor",Base:10f}], Passengers:[{id:pillager, Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}]}
multisummon spread 2 2 2 vex 5093 308 -2100 {Tags:["ghr_hostile"], HandItems:[{id:"simplyswords:gold_rapier",Count:1}, {id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.01f,0.01f], Attributes:[{Name:"generic.armor",Base:2f}], active_effects:[{id:strength,amplifier:1,show_particles:0b}]}

# Spawn area 3: 5055 308 -2062
summon illagerinvasion:basher 5055 308 -2062 {Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}
multisummon spread 1 2 2 pillager 5055 308 -2062 {Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}
summon ravager 5055 308 -2062 {Tags:["ghr_hostile"], Attributes:[{Name:"generic.armor",Base:10f}], Passengers:[{id:pillager, Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}]}
multisummon spread 2 2 2 vex 5055 308 -2062 {Tags:["ghr_hostile"], HandItems:[{id:"simplyswords:gold_rapier",Count:1}, {id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.01f,0.01f], Attributes:[{Name:"generic.armor",Base:2f}], active_effects:[{id:strength,amplifier:1,show_particles:0b}]}

# Spawn area 4: 5093 308 -2062
summon illagerinvasion:basher 5093 308 -2062 {Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}
multisummon spread 1 2 2 pillager 5093 308 -2062 {Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}
summon ravager 5093 308 -2062 {Tags:["ghr_hostile"], Attributes:[{Name:"generic.armor",Base:10f}], Passengers:[{id:pillager, Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}]}
multisummon spread 2 2 2 vex 5093 308 -2062 {Tags:["ghr_hostile"], HandItems:[{id:"simplyswords:gold_rapier",Count:1}, {id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.01f,0.01f], Attributes:[{Name:"generic.armor",Base:2f}], active_effects:[{id:strength,amplifier:1,show_particles:0b}]}

# Spawn miners
function grimstone_hold_raid:miners/spawn_miners

# Prevent immediate death
effect give @e[tag=ghr_hostile] minecraft:slow_falling 10 0 true

# Add all newly generated hostiles to a team
team join ghr_hostile_mobs @e[tag=ghr_hostile]