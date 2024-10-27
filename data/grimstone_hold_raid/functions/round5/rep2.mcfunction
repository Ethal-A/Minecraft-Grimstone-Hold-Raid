# Set variables
scoreboard players set ghr.state ghr.rep 2

# Inform the player
tellraw @a "Round 5, Rep 2"

# Schedule bombs
schedule function grimstone_hold_raid:skull_bombs/skull_bomb 10s
schedule function grimstone_hold_raid:pumpkin_bombs/pumpkin_bomb 15s
schedule function grimstone_hold_raid:pumpkin_bombs/pumpkin_bomb3x3 25s

# Spawn area 1: 5055 308 -2100
summon illagerinvasion:basher 5055 308 -2100 {Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}
summon illageandspillage:twittollager 5055 308 -2100 {Tags:["ghr_hostile"]}
summon illageandspillage:crocofang 5055 308 -2100 {Tags:["ghr_hostile"]}

# Spawn area 2: 5093 308 -2100
summon illageandspillage:igniter 5093 308 -2100 {Tags:["ghr_hostile"]}
summon illagerinvasion:basher 5093 308 -2100 {Tags:["ghr_hostile"], HandItems:[{id:"shield",Count:1}]}

# Spawn area 3: 5055 308 -2062
summon illagerinvasion:basher 5055 308 -2062 {Tags:["ghr_hostile"], Health:40, HandItems:[{id:stone_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0f], Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.armor",Base:4f}]}
summon illageandspillage:twittollager 5055 308 -2062 {Tags:["ghr_hostile"]}
summon illageandspillage:crocofang 5055 308 -2062 {Tags:["ghr_hostile"]}


# Spawn area 4: 5093 308 -2062
summon illageandspillage:igniter 5093 308 -2062 {Tags:["ghr_hostile"]}
summon illagerinvasion:basher 5093 308 -2062 {Tags:["ghr_hostile"], HandItems:[{id:"shield",Count:1}]}

# Prevent immediate death
effect give @e[tag=ghr_hostile] minecraft:slow_falling 10 0 true

# Add all newly generated hostiles to a team
team join ghr_hostile_mobs @e[tag=ghr_hostile]