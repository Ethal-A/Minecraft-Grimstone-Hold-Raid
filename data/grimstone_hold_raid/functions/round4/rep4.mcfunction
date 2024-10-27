# Set variables
scoreboard players set ghr.state ghr.rep 4

# Inform the player
tellraw @a "Round 4, Rep 4"

# Schedule bombs
schedule function grimstone_hold_raid:pumpkin_bombs/pumpkin_bomb 5s
schedule function grimstone_hold_raid:pumpkin_bombs/pumpkin_bomb 15s
schedule function grimstone_hold_raid:pumpkin_bombs/pumpkin_bomb3x3 40s

# Spawn area 1: 5055 308 -2100
summon illagerinvasion:basher 5055 308 -2100 {Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}
summon illageandspillage:twittollager 5055 308 -2100 {Tags:["ghr_hostile"]}
summon illageandspillage:crocofang 5055 308 -2100 {Tags:["ghr_hostile"]}

# Spawn area 2: 5093 308 -2100
summon spider 5093 308 -2100 {Tags:["ghr_hostile"], Passengers:[{id:"illagerinvasion:basher", Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}]}
summon spider 5093 308 -2100 {Tags:["ghr_hostile"], Passengers:[{id:"illagerinvasion:basher", Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}]}
summon spider 5093 308 -2100 {Tags:["ghr_hostile"], Passengers:[{id:"illagerinvasion:basher", Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}]}
multisummon spread 3 3 2 minecraft:cave_spider 5093 308 -2100 {Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Ragno Babies"}]', Attributes:[{Name:"generic.max_health",Base:8}], Health:8}

# Spawn area 3: 5055 308 -2062
summon illagerinvasion:basher 5055 308 -2062 {Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}
summon illageandspillage:twittollager 5055 308 -2062 {Tags:["ghr_hostile"]}
summon illageandspillage:crocofang 5055 308 -2062 {Tags:["ghr_hostile"]}

# Spawn area 4: 5093 308 -2062
summon spider 5093 308 -2100 {Tags:["ghr_hostile"], Passengers:[{id:"illagerinvasion:basher", Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}]}
summon spider 5093 308 -2100 {Tags:["ghr_hostile"], Passengers:[{id:"illagerinvasion:basher", Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}]}
summon spider 5093 308 -2100 {Tags:["ghr_hostile"], Passengers:[{id:"illagerinvasion:basher", Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}]}
multisummon spread 3 3 2 minecraft:cave_spider 5093 308 -2062 {Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Ragno Babies"}]', Attributes:[{Name:"generic.max_health",Base:8}], Health:8}

# Adjust mobs
scale set pehkui:height 0.5 @e[type=minecraft:cave_spider, tag=ghr_boss_minion]
scale set pehkui:width 0.5 @e[type=minecraft:cave_spider, tag=ghr_boss_minion]

# Prevent immediate death
effect give @e[tag=ghr_hostile] minecraft:slow_falling 10 0 true

# Add all newly generated hostiles to a team
team join ghr_hostile_mobs @e[tag=ghr_hostile]