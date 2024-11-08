# Set variables
scoreboard players set ghr.state ghr.rep 2

# Inform the player
tellraw @a "Round 4, Rep 2"

# Schedule bombs
schedule function grimstone_hold_raid:skull_bombs/skull_bomb 5s append
schedule function grimstone_hold_raid:pumpkin_bombs/pumpkin_bomb 10s append
schedule function grimstone_hold_raid:pumpkin_bombs/pumpkin_bomb 15s append
schedule function grimstone_hold_raid:pumpkin_bombs/pumpkin_bomb3x3 17s append
schedule function grimstone_hold_raid:pumpkin_bombs/pumpkin_bomb3x3 25s append

# Spawn area 1: 5055 308 -2100
summon illageandspillage:igniter 5055 308 -2100 {Tags:["ghr_hostile"]}
summon illagerinvasion:basher 5055 308 -2100 {Tags:["ghr_hostile"], HandItems:[{id:"shield",Count:1}]}
summon illageandspillage:crocofang 5055 308 -2100 {Tags:["ghr_hostile"]}

# Spawn area 2: 5093 308 -2100
summon illagerinvasion:basher 5093 308 -2100 {Tags:["ghr_hostile"], HandItems:[{id:"shield",Count:1}]}
summon illagerinvasion:marauder 5093 308 -2100 {Tags:["ghr_hostile"], HandItems:[{id:"illagerinvasion:platinum_infused_hatchet",Count:1}], HandDropChances:[0.05f,0.05f]}
multisummon spread 3 3 2 minecraft:cave_spider 5093 308 -2100 {Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Ragno Babies"}]', Attributes:[{Name:"generic.max_health",Base:8}], Health:8}

# Spawn area 3: 5055 308 -2062
summon illageandspillage:igniter 5055 308 -2062 {Tags:["ghr_hostile"]}
summon illagerinvasion:basher 5055 308 -2062 {Tags:["ghr_hostile"], HandItems:[{id:"shield",Count:1}]}
summon illageandspillage:crocofang 5055 308 -2062 {Tags:["ghr_hostile"]}

# Spawn area 4: 5093 308 -2062
summon illagerinvasion:basher 5093 308 -2062 {Tags:["ghr_hostile"], HandItems:[{id:"shield",Count:1}]}
summon illagerinvasion:marauder 5093 308 -2062 {Tags:["ghr_hostile"], HandItems:[{id:"illagerinvasion:platinum_infused_hatchet",Count:1}], HandDropChances:[0.05f,0.05f]}
multisummon spread 3 3 2 minecraft:cave_spider 5093 308 -2062 {Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Ragno Babies"}]', Attributes:[{Name:"generic.max_health",Base:8}], Health:8}

# Adjust mobs
scale set pehkui:height 0.5 @e[type=minecraft:cave_spider, tag=ghr_boss_minion]
scale set pehkui:width 0.5 @e[type=minecraft:cave_spider, tag=ghr_boss_minion]

# Prevent immediate death
effect give @e[tag=ghr_hostile] minecraft:slow_falling 10 0 true

# Add all newly generated hostiles to a team
team join ghr_hostile_mobs @e[tag=ghr_hostile]