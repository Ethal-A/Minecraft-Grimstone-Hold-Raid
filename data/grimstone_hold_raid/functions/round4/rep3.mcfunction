# Set variables
scoreboard players set ghr.state ghr.rep 3

# Inform the player
tellraw @a "Round 4, Rep 3"

# Schedule bombs
schedule function grimstone_hold_raid:pumpkin_bombs/pumpkin_bomb 5s
schedule function grimstone_hold_raid:skull_bombs/skull_bomb 10s
schedule function grimstone_hold_raid:pumpkin_bombs/pumpkin_bomb 10s
schedule function grimstone_hold_raid:pumpkin_bombs/pumpkin_bomb 15s
schedule function grimstone_hold_raid:skull_bombs/skull_bomb 20s
schedule function grimstone_hold_raid:pumpkin_bombs/pumpkin_bomb3x3 30s
schedule function grimstone_hold_raid:pumpkin_bombs/pumpkin_bomb3x3 50s

# Spawn area 1: 226 311 16
summon illagerinvasion:basher 226 311 16 {Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}
summon illageandspillage:twittollager 226 311 16 {Tags:["ghr_hostile"]}
summon illageandspillage:crocofang 226 311 16 {Tags:["ghr_hostile"]}

# Spawn area 1: 190 309 14
summon spider 190 309 14 {Tags:["ghr_hostile"], Passengers:[{id:"illagerinvasion:basher", Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}]}
summon spider 190 309 14 {Tags:["ghr_hostile"], Passengers:[{id:"illagerinvasion:basher", Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}]}
summon spider 190 309 14 {Tags:["ghr_hostile"], Passengers:[{id:"illagerinvasion:basher", Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}]}
multisummon spread 3 3 2 minecraft:cave_spider 190 309 14 {Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Ragno Babies"}]', Attributes:[{Name:"generic.max_health",Base:8}], Health:8}

# Spawn area 1: 192 309 -18
summon illagerinvasion:basher 192 309 -18 {Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}
summon illageandspillage:twittollager 192 309 -18 {Tags:["ghr_hostile"]}
summon illageandspillage:crocofang 192 309 -18 {Tags:["ghr_hostile"]}

# Spawn area 1: 225 309 -19
summon spider 190 309 14 {Tags:["ghr_hostile"], Passengers:[{id:"illagerinvasion:basher", Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}]}
summon spider 190 309 14 {Tags:["ghr_hostile"], Passengers:[{id:"illagerinvasion:basher", Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}]}
summon spider 190 309 14 {Tags:["ghr_hostile"], Passengers:[{id:"illagerinvasion:basher", Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}]}
multisummon spread 3 3 2 minecraft:cave_spider 225 309 -19 {Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Ragno Babies"}]', Attributes:[{Name:"generic.max_health",Base:8}], Health:8}

# Adjust mobs
scale set pehkui:height 0.5 @e[type=minecraft:cave_spider, tag=ghr_boss_minion]
scale set pehkui:width 0.5 @e[type=minecraft:cave_spider, tag=ghr_boss_minion]

# Trigger hostility
schedule function grimstone_hold_raid:round4/trigger_hostility 2s

# Prevent immediate death
effect give @e[tag=ghr_hostile] minecraft:slow_falling 10 0 true
effect give @e[tag=ghr_hostile] minecraft:fire_resistance 10 1 true

# Add all newly generated hostiles to a team
team join ghr_hostile_mobs @e[tag=ghr_hostile]