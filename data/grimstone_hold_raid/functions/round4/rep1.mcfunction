# Set variables
scoreboard players set ghr.state ghr.rep 1

# Inform the player (reset title format)
tellraw @a "Round 4, Rep 1"
title @a reset

# Schedule bombs
schedule function grimstone_hold_raid:skull_bombs/skull_bomb 5s
schedule function grimstone_hold_raid:skull_bombs/skull_bomb 10s
schedule function grimstone_hold_raid:skull_bombs/skull_bomb 15s

# Spawn boss area: 5074 308 -2081
summon mutantmonsters:spider_pig 5074 308 -2081 {Tags:["ghr_hostile", "ghr_boss"], Attributes:[{Name:"generic.max_health",Base:500f}], Health:500}
summon mutantmonsters:spider_pig 5074 308 -2081 {Tags:["ghr_hostile", "ghr_boss"], Attributes:[{Name:"generic.max_health",Base:500f}], Health:500}
effect give @e[type=mutantmonsters:spider_pig, tag=ghr_boss] minecraft:speed infinite 0 true
effect give @e[type=mutantmonsters:spider_pig, tag=ghr_boss] minecraft:strength infinite 0 true
scale set pehkui:height 1.5 @e[type=mutantmonsters:spider_pig, tag=ghr_boss]
scale set pehkui:width 1.5 @e[type=mutantmonsters:spider_pig, tag=ghr_boss]
execute as @e[type=mutantmonsters:spider_pig, tag=ghr_boss] at @s run data modify entity @s AngryAt set from entity @p UUID

# Make the boss always glow
effect give @e[tag=ghr_boss] glowing infinite 0 true

# Spawn area 1: 5055 308 -2100
summon illageandspillage:igniter 5055 308 -2100 {Tags:["ghr_hostile"]}
summon illagerinvasion:basher 5055 308 -2100 {Tags:["ghr_hostile"], HandItems:[{id:"shield",Count:1}]}

# Spawn area 2: 5093 308 -2100
summon illagerinvasion:basher 5093 308 -2100 {Tags:["ghr_hostile"], HandItems:[{id:"shield",Count:1}]}
summon illagerinvasion:marauder 5093 308 -2100 {Tags:["ghr_hostile"], HandItems:[{id:"illagerinvasion:platinum_infused_hatchet",Count:1}], HandDropChances:[0.05f,0.05f]}

# Spawn area 3: 5055 308 -2062
summon illageandspillage:igniter 5055 308 -2062 {Tags:["ghr_hostile"]}
summon illagerinvasion:basher 5055 308 -2062 {Tags:["ghr_hostile"], HandItems:[{id:"shield",Count:1}]}

# Spawn area 4: 5093 308 -2062
summon illagerinvasion:basher 5093 308 -2062 {Tags:["ghr_hostile"], HandItems:[{id:"shield",Count:1}]}
summon illagerinvasion:marauder 5093 308 -2062 {Tags:["ghr_hostile"], HandItems:[{id:"illagerinvasion:platinum_infused_hatchet",Count:1}], HandDropChances:[0.05f,0.05f]}

# Prevent immediate death
effect give @e[tag=ghr_hostile] minecraft:slow_falling 10 0 true

# Add all newly generated hostiles to a team
team join ghr_hostile_mobs @e[tag=ghr_hostile]