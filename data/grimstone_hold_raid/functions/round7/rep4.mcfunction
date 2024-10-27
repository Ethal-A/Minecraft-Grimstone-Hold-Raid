# Set variables
scoreboard players set ghr.state ghr.rep 4

# Inform the player
tellraw @a "Round 7, Rep 4"

# Schedule bombs
function grimstone_hold_raid:living_bombs/plant_living_bomb
schedule function grimstone_hold_raid:kaboomers/kaboomer 30s

# Spawn area 1: 226 311 16
summon illageandspillage:crocofang 226 311 16 {Tags:["ghr_hostile"]}
summon illageandspillage:crocofang 226 311 16 {Tags:["ghr_hostile"]}
multisummon spread 2 2 2 pillager 226 311 16 {Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}
summon illagerinvasion:inquisitor 226 311 16 {Tags:["ghr_hostile"], PersistenceRequired:1b,HandItems:[{id:iron_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0f,0f]}
summon illagerinvasion:inquisitor 226 311 16 {Tags:["ghr_hostile"], PersistenceRequired:1b,HandItems:[{id:iron_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0f,0f]}

# Spawn area 2: 190 309 14
summon illageandspillage:absorber 190 309 14 {Tags:["ghr_hostile"], ForgeData: {InfernalMobsMod: ""}}
multisummon spread 2 2 2 vex 190 309 14 {Tags:["ghr_hostile"], HandItems:[{id:"simplyswords:gold_rapier",Count:1}, {id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.01f,0.01f], Attributes:[{Name:"generic.armor",Base:2f}], active_effects:[{id:strength,amplifier:1,show_particles:0b}]}
summon irons_spellbooks:cryomancer 190 309 14

# Spawn area 3: 192 309 -18
summon illageandspillage:crocofang 192 309 -18 {Tags:["ghr_hostile"]}
summon illageandspillage:crocofang 192 309 -18 {Tags:["ghr_hostile"]}
multisummon spread 2 2 2 pillager 192 309 -18 {Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}
summon illagerinvasion:inquisitor 192 309 -18 {Tags:["ghr_hostile"], PersistenceRequired:1b,HandItems:[{id:iron_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0f,0f]}
summon illagerinvasion:inquisitor 192 309 -18 {Tags:["ghr_hostile"], PersistenceRequired:1b,HandItems:[{id:iron_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0f,0f]}

# Spawn area 4: 225 309 -19
summon illageandspillage:absorber 225 309 -19 {Tags:["ghr_hostile"], ForgeData: {InfernalMobsMod: ""}}
multisummon spread 2 2 2 vex 225 309 -19 {Tags:["ghr_hostile"], HandItems:[{id:"simplyswords:gold_rapier",Count:1}, {id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.01f,0.01f], Attributes:[{Name:"generic.armor",Base:2f}], active_effects:[{id:strength,amplifier:1,show_particles:0b}]}
summon irons_spellbooks:pyromancer 225 309 -19

# Provide pyromancer and cryomancer with strengths
execute as @e[type=irons_spellbooks:pyromancer, x=185, y=300, z=-25, dx=47, dy=19, dz=47] run tag @s add ghr_hostile
execute as @e[type=irons_spellbooks:pyromancer, tag=ghr_hostile] run health set @s 100

execute as @e[type=irons_spellbooks:cryomancer, x=185, y=300, z=-25, dx=47, dy=19, dz=47] run tag @s add ghr_hostile
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