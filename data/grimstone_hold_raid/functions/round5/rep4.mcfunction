# Set variables
scoreboard players set ghr.state ghr.rep 4

# Inform the player
tellraw @a "Round 5, Rep 4"

# Spawn area 1: 5055 308 -2100
summon spider 5055 308 -2100 {Tags:["ghr_hostile"], Passengers:[{id:"illagerinvasion:basher", Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}]}
summon phantom 5055 308 -2100 {Tags:["ghr_hostile"], Size:2,Passengers:[{id:pillager,Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1}, {}],HandDropChances:[0f, 0f]}]}

# Spawn area 2: 5093 308 -2100
summon spider 5093 308 -2100 {Tags:["ghr_hostile"], Passengers:[{id:"illagerinvasion:basher", Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}]}
summon phantom 5093 308 -2100 {Tags:["ghr_hostile"], Size:2,Passengers:[{id:pillager,Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1}, {}],HandDropChances:[0f, 0f]}]}

# Spawn area 3: 5055 308 -2062
summon spider 5055 308 -2062 {Tags:["ghr_hostile"], Passengers:[{id:"illagerinvasion:basher", Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}]}
summon phantom 5055 308 -2062 {Tags:["ghr_hostile"], Size:2,Passengers:[{id:pillager,Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1}, {}],HandDropChances:[0f, 0f]}]}

# Spawn area 4: 5093 308 -2062
summon spider 5093 308 -2062 {Tags:["ghr_hostile"], Passengers:[{id:"illagerinvasion:basher", Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}]}
summon phantom 5093 308 -2062 {Tags:["ghr_hostile"], Size:2,Passengers:[{id:pillager,Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1}, {}],HandDropChances:[0f, 0f]}]}

# Set phantom anger
execute as @e[type=phantom, tag=ghr_hostile] run data modify entity @s AngryAt set from entity @p UUID

# Prevent immediate death
effect give @e[tag=ghr_hostile] minecraft:slow_falling 10 0 true

# Add all newly generated hostiles to a team
team join ghr_hostile_mobs @e[tag=ghr_hostile]