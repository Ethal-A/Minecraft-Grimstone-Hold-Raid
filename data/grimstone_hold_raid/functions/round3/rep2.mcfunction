# Set variables
scoreboard players set ghr.state ghr.rep 2

# Inform the player
tellraw @a "Round 3, Rep 2"

# Random imps
function grimstone_hold_raid:imps/cross9
schedule function grimstone_hold_raid:imps/cross9 2s
schedule function grimstone_hold_raid:imps/square7x7 10s

# Spawn area 1: 5055 308 -2100
summon illagerinvasion:basher 5093 308 -2062 {Tags:["ghr_hostile"], HandItems:[{id:"shield",Count:1}]}
summon illagerinvasion:marauder 5093 308 -2062 {Tags:["ghr_hostile"], HandItems:[{id:"illagerinvasion:platinum_infused_hatchet",Count:1}], HandDropChances:[0.05f,0.05f]}

# Spawn area 2: 5093 308 -2100
summon illagerinvasion:basher 5093 308 -2100 {Tags:["ghr_hostile"], HandItems:[{id:"shield",Count:1}]}
summon illagerinvasion:alchemist 5093 308 -2100 {Tags:["ghr_hostile"],HandItems:[{id:bow,Count:1}],Attributes:[{Name:"generic.armor",Base:4f}, {Name:"generic.max_health",Base:80f}], Health:80}

# Spawn area 3: 5055 308 -2062
summon illagerinvasion:basher 5055 308 -2062 {Tags:["ghr_hostile"], HandItems:[{id:"shield",Count:1}]}
summon illagerinvasion:marauder 5055 308 -2062 {Tags:["ghr_hostile"], HandItems:[{id:"illagerinvasion:platinum_infused_hatchet",Count:1}], HandDropChances:[0.05f,0.05f]}

# Spawn area 4: 5093 308 -2062
summon illagerinvasion:basher 5093 308 -2062 {Tags:["ghr_hostile"], HandItems:[{id:"shield",Count:1}]}
summon illagerinvasion:alchemist 5093 308 -2062 {Tags:["ghr_hostile"],HandItems:[{id:bow,Count:1}],Attributes:[{Name:"generic.armor",Base:4f}, {Name:"generic.max_health",Base:80f}], Health:80}

# Prevent immediate death
effect give @e[tag=ghr_hostile] minecraft:slow_falling 10 0 true

# Add all newly generated hostiles to a team
team join ghr_hostile_mobs @e[tag=ghr_hostile]