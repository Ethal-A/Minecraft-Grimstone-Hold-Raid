execute if entity @e[name="Ragno", tag=ghr_boss] run schedule function grimstone_hold_raid:round5/ragno_minion_spawn_tick 20s
execute at @e[name="Ragno"] run summon minecraft:cave_spider ~3 ~ ~ {Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Ragno Babies"}]', Attributes:[{Name:"generic.max_health",Base:8}], Health:8}
execute at @e[name="Ragno"] run summon minecraft:cave_spider ~3 ~ ~3 {Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Ragno Babies"}]', Attributes:[{Name:"generic.max_health",Base:8}], Health:8}
execute at @e[name="Ragno"] run summon minecraft:cave_spider ~ ~ ~3 {Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Ragno Babies"}]', Attributes:[{Name:"generic.max_health",Base:8}], Health:8}
execute at @e[name="Ragno"] run summon minecraft:cave_spider ~4 ~ ~ {Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Ragno Babies"}]', Attributes:[{Name:"generic.max_health",Base:8}], Health:8}
execute at @e[name="Ragno"] run summon minecraft:cave_spider ~ ~ ~4 {Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Ragno Babies"}]', Attributes:[{Name:"generic.max_health",Base:8}], Health:8}
execute at @e[name="Ragno"] run summon minecraft:cave_spider ~4 ~ ~4 {Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Ragno Babies"}]', Attributes:[{Name:"generic.max_health",Base:8}], Health:8}

# Adjust mobs
scale set pehkui:height 0.5 @e[type=minecraft:cave_spider, tag=ghr_boss_minion]
scale set pehkui:width 0.5 @e[type=minecraft:cave_spider, tag=ghr_boss_minion]