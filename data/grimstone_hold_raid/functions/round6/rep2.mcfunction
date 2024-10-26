# Set variables
scoreboard players set ghr.state ghr.rep 2

# Inform the player
tellraw @a "Round 6, Rep 2"

# Schedule bombs
schedule function grimstone_hold_raid:kaboomers/kaboomer 5s
schedule function grimstone_hold_raid:kaboomers/kaboomer 20s

# Spawn area 1: 226 311 16
summon zombie 226 311 16 {Tags:["ghr_hostile", "ghr_enlarge"],CustomName:'[{"text":"Hammer Time"}]',Health:40,HandItems:[{id:"simplyswords:iron_greathammer",Count:1},{id:shield,Count:1}],Attributes:[{Name:"zombie.spawn_reinforcements",Base:0.5f},{Name:"generic.max_health",Base:40f}],HandDropChances:[0f,0f]}
summon illagerinvasion:necromancer 226 311 16 {Tags:["ghr_hostile", "ghr_boss"], Attributes:[{Name:"generic.max_health",Base:300f}], Health:300}

# Spawn area 1: 190 309 14
summon zombie 190 309 14 {Tags:["ghr_hostile", "ghr_enlarge"],CustomName:'[{"text":"Hammer Time"}]',Health:40,HandItems:[{id:"simplyswords:iron_greathammer",Count:1},{id:shield,Count:1}],Attributes:[{Name:"zombie.spawn_reinforcements",Base:0.5f},{Name:"generic.max_health",Base:40f}],HandDropChances:[0f,0f]}
summon illagerinvasion:provoker 190 309 14 {Tags:["ghr_hostile"], HandItems:[{id:bow,Count:1},{id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}, {Name:"generic.max_health",Base:80f}], Health:80}

# Spawn area 1: 192 309 -18
summon zombie 192 309 -18 {Tags:["ghr_hostile", "ghr_enlarge"],CustomName:'[{"text":"Hammer Time"}]',Health:40,HandItems:[{id:"simplyswords:iron_greathammer",Count:1},{id:shield,Count:1}],Attributes:[{Name:"zombie.spawn_reinforcements",Base:0.5f},{Name:"generic.max_health",Base:40f}],HandDropChances:[0f,0f]}
summon illagerinvasion:necromancer 192 309 -18 {Tags:["ghr_hostile", "ghr_boss"], Attributes:[{Name:"generic.max_health",Base:300f}], Health:300}

# Spawn area 1: 225 309 -19
summon zombie 225 309 -19 {Tags:["ghr_hostile", "ghr_enlarge"],CustomName:'[{"text":"Hammer Time"}]',Health:40,HandItems:[{id:"simplyswords:iron_greathammer",Count:1},{id:shield,Count:1}],Attributes:[{Name:"zombie.spawn_reinforcements",Base:0.5f},{Name:"generic.max_health",Base:40f}],HandDropChances:[0f,0f]}
summon illagerinvasion:provoker 225 309 -19 {Tags:["ghr_hostile"], HandItems:[{id:bow,Count:1},{id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}, {Name:"generic.max_health",Base:80f}], Health:80}

# Adjust mobs
scale set pehkui:height 1.3 @e[type=minecraft:zombie, tag=ghr_enlarge]
scale set pehkui:width 1.3 @e[type=minecraft:zombie, tag=ghr_enlarge]
function grimstone_hold_raid:round6/equip_all_with_blast_protection

# Prevent immediate death
effect give @e[tag=ghr_hostile] minecraft:slow_falling 10 0 true
effect give @e[tag=ghr_hostile] minecraft:fire_resistance 10 1 true

# Add all newly generated hostiles to a team
# team join ghr_hostile_mobs @e[tag=ghr_hostile]
execute as @e[tag=ghr_hostile] run data modify entity @s Team set value ghr_hostile_mobs