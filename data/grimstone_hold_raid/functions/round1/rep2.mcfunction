# Set variables
scoreboard players set ghr.state ghr.rep 2

# Inform the player
tellraw @a "Round 1, Rep 2"

# Random imps
function grimstone_hold_raid:imps/square7x7
schedule function grimstone_hold_raid:imps/square7x7 2s
schedule function grimstone_hold_raid:imps/square7x7 4s
schedule function grimstone_hold_raid:imps/square7x7 6s

# Spawn area 1: 5055 308 -2100
summon illagerinvasion:basher 5055 308 -2100 {Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}
summon illagerinvasion:basher 5055 308 -2100 {Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}
summon illagerinvasion:basher 5055 308 -2100 {Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}
summon illagerinvasion:basher 5055 308 -2100 {Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}

# Spawn area 2: 5093 308 -2100
summon illagerinvasion:basher 5093 308 -2100 {Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}
summon illagerinvasion:basher 5093 308 -2100 {Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}
summon illagerinvasion:basher 5093 308 -2100 {Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}
summon illagerinvasion:basher 5093 308 -2100 {Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}

# Spawn area 3: 5055 308 -2062
summon illagerinvasion:basher 5055 308 -2062 {Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}
summon illagerinvasion:basher 5055 308 -2062 {Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}
summon illagerinvasion:basher 5055 308 -2062 {Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}
summon illagerinvasion:basher 5055 308 -2062 {Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}

# Spawn area 4: 5093 308 -2062
summon illagerinvasion:basher 5093 308 -2062 {Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}
summon illagerinvasion:basher 5093 308 -2062 {Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}
summon illagerinvasion:basher 5093 308 -2062 {Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}
summon illagerinvasion:basher 5093 308 -2062 {Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}

# Prevent immediate death
effect give @e[tag=ghr_hostile] minecraft:slow_falling 10 0 true

# Add all newly generated hostiles to a team
team join ghr_hostile_mobs @e[tag=ghr_hostile]