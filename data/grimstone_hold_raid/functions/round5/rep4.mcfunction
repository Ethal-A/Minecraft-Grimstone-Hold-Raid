# Set variables
scoreboard players set ghr.state ghr.rep 4

# Inform the player
tellraw @a "Round 5, Rep 4"

# Spawn area 1: 226 311 16
summon spider 226 311 16 {Tags:["ghr_hostile"], Passengers:[{id:"illagerinvasion:basher", Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}]}
summon phantom 226 311 16 {Tags:["ghr_hostile"], Size:2,Passengers:[{id:pillager,Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1}, {}],HandDropChances:[0f, 0f]}]}

# Spawn area 1: 190 309 14
summon spider 190 309 14 {Tags:["ghr_hostile"], Passengers:[{id:"illagerinvasion:basher", Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}]}
summon phantom 190 309 14 {Tags:["ghr_hostile"], Size:2,Passengers:[{id:pillager,Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1}, {}],HandDropChances:[0f, 0f]}]}

# Spawn area 1: 192 309 -18
summon spider 192 309 -18 {Tags:["ghr_hostile"], Passengers:[{id:"illagerinvasion:basher", Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}]}
summon phantom 192 309 -18 {Tags:["ghr_hostile"], Size:2,Passengers:[{id:pillager,Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1}, {}],HandDropChances:[0f, 0f]}]}

# Spawn area 1: 225 309 -19
summon spider 225 309 -19 {Tags:["ghr_hostile"], Passengers:[{id:"illagerinvasion:basher", Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}]}
summon phantom 225 309 -19 {Tags:["ghr_hostile"], Size:2,Passengers:[{id:pillager,Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1}, {}],HandDropChances:[0f, 0f]}]}

# Set phantom anger
execute as @e[type=phantom, tag=ghr_hostile] run data modify entity @s AngryAt set from entity @p UUID

# Prevent immediate death
effect give @e[tag=ghr_hostile] minecraft:slow_falling 10 0 true
effect give @e[tag=ghr_hostile] minecraft:fire_resistance 10 1 true

# Add all newly generated hostiles to a team
team join ghr_hostile_mobs @e[tag=ghr_hostile]