# Set variables
scoreboard players set ghr.state ghr.rep 2

# Inform the player
tellraw @a "Round 6, Rep 2"

# Schedule bombs
schedule function grimstone_hold_raid:kaboomers/kaboomer 5s append
schedule function grimstone_hold_raid:kaboomers/kaboomer 20s append
schedule function grimstone_hold_raid:dispensers/dispenser 30s append

# Spawn area 1: 5055 308 -2100
summon zombie 5055 308 -2100 {Tags:["ghr_hostile", "ghr_enlarge"],CustomName:'[{"text":"Hammer Time"}]',Health:40,HandItems:[{id:"simplyswords:iron_greathammer",Count:1},{id:shield,Count:1}],Attributes:[{Name:"zombie.spawn_reinforcements",Base:0.5f},{Name:"generic.max_health",Base:40f}],HandDropChances:[0f,0f]}
summon illagerinvasion:necromancer 5055 308 -2100 {Tags:["ghr_hostile", "ghr_boss"], Attributes:[{Name:"generic.max_health",Base:300f}], Health:300}

# Spawn area 2: 5093 308 -2100
summon zombie 5093 308 -2100 {Tags:["ghr_hostile", "ghr_enlarge"],CustomName:'[{"text":"Hammer Time"}]',Health:40,HandItems:[{id:"simplyswords:iron_greathammer",Count:1},{id:shield,Count:1}],Attributes:[{Name:"zombie.spawn_reinforcements",Base:0.5f},{Name:"generic.max_health",Base:40f}],HandDropChances:[0f,0f]}
summon illagerinvasion:provoker 5093 308 -2100 {Tags:["ghr_hostile"], HandItems:[{id:bow,Count:1},{id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}, {Name:"generic.max_health",Base:80f}], Health:80}

# Spawn area 3: 5055 308 -2062
summon zombie 5055 308 -2062 {Tags:["ghr_hostile", "ghr_enlarge"],CustomName:'[{"text":"Hammer Time"}]',Health:40,HandItems:[{id:"simplyswords:iron_greathammer",Count:1},{id:shield,Count:1}],Attributes:[{Name:"zombie.spawn_reinforcements",Base:0.5f},{Name:"generic.max_health",Base:40f}],HandDropChances:[0f,0f]}
summon illagerinvasion:necromancer 5055 308 -2062 {Tags:["ghr_hostile", "ghr_boss"], Attributes:[{Name:"generic.max_health",Base:300f}], Health:300}

# Spawn area 4: 5093 308 -2062
summon zombie 5093 308 -2062 {Tags:["ghr_hostile", "ghr_enlarge"],CustomName:'[{"text":"Hammer Time"}]',Health:40,HandItems:[{id:"simplyswords:iron_greathammer",Count:1},{id:shield,Count:1}],Attributes:[{Name:"zombie.spawn_reinforcements",Base:0.5f},{Name:"generic.max_health",Base:40f}],HandDropChances:[0f,0f]}
summon illagerinvasion:provoker 5093 308 -2062 {Tags:["ghr_hostile"], HandItems:[{id:bow,Count:1},{id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}, {Name:"generic.max_health",Base:80f}], Health:80}

# Spawn miners
function grimstone_hold_raid:miners/spawn_sprint_dangerous_miners

# Make the boss always glow
effect give @e[tag=ghr_boss] glowing infinite 0 true

# Apply effects to hostiles
effect give @e[type=illagerinvasion:necromancer, tag=ghr_boss] minecraft:regeneration infinite 3 true

# Adjust mobs
scale set pehkui:height 1.3 @e[type=minecraft:zombie, tag=ghr_enlarge]
scale set pehkui:width 1.3 @e[type=minecraft:zombie, tag=ghr_enlarge]
function grimstone_hold_raid:equip_hostiles/equip_all_with_blast_protection

# Prevent immediate death
effect give @e[tag=ghr_hostile] minecraft:slow_falling 10 0 true

# Add all newly generated hostiles to a team
team join ghr_hostile_mobs @e[tag=ghr_hostile]