# Set variables
scoreboard players set ghr.state ghr.rep 2

# Inform the player
tellraw @a "Round 2, Rep 2"

# Random imps
function grimstone_hold_raid:imps/cross30
schedule function grimstone_hold_raid:imps/cross30 5s append
schedule function grimstone_hold_raid:imps/square7x7 10s append

# Spawn area 1: 5055 308 -2100
multisummon spread 1 2 2 vex 5055 308 -2100 {Tags:["ghr_hostile"], HandItems:[{id:"simplyswords:gold_rapier",Count:1}, {id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.01f,0.01f], Attributes:[{Name:"generic.armor",Base:2f}], active_effects:[{id:strength,amplifier:1,show_particles:0b}]}
summon phantom 5055 308 -2100 {Tags:["ghr_hostile"], Size:2,Passengers:[{id:pillager,Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1}, {}],HandDropChances:[0f, 0f]}]}

# Spawn area 2: 5093 308 -2100
multisummon spread 1 2 2 vex 5093 308 -2100 {Tags:["ghr_hostile"], HandItems:[{id:"simplyswords:gold_rapier",Count:1}, {id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.01f,0.01f], Attributes:[{Name:"generic.armor",Base:2f}], active_effects:[{id:strength,amplifier:1,show_particles:0b}]}
summon phantom 5093 308 -2100 {Tags:["ghr_hostile"], Size:2,Passengers:[{id:pillager,Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1}, {}],HandDropChances:[0f, 0f]}]}

# Spawn area 3: 5055 308 -2062
multisummon spread 1 2 2 vex 5055 308 -2062 {Tags:["ghr_hostile"], HandItems:[{id:"simplyswords:gold_rapier",Count:1}, {id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.01f,0.01f], Attributes:[{Name:"generic.armor",Base:2f}], active_effects:[{id:strength,amplifier:1,show_particles:0b}]}
summon phantom 5055 308 -2062 {Tags:["ghr_hostile"], Size:2,Passengers:[{id:pillager,Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1}, {}],HandDropChances:[0f, 0f]}]}

# Spawn area 4: 5093 308 -2062
multisummon spread 1 2 2 vex 5093 308 -2062 {Tags:["ghr_hostile"], HandItems:[{id:"simplyswords:gold_rapier",Count:1}, {id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.01f,0.01f], Attributes:[{Name:"generic.armor",Base:2f}], active_effects:[{id:strength,amplifier:1,show_particles:0b}]}
summon phantom 5093 308 -2062 {Tags:["ghr_hostile"], Size:2,Passengers:[{id:pillager,Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1}, {}],HandDropChances:[0f, 0f]}]}

# Set phantom anger
execute as @e[type=phantom, tag=ghr_hostile] run data modify entity @s AngryAt set from entity @p UUID

# Spawn miners
function grimstone_hold_raid:miners/spawn_teleporting_miners

# Prevent immediate death
effect give @e[tag=ghr_hostile] minecraft:slow_falling 10 0 true

# Add all newly generated hostiles to a team
team join ghr_hostile_mobs @e[tag=ghr_hostile]