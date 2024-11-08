# Set variables
scoreboard players set ghr.state ghr.rep 6

# Inform the player
tellraw @a "Round 4, Rep 6 (final rep)"

# Schedule bombs
schedule function grimstone_hold_raid:pumpkin_bombs/pumpkin_bomb 5s append
schedule function grimstone_hold_raid:skull_bombs/skull_bomb 10s append
schedule function grimstone_hold_raid:skull_bombs/skull_bomb 15s append
schedule function grimstone_hold_raid:pumpkin_bombs/pumpkin_bomb 20s append
schedule function grimstone_hold_raid:pumpkin_bombs/pumpkin_bomb3x3 30s append

# Spawn boss area: 5074 308 -2081
summon illagerinvasion:necromancer 5074 308 -2081 {Tags:["ghr_hostile", "ghr_boss"], Attributes:[{Name:"generic.max_health",Base:300f}], Health:300}
effect give @e[type=illagerinvasion:necromancer, tag=ghr_boss] minecraft:regeneration infinite 3 true

# Make the boss always glow
effect give @e[tag=ghr_boss] glowing infinite 0 true

# Spawn area 1: 5055 308 -2100
summon illagerinvasion:basher 5055 308 -2100 {Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}
summon illageandspillage:crocofang 5055 308 -2100 {Tags:["ghr_hostile"]}

# Spawn area 2: 5093 308 -2100
summon spider 5093 308 -2100 {Tags:["ghr_hostile"], Passengers:[{id:"illagerinvasion:basher", Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}]}
summon spider 5093 308 -2100 {Tags:["ghr_hostile"], Passengers:[{id:"illagerinvasion:basher", Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}]}
summon spider 5093 308 -2100 {Tags:["ghr_hostile"], Passengers:[{id:"illagerinvasion:basher", Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}]}
multisummon spread 3 3 2 minecraft:cave_spider 5093 308 -2100 {Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Ragno Babies"}]', Attributes:[{Name:"generic.max_health",Base:8}], Health:8}

# Spawn area 3: 5055 308 -2062
summon illagerinvasion:basher 5055 308 -2062 {Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}
summon illageandspillage:crocofang 5055 308 -2062 {Tags:["ghr_hostile"]}

# Spawn area 4: 5093 308 -2062
summon spider 5093 308 -2100 {Tags:["ghr_hostile"], Passengers:[{id:"illagerinvasion:basher", Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}]}
summon spider 5093 308 -2100 {Tags:["ghr_hostile"], Passengers:[{id:"illagerinvasion:basher", Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}]}
summon spider 5093 308 -2100 {Tags:["ghr_hostile"], Passengers:[{id:"illagerinvasion:basher", Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}]}
multisummon spread 3 3 2 minecraft:cave_spider 5093 308 -2062 {Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Ragno Babies"}]', Attributes:[{Name:"generic.max_health",Base:8}], Health:8}

# Adjust mobs
scale set pehkui:height 0.5 @e[type=minecraft:cave_spider, tag=ghr_boss_minion]
scale set pehkui:width 0.5 @e[type=minecraft:cave_spider, tag=ghr_boss_minion]

# Spawn miners
function grimstone_hold_raid:miners/spawn_teleporting_miners

# Prevent immediate death
effect give @e[tag=ghr_hostile] minecraft:slow_falling 10 0 true

# Add all newly generated hostiles to a team
team join ghr_hostile_mobs @e[tag=ghr_hostile]