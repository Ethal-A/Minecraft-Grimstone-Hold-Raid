# TODO: Test
# Inform the player
tellraw @a "The spiritcaller calls for support"
tellraw @p {"text":"The sorcerers, cryomancers and pyromancers grant the Spiritcaller invulnerability every 20 seconds","color":"red"}

# Spawn area 1: 226 311 16
summon illagerinvasion:basher 226 311 16 {Tags:["ghr_hostile"], HandItems:[{id:"shield",Count:1}]}
summon illagerinvasion:marauder 226 311 16 {Tags:["ghr_hostile"], HandItems:[{id:"illagerinvasion:platinum_infused_hatchet",Count:1}], HandDropChances:[0.05f,0.05f]}
summon illagerinvasion:alchemist 226 311 16 {Tags:["ghr_hostile"],HandItems:[{id:bow,Count:1}],Attributes:[{Name:"generic.armor",Base:4f}, {Name:"generic.max_health",Base:80f}], Health:80}
summon irons_spellbooks:cryomancer 226 311 16
multisummon spread 1 1 2 vex 226 311 16 {Tags:["ghr_hostile"], HandItems:[{id:"simplyswords:gold_rapier",Count:1}, {id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.01f,0.01f], Attributes:[{Name:"generic.armor",Base:2f}], active_effects:[{id:strength,amplifier:1,show_particles:0b}]}

# Spawn area 1: 190 309 14
multisummon spread 1 1 2 pillager 190 309 14 {Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}
summon illageandspillage:preserver 190 309 14 {Tags:["ghr_hostile"]}
summon cataclysm:nameless_sorcerer 190 309 14 {Tags:["ghr_hostile", "ghr_boss_invul_buff"], glowing:1b, CustomName:'[{"text":"Nameless Sorcerer"}]', Attributes:[{Name:"generic.armor",Base:4f}, {Name:"generic.max_health",Base:100f}], Health:100}

# Spawn area 1: 192 309 -18
summon illagerinvasion:basher 192 309 -18 {Tags:["ghr_hostile"], HandItems:[{id:"shield",Count:1}]}
summon illagerinvasion:marauder 192 309 -18 {Tags:["ghr_hostile"], HandItems:[{id:"illagerinvasion:platinum_infused_hatchet",Count:1}], HandDropChances:[0.05f,0.05f]}
summon illagerinvasion:alchemist 192 309 -18 {Tags:["ghr_hostile"],HandItems:[{id:bow,Count:1}],Attributes:[{Name:"generic.armor",Base:4f}, {Name:"generic.max_health",Base:80f}], Health:80}
summon irons_spellbooks:pyromancer 192 309 -18
multisummon spread 1 1 2 vex 192 309 -18 {Tags:["ghr_hostile"], HandItems:[{id:"simplyswords:gold_rapier",Count:1}, {id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.01f,0.01f], Attributes:[{Name:"generic.armor",Base:2f}], active_effects:[{id:strength,amplifier:1,show_particles:0b}]}

# Spawn area 1: 225 309 -19
multisummon spread 1 1 2 pillager 225 309 -19 {Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}
summon illageandspillage:preserver 225 309 -19 {Tags:["ghr_hostile"]}
summon cataclysm:nameless_sorcerer 225 309 -19 {Tags:["ghr_hostile", "ghr_boss_invul_buff"], glowing:1b, CustomName:'[{"text":"Nameless Sorcerer"}]', Attributes:[{Name:"generic.armor",Base:4f}, {Name:"generic.max_health",Base:100f}], Health:100}

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
effect give @e[tag=ghr_hostile] minecraft:fire_resistance 10 1 true

# Add all newly generated hostiles to a team
team join ghr_hostile_mobs @e[tag=ghr_hostile]