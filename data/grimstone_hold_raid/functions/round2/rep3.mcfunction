# Set variables
scoreboard players set ghr.state ghr.rep 3

# Inform the player
tellraw @a "Round 2, Rep 3"

# Random imps
function grimstone_hold_raid:imps/cross30
schedule function grimstone_hold_raid:imps/cross30 5s
schedule function grimstone_hold_raid:imps/square7x7 10s

# Spawn area 1: 5055 308 -2100
summon illagerinvasion:inquisitor 5055 308 -2100 {Tags:["ghr_hostile"], PersistenceRequired:1b,HandItems:[{id:iron_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0f,0f]}
multisummon spread 1 2 2 pillager 5055 308 -2100 {Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}
summon illageandspillage:preserver 5055 308 -2100 {Tags:["ghr_hostile"]}
summon phantom 5055 308 -2100 {Tags:["ghr_hostile"], Angry:1, Size:2,Passengers:[{id:pillager,Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1}, {}],HandDropChances:[0f, 0f]}]}

# Spawn area 2: 5093 308 -2100
summon illagerinvasion:inquisitor 5093 308 -2100 {Tags:["ghr_hostile"], PersistenceRequired:1b,HandItems:[{id:iron_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0f,0f]}
multisummon spread 1 2 2 pillager 5093 308 -2100 {Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}
summon illageandspillage:preserver 5093 308 -2100 {Tags:["ghr_hostile"]}
summon phantom 5093 308 -2100 {Tags:["ghr_hostile"], Angry:1, Size:2,Passengers:[{id:pillager,Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1}, {}],HandDropChances:[0f, 0f]}]}

# Spawn area 3: 5055 308 -2062
summon illagerinvasion:inquisitor 5055 308 -2062 {Tags:["ghr_hostile"], PersistenceRequired:1b,HandItems:[{id:iron_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0f,0f]}
multisummon spread 1 2 2 pillager 5055 308 -2062 {Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}
summon illageandspillage:preserver 5055 308 -2062 {Tags:["ghr_hostile"]}
summon phantom 5055 308 -2062 {Tags:["ghr_hostile"], Angry:1, Size:2,Passengers:[{id:pillager,Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1}, {}],HandDropChances:[0f, 0f]}]}

# Spawn area 4: 5093 308 -2062
summon illagerinvasion:inquisitor 5093 308 -2062 {Tags:["ghr_hostile"], PersistenceRequired:1b,HandItems:[{id:iron_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0f,0f]}
multisummon spread 1 2 2 pillager 5093 308 -2062 {Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}
summon illageandspillage:preserver 5093 308 -2062 {Tags:["ghr_hostile"]}
summon phantom 5093 308 -2062 {Tags:["ghr_hostile"], Angry:1, Size:2,Passengers:[{id:pillager,Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1}, {}],HandDropChances:[0f, 0f]}]}

# Prevent immediate death
effect give @e[tag=ghr_hostile] minecraft:slow_falling 10 0 true

# Add all newly generated hostiles to a team
team join ghr_hostile_mobs @e[tag=ghr_hostile]