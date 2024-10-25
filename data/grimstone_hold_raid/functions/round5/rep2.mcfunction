# Set variables
scoreboard players set ghr.state ghr.rep 2

# Inform the player
tellraw @a "Round 5, Rep 2"

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