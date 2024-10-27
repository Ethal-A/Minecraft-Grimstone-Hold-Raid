# Set variables
scoreboard players set ghr.state ghr.rep 4

# Inform the player
tellraw @a "Round 7, Rep 4"

# Schedule bombs
function grimstone_hold_raid:living_bombs/plant_living_bomb
schedule function grimstone_hold_raid:kaboomers/kaboomer 30s

# Spawn area 1: 5055 308 -2100
summon illageandspillage:crocofang 5055 308 -2100 {Tags:["ghr_hostile"]}
summon illageandspillage:crocofang 5055 308 -2100 {Tags:["ghr_hostile"]}
multisummon spread 2 2 2 pillager 5055 308 -2100 {Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}
summon illagerinvasion:inquisitor 5055 308 -2100 {Tags:["ghr_hostile"], PersistenceRequired:1b,HandItems:[{id:iron_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0f,0f]}
summon illagerinvasion:inquisitor 5055 308 -2100 {Tags:["ghr_hostile"], PersistenceRequired:1b,HandItems:[{id:iron_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0f,0f]}

# Spawn area 2: 5093 308 -2100
summon illageandspillage:absorber 5093 308 -2100 {Tags:["ghr_hostile"], ForgeData: {InfernalMobsMod: "notInfernal"}}
multisummon spread 2 2 2 vex 5093 308 -2100 {Tags:["ghr_hostile"], HandItems:[{id:"simplyswords:gold_rapier",Count:1}, {id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.01f,0.01f], Attributes:[{Name:"generic.armor",Base:2f}], active_effects:[{id:strength,amplifier:1,show_particles:0b}]}
summon irons_spellbooks:cryomancer 5093 308 -2100

# Spawn area 3: 5055 308 -2062
summon illageandspillage:crocofang 5055 308 -2062 {Tags:["ghr_hostile"]}
summon illageandspillage:crocofang 5055 308 -2062 {Tags:["ghr_hostile"]}
multisummon spread 2 2 2 pillager 5055 308 -2062 {Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}
summon illagerinvasion:inquisitor 5055 308 -2062 {Tags:["ghr_hostile"], PersistenceRequired:1b,HandItems:[{id:iron_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0f,0f]}
summon illagerinvasion:inquisitor 5055 308 -2062 {Tags:["ghr_hostile"], PersistenceRequired:1b,HandItems:[{id:iron_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0f,0f]}

# Spawn area 4: 5093 308 -2062
summon illageandspillage:absorber 5093 308 -2062 {Tags:["ghr_hostile"], ForgeData: {InfernalMobsMod: "notInfernal"}}
multisummon spread 2 2 2 vex 5093 308 -2062 {Tags:["ghr_hostile"], HandItems:[{id:"simplyswords:gold_rapier",Count:1}, {id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.01f,0.01f], Attributes:[{Name:"generic.armor",Base:2f}], active_effects:[{id:strength,amplifier:1,show_particles:0b}]}
summon irons_spellbooks:pyromancer 5093 308 -2062

# Provide pyromancer and cryomancer with strengths
execute as @e[type=irons_spellbooks:pyromancer, x=5046, y=298, z=-2109, dx=57, dy=21, dz=57] run tag @s add ghr_hostile
execute as @e[type=irons_spellbooks:pyromancer, tag=ghr_hostile] run health set @s 100

execute as @e[type=irons_spellbooks:cryomancer, x=5046, y=298, z=-2109, dx=57, dy=21, dz=57] run tag @s add ghr_hostile
execute as @e[type=irons_spellbooks:cryomancer, tag=ghr_hostile] run health set @s 100

schedule function grimstone_hold_raid:round3/trigger_hostility 5s

# Apply effects to some hostiles
effect give @e[type=illageandspillage:absorber, tag=ghr_hostile] minecraft:speed infinite 5 true

# Spawn miners
function grimstone_hold_raid:miners/spawn_teleporting_miners

# Adjust mobs
function grimstone_hold_raid:equip_hostiles/equip_all_with_blast_protection

# Prevent immediate death
effect give @e[tag=ghr_hostile] minecraft:slow_falling 10 0 true

# Add all newly generated hostiles to a team
team join ghr_hostile_mobs @e[tag=ghr_hostile]