# Set variables
scoreboard players set ghr.state ghr.rep 5

# Inform the player
tellraw @a "Round 1, Rep 5"

# Random imps
function grimstone_hold_raid:imps/cross9
function grimstone_hold_raid:imps/cross9
schedule function grimstone_hold_raid:imps/cross9 10s
schedule function grimstone_hold_raid:imps/cross9 20s
schedule function grimstone_hold_raid:imps/cross9 30s
schedule function grimstone_hold_raid:imps/cross9 30s
schedule function grimstone_hold_raid:imps/cross9 80s
schedule function grimstone_hold_raid:imps/cross9 80s
schedule function grimstone_hold_raid:imps/square7x7 15s
schedule function grimstone_hold_raid:imps/square7x7 20s
schedule function grimstone_hold_raid:imps/square7x7 35s
schedule function grimstone_hold_raid:imps/square7x7 50s
schedule function grimstone_hold_raid:imps/square7x7 60s
schedule function grimstone_hold_raid:imps/square7x7 70s

# Spawn area 1: 226 311 16
summon ravager 226 311 16 {Tags:["ghr_hostile"], Attributes:[{Name:"generic.armor",Base:10f}], Passengers:[{id:pillager, Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}]}

# Spawn area 2: 190 309 14
summon ravager 190 309 14 {Tags:["ghr_hostile"], Attributes:[{Name:"generic.armor",Base:10f}], Passengers:[{id:pillager, Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}]}

# Spawn area 3: 192 309 -18
summon ravager 192 309 -18 {Tags:["ghr_hostile"], Attributes:[{Name:"generic.armor",Base:10f}], Passengers:[{id:pillager, Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}]}

# Spawn area 4: 225 309 -19
summon ravager 225 309 -19 {Tags:["ghr_hostile"], Attributes:[{Name:"generic.armor",Base:10f}], Passengers:[{id:pillager, Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}]}

# Prevent immediate death
effect give @e[tag=ghr_hostile] minecraft:slow_falling 10 0 true

# Add all newly generated hostiles to a team
team join ghr_hostile_mobs @e[tag=ghr_hostile]