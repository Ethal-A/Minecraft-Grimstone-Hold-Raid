# Set variables
scoreboard players set ghr.state ghr.rep 5

# Inform the player
tellraw @a "Round 1, Rep 5"

# Random imps
function grimstone_hold_raid:imps/cross9
function grimstone_hold_raid:imps/cross9
schedule function grimstone_hold_raid:imps/cross9 10s append
schedule function grimstone_hold_raid:imps/cross9 20s append
schedule function grimstone_hold_raid:imps/cross9 30s append
schedule function grimstone_hold_raid:imps/cross9 30s append
schedule function grimstone_hold_raid:imps/cross9 80s append
schedule function grimstone_hold_raid:imps/cross9 90s append
schedule function grimstone_hold_raid:imps/square7x7 15s append
schedule function grimstone_hold_raid:imps/square7x7 20s append
schedule function grimstone_hold_raid:imps/square7x7 35s append
schedule function grimstone_hold_raid:imps/square7x7 50s append
schedule function grimstone_hold_raid:imps/square7x7 60s append
schedule function grimstone_hold_raid:imps/square7x7 70s append

# Spawn area 1: 5055 308 -2100
summon ravager 5055 308 -2100 {Tags:["ghr_hostile"], Attributes:[{Name:"generic.armor",Base:10f}], Passengers:[{id:pillager, Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}]}

# Spawn area 2: 5093 308 -2100
summon ravager 5093 308 -2100 {Tags:["ghr_hostile"], Attributes:[{Name:"generic.armor",Base:10f}], Passengers:[{id:pillager, Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}]}

# Spawn area 3: 5055 308 -2062
summon ravager 5055 308 -2062 {Tags:["ghr_hostile"], Attributes:[{Name:"generic.armor",Base:10f}], Passengers:[{id:pillager, Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}]}

# Spawn area 4: 5093 308 -2062
summon ravager 5093 308 -2062 {Tags:["ghr_hostile"], Attributes:[{Name:"generic.armor",Base:10f}], Passengers:[{id:pillager, Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}]}

# Spawn miners
function grimstone_hold_raid:miners/spawn_miners

# Prevent immediate death
effect give @e[tag=ghr_hostile] minecraft:slow_falling 10 0 true

# Add all newly generated hostiles to a team
team join ghr_hostile_mobs @e[tag=ghr_hostile]