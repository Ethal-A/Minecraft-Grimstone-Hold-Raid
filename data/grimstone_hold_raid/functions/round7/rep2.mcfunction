# Set variables
scoreboard players set ghr.state ghr.rep 2

# Inform the player
tellraw @a "Round 7, Rep 2"

# Schedule bombs
schedule function grimstone_hold_raid:kaboomers/kaboomer 30s append
schedule function grimstone_hold_raid:dispensers/dispenser 50s append

# Spawn area 1: 5055 308 -2100
summon illagerinvasion:firecaller 5055 308 -2100 {Tags:["ghr_hostile"]}
summon illagerinvasion:marauder 5055 308 -2100 {Tags:["ghr_hostile"], HandItems:[{id:"illagerinvasion:platinum_infused_hatchet",Count:1}], HandDropChances:[0.05f,0.05f]}
summon illagerinvasion:marauder 5055 308 -2100 {Tags:["ghr_hostile"], HandItems:[{id:"illagerinvasion:platinum_infused_hatchet",Count:1}], HandDropChances:[0.05f,0.05f]}

# Spawn area 2: 5093 308 -2100
summon minecraft:creeper 5093 308 -2100 {Tags:["ghr_hostile", "ghr_enlarge"], powered:1,ExplosionRadius:2,Health:50,Attributes:[{Name:"generic.max_health",Base:50f}]}
summon illageandspillage:twittollager 5093 308 -2100 {Tags:["ghr_hostile"]}

# Spawn area 3: 5055 308 -2062
summon illagerinvasion:firecaller 5055 308 -2062 {Tags:["ghr_hostile"]}
summon illagerinvasion:marauder 5055 308 -2062 {Tags:["ghr_hostile"], HandItems:[{id:"illagerinvasion:platinum_infused_hatchet",Count:1}], HandDropChances:[0.05f,0.05f]}
summon illagerinvasion:marauder 5055 308 -2062 {Tags:["ghr_hostile"], HandItems:[{id:"illagerinvasion:platinum_infused_hatchet",Count:1}], HandDropChances:[0.05f,0.05f]}

# Spawn area 4: 5093 308 -2062
summon minecraft:creeper 5093 308 -2100 {Tags:["ghr_hostile", "ghr_enlarge"], powered:1,ExplosionRadius:2,Health:50,Attributes:[{Name:"generic.max_health",Base:50f}]}
summon illageandspillage:twittollager 5093 308 -2062 {Tags:["ghr_hostile"]}

# Adjust mobs
effect give @e[type=minecraft:creeper, tag=ghr_enlarge] speed infinite 1 true
scale set pehkui:height 2 @e[type=minecraft:creeper, tag=ghr_enlarge]
scale set pehkui:width 2 @e[type=minecraft:creeper, tag=ghr_enlarge]
function grimstone_hold_raid:equip_hostiles/equip_all_with_blast_protection

# Prevent immediate death
effect give @e[tag=ghr_hostile] minecraft:slow_falling 10 0 true

# Add all newly generated hostiles to a team
team join ghr_hostile_mobs @e[tag=ghr_hostile]