# Set variables
scoreboard players set ghr.state ghr.rep 1

# Inform the player (reset title format)
tellraw @a "Round 6, Rep 1"
title @a reset

# Schedule bombs
function grimstone_hold_raid:living_bombs/plant_living_bomb
schedule function grimstone_hold_raid:kaboomers/kaboomer 30s

# Spawn boss area: 5074 308 -2081
summon mutantmonsters:mutant_creeper 5074 308 -2081 {Tags:["ghr_hostile", "ghr_boss"], CustomName:'[{"text":"Dyna"}]', Attributes:[{Name:"generic.max_health",Base:800f}], Health:800, ForgeData: {InfernalMobsMod: "notInfernal"}}
scale set pehkui:height 1.5 @e[type=mutantmonsters:mutant_creeper, tag=ghr_boss]
scale set pehkui:width 1.5 @e[type=mutantmonsters:mutant_creeper, tag=ghr_boss]

# Make the boss always glow
effect give @e[tag=ghr_boss] glowing infinite 0 true

# Spawn area 1: 5055 308 -2100
summon illageandspillage:twittollager 5055 308 -2100 {Tags:["ghr_hostile"]}
summon illageandspillage:crocofang 5055 308 -2100 {Tags:["ghr_hostile"]}
summon minecraft:creeper 5055 308 -2100 {Tags:["ghr_hostile", "ghr_enlarge"], powered:1,ExplosionRadius:2,Health:50,Attributes:[{Name:"generic.max_health",Base:50f}]}

# Spawn area 2: 5093 308 -2100
summon illageandspillage:twittollager 5093 308 -2100 {Tags:["ghr_hostile"]}
summon illageandspillage:crocofang 5093 308 -2100 {Tags:["ghr_hostile"]}
summon minecraft:creeper 5093 308 -2100 {Tags:["ghr_hostile", "ghr_enlarge"], powered:1,ExplosionRadius:2,Health:50,Attributes:[{Name:"generic.max_health",Base:50f}]}

# Spawn area 3: 5055 308 -2062
summon illageandspillage:twittollager 5055 308 -2062 {Tags:["ghr_hostile"]}
summon illageandspillage:crocofang 5055 308 -2062 {Tags:["ghr_hostile"]}
summon minecraft:creeper 5055 308 -2062 {Tags:["ghr_hostile", "ghr_enlarge"], powered:1,ExplosionRadius:2,Health:50,Attributes:[{Name:"generic.max_health",Base:50f}]}

# Spawn area 4: 5093 308 -2062
summon illageandspillage:twittollager 5093 308 -2062 {Tags:["ghr_hostile"]}
summon illageandspillage:crocofang 5093 308 -2062 {Tags:["ghr_hostile"]}
summon minecraft:creeper 5093 308 -2062 {Tags:["ghr_hostile", "ghr_enlarge"], powered:1,ExplosionRadius:2,Health:50,Attributes:[{Name:"generic.max_health",Base:50f}]}

# Adjust mobs
effect give @e[type=minecraft:creeper, tag=ghr_enlarge] speed infinite 1 true
scale set pehkui:height 2 @e[type=minecraft:creeper, tag=ghr_enlarge]
scale set pehkui:width 2 @e[type=minecraft:creeper, tag=ghr_enlarge]
function grimstone_hold_raid:equip_hostiles/equip_all_with_blast_protection

# Prevent immediate death
effect give @e[tag=ghr_hostile] minecraft:slow_falling 10 0 true

# Add all newly generated hostiles to a team
team join ghr_hostile_mobs @e[tag=ghr_hostile]