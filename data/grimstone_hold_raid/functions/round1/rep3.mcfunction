# Set variables
scoreboard players set ghr.state ghr.rep 3

# Inform the player
tellraw @a "Round 1, Rep 3"

# Random imps
function grimstone_hold_raid:imps/cross9
schedule function grimstone_hold_raid:imps/cross9 2s
schedule function grimstone_hold_raid:imps/cross9 4s
schedule function grimstone_hold_raid:imps/square7x7 6s
schedule function grimstone_hold_raid:imps/square7x7 8s

# Spawn area 1: 5055 308 -2100
summon minecraft:pillager 5055 308 -2100 {Tags:["ghr_hostile", "small_and_fast"], CustomName:'[{"text":"Inspiring Pillager"}]', HandItems:[{id:crossbow,Count:1}, {id:"shieldexp:wooden_shield", Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:2f}]}
summon minecraft:pillager 5055 308 -2100 {Tags:["ghr_hostile", "small_and_fast"], CustomName:'[{"text":"Inspiring Pillager"}]', HandItems:[{id:crossbow,Count:1}, {id:"shieldexp:wooden_shield", Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:2f}]}
summon minecraft:pillager 5055 308 -2100 {Tags:["ghr_hostile", "small_and_fast"], CustomName:'[{"text":"Inspiring Pillager"}]', HandItems:[{id:crossbow,Count:1}, {id:"shieldexp:wooden_shield", Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:2f}]}

# Spawn area 2: 5093 308 -2100
summon minecraft:pillager 5093 308 -2100 {Tags:["ghr_hostile", "small_and_fast"], CustomName:'[{"text":"Inspiring Pillager"}]', HandItems:[{id:crossbow,Count:1}, {id:"shieldexp:wooden_shield", Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:2f}]}
summon minecraft:pillager 5093 308 -2100 {Tags:["ghr_hostile", "small_and_fast"], CustomName:'[{"text":"Inspiring Pillager"}]', HandItems:[{id:crossbow,Count:1}, {id:"shieldexp:wooden_shield", Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:2f}]}
summon minecraft:pillager 5093 308 -2100 {Tags:["ghr_hostile", "small_and_fast"], CustomName:'[{"text":"Inspiring Pillager"}]', HandItems:[{id:crossbow,Count:1}, {id:"shieldexp:wooden_shield", Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:2f}]}

# Spawn area 3: 5055 308 -2062
summon minecraft:pillager 5055 308 -2062 {Tags:["ghr_hostile", "small_and_fast"], CustomName:'[{"text":"Inspiring Pillager"}]', HandItems:[{id:crossbow,Count:1}, {id:"shieldexp:wooden_shield", Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:2f}]}
summon minecraft:pillager 5055 308 -2062 {Tags:["ghr_hostile", "small_and_fast"], CustomName:'[{"text":"Inspiring Pillager"}]', HandItems:[{id:crossbow,Count:1}, {id:"shieldexp:wooden_shield", Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:2f}]}
summon minecraft:pillager 5055 308 -2062 {Tags:["ghr_hostile", "small_and_fast"], CustomName:'[{"text":"Inspiring Pillager"}]', HandItems:[{id:crossbow,Count:1}, {id:"shieldexp:wooden_shield", Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:2f}]}

# Spawn area 4: 5093 308 -2062
summon minecraft:pillager 5093 308 -2062 {Tags:["ghr_hostile", "small_and_fast"], CustomName:'[{"text":"Inspiring Pillager"}]', HandItems:[{id:crossbow,Count:1}, {id:"shieldexp:wooden_shield", Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:2f}]}
summon minecraft:pillager 5093 308 -2062 {Tags:["ghr_hostile", "small_and_fast"], CustomName:'[{"text":"Inspiring Pillager"}]', HandItems:[{id:crossbow,Count:1}, {id:"shieldexp:wooden_shield", Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:2f}]}
summon minecraft:pillager 5093 308 -2062 {Tags:["ghr_hostile", "small_and_fast"], CustomName:'[{"text":"Inspiring Pillager"}]', HandItems:[{id:crossbow,Count:1}, {id:"shieldexp:wooden_shield", Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:2f}]}

# Apply small and fast changes
effect give @e[type=minecraft:pillager, tag=small_and_fast] minecraft:speed infinite 0 true
scale set pehkui:height 0.7 @e[type=minecraft:pillager, tag=small_and_fast]
scale set pehkui:width 0.7 @e[type=minecraft:pillager, tag=small_and_fast]

# Spawn miners
function grimstone_hold_raid:miners/spawn_miners

# Prevent immediate death
effect give @e[tag=ghr_hostile] minecraft:slow_falling 10 0 true

# Add all newly generated hostiles to a team
team join ghr_hostile_mobs @e[tag=ghr_hostile]