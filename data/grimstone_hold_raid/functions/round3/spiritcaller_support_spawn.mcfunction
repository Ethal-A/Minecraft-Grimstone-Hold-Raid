# Inform the player
tellraw @a "The spiritcaller calls for support"
tellraw @a {"text":"The sorcerers, cryomancers and pyromancers grant the Spiritcaller invulnerability every 20 seconds","color":"red"}

# Spawn area 1: 5055 308 -2100
summon illagerinvasion:basher 5055 308 -2100 {Tags:["ghr_hostile"], HandItems:[{id:"shield",Count:1}]}
summon illagerinvasion:marauder 5055 308 -2100 {Tags:["ghr_hostile"], HandItems:[{id:"illagerinvasion:platinum_infused_hatchet",Count:1}], HandDropChances:[0.05f,0.05f]}
summon illagerinvasion:alchemist 5055 308 -2100 {Tags:["ghr_hostile"],HandItems:[{id:bow,Count:1}],Attributes:[{Name:"generic.armor",Base:4f}, {Name:"generic.max_health",Base:80f}], Health:80}
summon irons_spellbooks:cryomancer 5055 308 -2100
multisummon spread 1 1 2 vex 5055 308 -2100 {Tags:["ghr_hostile"], HandItems:[{id:"simplyswords:gold_rapier",Count:1}, {id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.01f,0.01f], Attributes:[{Name:"generic.armor",Base:2f}], active_effects:[{id:strength,amplifier:1,show_particles:0b}]}

# Spawn area 2: 5093 308 -2100
multisummon spread 1 1 2 pillager 5093 308 -2100 {Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}
summon illageandspillage:preserver 5093 308 -2100 {Tags:["ghr_hostile"]}
summon cataclysm:nameless_sorcerer 5093 308 -2100 {Tags:["ghr_hostile", "ghr_boss_invul_buff"], glowing:1b, CustomName:'[{"text":"Nameless Sorcerer"}]', Attributes:[{Name:"generic.armor",Base:4f}, {Name:"generic.max_health",Base:100f}], Health:100}

# Spawn area 3: 5055 308 -2062
summon illagerinvasion:basher 5055 308 -2062 {Tags:["ghr_hostile"], HandItems:[{id:"shield",Count:1}]}
summon illagerinvasion:marauder 5055 308 -2062 {Tags:["ghr_hostile"], HandItems:[{id:"illagerinvasion:platinum_infused_hatchet",Count:1}], HandDropChances:[0.05f,0.05f]}
summon illagerinvasion:alchemist 5055 308 -2062 {Tags:["ghr_hostile"],HandItems:[{id:bow,Count:1}],Attributes:[{Name:"generic.armor",Base:4f}, {Name:"generic.max_health",Base:80f}], Health:80}
summon irons_spellbooks:pyromancer 5055 308 -2062
multisummon spread 1 1 2 vex 5055 308 -2062 {Tags:["ghr_hostile"], HandItems:[{id:"simplyswords:gold_rapier",Count:1}, {id:"shieldexp:golden_shield",Count:1}],HandDropChances:[0.01f,0.01f], Attributes:[{Name:"generic.armor",Base:2f}], active_effects:[{id:strength,amplifier:1,show_particles:0b}]}

# Spawn area 4: 5093 308 -2062
multisummon spread 1 1 2 pillager 5093 308 -2062 {Tags:["ghr_hostile"], HandItems:[{id:crossbow,Count:1},{id:shield,Count:1}],HandDropChances:[0.05f,0.05f], Attributes:[{Name:"generic.armor",Base:4f}]}
summon illageandspillage:preserver 5093 308 -2062 {Tags:["ghr_hostile"]}
summon cataclysm:nameless_sorcerer 5093 308 -2062 {Tags:["ghr_hostile", "ghr_boss_invul_buff"], glowing:1b, CustomName:'[{"text":"Nameless Sorcerer"}]', Attributes:[{Name:"generic.armor",Base:4f}, {Name:"generic.max_health",Base:100f}], Health:100}

# Provide pyromancer and cryomancer with strengths
execute as @e[type=irons_spellbooks:pyromancer, x=5046, y=298, z=-2109, dx=57, dy=21, dz=57] run tag @s add ghr_hostile
execute as @e[type=irons_spellbooks:pyromancer, tag=ghr_hostile] run health set @s 100
execute as @e[type=irons_spellbooks:pyromancer, tag=ghr_hostile] run tag @s add ghr_boss_invul_buff

execute as @e[type=irons_spellbooks:cryomancer, x=5046, y=298, z=-2109, dx=57, dy=21, dz=57] run tag @s add ghr_hostile
execute as @e[type=irons_spellbooks:cryomancer, tag=ghr_hostile] run health set @s 100
execute as @e[type=irons_spellbooks:cryomancer, tag=ghr_hostile] run tag @s add ghr_boss_invul_buff

schedule function grimstone_hold_raid:round3/trigger_hostility 5s

# Prevent immediate death
effect give @e[tag=ghr_hostile] minecraft:slow_falling 10 0 true

# Add all newly generated hostiles to a team
team join ghr_hostile_mobs @e[tag=ghr_hostile]