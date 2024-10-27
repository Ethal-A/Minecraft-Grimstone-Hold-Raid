# Spawn area 1: 5055 308 -2100
summon spider 5055 308 -2100 {Tags:["ghr_hostile"], Health:30, Attributes:[{Name:"generic.max_health",Base:30f},{Name:"generic.armor",Base:2f}], Passengers:[{id:cave_spider, Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Ragno Babies"}]', Attributes:[{Name:"generic.max_health",Base:8}], Health:8}]}

# Spawn area 2: 5093 308 -2100
summon spider 5093 308 -2100 {Tags:["ghr_hostile"], Health:30, Attributes:[{Name:"generic.max_health",Base:30f},{Name:"generic.armor",Base:2f}], Passengers:[{id:cave_spider, Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Ragno Babies"}]', Attributes:[{Name:"generic.max_health",Base:8}], Health:8}]}

# Spawn area 3: 5055 308 -2062
summon spider 5055 308 -2062 {Tags:["ghr_hostile"], Health:30, Attributes:[{Name:"generic.max_health",Base:30f},{Name:"generic.armor",Base:2f}], Passengers:[{id:cave_spider, Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Ragno Babies"}]', Attributes:[{Name:"generic.max_health",Base:8}], Health:8}]}

# Spawn area 4: 5093 308 -2062
summon spider 5093 308 -2062 {Tags:["ghr_hostile"], Health:30, Attributes:[{Name:"generic.max_health",Base:30f},{Name:"generic.armor",Base:2f}], Passengers:[{id:cave_spider, Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Ragno Babies"}]', Attributes:[{Name:"generic.max_health",Base:8}], Health:8}]}

# Make the spiders big
scale set pehkui:height 2.0 @e[type=spider, tag=ghr_hostile]
scale set pehkui:width 2.0 @e[type=spider, tag=ghr_hostile]

# Slow falling
effect give @e[type=spider, tag=ghr_hostile] slow_falling 10 0

# Set anger
execute as @e[type=spider] run data modify entity @s AngryAt set from entity @p UUID

# Add all newly generated hostiles to a team
team join ghr_hostile_mobs @e[tag=ghr_hostile]