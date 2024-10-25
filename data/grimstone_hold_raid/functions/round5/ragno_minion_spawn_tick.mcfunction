# TODO: Test
# TODO: summon custom enemies just for the Ragno
execute if entity @e[name="Ragno", tag=ghr_boss] run schedule function grimstone_hold_raid:round5/ragno_minion_spawn_tick 20s
execute at @e[name="Ragno"] run summon minecraft:cave_spider ~3 ~ ~ {Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Ragno Babies"}]', Attributes:[{Name:"generic.max_health",Base:8}], Health:8}
execute at @e[name="Ragno"] run summon minecraft:cave_spider ~3 ~ ~3 {Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Ragno Babies"}]', Attributes:[{Name:"generic.max_health",Base:8}], Health:8}
execute at @e[name="Ragno"] run summon minecraft:cave_spider ~ ~ ~3 {Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Ragno Babies"}]', Attributes:[{Name:"generic.max_health",Base:8}], Health:8}
execute at @e[name="Ragno"] run summon minecraft:cave_spider ~4 ~ ~ {Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Ragno Babies"}]', Attributes:[{Name:"generic.max_health",Base:8}], Health:8}
execute at @e[name="Ragno"] run summon minecraft:cave_spider ~ ~ ~4 {Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Ragno Babies"}]', Attributes:[{Name:"generic.max_health",Base:8}], Health:8}
execute at @e[name="Ragno"] run summon minecraft:cave_spider ~4 ~ ~4 {Tags:["ghr_hostile", "ghr_boss_minion"], CustomName:'[{"text":"Ragno Babies"}]', Attributes:[{Name:"generic.max_health",Base:8}], Health:8}

execute if entity @e[tag=ghr_boss_invul_buff] run effect give @e[name="Ragno", tag=ghr_boss] resistance 20 10 false
effect give @e[tag=ghr_boss_invul_buff] glowing 25 0 true