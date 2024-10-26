# Set variables
scoreboard players set ghr.state ghr.rep 4

# Inform the player
tellraw @a "Round 2, Rep 4 (final rep)"

# Random imps
function grimstone_hold_raid:imps/cross9
schedule function grimstone_hold_raid:imps/square7x7 10s

# Spawn area 1: 226 311 16
summon minecraft:pillager 226 311 16 {Tags:["ghr_hostile", "small_and_fast"], CustomName:'[{"text":"Inspiring Pillager"}]', HandItems:[{id:crossbow,Count:1}, {id:"shieldexp:wooden_shield", Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:2f}]}
summon minecraft:pillager 226 311 16 {Tags:["ghr_hostile", "small_and_fast"], CustomName:'[{"text":"Inspiring Pillager"}]', HandItems:[{id:crossbow,Count:1}, {id:"shieldexp:wooden_shield", Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:2f}]}
summon illagerinvasion:basher 226 311 16 {Tags:["ghr_hostile"], HandItems:[{id:"shield",Count:1}]}

# Spawn area 1: 190 309 14
summon minecraft:pillager 190 309 14 {Tags:["ghr_hostile", "small_and_fast"], CustomName:'[{"text":"Inspiring Pillager"}]', HandItems:[{id:crossbow,Count:1}, {id:"shieldexp:wooden_shield", Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:2f}]}
summon minecraft:pillager 190 309 14 {Tags:["ghr_hostile", "small_and_fast"], CustomName:'[{"text":"Inspiring Pillager"}]', HandItems:[{id:crossbow,Count:1}, {id:"shieldexp:wooden_shield", Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:2f}]}

# Spawn area 1: 192 309 -18
summon minecraft:pillager 192 309 -18 {Tags:["ghr_hostile", "small_and_fast"], CustomName:'[{"text":"Inspiring Pillager"}]', HandItems:[{id:crossbow,Count:1}, {id:"shieldexp:wooden_shield", Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:2f}]}
summon minecraft:pillager 192 309 -18 {Tags:["ghr_hostile", "small_and_fast"], CustomName:'[{"text":"Inspiring Pillager"}]', HandItems:[{id:crossbow,Count:1}, {id:"shieldexp:wooden_shield", Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:2f}]}
summon illagerinvasion:basher 192 309 -18 {Tags:["ghr_hostile"], HandItems:[{id:"shield",Count:1}]}

# Spawn area 1: 225 309 -19
summon minecraft:pillager 225 309 -19 {Tags:["ghr_hostile", "small_and_fast"], CustomName:'[{"text":"Inspiring Pillager"}]', HandItems:[{id:crossbow,Count:1}, {id:"shieldexp:wooden_shield", Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:2f}]}
summon minecraft:pillager 225 309 -19 {Tags:["ghr_hostile", "small_and_fast"], CustomName:'[{"text":"Inspiring Pillager"}]', HandItems:[{id:crossbow,Count:1}, {id:"shieldexp:wooden_shield", Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:2f}]}

# Apply small and fast changes
effect give @e[type=minecraft:pillager, tag=small_and_fast] minecraft:speed infinite 0 true
scale set pehkui:height 0.7 @e[type=minecraft:pillager, tag=small_and_fast]
scale set pehkui:width 0.7 @e[type=minecraft:pillager, tag=small_and_fast]

# Prevent immediate death
effect give @e[tag=ghr_hostile] minecraft:slow_falling 10 0 true
effect give @e[tag=ghr_hostile] minecraft:fire_resistance 10 1 true

# Add all newly generated hostiles to a team
team join ghr_hostile_mobs @e[tag=ghr_hostile]