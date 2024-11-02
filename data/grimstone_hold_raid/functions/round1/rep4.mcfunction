# Set variables
scoreboard players set ghr.state ghr.rep 4

# Inform the player
tellraw @a "Round 1, Rep 4"

# Random imps
function grimstone_hold_raid:imps/cross9
schedule function grimstone_hold_raid:imps/cross9 2s
schedule function grimstone_hold_raid:imps/cross9 4s
schedule function grimstone_hold_raid:imps/cross9 6s
schedule function grimstone_hold_raid:imps/square7x7 8s
schedule function grimstone_hold_raid:imps/square7x7 10s
schedule function grimstone_hold_raid:imps/square7x7 12s
schedule function grimstone_hold_raid:imps/square7x7 14s
schedule function grimstone_hold_raid:imps/square7x7 20s
schedule function grimstone_hold_raid:imps/square7x7 25s


# Spawn boss area: 5074 308 -2081
summon illagerinvasion:necromancer 5074 308 -2081 {Tags:["ghr_hostile", "ghr_boss"], Attributes:[{Name:"generic.max_health",Base:600f}], Health:600}
effect give @e[type=illagerinvasion:necromancer, tag=ghr_boss] minecraft:regeneration infinite 3 true

# Make the boss always glow
effect give @e[tag=ghr_boss] glowing infinite 0 true

# Spawn area 1: 5055 308 -2100
multisummon spread 1 1 2 illagerinvasion:inquisitor 5055 308 -2100 {Tags:["ghr_hostile"], PersistenceRequired:1b,HandItems:[{id:iron_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0f,0f]}
multisummon spread 1 2 2 pillager 5055 308 -2100 {Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}

# Spawn area 2: 5093 308 -2100
multisummon spread 1 1 2 illagerinvasion:inquisitor 5093 308 -2100 {Tags:["ghr_hostile"], PersistenceRequired:1b,HandItems:[{id:iron_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0f,0f]}
multisummon spread 1 2 2 pillager 5093 308 -2100 {Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}

# Spawn area 3: 5055 308 -2062
multisummon spread 1 1 2 illagerinvasion:inquisitor 5055 308 -2062 {Tags:["ghr_hostile"], PersistenceRequired:1b,HandItems:[{id:iron_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0f,0f]}
multisummon spread 1 2 2 pillager 5055 308 -2062 {Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}

# Spawn area 4: 5093 308 -2062
multisummon spread 1 1 2 illagerinvasion:inquisitor 5093 308 -2062 {Tags:["ghr_hostile"], PersistenceRequired:1b,HandItems:[{id:iron_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0f,0f]}
multisummon spread 1 2 2 pillager 5093 308 -2062 {Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}

# Prevent immediate death
effect give @e[tag=ghr_hostile] minecraft:slow_falling 10 0 true

# Add all newly generated hostiles to a team
team join ghr_hostile_mobs @e[tag=ghr_hostile]