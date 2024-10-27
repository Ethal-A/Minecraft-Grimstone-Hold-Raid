# Set variables
scoreboard players set ghr.state ghr.rep 4

# Inform the player
tellraw @a "Round 3, Rep 4"
tellraw @a {"text":"The cryomancer and pyromancer grant the Spiritcaller invulnerability every 20 seconds","color":"red"}

# Random imps
function grimstone_hold_raid:imps/cross30

# Spawn area 1: 226 311 16
multisummon spread 2 2 2 vex 226 311 16 {Tags:["ghr_hostile"], HandItems:[{id:"simplyswords:gold_rapier",Count:1}, {id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.01f,0.01f], Attributes:[{Name:"generic.armor",Base:2f}], active_effects:[{id:strength,amplifier:1,show_particles:0b}]}
summon irons_spellbooks:cryomancer 226 311 16

# Spawn area 2: 190 309 14
multisummon spread 2 2 2 pillager 190 309 14 {Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}
summon illagerinvasion:inquisitor 190 309 14 {Tags:["ghr_hostile"], PersistenceRequired:1b,HandItems:[{id:iron_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0f,0f]}

# Spawn area 3: 192 309 -18
multisummon spread 2 2 2 pillager 192 309 -18 {Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}
summon illagerinvasion:inquisitor 192 309 -18 {Tags:["ghr_hostile"], PersistenceRequired:1b,HandItems:[{id:iron_sword,Count:1},{id:shield,Count:1}],HandDropChances:[0f,0f]}

# Spawn area 4: 225 309 -19
multisummon spread 2 2 2 vex 225 309 -19 {Tags:["ghr_hostile"], HandItems:[{id:"simplyswords:gold_rapier",Count:1}, {id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.01f,0.01f], Attributes:[{Name:"generic.armor",Base:2f}], active_effects:[{id:strength,amplifier:1,show_particles:0b}]}
summon irons_spellbooks:pyromancer 225 309 -19

# Provide pyromancer and cryomancer with strengths
execute as @e[type=irons_spellbooks:pyromancer, x=185, y=300, z=-25, dx=47, dy=19, dz=47] run tag @s add ghr_hostile
execute as @e[type=irons_spellbooks:pyromancer, tag=ghr_hostile] run health set @s 100
execute as @e[type=irons_spellbooks:pyromancer, tag=ghr_hostile] run tag @s add ghr_boss_invul_buff

execute as @e[type=irons_spellbooks:cryomancer, x=185, y=300, z=-25, dx=47, dy=19, dz=47] run tag @s add ghr_hostile
execute as @e[type=irons_spellbooks:cryomancer, tag=ghr_hostile] run health set @s 100
execute as @e[type=irons_spellbooks:cryomancer, tag=ghr_hostile] run tag @s add ghr_boss_invul_buff

schedule function grimstone_hold_raid:round3/trigger_hostility 5s

# Prevent immediate death
effect give @e[tag=ghr_hostile] minecraft:slow_falling 10 0 true

# Add all newly generated hostiles to a team
team join ghr_hostile_mobs @e[tag=ghr_hostile]