# Set variables
scoreboard players set ghr.state ghr.rep 3

# Inform the player
tellraw @a "Round 5, Rep 3"

# Schedule bombs
schedule function grimstone_hold_raid:pumpkin_bombs/pumpkin_bomb 5s
schedule function grimstone_hold_raid:skull_bombs/skull_bomb 10s
schedule function grimstone_hold_raid:pumpkin_bombs/pumpkin_bomb 10s
schedule function grimstone_hold_raid:pumpkin_bombs/pumpkin_bomb 15s
schedule function grimstone_hold_raid:skull_bombs/skull_bomb 20s
schedule function grimstone_hold_raid:pumpkin_bombs/pumpkin_bomb3x3 30s
schedule function grimstone_hold_raid:pumpkin_bombs/pumpkin_bomb3x3 50s

# Spawn area 1: 226 311 16
summon illageandspillage:crocofang 226 311 16 {Tags:["ghr_hostile"]}

# Spawn area 1: 190 309 14
summon illagerinvasion:necromancer 190 309 14 {Tags:["ghr_hostile", "ghr_boss"], Attributes:[{Name:"generic.max_health",Base:300f}], Health:300}

# Spawn area 1: 192 309 -18
summon illageandspillage:crocofang 192 309 -18 {Tags:["ghr_hostile"]}

# Spawn area 1: 225 309 -19
summon illagerinvasion:necromancer 225 309 -19 {Tags:["ghr_hostile", "ghr_boss"], Attributes:[{Name:"generic.max_health",Base:300f}], Health:300}

# Apply effects to hostiles
effect give @e[type=illagerinvasion:necromancer, tag=ghr_boss] minecraft:regeneration infinite 3 true

# Prevent immediate death
effect give @e[tag=ghr_hostile] minecraft:slow_falling 10 0 true
effect give @e[tag=ghr_hostile] minecraft:fire_resistance 10 1 true # TODO: Remove and figure out something else?

# Add all newly generated hostiles to a team
team join ghr_hostile_mobs @e[tag=ghr_hostile]