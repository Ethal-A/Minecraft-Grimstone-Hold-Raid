# Set variables
scoreboard players set ghr.state ghr.rep 5

# Inform the player
tellraw @a "Round 4, Rep 5"

# Schedule bombs
schedule function grimstone_hold_raid:skull_bombs/skull_bomb 5s
schedule function grimstone_hold_raid:pumpkin_bombs/pumpkin_bomb 15s
schedule function grimstone_hold_raid:pumpkin_bombs/pumpkin_bomb3x3 25s

# Spawn area 1: 226 311 16
summon illageandspillage:igniter 226 311 16 {Tags:["ghr_hostile"]}
summon illagerinvasion:basher 226 311 16 {Tags:["ghr_hostile"], HandItems:[{id:"shield",Count:1}]}
summon illageandspillage:crocofang 226 311 16 {Tags:["ghr_hostile"]}
summon minecraft:vindicator 226 311 16 {Tags:["ghr_hostile"], HandItems:[{id:diamond_axe,Count:1},{id:shield,Count:1}],Attributes:[{Name:"generic.armor",Base:2f}],HandDropChances:[0f,0f]}
summon minecraft:vindicator 226 311 16 {Tags:["ghr_hostile"], HandItems:[{id:diamond_axe,Count:1},{id:shield,Count:1}],Attributes:[{Name:"generic.armor",Base:2f}],HandDropChances:[0f,0f]}

# Spawn area 1: 190 309 14
summon illagerinvasion:basher 190 309 14 {Tags:["ghr_hostile"], HandItems:[{id:"shield",Count:1}]}
summon illagerinvasion:marauder 190 309 14 {Tags:["ghr_hostile"], HandItems:[{id:"illagerinvasion:platinum_infused_hatchet",Count:1}], HandDropChances:[0.05f,0.05f]}
summon minecraft:vindicator 190 309 14 {Tags:["ghr_hostile"], HandItems:[{id:diamond_axe,Count:1},{id:shield,Count:1}],Attributes:[{Name:"generic.armor",Base:2f}],HandDropChances:[0f,0f]}
summon minecraft:vindicator 190 309 14 {Tags:["ghr_hostile"], HandItems:[{id:diamond_axe,Count:1},{id:shield,Count:1}],Attributes:[{Name:"generic.armor",Base:2f}],HandDropChances:[0f,0f]}
multisummon spread 3 3 2 minecraft:cave_spider 190 309 14 {Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Ragno Babies"}]', Attributes:[{Name:"generic.max_health",Base:8}], Health:8}

# Spawn area 1: 192 309 -18
summon illageandspillage:igniter 192 309 -18 {Tags:["ghr_hostile"]}
summon illagerinvasion:basher 192 309 -18 {Tags:["ghr_hostile"], HandItems:[{id:"shield",Count:1}]}
summon illageandspillage:crocofang 192 309 -18 {Tags:["ghr_hostile"]}
summon minecraft:vindicator 192 309 -18 {Tags:["ghr_hostile"], HandItems:[{id:diamond_axe,Count:1},{id:shield,Count:1}],Attributes:[{Name:"generic.armor",Base:2f}],HandDropChances:[0f,0f]}
summon minecraft:vindicator 192 309 -18 {Tags:["ghr_hostile"], HandItems:[{id:diamond_axe,Count:1},{id:shield,Count:1}],Attributes:[{Name:"generic.armor",Base:2f}],HandDropChances:[0f,0f]}

# Spawn area 1: 225 309 -19
summon illagerinvasion:basher 225 309 -19 {Tags:["ghr_hostile"], HandItems:[{id:"shield",Count:1}]}
summon illagerinvasion:marauder 225 309 -19 {Tags:["ghr_hostile"], HandItems:[{id:"illagerinvasion:platinum_infused_hatchet",Count:1}], HandDropChances:[0.05f,0.05f]}
summon minecraft:vindicator 225 309 -19 {Tags:["ghr_hostile"], HandItems:[{id:diamond_axe,Count:1},{id:shield,Count:1}],Attributes:[{Name:"generic.armor",Base:2f}],HandDropChances:[0f,0f]}
summon minecraft:vindicator 225 309 -19 {Tags:["ghr_hostile"], HandItems:[{id:diamond_axe,Count:1},{id:shield,Count:1}],Attributes:[{Name:"generic.armor",Base:2f}],HandDropChances:[0f,0f]}
multisummon spread 3 3 2 minecraft:cave_spider 225 309 -19 {Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Ragno Babies"}]', Attributes:[{Name:"generic.max_health",Base:8}], Health:8}

# Adjust mobs
scale set pehkui:height 0.5 @e[type=minecraft:cave_spider, tag=ghr_boss_minion]
scale set pehkui:width 0.5 @e[type=minecraft:cave_spider, tag=ghr_boss_minion]

# Prevent immediate death
effect give @e[tag=ghr_hostile] minecraft:slow_falling 10 0 true

# Add all newly generated hostiles to a team
team join ghr_hostile_mobs @e[tag=ghr_hostile]