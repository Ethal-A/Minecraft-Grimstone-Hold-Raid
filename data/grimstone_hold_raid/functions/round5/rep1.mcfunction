# Set variables
scoreboard players set ghr.state ghr.rep 1

# Inform the player (reset title format)
tellraw @a "Round 5, Rep 1"
title @a reset

# Spawn boss area: 210 310 -3
summon illageandspillage:freakager 210 310 -3 {Tags:["ghr_hostile", "ghr_boss"], CustomName:'[{"text":"Freakager"}]', Attributes:[{Name:"generic.max_health",Base:2000f}], Health:2000, ForgeData: {InfernalMobsMod: ""}}
effect give @e[type=illageandspillage:freakager, tag=ghr_boss] minecraft:regeneration infinite 2 true
execute as @e[type=illageandspillage:freakager, tag=ghr_boss] run damage @s 0 player_attack by @p
schedule function grimstone_hold_raid:round5/set_ragno_name 10s
schedule function grimstone_hold_raid:round5/freakager_minion_spawn_tick 60s
schedule function grimstone_hold_raid:round5/ragno_minion_spawn_tick 20s

# Spawn area 1: 226 311 16

# Spawn area 1: 190 309 14

# Spawn area 1: 192 309 -18

# Spawn area 1: 225 309 -19

# Apply effects to some hostiles

# Prevent immediate death
effect give @e[tag=ghr_hostile] minecraft:slow_falling 10 0 true
effect give @e[tag=ghr_hostile] minecraft:fire_resistance 10 1 true

# Add all newly generated hostiles to a team
team join ghr_hostile_mobs @e[tag=ghr_hostile]