# Set variables
scoreboard players set ghr.state ghr.rep 5

# Inform the player
tellraw @a "Round 3, Rep 5 (final rep)"
tellraw @a {"text":"The sorcerers grant the Spiritcaller invulnerability every 20 seconds","color":"red"}

# Random imps
function grimstone_hold_raid:imps/cross30

# Spawn area 1: 226 311 16
multisummon spread 2 2 2 vex 226 311 16 {Tags:["ghr_hostile"], HandItems:[{id:"simplyswords:gold_rapier",Count:1}, {id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.01f,0.01f], Attributes:[{Name:"generic.armor",Base:2f}], active_effects:[{id:strength,amplifier:1,show_particles:0b}]}
summon cataclysm:nameless_sorcerer 226 311 16 {Tags:["ghr_hostile", "ghr_boss_invul_buff"], glowing:1b, CustomName:'[{"text":"Nameless Sorcerer"}]', Attributes:[{Name:"generic.armor",Base:4f}, {Name:"generic.max_health",Base:100f}], Health:100}

# Spawn area 1: 190 309 14
summon illageandspillage:preserver 190 309 14 {Tags:["ghr_hostile"]}
multisummon spread 2 2 2 pillager 190 309 14 {Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}


# Spawn area 1: 192 309 -18
summon illageandspillage:preserver 192 309 -18 {Tags:["ghr_hostile"]}
multisummon spread 2 2 2 pillager 192 309 -18 {Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}


# Spawn area 1: 225 309 -19
multisummon spread 2 2 2 vex 225 309 -19 {Tags:["ghr_hostile"], HandItems:[{id:"simplyswords:gold_rapier",Count:1}, {id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.01f,0.01f], Attributes:[{Name:"generic.armor",Base:2f}], active_effects:[{id:strength,amplifier:1,show_particles:0b}]}
summon cataclysm:nameless_sorcerer 225 309 -19 {Tags:["ghr_hostile", "ghr_boss_invul_buff"], glowing:1b, CustomName:'[{"text":"Nameless Sorcerer"}]', Attributes:[{Name:"generic.armor",Base:4f}, {Name:"generic.max_health",Base:100f}], Health:100}

# Prevent immediate death
effect give @e[tag=ghr_hostile] minecraft:slow_falling 10 0 true
effect give @e[tag=ghr_hostile] minecraft:fire_resistance 10 1 true

# Add all newly generated hostiles to a team
team join ghr_hostile_mobs @e[tag=ghr_hostile]