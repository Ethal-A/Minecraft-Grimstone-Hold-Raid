# TODO: Test

# Inform the player
tellraw @a "Goliath calls for support"

# Random imps
function grimstone_hold_raid:imps/cross30
schedule function grimstone_hold_raid:imps/square7x7 5s

# Spawn area 1: 226 311 16
summon minecraft:vindicator 226 311 16 {Tags:["ghr_hostile"]}
multisummon spread 1 2 2 pillager 226 311 16 {Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}
multisummon spread 2 2 2 vex 226 311 16 {Tags:["ghr_hostile"], HandItems:[{id:"simplyswords:gold_rapier",Count:1}, {id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.01f,0.01f], Attributes:[{Name:"generic.armor",Base:2f}], active_effects:[{id:strength,amplifier:1,show_particles:0b}]}

# Spawn area 1: 190 309 14
multisummon spread 1 2 2 pillager 190 309 14 {Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}
summon ravager 190 309 14 {Tags:["ghr_hostile"], Attributes:[{Name:"generic.armor",Base:10f}], Passengers:[{id:pillager, Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}]}

# Spawn area 1: 192 309 -18
summon minecraft:vindicator 192 309 -18 {Tags:["ghr_hostile"]}
multisummon spread 1 2 2 pillager 192 309 -18 {Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}
multisummon spread 2 2 2 vex 192 309 -18 {Tags:["ghr_hostile"], HandItems:[{id:"simplyswords:gold_rapier",Count:1}, {id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.01f,0.01f], Attributes:[{Name:"generic.armor",Base:2f}], active_effects:[{id:strength,amplifier:1,show_particles:0b}]}

# Spawn area 1: 225 309 -19
multisummon spread 1 2 2 pillager 225 309 -19 {Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}
summon ravager 225 309 -19 {Tags:["ghr_hostile"], Attributes:[{Name:"generic.armor",Base:10f}], Passengers:[{id:pillager, Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}]}

# Prevent immediate death
effect give @e[tag=ghr_hostile] minecraft:slow_falling 10 0 true
effect give @e[tag=ghr_hostile] minecraft:fire_resistance 10 1 true

# Add all newly generated hostiles to a team
team join ghr_hostile_mobs @e[tag=ghr_hostile]
