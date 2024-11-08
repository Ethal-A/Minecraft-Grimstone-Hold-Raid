# Set variables
scoreboard players set ghr.state ghr.rep 3

# Inform the player
tellraw @a "Round 6, Rep 3"

# Schedule bombs
function grimstone_hold_raid:living_bombs/plant_living_bomb
schedule function grimstone_hold_raid:dispensers/dispenser 5s append
schedule function grimstone_hold_raid:kaboomers/kaboomer 20s append

# Spawn boss area: 5074 308 -2081
summon minecraft:creeper 5093 308 -2100 {Tags:["ghr_hostile", "ghr_enlarge"], powered:1,ExplosionRadius:2,Health:50,Attributes:[{Name:"generic.max_health",Base:50f}]}

# Spawn area 1: 5055 308 -2100
summon illageandspillage:preserver 5055 308 -2100 {Tags:["ghr_hostile"]}
multisummon spread 1 2 2 pillager 5055 308 -2100 {Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}
multisummon spread 1 2 2 illagerinvasion:inquisitor 5055 308 -2100 {Tags:["ghr_hostile"], PersistenceRequired:1b,HandItems:[{id:iron_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0f,0f]}

# Spawn area 2: 5093 308 -2100
summon minecraft:vindicator 5093 308 -2100 {Tags:["ghr_hostile"], HandItems:[{id:diamond_axe,Count:1},{id:shield,Count:1}],Attributes:[{Name:"generic.armor",Base:2f}],HandDropChances:[0f,0f]}
summon illageandspillage:twittollager 5093 308 -2100 {Tags:["ghr_hostile"]}

# Spawn area 3: 5055 308 -2062
summon illageandspillage:preserver 5055 308 -2062 {Tags:["ghr_hostile"]}
multisummon spread 1 2 2 pillager 5055 308 -2062 {Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}
multisummon spread 1 2 2 illagerinvasion:inquisitor 5055 308 -2062 {Tags:["ghr_hostile"], PersistenceRequired:1b,HandItems:[{id:iron_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0f,0f]}

# Spawn area 4: 5093 308 -2062
summon minecraft:vindicator 5093 308 -2062 {Tags:["ghr_hostile"], HandItems:[{id:diamond_axe,Count:1},{id:shield,Count:1}],Attributes:[{Name:"generic.armor",Base:2f}],HandDropChances:[0f,0f]}
summon illageandspillage:twittollager 5093 308 -2062 {Tags:["ghr_hostile"]}

# Spawn miners
function grimstone_hold_raid:miners/spawn_sprint_dangerous_miners

# Adjust mobs
effect give @e[type=minecraft:creeper, tag=ghr_enlarge] speed infinite 1 true
scale set pehkui:height 2 @e[type=minecraft:creeper, tag=ghr_enlarge]
scale set pehkui:width 2 @e[type=minecraft:creeper, tag=ghr_enlarge]
function grimstone_hold_raid:equip_hostiles/equip_all_with_blast_protection

# Prevent immediate death
effect give @e[tag=ghr_hostile] minecraft:slow_falling 10 0 true

# Add all newly generated hostiles to a team
team join ghr_hostile_mobs @e[tag=ghr_hostile]