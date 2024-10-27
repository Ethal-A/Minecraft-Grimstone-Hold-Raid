# Set variables
scoreboard players set ghr.state ghr.rep 3

# Inform the player
tellraw @a "Round 3, Rep 3"
tellraw @a {"text":"The sorcerers grant the Spiritcaller invulnerability every 20 seconds","color":"red"}

# Random imps
function grimstone_hold_raid:imps/cross30

# Spawn area 1: 5055 308 -2100
multisummon spread 2 2 2 vex 5055 308 -2100 {Tags:["ghr_hostile"], HandItems:[{id:"simplyswords:gold_rapier",Count:1}, {id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.01f,0.01f], Attributes:[{Name:"generic.armor",Base:2f}], active_effects:[{id:strength,amplifier:1,show_particles:0b}]}
summon cataclysm:nameless_sorcerer 5055 308 -2100 {Tags:["ghr_hostile", "ghr_boss_invul_buff"], glowing:1b, CustomName:'[{"text":"Nameless Sorcerer"}]', Attributes:[{Name:"generic.armor",Base:4f}, {Name:"generic.max_health",Base:100f}], Health:100}

# Spawn area 2: 5093 308 -2100
summon illageandspillage:preserver 5093 308 -2100 {Tags:["ghr_hostile"]}
multisummon spread 2 2 2 pillager 5093 308 -2100 {Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}


# Spawn area 3: 5055 308 -2062
summon illageandspillage:preserver 5055 308 -2062 {Tags:["ghr_hostile"]}
multisummon spread 2 2 2 pillager 5055 308 -2062 {Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}


# Spawn area 4: 5093 308 -2062
multisummon spread 2 2 2 vex 5093 308 -2062 {Tags:["ghr_hostile"], HandItems:[{id:"simplyswords:gold_rapier",Count:1}, {id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.01f,0.01f], Attributes:[{Name:"generic.armor",Base:2f}], active_effects:[{id:strength,amplifier:1,show_particles:0b}]}
summon cataclysm:nameless_sorcerer 5093 308 -2062 {Tags:["ghr_hostile", "ghr_boss_invul_buff"], glowing:1b, CustomName:'[{"text":"Nameless Sorcerer"}]', Attributes:[{Name:"generic.armor",Base:4f}, {Name:"generic.max_health",Base:100f}], Health:100}

# Spawn miners
function grimstone_hold_raid:miners/spawn_miners

# Prevent immediate death
effect give @e[tag=ghr_hostile] minecraft:slow_falling 10 0 true

# Add all newly generated hostiles to a team
team join ghr_hostile_mobs @e[tag=ghr_hostile]